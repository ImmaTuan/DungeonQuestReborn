-- dqr_readable_core.lua
-- Readable reconstruction of selected systems from dqr.formatted.lua.
-- This is NOT a byte-for-byte deobfuscation and is not guaranteed drop-in compatible.
-- The original script uses an obfuscated VM with numeric function/table indexes.

local Core = {}
Core.__index = Core

---------------------------------------------------------------------
-- 1. Projectile tracking
---------------------------------------------------------------------

function Core.newProjectileTracker(config)
    local self = setmetatable({}, Core)

    self.Projectiles = {}
    self.enabled = config.enabled ~= false
    self.spawnDelay = config.spawnDelay or 0
    self.minSpeed = config.minSpeed or 8

    return self
end

function Core:TrackProjectile(part)
    if not self.enabled or not part or not part:IsA("BasePart") then
        return
    end

    -- Do not track the same part twice.
    for _, projectile in ipairs(self.Projectiles) do
        if projectile.part == part then
            return
        end
    end

    local initialPosition = part.Position
    local startTime = tick()

    task.delay(self.spawnDelay, function()
        if not part.Parent then
            return
        end

        local velocity = part.AssemblyLinearVelocity

        -- Some projectiles do not expose useful AssemblyLinearVelocity.
        if velocity.Magnitude < self.minSpeed then
            local elapsed = tick() - startTime
            if elapsed > 0.01 then
                velocity = (part.Position - initialPosition) / elapsed
            end
        end

        if velocity.Magnitude < self.minSpeed then
            -- Give a newly spawned projectile another chance to start moving.
            task.delay(self.spawnDelay * 3, function()
                if not part.Parent then
                    return
                end

                local elapsed = tick() - startTime
                if elapsed > 0 and
                   ((part.Position - initialPosition) / elapsed).Magnitude >= self.minSpeed then
                    self:TrackProjectile(part)
                end
            end)

            return
        end

        local projectile = {
            part = part,
            vel = velocity,
            lastPos = part.Position,

            radius = math.max(
                part.Size.X,
                part.Size.Y,
                part.Size.Z
            ) / 2,

            turnSum = 0,
            homing = false,
            settled = false,
            bornAt = tick(),
            box = nil,
        }

        table.insert(self.Projectiles, projectile)

        -- The original calls a straight-path/hitbox registration routine here.
        self:MarkStraightPath(projectile)

        part.AncestryChanged:Connect(function(_, parent)
            if parent then
                return
            end

            for i = #self.Projectiles, 1, -1 do
                if self.Projectiles[i].part == part then
                    self:RemoveProjectileHitbox(self.Projectiles[i])
                    table.remove(self.Projectiles, i)
                end
            end
        end)
    end)
end

function Core:MarkStraightPath(projectile)
    -- Hook for the original straight-path prediction system.
end

function Core:RemoveProjectileHitbox(projectile)
    -- Hook for the original hitbox cleanup.
end


---------------------------------------------------------------------
-- 2. Server attack-event prediction
---------------------------------------------------------------------

function Core:ConnectBossPrediction(remote)
    if not remote then
        return
    end

    self.ccPlans = self.ccPlans or {}
    self.beamPlan = nil

    remote.OnClientEvent:Connect(function(eventName, data)
        if type(data) ~= "table" or typeof(data[5]) ~= "CFrame" then
            return
        end

        local definitions = {
            ["First Boss Criss Cross Projectile"] = {
                part = "firstBossCrissCross",
                offset = 0,
                matchDistance = 8,
            },

            ["Third Boss Sideways Missile"] = {
                part = "thirdBossMissile",
                offset = -10,
                matchDistance = 16,
            },

            ["Bonus Boss Sideways Missile"] = {
                part = "thirdBossMissile",
                offset = -10,
                matchDistance = 16,
            },
        }

        local definition = definitions[eventName]

        if definition then
            local distance = tonumber(data[1]) or 0
            local duration = tonumber(data[2]) or 1
            local cf = data[5]

            local look = cf.LookVector
            local horizontalDirection =
                Vector3.new(look.X, 0, look.Z)

            local velocity = Vector3.zero

            if horizontalDirection.Magnitude > 0.01 then
                velocity =
                    horizontalDirection.Unit *
                    (distance / math.max(duration, 0.01))
            end

            local plan = {
                part = definition.part,
                matchDistance = definition.matchDistance,
                position = cf.Position + (look * definition.offset),
                duration = duration,
                createdAt = tick(),
                velocity = velocity,
            }

            table.insert(self.ccPlans, plan)

            -- Original keeps at most 40 predictions.
            if #self.ccPlans > 40 then
                table.remove(self.ccPlans, 1)
            end

            -- Match the prediction with an already observed projectile.
            for _, projectile in ipairs(self.Projectiles or {}) do
                if projectile.part
                   and projectile.part.Name == plan.part
                   and not projectile.planVelocity
                   and (projectile.part.Position - plan.position).Magnitude
                       < plan.matchDistance then

                    projectile.planVelocity = plan.velocity
                    projectile.expireAt =
                        math.min(
                            projectile.expireAt or math.huge,
                            tick() + duration + 0.5
                        )
                end
            end

            return
        end

        if eventName ~= "Second Boss Moving Beam" then
            return
        end

        self.beamPlan = {
            distance = tonumber(data[1]) or 0,
            duration = tonumber(data[2]) or 1,
            cframe = data[5],
            createdAt = tick(),
        }

        -- The original attaches this plan to tracked beams.
        for _, beam in pairs(self.beamTrack or {}) do
            if not beam.plan then
                self:AttachBeamPlan(beam)
            end
        end
    end)
end

function Core:AttachBeamPlan(beam)
    -- Hook for original beam tracking.
end


---------------------------------------------------------------------
-- 3. Generic incoming-projectile sidestep
---------------------------------------------------------------------

function Core:ChooseProjectileSidestep(characterController, projectile, playerPosition)
    if not projectile or not projectile.part then
        return false
    end

    local part = projectile.part
    if not part.Parent then
        return false
    end

    -- Original has several game-specific ignore rules here:
    -- owned objects, Bonus Boss protected missiles/orbs, etc.

    local root = characterController:GetRoot()
    local rootHalfHeight =
        (root and root.Size.Y / 2) or 2

    -- Predict candidate side directions from the projectile velocity.
    local direction =
        characterController:PredictProjectileDirection(
            part,
            projectile,
            playerPosition
        )

    if direction.Magnitude <= 0.1 then
        return false
    end

    direction = direction.Unit

    local side = Vector3.new(-direction.Z, 0, direction.X)

    local candidates = {
        {
            direction = side,
            distance = self.incomingSide or 8,
        },
        {
            direction = -side,
            distance = self.incomingSide or 8,
        },
    }

    local chosenPosition
    local chosenCandidate

    local fallbackPosition
    local fallbackCandidate

    for _, candidate in ipairs(candidates) do
        local clearDistance =
            characterController:GetClearDistance(
                playerPosition,
                candidate.direction,
                candidate.distance + 6,
                true
            )

        if clearDistance >= candidate.distance then
            local position =
                playerPosition +
                candidate.direction * candidate.distance

            local groundY =
                characterController:GetGroundY(
                    position.X,
                    position.Z,
                    playerPosition.Y
                )

            position = Vector3.new(
                position.X,
                (groundY or playerPosition.Y) + rootHalfHeight,
                position.Z
            )

            local safe =
                not characterController:IsBlocked(position)
                and characterController:FutureSafe(
                    position,
                    candidate.distance
                )
                and characterController:LeashOK(position)

            if safe
               and characterController:PathHasNoHitbox(
                    playerPosition,
                    position
               )
               and characterController:PathMoveSafe(
                    playerPosition,
                    position
               ) then

                chosenPosition = position
                chosenCandidate = candidate
                break
            end

            if not fallbackPosition then
                fallbackPosition = position
                fallbackCandidate = candidate
            end
        end
    end

    if not chosenPosition then
        chosenPosition = fallbackPosition
        chosenCandidate = fallbackCandidate
    end

    -- Last-resort escape location.
    if not chosenPosition then
        chosenPosition =
            characterController:OpenEscape(
                playerPosition,
                {
                    prefer = direction,
                    distance = 16,
                }
            )

        if not chosenPosition then
            return false
        end

        chosenCandidate = {
            distance =
                (chosenPosition - playerPosition).Magnitude,
        }
    end

    self.projGoal = chosenPosition
    self.projDirty = fallbackPosition ~= nil
    self.projGoalUntil =
        tick() + (self.incomingCommit or 0.5)

    self.dodgeGoal = nil
    self.retreatGoal = nil

    characterController:SetDestination(
        chosenPosition,
        false
    )

    return true
end


---------------------------------------------------------------------
-- 4. Leash validation
---------------------------------------------------------------------

function Core:IsInsideBossLeash(target, position)
    if not target then
        return true
    end

    -- Special Bob The Frost Giant leash.
    if target.Name == "Bob The Frost Giant" then
        local bossHome =
            self.BossHome
            and self.BossHome[target.Name]

        if bossHome and bossHome.enabled then
            local home = bossHome.position
            local distance =
                Vector3.new(
                    position.X - home.X,
                    0,
                    position.Z - home.Z
                ).Magnitude

            if distance <= bossHome.leash then
                return true
            end

            local root = self:GetRoot()
            if root then
                local currentDistance =
                    Vector3.new(
                        root.Position.X - home.X,
                        0,
                        root.Position.Z - home.Z
                    ).Magnitude

                return distance <= currentDistance + 2
            end
        end

        return true
    end

    local leash = self.Leash and self.Leash[target.Name]

    if not leash then
        return true
    end

    local distance =
        Vector3.new(
            position.X - leash.center.X,
            0,
            position.Z - leash.center.Z
        ).Magnitude

    return distance <= leash.radius
end


---------------------------------------------------------------------
-- 5. Skill activation
---------------------------------------------------------------------

function Core:TryUseSkill(skillName, ignoreNormalDelay)
    local character = self.Character
    local humanoid =
        character and character:FindFirstChildOfClass("Humanoid")

    if not humanoid or humanoid.Health <= 0 then
        return false
    end

    if self:IsSkillCooldown(skillName) then
        return false
    end

    local skill =
        self:GetSkillPath(string.lower(skillName))

    if not skill then
        return false
    end

    -- Skills in SkillNoDelay bypass the normal spawn/facing check.
    if not (self.SkillNoDelay[skill.Name] == true) then
        if not ignoreNormalDelay and self:JustSpawned() then
            return false
        end

        if not self:IsFacingTarget() then
            return false
        end
    end

    local now = tick()

    if now - self.lastSkillAt < self.skillGap then
        return false
    end

    local cooldownKey = "Skill_" .. tostring(skillName)

    if now - (self.Cooldown[cooldownKey] or 0)
        < self.skillCooldown then
        return false
    end

    local localEvent = skill:FindFirstChild("localEvent")

    if not localEvent then
        return false
    end

    self.Cooldown[cooldownKey] = now
    self.lastSkillAt = now

    localEvent:Fire()

    -- The original also sends the skill through a RemoteEvent.
    self.SkillRemote:FireServer(
        string.lower(skillName),
        skill
    )

    return true
end


---------------------------------------------------------------------
-- 6. Nearest usable route node
---------------------------------------------------------------------

function Core:FindNearestRouteNode(position)
    local candidates = {}

    for index, node in ipairs(self.ROUTE_POINTS or {}) do
        local horizontalDistance =
            Vector3.new(
                node.pos.X - position.X,
                0,
                node.pos.Z - position.Z
            ).Magnitude

        local verticalDistance =
            math.abs(node.pos.Y - position.Y)

        if horizontalDistance <= self.routeNodeRange
           and verticalDistance <= self.routeNodeMaxDrop then

            table.insert(candidates, {
                index = index,
                score =
                    horizontalDistance +
                    verticalDistance * self.routeElevWeight,
            })
        end
    end

    if #candidates == 0 then
        return nil
    end

    table.sort(candidates, function(a, b)
        return a.score < b.score
    end)

    -- Prefer the nearest node that has line of sight.
    for i = 1, math.min(
        #candidates,
        self.routeLOSChecks
    ) do
        local node =
            self.ROUTE_POINTS[candidates[i].index]

        if not self:HasWallBetween(position, node.pos) then
            return candidates[i].index
        end
    end

    -- If every candidate is obstructed, return the nearest one.
    return candidates[1].index
end


---------------------------------------------------------------------
-- 7. Bonus Boss: safe-angle calculation for long-line attack
---------------------------------------------------------------------

function Core:CalculateSafeLongLineAngles(longLine)
    if longLine.safe then
        return longLine.safe
    end

    local angles = {}

    for _, angle in ipairs(longLine.angles or {}) do
        angles[#angles + 1] = angle % 360
        angles[#angles + 1] = (angle + 180) % 360
    end

    table.sort(angles)

    local safe = {}

    for i = 1, #angles do
        local a = angles[i]
        local b = angles[(i % #angles) + 1]

        if i == #angles then
            b = b + 360
        end

        -- The original only considers gaps >= 12 degrees safe.
        if b - a >= 12 then
            safe[#safe + 1] =
                math.rad((a + b) / 2)
        end
    end

    longLine.safe = safe
    return safe
end


return Core

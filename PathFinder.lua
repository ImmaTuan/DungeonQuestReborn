-- ============================================================================
-- UNIVERSAL AUTO DUNGEON (LOCAL PLAYER DEATH REPLAY V4.9)
-- ============================================================================
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local savedPath = {}
local isRecording = false
local isReplaying = false
local dungeonHasLoadedMonsters = false
local lastReplayTime = 0

-- ============================================================================
-- 1. QUẢN LÝ TỆP & CẤU HÌNH (_G)
-- ============================================================================
local FOLDER_NAME = "LomeHub"

if makefolder and not isfolder(FOLDER_NAME) then
    pcall(function() makefolder(FOLDER_NAME) end)
end

local CONFIG_FILE_PATH = FOLDER_NAME .. "/AutoReplayConfig.json"

local function saveConfig()
    local configData = {
        AutoReplayState = (_G.AutoReplayState == true),
        TargetDistance  = tonumber(_G.maxTargetDistance) or 100,
        SkillCooldown   = tonumber(_G.skillCooldown) or 0.15,
        AutoStart       = (_G.autoStart == true),
        AutoReplay      = (_G.autoReplay == true),
        UseAbilityFirst = (_G.useAbilityFirst == true)
    }
    pcall(function()
        if writefile then
            writefile(CONFIG_FILE_PATH, HttpService:JSONEncode(configData))
        end
    end)
end

local function loadConfig()
    _G.AutoReplayState  = false
    _G.maxTargetDistance = 100
    _G.skillCooldown    = 0.15
    _G.autoStart        = true
    _G.autoReplay       = true
    _G.useAbilityFirst  = false

    if isfile and isfile(CONFIG_FILE_PATH) then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile(CONFIG_FILE_PATH))
        end)
        if success and type(result) == "table" then
            if result.AutoReplayState ~= nil then _G.AutoReplayState = result.AutoReplayState end
            if result.TargetDistance ~= nil  then _G.maxTargetDistance = result.TargetDistance end
            if result.SkillCooldown ~= nil   then _G.skillCooldown = result.SkillCooldown end
            if result.AutoStart ~= nil       then _G.autoStart = result.AutoStart end
            if result.AutoReplay ~= nil      then _G.autoReplay = result.AutoReplay end
            if result.UseAbilityFirst ~= nil then _G.useAbilityFirst = result.UseAbilityFirst end
        end
    end
end

loadConfig()

local function getCurrentDungeonName()
    local dNameVal = Workspace:FindFirstChild("dungeonName") or Workspace:WaitForChild("dungeonName", 3)
    if dNameVal and dNameVal:IsA("StringValue") and dNameVal.Value ~= "" then
        return dNameVal.Value
    end

    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:IsA("StringValue") and string.lower(obj.Name) == "dungeonname" and obj.Value ~= "" then
            return obj.Value
        end
    end

    return "Unknown_Dungeon"
end

local function isHardcoreMap()
    local hcVal = Workspace:FindFirstChild("isHardcore") or Workspace:FindFirstChild("hardcore")
    if hcVal then
        if hcVal:IsA("BoolValue") then return hcVal.Value end
        if hcVal:IsA("StringValue") then return string.lower(hcVal.Value) == "true" end
        if hcVal:IsA("IntValue") or hcVal:IsA("NumberValue") then return hcVal.Value == 1 end
    end
    
    local dName = string.lower(getCurrentDungeonName())
    return string.find(dName, "hardcore") ~= nil or string.find(dName, "hc") ~= nil
end

local function getPathFilePath()
    local dungeonName = getCurrentDungeonName()
    local cleanName = string.gsub(dungeonName, "[%s%p]+", "_")
    return FOLDER_NAME .. "/DungeonPath_" .. cleanName .. ".json"
end

local function savePathToFile()
    if #savedPath == 0 then return false end
    local rawData = {}
    for _, pos in ipairs(savedPath) do 
        table.insert(rawData, {X = pos.X, Y = pos.Y, Z = pos.Z}) 
    end
    
    local filePath = getPathFilePath()
    local success = pcall(function() 
        writefile(filePath, HttpService:JSONEncode(rawData)) 
    end)
    return success
end

local function loadPathFromFile()
    local filePath = getPathFilePath()
    if not isfile or not isfile(filePath) then return false end
    
    local success = pcall(function()
        local content = readfile(filePath)
        local rawData = HttpService:JSONDecode(content)
        savedPath = {}
        for _, p in ipairs(rawData) do 
            table.insert(savedPath, Vector3.new(p.X, p.Y, p.Z)) 
        end
    end)
    return success and #savedPath > 0
end

-- ============================================================================
-- 2. TÌM QUÁI & XẢ SKILL
-- ============================================================================
local function isMonsterAlive(enemyInstance)
    if not enemyInstance or not enemyInstance.Parent then return false end
    if not enemyInstance:IsA("Model") or string.lower(enemyInstance.Name) == "spawn" then return false end

    local hum = enemyInstance:FindFirstChildOfClass("Humanoid")
    if hum then
        return hum.Health > 0 and hum:GetState() ~= Enum.HumanoidStateType.Dead
    end
    return true
end

local function getClosestMonster()
    local totalMonsters = 0
    local dungeon = Workspace:FindFirstChild("dungeon") or Workspace:FindFirstChild("Dungeon")
    
    if dungeon then
        for _, room in ipairs(dungeon:GetChildren()) do
            local enemyFolder = room:FindFirstChild("enemyFolder") or room:FindFirstChild("enemies") or room
            if enemyFolder then
                for _, enemy in ipairs(enemyFolder:GetChildren()) do
                    if isMonsterAlive(enemy) then
                        totalMonsters = totalMonsters + 1
                        dungeonHasLoadedMonsters = true
                    end
                end
            end
        end
    end

    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return nil, nil, totalMonsters end

    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return nil, nil, totalMonsters end

    local root = char.HumanoidRootPart
    local closestModel, closestPart = nil, nil
    local minDist = _G.maxTargetDistance or 100

    if dungeon then
        for _, room in ipairs(dungeon:GetChildren()) do
            local enemyFolder = room:FindFirstChild("enemyFolder") or room:FindFirstChild("enemies") or room
            if enemyFolder then
                for _, enemy in ipairs(enemyFolder:GetChildren()) do
                    if isMonsterAlive(enemy) then
                        local enemyPart = enemy.PrimaryPart 
                                       or enemy:FindFirstChild("HumanoidRootPart") 
                                       or enemy:FindFirstChildOfClass("Part") 
                                       or enemy:FindFirstChildOfClass("MeshPart")

                        if enemyPart then
                            local dist = (root.Position - enemyPart.Position).Magnitude
                            if dist <= minDist then
                                minDist = dist
                                closestModel = enemy
                                closestPart = enemyPart
                            end
                        end
                    end
                end
            end
        end
    end

    return closestModel, closestPart, totalMonsters
end

local function aimAtTargetAsync(targetPart)
    task.spawn(function()
        local char = LocalPlayer.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        if root and targetPart and targetPart.Parent then
            local targetPosition = Vector3.new(targetPart.Position.X, root.Position.Y, targetPart.Position.Z)
            root.CFrame = CFrame.new(root.Position, targetPosition)
        end
    end)
end

local function fireSkillObject(obj, targetPart, targetModel)
    if targetPart and isMonsterAlive(targetModel) then 
        aimAtTargetAsync(targetPart) 
    end
    
    pcall(function()
        if obj:IsA("RemoteEvent") then
            obj:FireServer(targetPart, targetModel)
            obj:FireServer()
        elseif obj:IsA("RemoteFunction") then
            obj:InvokeServer(targetPart, targetModel)
        end
    end)
    
    task.wait(_G.skillCooldown or 0.15)
end

local function castBackpackSkills(targetModel, targetPart)
    local char = LocalPlayer.Character
    if not char then return end
    local charHum = char:FindFirstChildOfClass("Humanoid")
    if not charHum or charHum.Health <= 0 then return end

    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local containers = {}
    if backpack then table.insert(containers, backpack) end
    table.insert(containers, char)

    local abilityRemotes = {}
    local normalRemotes = {}

    for _, folder in ipairs(containers) do
        for _, item in ipairs(folder:GetChildren()) do
            for _, obj in ipairs(item:GetDescendants()) do
                if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
                    local lowerName = string.lower(obj.Name)
                    if string.find(lowerName, "ability") then
                        table.insert(abilityRemotes, obj)
                    else
                        table.insert(normalRemotes, obj)
                    end
                end
            end
        end
    end

    if _G.useAbilityFirst then
        for _, obj in ipairs(abilityRemotes) do
            if not isMonsterAlive(targetModel) then return end
            fireSkillObject(obj, targetPart, targetModel)
        end
        
        for _, obj in ipairs(normalRemotes) do
            if not isMonsterAlive(targetModel) then return end
            fireSkillObject(obj, targetPart, targetModel)
        end
    else
        for _, folder in ipairs(containers) do
            for _, item in ipairs(folder:GetChildren()) do
                if not isMonsterAlive(targetModel) then return end
                for _, obj in ipairs(item:GetDescendants()) do
                    if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
                        if not isMonsterAlive(targetModel) then return end
                        fireSkillObject(obj, targetPart, targetModel)
                    end
                end
            end
        end
    end
end

task.spawn(function()
    while true do
        task.wait(0.05)
        if _G.AutoReplayState then
            pcall(function()
                local monsterModel, monsterPart = getClosestMonster()
                if monsterModel and monsterPart and isMonsterAlive(monsterModel) then
                    castBackpackSkills(monsterModel, monsterPart)
                end
            end)
        end
    end
end)

-- ============================================================================
-- 3. LOGIC AUTO START & AUTO REPLAY
-- ============================================================================
local function triggerAutoStart()
    local remotes = ReplicatedStorage:FindFirstChild("remotes")
    if remotes and remotes:FindFirstChild("changeStartValue") then
        pcall(function() remotes.changeStartValue:FireServer() end)
    end
end

local function triggerAutoReplay()
    if tick() - lastReplayTime < 3 then return end
    lastReplayTime = tick()
    
    local remotes = ReplicatedStorage:FindFirstChild("remotes") or ReplicatedStorage:FindFirstChild("Remotes")
    if not remotes then return end
    
    local replayRemote = remotes:FindFirstChild("replayDungeon") 
                      or remotes:FindFirstChild("ReplayDungeon")
                      or remotes:FindFirstChild("replay")

    if replayRemote then
        local currentMap = getCurrentDungeonName()
        local hcState = isHardcoreMap()
        pcall(function()
            replayRemote:FireServer({
                dungeonProgress = "finished",
                dungeonStarted = false,
                dungeonFinished = true,
                hardcore = hcState,
                dungeonName = currentMap,
                isHardcore = hcState,
                fightingBoss = false
            })
        end)
        pcall(function() replayRemote:FireServer(currentMap) end)
    end
end

-- Bắt sự kiện CHỈ KHI BẢN THÂN (LOCAL PLAYER) CHẾT
local function setupDeathListener(char)
    local hum = char:WaitForChild("Humanoid", 10)
    if hum then
        hum.Died:Connect(function()
            if _G.AutoReplayState and _G.autoReplay then
                task.wait(1.5)
                triggerAutoReplay()
            end
        end)
    end
end

if LocalPlayer.Character then setupDeathListener(LocalPlayer.Character) end
LocalPlayer.CharacterAdded:Connect(setupDeathListener)

task.spawn(function()
    while true do
        task.wait(1)
        if _G.autoStart then triggerAutoStart() end
        if _G.AutoReplayState and _G.autoReplay then
            local char = LocalPlayer.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            
            -- Nếu bản thân chết thì gửi Replay ngay
            if hum and hum.Health <= 0 then
                triggerAutoReplay()
                task.wait(3)
            elseif hum and hum.Health > 0 then
                -- Nếu còn sống thì kiểm tra hết quái để Replay
                local dungeon = Workspace:FindFirstChild("dungeon") or Workspace:FindFirstChild("Dungeon")
                if dungeon then
                    local _, _, totalMonsters = getClosestMonster()
                    if dungeonHasLoadedMonsters and totalMonsters == 0 then
                        triggerAutoReplay()
                        dungeonHasLoadedMonsters = false
                        task.wait(5)
                    end
                end
            end
        end
    end
end)

Workspace.ChildAdded:Connect(function(child)
    if string.lower(child.Name) == "dungeon" then dungeonHasLoadedMonsters = false end
end)

-- ============================================================================
-- 4. LOGIC DI CHUYỂN PATH
-- ============================================================================
local function getClosestPathIndex()
    local char = LocalPlayer.Character
    if not char then return 1 end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root or #savedPath == 0 then return 1 end

    local closestIndex = 1
    local minDist = math.huge
    for index, pos in ipairs(savedPath) do
        local dist = (root.Position - pos).Magnitude
        if dist < minDist then
            minDist = dist
            closestIndex = index
        end
    end
    return closestIndex
end

local function startReplayLogic(statusLabel)
    if isReplaying or #savedPath == 0 then return end
    isReplaying = true
    
    task.spawn(function()
        while _G.AutoReplayState do
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local hum = char:WaitForChild("Humanoid", 10)
            local root = char:WaitForChild("HumanoidRootPart", 10)
            
            if hum and root and hum.Health > 0 then
                local currentIndex = getClosestPathIndex()
                
                while _G.AutoReplayState and hum and hum.Health > 0 and currentIndex <= #savedPath do
                    local monsterModel, monsterPart = getClosestMonster()
                    while monsterModel and isMonsterAlive(monsterModel) and _G.AutoReplayState do
                        if statusLabel then statusLabel.Text = "⚔️ Đang tiêu diệt quái..." end
                        hum:MoveTo(root.Position)
                        task.wait(0.2)
                        monsterModel, monsterPart = getClosestMonster()
                    end

                    local targetPos = savedPath[currentIndex]
                    if statusLabel then statusLabel.Text = "Điểm: " .. tostring(currentIndex) .. "/" .. tostring(#savedPath) end
                    
                    hum:MoveTo(targetPos)
                    
                    local moveFinished = false
                    local conn = hum.MoveToFinished:Connect(function() moveFinished = true end)

                    local timeOut = 0
                    while not moveFinished and timeOut < 1.2 do
                        if not _G.AutoReplayState or hum.Health <= 0 then break end
                        local midMonster = getClosestMonster()
                        if midMonster and isMonsterAlive(midMonster) then break end
                        if (root.Position - targetPos).Magnitude <= 3.5 then break end
                        task.wait(0.05)
                        timeOut = timeOut + 0.05
                    end

                    conn:Disconnect()
                    
                    local endMonster = getClosestMonster()
                    if not endMonster or not isMonsterAlive(endMonster) then
                        currentIndex = currentIndex + 1
                    end
                end
            end
            
            if LocalPlayer.Character then
                local currentHum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if not currentHum or currentHum.Health <= 0 then
                    LocalPlayer.CharacterAdded:Wait()
                    task.wait(1)
                end
            end
            
            task.wait(0.05)
            if not _G.AutoReplayState then break end
        end
        isReplaying = false
        if statusLabel then statusLabel.Text = "Trạng thái: Dừng" end
    end)
end

LocalPlayer.CharacterAdded:Connect(function()
    if _G.AutoReplayState then
        task.wait(1)
        isReplaying = false
        if #savedPath > 0 or loadPathFromFile() then
            startReplayLogic()
        end
    end
end)

-- ============================================================================
-- 5. GIAO DIỆN GUI
-- ============================================================================
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoPathDungeonGUI"
screenGui.ResetOnSpawn = false

if gethui then screenGui.Parent = gethui()
elseif syn and syn.protect_gui then syn.protect_gui(screenGui); screenGui.Parent = CoreGui
else screenGui.Parent = CoreGui end

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 210, 0, 395)
mainFrame.Position = UDim2.new(0.05, 0, 0.2, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
title.Text = "Lọ meme DungeonQ V4.9"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 10
title.Font = Enum.Font.SourceSansBold
title.Parent = mainFrame

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -10, 0, 20)
statusLabel.Position = UDim2.new(0, 5, 0, 30)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Trạng thái: Đang tải..."
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.TextSize = 11
statusLabel.Font = Enum.Font.SourceSans
statusLabel.Parent = mainFrame

local function createButton(text, posY, color)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 26)
    btn.Position = UDim2.new(0, 10, 0, posY)
    btn.BackgroundColor3 = color
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 11
    btn.Font = Enum.Font.SourceSansBold
    btn.Parent = mainFrame
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    return btn
end

local autoToggleBtn    = createButton("⚡ Auto Path: OFF", 55, Color3.fromRGB(150, 50, 50))
local startToggleBtn   = createButton("▶️ Auto Start: ON", 85, Color3.fromRGB(40, 160, 60))
local replayToggleBtn  = createButton("🔄 Auto Replay: ON", 115, Color3.fromRGB(40, 160, 60))
local abilityToggleBtn = createButton("✨ Inner: OFF", 145, Color3.fromRGB(150, 50, 50))

local rangeControl, delayControl

local function createSliderWithTextBox(posY, labelText, minVal, maxVal, defaultVal, isFloat, callback)
    local container = Instance.new("Frame", mainFrame)
    container.Size = UDim2.new(1, -20, 0, 42)
    container.Position = UDim2.new(0, 10, 0, posY)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    Instance.new("UICorner", container).CornerRadius = UDim.new(0, 6)

    local lbl = Instance.new("TextLabel", container)
    lbl.Size = UDim2.new(0.5, 0, 0, 20)
    lbl.Position = UDim2.new(0, 8, 0, 2)
    lbl.BackgroundTransparency = 1
    lbl.Text = labelText
    lbl.TextColor3 = Color3.fromRGB(200, 200, 200)
    lbl.TextSize = 10
    lbl.Font = Enum.Font.SourceSansBold
    lbl.TextXAlignment = Enum.TextXAlignment.Left

    local box = Instance.new("TextBox", container)
    box.Size = UDim2.new(0, 55, 0, 18)
    box.Position = UDim2.new(1, -63, 0, 3)
    box.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    box.TextColor3 = Color3.fromRGB(100, 220, 255)
    box.TextSize = 10
    box.Font = Enum.Font.SourceSansBold
    box.ClearTextOnFocus = false
    Instance.new("UICorner", box).CornerRadius = UDim.new(0, 4)

    local sliderBg = Instance.new("Frame", container)
    sliderBg.Size = UDim2.new(1, -16, 0, 8)
    sliderBg.Position = UDim2.new(0, 8, 0, 26)
    sliderBg.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    Instance.new("UICorner", sliderBg).CornerRadius = UDim.new(0, 4)

    local sliderFill = Instance.new("Frame", sliderBg)
    sliderFill.Size = UDim2.new(0, 0, 1, 0)
    sliderFill.BackgroundColor3 = Color3.fromRGB(40, 120, 220)
    Instance.new("UICorner", sliderFill).CornerRadius = UDim.new(0, 4)

    local function setVal(val, updateBox, triggerSave)
        if triggerSave == nil then triggerSave = true end
        val = math.clamp(val, minVal, maxVal)
        if isFloat then val = math.floor(val * 100 + 0.5) / 100 else val = math.floor(val + 0.5) end
        
        local percent = (val - minVal) / (maxVal - minVal)
        sliderFill.Size = UDim2.new(percent, 0, 1, 0)
        
        if updateBox then
            box.Text = isFloat and string.format("%.2f", val) or tostring(val)
        end
        
        if triggerSave then
            callback(val)
        end
    end

    setVal(defaultVal or minVal, true, false)

    box.FocusLost:Connect(function()
        local num = tonumber(box.Text)
        setVal(num or defaultVal, true, true)
    end)

    local dragging = false
    local function updateFromInput(input)
        local pos = input.Position.X - sliderBg.AbsolutePosition.X
        local percent = math.clamp(pos / sliderBg.AbsoluteSize.X, 0, 1)
        local val = minVal + (maxVal - minVal) * percent
        setVal(val, true, true)
    end

    sliderBg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            updateFromInput(input)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateFromInput(input)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    return { setVal = setVal }
end

rangeControl = createSliderWithTextBox(178, "🎯 Tầm đánh:", 10, 300, _G.maxTargetDistance, false, function(v)
    _G.maxTargetDistance = v
    saveConfig()
end)

delayControl = createSliderWithTextBox(225, "⚡ Delay Skill:", 0.05, 1.0, _G.skillCooldown, true, function(v)
    _G.skillCooldown = v
    saveConfig()
end)

local recordBtn = createButton("🔴 Ghi Đường Mới", 275, Color3.fromRGB(60, 60, 70))
local saveBtn   = createButton("💾 Lưu Đường Vừa Ghi", 307, Color3.fromRGB(40, 120, 180))

local function updateUIStates()
    if autoToggleBtn then
        autoToggleBtn.Text = _G.AutoReplayState and "⚡ Auto Path: ON" or "⚡ Auto Path: OFF"
        autoToggleBtn.BackgroundColor3 = _G.AutoReplayState and Color3.fromRGB(40, 160, 60) or Color3.fromRGB(150, 50, 50)
    end

    if startToggleBtn then
        startToggleBtn.Text = _G.autoStart and "▶️ Auto Start: ON" or "▶️ Auto Start: OFF"
        startToggleBtn.BackgroundColor3 = _G.autoStart and Color3.fromRGB(40, 160, 60) or Color3.fromRGB(150, 50, 50)
    end

    if replayToggleBtn then
        replayToggleBtn.Text = _G.autoReplay and "🔄 Auto Replay: ON" or "🔄 Auto Replay: OFF"
        replayToggleBtn.BackgroundColor3 = _G.autoReplay and Color3.fromRGB(40, 160, 60) or Color3.fromRGB(150, 50, 50)
    end

    if abilityToggleBtn then
        abilityToggleBtn.Text = _G.useAbilityFirst and "✨ Inner: ON" or "✨ Inner: OFF"
        abilityToggleBtn.BackgroundColor3 = _G.useAbilityFirst and Color3.fromRGB(40, 160, 60) or Color3.fromRGB(150, 50, 50)
    end

    if rangeControl then rangeControl.setVal(_G.maxTargetDistance, true, false) end
    if delayControl then delayControl.setVal(_G.skillCooldown, true, false) end
end

autoToggleBtn.MouseButton1Click:Connect(function()
    _G.AutoReplayState = not _G.AutoReplayState
    saveConfig()
    updateUIStates()
    
    if _G.AutoReplayState then
        if #savedPath > 0 or loadPathFromFile() then
            statusLabel.Text = "Đã bật Auto Path!"
            startReplayLogic(statusLabel)
        else
            statusLabel.Text = "Chưa có file lưu map này!"
        end
    else
        statusLabel.Text = "Đã tắt Auto."
    end
end)

startToggleBtn.MouseButton1Click:Connect(function()
    _G.autoStart = not _G.autoStart
    saveConfig()
    updateUIStates()
end)

replayToggleBtn.MouseButton1Click:Connect(function()
    _G.autoReplay = not _G.autoReplay
    saveConfig()
    updateUIStates()
end)

abilityToggleBtn.MouseButton1Click:Connect(function()
    _G.useAbilityFirst = not _G.useAbilityFirst
    saveConfig()
    updateUIStates()
end)

recordBtn.MouseButton1Click:Connect(function()
    if _G.AutoReplayState then
        statusLabel.Text = "TẮT Auto trước khi Record!"
        return
    end
    
    isRecording = not isRecording
    if isRecording then
        savedPath = {}
        recordBtn.Text = "⏹️ Dừng Ghi"
        recordBtn.BackgroundColor3 = Color3.fromRGB(220, 100, 0)
        
        task.spawn(function()
            while isRecording do
                local char = LocalPlayer.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                if root then
                    table.insert(savedPath, root.Position)
                    statusLabel.Text = "Đã ghi: " .. #savedPath .. " điểm"
                end
                task.wait(0.3)
            end
        end)
    else
        recordBtn.Text = "🔴 Ghi Đường Mới"
        recordBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
        statusLabel.Text = "Bấm [Lưu Đường] để lưu!"
    end
end)

saveBtn.MouseButton1Click:Connect(function()
    if savePathToFile() then
        statusLabel.Text = "💾 Đã lưu File thành công!"
    else
        statusLabel.Text = "❌ Chưa có dữ liệu ghi!"
    end
end)

-- Khởi chạy script & tải giao diện
task.spawn(function()
    task.wait(0.5)
    updateUIStates()
    
    local hasPath = loadPathFromFile()
    
    if _G.AutoReplayState then
        if hasPath then
            statusLabel.Text = "Khởi chạy Auto..."
            task.wait(1)
            startReplayLogic(statusLabel)
        else
            statusLabel.Text = "Chưa có File đường đi!"
        end
    else
        if hasPath then
            statusLabel.Text = "File sẵn sàng (" .. #savedPath .. " điểm)"
        else
            statusLabel.Text = "Chưa có File đường đi"
        end
    end
end)

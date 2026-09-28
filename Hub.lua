return setmetatable({EM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D, m)
  if z then
    if D <= 32 then
      local z = (S + (e * H)) % 256
      u[91](Y, T, (u[116](z, F, (u[39](G, T + m)))))
      return 21, z, T, Q, A, U
    else
      A(Y, T, (u[116](m, U(G, N), Q)))
      local z, N = 4, ((Q * F) + S) % 256
      u[91](Y, z, (u[116](N, m, (u[39](G, z + e)))))
      z = 5
      local g = ((N * F) + S) % 256
      return 85, e, z, g, u[91], (u[116](m, g, (u[39](G, e + z))))
    end
  elseif D <= 34 then
    A(Y, T, U)
    local z, N = 4, (S + (F * Q)) % 256
    u[91](Y, z, (u[116](N, m, (u[39](G, e + z)))))
    z = 5
    local D = ((F * N) + S) % 256
    u[91](Y, z, (u[116](m, D, (u[39](G, e + z)))))
    return 154, e, 6, S + (F * D), 256, U
  else
    local G = ((S * e) + Y) % 256
    u[91](T, Q, (u[116](u[39](H, Q + m), F, G)))
    return 64, G, T, Q, A, U
  end
end, [13733] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    local Y = U.CFrame.LookVector
    local T = Vector3.new(Y.X, 0, Y.Z)
    if T.Magnitude < 0.1 then
      return
    end
    Y = tick()
    local G = u[1].bobz.beams
    G[#G + 1] = {c = u[2][4][u[2][7]](U.Position), u = T.Unit, tA = Y + Q, tB = Y + F, half = A}
  end
end, Yj = function(u, u, U, Q, F, A, Y, T)
  if U <= 164 then
    return 0, A + (Q * 4294967296), Q, u, F
  elseif U <= 165 then
    return 236, (128 * (A - 128)) + Q, 2, u, F
  else
    local U = (T - 128) + ((16384 * (Y - 128)) + (F * 128))
    return 190, A, Q, 3 + u, U
  end
end, [13598] = function(u, u, u, u, U)
  return function(U)
    if u[1].bob.home then
      return u[1].bob.home
    end
    local Q, F, A = {"red", "green", "yellow"}, Vector3.zero, 0
    for Y, T in ipairs(Q) do
      Y = U:GetCrystal(T)
      if Y then
        F, A = F + Y.Position, A + 1
      end
    end
    if A == 0 then
      return nil
    end
    local Q, Y = F / A, U:GetRoot()
    local T = u[2].BossHome["Bob The Frost Giant"]
    A = u[3][4][u[3][7]]("Bob The Frost Giant")
    F = (A and A.Parent) and (A.Parent:FindFirstChild("HumanoidRootPart"))
    if F and ((T.homeToward or 0) > 0) then
      A = Vector3.new(F.Position.X - Q.X, 0, F.Position.Z - Q.Z)
      Q = if A.Magnitude > 1 then Q + (A.Unit * T.homeToward) else Q
    end
    F = U:GetGroundY(Q.X, Q.Z, Q.Y + 5)
    u[1].bob.home = Vector3.new(Q.X, (F or Q.Y) + ((Y and (Y.Size.Y / 2)) or 1.5), Q.Z)
    return u[1].bob.home
  end
end, qM = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if z <= 68 then
    local z, e, D, m, g = 1 + U, 61, 233, (145 + G) % 256, 0
    return 36, z, 145, e, D, u[16](2), g, (D + (m * e)) % 256, u[91], u[39], z + g
  else
    local z = u[39](A, G + 1)
    return (not not (z >= 128) and 8) or 150, G, U, z, N, F, T, Q, Y, H, S
  end
end, [594] = function(u)
  return function(u)
    return Vector3.new(u.X, 0, u.Z)
  end
end, [7694] = function(u, u, u, u)
  return function(U, U, Q, F)
    local A = Vector3.new(Q.X - U.X, 0, Q.Z - U.Z)
    Q = A.Magnitude
    if Q < 1 then
      return false
    end
    local Y, T = A / Q, tick()
    A = (u[1].OrbMechanic and u[1].OrbMechanic.pathSkip) or 9
    while A <= (Q - 3) do
      local Q = U + (Y * A)
      local U = T + (A / math.max(F, 8))
      for F, Y in ipairs(u[2]) do
        local G = Y.part
        if (G and not u[3][4][u[3][7]](Y, T)) and (Y.expireAt > (U - 0.2)) then
          local U = Y.vel
          if not (U and (U.Magnitude >= u[4].incomingMinSpeed)) then
            if Y.ring then
              if u[5][4][u[5][7]](Y, G, Q) then
                return true
              end
            else
              F = G.Position
              local U = F.X - Q.X
              local T = F.Z - Q.Z
              local F = (((Y.size or G.Size).Magnitude * 0.5) + (Y.pad or 0)) + 6
              if (((U * U) + (T * T)) <= (F * F)) and (u[6][4][u[6][7]](Y, G.CFrame, u[7][4][u[7][7]](Y, G), Q)) then
                return true
              end
            end
          end
        end
      end
      A += 5
    end
    return false
  end
end, [10622] = function(u, u, u, u, U)
  return function(U, Q)
    local F = u[1].BonusBoss
    local A = {model = Q, at = tick(), safe = nil, registered = {}}
    u[2].bb.sweep = A
    while Q.Parent do
      for Y, T in ipairs(Q:GetChildren()) do
        local G, z = T:FindFirstChild("precast"), T:FindFirstChild("hitBox")
        if ((G and z) and not A.registered[z]) and (G.Transparency < 0.95) then
          A.registered[z] = true
          Y = U:RegisterHitbox(z, {lifetime = 20, pad = 3, owner = F.boss})
          if Y then
            Y.sweepBar = true
          end
          if not A.safe then
            local U, Y = (G.Position - F.sweepSafe.left).Magnitude, (G.Position - F.sweepSafe.right).Magnitude
            A.safe = ((U < Y) and F.sweepSafe.right) or F.sweepSafe.left
            A.safeName = ((U < Y) and "Right") or "left"
            local F = tonumber(T.Name)
            if F then
              local T = ((F >= 5) and {1, 2}) or {8, 9}
              local G = Vector3.zero
              local H = 0
              for N, S in ipairs(T) do
                N = Q:FindFirstChild(tostring(S))
                S = N and (N:FindFirstChild("hitBox"))
                if S then
                  G, H = G + u[3][4][u[3][7]](S.Position), H + 1
                end
              end
              if H > 0 then
                A.safeCenter = G / H
                A.axis = u[3][4][u[3][7]](z.CFrame.LookVector).Unit
              end
              if u[2].bbz and A.axis then
                H = Vector3.new(-A.axis.Z, 0, A.axis.X)
                for z = 1, 9, 1 do
                  G = false
                  for N, N in ipairs(T) do
                    G = if N == z then true else G
                  end
                  local T = Q:FindFirstChild(tostring(z))
                  local Q = T and (T:FindFirstChild("hitBox"))
                  if Q and not G then
                    T = u[2].bbz.beams
                    T[#T + 1] = {c = u[3][4][u[3][7]](Q.Position), u = H, half = 16, sweep = true, tA = (A.at + 1.4) + (math.abs(z - F) * 0.7), tB = A.at + 16}
                  end
                end
              end
            end
            u[4][4][u[4][7]]("state", "bbsweep", 0.5, "Sweeping \224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\157\224\184\177\224\185\136\224\184\135 %s \226\134\146 \224\184\171\224\184\153\224\184\181\224\185\132\224\184\155 %s", ((U < Y) and "left") or "Right", A.safeName)
          end
        end
      end
      task.wait(0.1)
    end
    for U in pairs(A.registered) do
      u[5]:RemoveHitbox(U)
    end
    if u[2].bb.sweep == A then
      u[2].bb.sweep = nil
    end
  end
end, [10728] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A = Q and (Q:FindFirstChild("HumanoidRootPart"))
    if not A then
      return nil, nil
    end
    local Y, T = U:GetModelExtents(Q), A.Position
    A = T.Y - Y.halfHeight
    if F then
      local F, G = {Q}, U:GetChar()
      if G then
        table.insert(F, G)
      end
      for U, U in ipairs(u[1]) do
        if U.part then
          table.insert(F, U.part)
        end
      end
      u[2].targetRayParams.FilterDescendantsInstances = F
      local U = (T.Y + Y.halfHeight) + 5
      local Q = ((Y.halfHeight * 2) + u[3].groundDown) + 10
      G = u[4][4][u[4][7]](Vector3.new(T.X, U, T.Z), Vector3.new(0, -Q, 0), u[2].targetRayParams)
      A = if G then G.Position.Y else A
    end
    return Vector3.new(T.X, A + 3, T.Z), Y
  end
end, zq = function(u, U, Q, F, A, Y, T, G, z, H)
  if Y <= 221 then
    if Y <= 220 then
      local N, S, e = ((H - 128) * 128) + T, F + 2, A[1]
      return 93, A[2], e, S, U, N, T
    else
      local N, S = F + 1, A[1]
      return 93, A[2], S, N, U, H, T
    end
  elseif Y <= 222 then
    local N, S, e = H + (128 * (U - 128)), F + 2, A[1]
    return 13, A[2], e, S, N, H, T
  elseif Y <= 223 then
    local Y, N, S, e = u[39](Q, F + 3), 128 * (T - 128), 2097152 * (z - 128), G - 128
    local u, Q = (Y % 128) * 16384, (Y - (Y % 128)) * 2097152
    local Y, D, m = (N + (u + S)) + (e + Q), 4 + F, A[1]
    return 83, A[2], m, D, U, H, Y
  else
    local u = T - 128
    local Q, Y, T = (((z - 128) * 16384) + (G * 128)) + u, F + 3, A[1]
    return 299, A[2], T, Y, U, H, Q
  end
end, zj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if Y <= 184 then
    local Y = u[39](e, N + 1)
    return (not (128 > Y) and 13) or 104, z, Y
  else
    F(S, U, (u[116](N, Q(H, z + U), G)))
    local U = 11
    u[91](S, U, (u[116]((T + (A * G)) % 256, N, (u[39](H, z + U)))))
    return 0, u[40](u[78](S, e), u[78](S, 4), (u[78](S, 8))), H
  end
end, [72] = function(u, u, u, u)
  return function(U, U, Q)
    u[1][U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\130\224\184\182\224\185\137\224\184\153\224\185\132\224\184\155\224\184\171\224\184\178 (\224\184\162\224\184\180\224\184\135\224\184\130\224\185\137\224\184\178\224\184\161\224\184\150\224\184\182\224\184\135)") or "\224\184\130\224\184\182\224\185\137\224\184\153\224\185\132\224\184\155\224\184\171\224\184\178\224\184\149\224\184\178\224\184\161\224\184\155\224\184\129\224\184\149\224\184\180")
  end
end, [86] = function(u)
  return function(u, U)
    u[tostring(U)] = 0
    return 0
  end
end, [496] = function(u, u, u, u, U, U)
  return function(U, Q)
    local F = U.size or Q.Size
    if not U.size then
      if U.shape == "Ball" then
        local A = math.min(F.X, F.Y, F.Z)
        F = (Vector3.new(A, A, A))
      elseif U.shape == "Cylinder" then
        local A = math.min(F.Y, F.Z)
        F = (Vector3.new(F.X, A, A))
      end
    end
    F = if U.pad and (U.pad > 0) then F + Vector3.new(U.pad, U.pad, U.pad) else F
    if U.autoPad then
      local U = u[1][4][u[1][7]](Q.CFrame)
      local Q, A = u[2].hitboxUpPad, u[2].hitboxSidePad
      F = if U == 0 then F + Vector3.new(Q, A, A) else if U == 2 then F + Vector3.new(A, A, Q) else F + Vector3.new(A, Q, A)
    end
    return F
  end
end, f = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if z <= 120 then
    e[Q] = D[G]
    F[0] = D[D[12]]
    H[0] = D[D[11]]
    u[68](N, U)
    u[68](e, U)
    u[68](F, U)
    u[68](H, U)
    local U = T[1]
    return 72, T[2], U, F, S
  elseif z <= 121 then
    local U, G, z, H = u[39](Q, 3 + F), (S - 128) * 128, (Y - 128) * 2097152, A - 128
    local u, Q = (U % 128) * 16384, (U - (U % 128)) * 2097152
    local U, N, e = ((G + u) + (Q + H)) + z, 4 + F, T[1]
    return 249, T[2], e, N, U
  else
    local u, U = S - 128, 16384 * (Y - 128)
    local Q, Y, G = (128 * A) + (U + u), F + 3, T[1]
    return 127, T[2], G, Y, Q
  end
end, Y = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if z <= 6 then
    if z <= 5 then
      Y[A] = S
      local Y = Q[1]
      return 67, N, Q[2], Y, H, A, G
    else
      S[F] = U
      local U = Q[1]
      return 110, N, Q[2], U, H, A, G
    end
  elseif z <= 7 then
    local U = u[39](T, H + 2)
    local Y, e = (not (U >= 128) and 254) or 263, Q[1]
    return Y, N, Q[2], e, H, A, U
  elseif z <= 8 then
    local U, Y, z, e = u[39](T, 3 + H), 128 * (A - 128), 2097152 * (S - 128), F - 128
    local u, F = (U % 128) * 16384, 2097152 * (U - (U % 128))
    local U, T, S = (z + u) + ((e + F) + Y), 4 + H, Q[1]
    return 273, N, Q[2], S, T, U, G
  else
    local u, U = N[1], Q[1]
    return 320, u, Q[2], U, H, A, G
  end
end, [29] = coroutine.isyieldable, [10374] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    u[1].BigEscape[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\184\171\224\184\153\224\184\181\224\184\173\224\184\173\224\184\129\224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\185\128\224\184\148\224\184\181\224\184\162\224\184\167") or "\224\184\171\224\184\165\224\184\154\224\185\129\224\184\154\224\184\154\224\184\155\224\184\129\224\184\149\224\184\180")
  end
end, [12859] = function(u, u, u, u)
  return function()
    local U, Q, F = 2
    while true do
      if U <= 3 then
        if U <= 1 then
          if U <= 0 then
            u[1][4][u[1][7]] = Q % F
            u[1][4][u[1][7]] = ((520455 * u[1][4][u[1][7]]) + 135318513) % 268435456
            u[1][4][u[1][7]] = ((198331 * u[1][4][u[1][7]]) + 145625341) % 268435456
            u[1][4][u[1][7]] = ((441757 * u[1][4][u[1][7]]) + 42289539) % 268435456
            U, Q = 3, 56055 * u[1][4][u[1][7]]
          else
            u[1][4][u[1][7]] = (Q + F) % 268435456
            u[1][4][u[1][7]] = ((220943 * u[1][4][u[1][7]]) + 251083919) % 268435456
            u[1][4][u[1][7]] = ((103585 * u[1][4][u[1][7]]) + 206908639) % 268435456
            u[1][4][u[1][7]], U, Q = ((397001 * u[1][4][u[1][7]]) + 249763733) % 268435456, 6, 530607
          end
        elseif U <= 2 then
          u[1][4][u[1][7]] = ((1043041 * u[1][4][u[1][7]]) + 144387613) % 268435456
          u[1][4][u[1][7]] = ((702629 * u[1][4][u[1][7]]) + 133953005) % 268435456
          u[1][4][u[1][7]] = ((982309 * u[1][4][u[1][7]]) + 30633733) % 268435456
          U, Q = 8, (871421 * u[1][4][u[1][7]]) + 220561983
        else
          u[1][4][u[1][7]] = (Q + 68944523) % 268435456
          u[1][4][u[1][7]] = ((270811 * u[1][4][u[1][7]]) + 186325213) % 268435456
          u[1][4][u[1][7]] = ((795255 * u[1][4][u[1][7]]) + 193136235) % 268435456
          u[1][4][u[1][7]], U = ((939417 * u[1][4][u[1][7]]) + 122325071) % 268435456, 7
        end
      elseif U <= 5 then
        if U <= 4 then
          u[1][4][u[1][7]] = Q
          u[1][4][u[1][7]] = ((940177 * u[1][4][u[1][7]]) + 122241107) % 268435456
          u[1][4][u[1][7]] = ((16595 * u[1][4][u[1][7]]) + 226137055) % 268435456
          u[1][4][u[1][7]] = ((631395 * u[1][4][u[1][7]]) + 240655231) % 268435456
          U, Q, F = 1, 597625 * u[1][4][u[1][7]], 3153831
        else
          u[1][4][u[1][7]] = ((Q * F) + 218388327) % 268435456
          u[1][4][u[1][7]] = ((767129 * u[1][4][u[1][7]]) + 147800313) % 268435456
          u[1][4][u[1][7]] = ((539885 * u[1][4][u[1][7]]) + 263686791) % 268435456
          U, Q = 4, ((340951 * u[1][4][u[1][7]]) + 165765831) % 268435456
        end
      elseif U <= 6 then
        u[1][4][u[1][7]] = ((Q * u[1][4][u[1][7]]) + 129437113) % 268435456
        u[1][4][u[1][7]] = ((609233 * u[1][4][u[1][7]]) + 152992449) % 268435456
        u[1][4][u[1][7]] = ((1002569 * u[1][4][u[1][7]]) + 28752305) % 268435456
        U, Q, F = 0, (16581 * u[1][4][u[1][7]]) + 177686447, 268435456
      elseif U <= 7 then
        return
      else
        u[1][4][u[1][7]] = Q % 268435456
        u[1][4][u[1][7]] = ((262493 * u[1][4][u[1][7]]) + 243539695) % 268435456
        u[1][4][u[1][7]] = ((852305 * u[1][4][u[1][7]]) + 246338595) % 268435456
        u[1][4][u[1][7]] = ((521515 * u[1][4][u[1][7]]) + 255850259) % 268435456
        U, Q, F = 5, 697985, u[1][4][u[1][7]]
      end
    end
  end
end, [10470] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].bb.colorZone
    if not F then
      return false
    end
    local A = tick()
    if A > F.until_ then
      u[1].bb.colorZone = nil
      return false
    end
    local Y = workspace:FindFirstChild(u[2].BonusBoss.colorFolder)
    local T = Y and (Y:FindFirstChild(F.color))
    if not T then
      u[3][4][u[3][7]]("state", "bbnozone", 2, "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\185\131\224\184\153 %s", F.color, u[2].BonusBoss.colorFolder)
      return false
    end
    Y = u[4][4][u[4][7]](U, T.Position, Q.Y)
    local G = u[5][4][u[5][7]](Y - Q).Magnitude
    local z = (F.deadline and (F.deadline - workspace:GetServerTimeNow())) or ((F.at + 5.7) - A)
    u[1].bb.colorUrgent = (G > u[2].BonusBoss.colorArrive) and ((z - (G / u[6][4][u[6][7]](U))) < 2)
    u[1].bb.colorSlack, u[1].bb.colorSlackT = ((G > u[2].BonusBoss.colorArrive) and (z - (G / u[6][4][u[6][7]](U)))) or math.huge, A
    u[1].bb.colorSpot, u[1].bb.colorEnd = Y, A + z
    if u[1].bb.colorUrgent and ((z - (G / u[6][4][u[6][7]](U))) < 0.5) then
      u[7].dodgeGoal = nil
      u[7].retreatGoal = nil
      u[7].projGoal = nil
      U:SetDestination(Y, false)
      u[8][4][u[8][7]]("bonus", "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s: \224\184\163\224\184\181\224\184\154\224\184\167\224\184\180\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135 %.0f studs (\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.1f \224\184\167\224\184\180)", F.color, G, z)
      return true
    end
    if (G <= u[2].BonusBoss.colorArrive) and (U:IsBlocked(Q)) then
      local G, H, N, S, e = {0, 3, 5, 7, 9}
      for D, m in ipairs(G) do
        for G = 1, ((m == 0) and 1) or 12, 1 do
          D = ((G / 12) * 3.141592653589793) * 2
          G = Y + (Vector3.new(math.cos(D), 0, math.sin(D)) * m)
          z = Vector3.new(G.X, Q.Y, G.Z)
          G, T = u[5][4][u[5][7]](z - Q).Magnitude, U:IsBlocked(z)
          if ((T and (not H or (G < N))) and not u[2].bbBlockedReal(z)) or (not T and (not S or (G < e))) then
            local D = u[5][4][u[5][7]](z - Q)
            if (G < 1) or (U:GetClearDistance(Q, D.Unit, G + 1, true) >= G) then
              if T then
                H, N = z, G
              else
                S, e = z, G
              end
            end
          end
        end
      end
      e = S or H
      if e then
        U:SetDestination(u[4][4][u[4][7]](U, e, Q.Y), false)
        u[8][4][u[8][7]]("bonus", "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s: \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\184\171\224\184\165\224\184\154\224\184\170\224\184\129\224\184\180\224\184\165\224\185\131\224\184\153\224\184\167\224\184\135%s", F.color, (S and "") or " (\224\184\151\224\184\177\224\184\154\224\184\136\224\184\184\224\184\148\224\184\151\224\184\179\224\184\153\224\184\178\224\184\162)")
        return true
      end
    end
    if u[9][4][u[9][7]](U, Q, Y, u[2].BonusBoss.colorArrive, "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181") then
      u[8][4][u[8][7]]("bonus", "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s: \224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153\224\185\130\224\184\139\224\184\153 (\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.1f \224\184\167\224\184\180)", F.color, F.until_ - A)
    else
      u[8][4][u[8][7]]("bonus", "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s: \224\184\167\224\184\180\224\185\136\224\184\135 (\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.1f \224\184\167\224\184\180)", F.color, F.until_ - A)
    end
    return true
  end
end, [75] = buffer.writeu32, [12718] = function(u, u, u, u)
  return function(U, Q)
    return (u[1].tgOrbHit(U, Q) or (u[1].bbMemHitAt(U, Q))) or (u[1].bbSpiralPredHit(U, Q))
  end
end, [6895] = function(u, u, u, u)
  return function(u, u)
    u = u or 15
    local U = {}
    local Q = workspace.DescendantAdded:Connect(function(F)
      if not F:IsA("BasePart") then
        return
      end
      if (((((F.Name == "_projPath") or (F.Name == "_goalMarker")) or (F.Name == "_dodgePath")) or (F.Name == "_walkPath")) or (F.Name == "_hbHolo")) or (F.Name == "_routeDbg") then
        return
      end
      task.delay(0.1, function()
        if not F.Parent then
          return
        end
        local A = F.AssemblyLinearVelocity
        if A.Magnitude < 3 then
          return
        end
        if U[F.Name] then
          return
        end
        U[F.Name] = true
        print(("[SCAN] '%s' | speed %.0f | size %.1f,%.1f,%.1f | parent %s"):format(F.Name, A.Magnitude, F.Size.X, F.Size.Y, F.Size.Z, tostring(F.Parent and F.Parent.Name)))
      end)
    end)
    task.delay(u, function()
      Q:Disconnect()
      print("[SCAN] \224\184\136\224\184\154\224\185\129\224\184\165\224\185\137\224\184\167 \226\128\148 \224\185\128\224\184\173\224\184\178\224\184\138\224\184\183\224\185\136\224\184\173\224\184\151\224\184\181\224\185\136\224\185\128\224\184\136\224\184\173\224\185\132\224\184\155\224\185\131\224\184\170\224\185\136 PROJ.names")
    end)
    print(("[SCAN] \224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\170\224\185\129\224\184\129\224\184\153 %d \224\184\167\224\184\180 \224\185\131\224\184\171\224\185\137\224\184\154\224\184\173\224\184\170\224\184\162\224\184\180\224\184\135\224\185\128\224\184\165\224\184\162"):format(u))
  end
end, eM = function(u, U, Q, F, A, Y, T, G)
  if Q <= 74 then
    local z, H, N, S = u[39](A, 3 + Y), 128 * (U - 128), 2097152 * (T - 128), F - 128
    local F, e = 16384 * (z % 128), (z - (z % 128)) * 2097152
    z = (H + N) + (S + (e + F))
    return 190, Y + 4, z
  elseif Q <= 75 then
    return (not (u[56](G, 1 + (T % Y), 2 + (T % Y)) == U) and 204) or 213, Y, A
  else
    return 118, Y, A + 1
  end
end, [7851] = function(u, u, u, u, U, U, U)
  return function()
    local U = u[1]:GetService("ReplicatedStorage"):WaitForChild("remotes", 20)
    local Q = U and (U:WaitForChild("northernBossSpecficEvents", 20))
    if Q then
      u[2].liveConnect(Q.OnClientEvent, function(U, Q)
        pcall(u[3].BonusBossEvent, u[3], U, Q)
      end)
    end
  end
end, [9994] = function(u, u, u, u)
  return function(u, U, Q)
    if not U then
      return true
    end
    return (u.hitAbs ~= nil) and ((Q + U) >= (u.hitAbs - 0.15))
  end
end, [2060] = function(u, u, u, u)
  return function(U, Q, F, A, Y)
    local T = u[1].BonusBoss
    if (not T.enabled or not Q) or (Q.Name ~= T.boss) then
      return false
    end
    u[2].bb.bossPos = Vector3.new(A.X, 0, A.Z)
    Q = U:GetRoot()
    if not Q then
      return false
    end
    local G = Q.Position
    local z = u[1].Leash[T.boss]
    if z then
      T = Vector3.new(G.X - z.center.X, 0, G.Z - z.center.Z)
      if T.Magnitude > (z.radius + 6) then
        local H, N = z.center + (T.Unit * (z.radius - 22)), u[2].bb.memory
        if ((N and N.model.Parent) and N.leftDir) and not u[1].bbMemSafe(H) then
          Q = (((N.seq[u[1].bbMemDone(N) + 1] or (N.guess and N.guess[u[1].bbMemDone(N) + 1])) == "L") and N.leftDir) or -N.leftDir
          for N = 1, 8, 1 do
            local S = H + (Q * (N * 6))
            if u[1].bbMemSafe(S) and (U:LeashOK(S)) then
              H = S
              break
            end
          end
        end
        u[3].dodgeGoal = nil
        u[3].retreatGoal = nil
        u[3].projGoal = nil
        U:SetDestination(u[4][4][u[4][7]](U, Vector3.new(H.X, G.Y, H.Z), G.Y), false)
        u[5][4][u[5][7]]("bonus", "\224\184\173\224\184\162\224\184\185\224\185\136\224\184\153\224\184\173\224\184\129\224\184\167\224\184\135 (%.0f) \226\134\146 \224\185\128\224\184\130\224\185\137\224\184\178 area \224\184\129\224\185\136\224\184\173\224\184\153", T.Magnitude)
        return true
      end
    end
    Q = not Y
    if (Q and (u[1].bbzFallback())) and (u[1].bbOrbGuard(U, G)) then
      return true
    end
    if (Q and u[1].bbSpiralGuard) and (u[1].bbSpiralGuard(U, G)) then
      return true
    end
    if (u[2].bb.colorUrgent and u[2].bb.colorZone) and (U:BonusBossColorMove(G)) then
      return true
    end
    if u[2].bb.colorZone then
      T = workspace:FindFirstChild(u[1].BonusBoss.colorFolder)
      z = T and (T:FindFirstChild(u[2].bb.colorZone.color))
      if (z and (u[6][4][u[6][7]](z.Position - G).Magnitude <= 12)) and (U:BonusBossColorMove(G)) then
        return true
      end
    end
    if (Q and (u[1].bbzFallback() or (u[2].bb.volleyGoal and (tick() < (u[2].bb.volleyGoalUntil or 0))))) and (u[1].bbVolleyMove(U, G)) then
      return true
    end
    if (u[2].bb.sweep and u[2].bb.sweep.safeCenter) and (U:BonusBossSweepMove(G)) then
      return true
    end
    if u[2].bb.forceDodge and ((tick() - u[2].bb.forceDodge) < 0.05) then
      return false
    end
    if U:BonusBossLongLineMove(G) then
      return true
    end
    T = u[2].bb.gfExit
    if ((T and not Y) and T.part.Parent) and ((tick() - T.at) < 1.9) then
      z = u[6][4][u[6][7]](T.part.Position)
      if u[6][4][u[6][7]](G - z).Magnitude < 23 then
        if U:HandleIncoming(G) then
          return true
        end
        local H, N = u[2].bb.station or (u[1].BonusBoss.longLine.center + (Vector3.new(0.951, 0, -0.309) * 60)), u[6][4][u[6][7]](G)
        local S, e
        for D = 0, 15, 1 do
          local m = ((D / 16) * 3.141592653589793) * 2
          D = Vector3.new(z.X + (math.cos(m) * 24), 0, z.Z + (math.sin(m) * 24))
          m = Vector3.new(D.X, G.Y, D.Z)
          if U:LeashOK(m) and not U:IsBlocked(m) then
            local g = (D - N).Magnitude + (0.3 * (D - u[6][4][u[6][7]](H)).Magnitude)
            g = if u[1].bbzPathOK and not u[1].bbzPathOK(U, G, m) then g + 1000 else g
            if not S or (g < e) then
              S, e = m, g
            end
          end
        end
        if S then
          u[3].dodgeGoal = nil
          u[3].retreatGoal = nil
          u[3].projGoal = nil
          U:SetDestination(u[4][4][u[4][7]](U, S, G.Y), false)
          u[5][4][u[5][7]]("bonus", "\224\185\129\224\184\173\224\185\136\224\184\135\224\185\132\224\184\159\224\184\149\224\184\129: \224\184\173\224\184\173\224\184\129\224\184\130\224\184\173\224\184\154\224\185\131\224\184\129\224\184\165\224\185\137\224\184\149\224\184\177\224\184\167 %.0f studs", u[6][4][u[6][7]](S - G).Magnitude)
          return true
        end
      end
    end
    if Q and (U:IsBlocked(G)) then
      local H, N, S, e = u[2].bb.goodPlan, u[2].bb.touchCache, false, u[2].bb.memory
      if ((((e and e.model.Parent) and e.mid) and e.leftDir) and u[1].bbMemSafe) and not u[1].bbMemSafe(G, 2) then
        z = u[1].bbMemDone(e)
        T = z + 1
        local D = e.seq[T] or (e.guess and e.guess[T])
        local m = (u[1].BonusBoss.memory.offset / u[7][4][u[7][7]](U)) + 0.6
        if D and not ((z == 0) and (tick() < ((e.at + 6) - m))) then
          local m = ((D == "L") and e.leftDir) or -e.leftDir
          S = (u[6][4][u[6][7]](G) - e.mid):Dot(m) < math.max(u[1].BonusBoss.memory.offset - 3, 5.5)
        end
      end
      if (not (((H and H.orb.Parent) and (tick() < (H.until_ + 0.5))) and (u[6][4][u[6][7]](H.pos - G).Magnitude < 30)) and not (((N and N.res) and N.res.orb.Parent) and ((tick() - N.at) < 0.3))) and not S then
        u[8][4][u[8][7]]("state", "bbblockedret", 1, "\224\184\162\224\184\183\224\184\153\224\185\131\224\184\153\224\184\170\224\184\129\224\184\180\224\184\165 \226\134\146 \224\185\131\224\184\171\224\185\137 dodge \224\184\155\224\184\129\224\184\149\224\184\180\224\184\132\224\184\184\224\184\161")
        return false
      end
    end
    z = (u[2].bb.memory and u[2].bb.memory.model.Parent) and ((u[2].bb.memory.shown or 0) > 0)
    if Q and not z then
      if U:HandleBigEscape(G) then
        return true
      end
      if U:HandleHoming(G, A) then
        return true
      end
      if U:HandleBeam(G) then
        return true
      end
      if U:HandleIncoming(G) then
        return true
      end
    end
    if U:BonusBossMemoryMove(G, A) then
      return true
    end
    if z and not Y then
      if U:HandleHoming(G, A) then
        return true
      end
      if U:HandleIncoming(G) then
        return true
      end
    end
    if U:BonusBossColorMove(G) then
      return true
    end
    if U:BonusBossSweepMove(G) then
      return true
    end
    if U:BonusBossGoodMove(G, A) then
      return true
    end
    if U:BonusBossPreTargetMove(G, A) then
      return true
    end
    local H = u[2].bb.gfExit
    local N = u[2].bb.station
    if ((N and H) and not Y) and ((tick() - H.at) < 6.5) then
      if not u[2].bb.stPickT or ((tick() - u[2].bb.stPickT) > 0.5) then
        u[2].bb.stPickT = tick()
        T = u[1].bbPickStation(U, G, A, 5.65 - (tick() - H.at))
        if T and (u[6][4][u[6][7]](T - N).Magnitude > 3) then
          u[8][4][u[8][7]]("state", "bbstnew", 0.5, "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\181\224\185\131\224\184\171\224\184\161\224\185\136 (%.0f,%.0f) \224\184\171\224\185\136\224\184\178\224\184\135 %.0f \224\185\129\224\184\151\224\184\153 (%.0f,%.0f) \224\184\171\224\185\136\224\184\178\224\184\135 %.0f", T.X, T.Z, u[6][4][u[6][7]](T - G).Magnitude, N.X, N.Z, u[6][4][u[6][7]](N - G).Magnitude)
          u[2].bb.station = T
          N = T
        end
      end
      z = u[4][4][u[4][7]](U, Vector3.new(N.X, G.Y, N.Z), G.Y)
      if u[9][4][u[9][7]](U, G, z, 3, "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\181") then
        u[5][4][u[5][7]]("bonus", "\224\184\162\224\184\183\224\184\153\224\184\170\224\184\150\224\184\178\224\184\153\224\184\181\224\184\163\224\184\173 LongLine/Sweep (%.1f \224\184\167\224\184\180)", 5.65 - (tick() - H.at))
      else
        u[5][4][u[5][7]]("bonus", "\224\185\132\224\184\155\224\184\170\224\184\150\224\184\178\224\184\153\224\184\181 %.0f studs", u[6][4][u[6][7]](z - G).Magnitude)
      end
      return true
    end
    if Q and (U:BonusBossOrbMove(G, A)) then
      return true
    end
    u[2].bb.fightStart = u[2].bb.fightStart or (tick())
    if not u[2].bb.colorZone and (Y or not U:IsBlocked(G)) then
      H, z = tick() - u[2].bb.fightStart, u[2].bb.lastMemAt and (tick() - u[2].bb.lastMemAt)
      if (H < 7) or ((z and (z > 21)) and (z < 31)) then
        T = u[4][4][u[4][7]](U, Vector3.new(1018, G.Y, -38), G.Y)
        if (u[6][4][u[6][7]](T - G).Magnitude > 6) and (Y or not U:IsBlocked(T)) then
          if Y then
            u[3].dodgeGoal = nil
            u[3].retreatGoal = nil
            u[3].projGoal = nil
            U:SetDestination(T, false)
          else
            u[9][4][u[9][7]](U, G, T, 6, "\224\184\163\224\184\173\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181")
          end
          u[5][4][u[5][7]]("bonus", "\224\184\163\224\184\173\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181\224\184\151\224\184\181\224\185\136\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135 3 \224\184\170\224\184\181")
          return true
        end
      end
    end
    if Q and not U:IsBlocked(G) then
      Y, T, N, H = u[1].BonusBoss.longLine, {-8, -28.5}
      for Q, S in ipairs(T) do
        Q = math.rad(S)
        z = Y.center + (Vector3.new(math.cos(Q), 0, math.sin(Q)) * 60)
        z = u[4][4][u[4][7]](U, Vector3.new(z.X, G.Y, z.Z), G.Y)
        Q = u[6][4][u[6][7]](z - G).Magnitude
        if ((not U:IsBlocked(z) and (u[6][4][u[6][7]](z - A).Magnitude <= (F - 4))) and (U:LeashOK(z))) and (not N or (Q < H)) then
          N, H = z, Q
        end
      end
      if N and (H > 3) then
        if u[9][4][u[9][7]](U, G, N, 3, "\224\184\136\224\184\184\224\184\148\224\184\155\224\184\163\224\184\176\224\184\136\224\184\179") then
          u[5][4][u[5][7]]("bonus", "\224\184\162\224\184\183\224\184\153\224\184\136\224\184\184\224\184\148\224\184\155\224\184\163\224\184\176\224\184\136\224\184\179 (\224\184\138\224\185\136\224\184\173\224\184\135 LongLine + \224\184\149\224\184\181\224\185\132\224\184\148\224\185\137)")
        else
          u[5][4][u[5][7]]("bonus", "\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\155\224\184\163\224\184\176\224\184\136\224\184\179 %.0f studs", H)
        end
        return true
      end
    end
    return false
  end
end, [6749] = function(u, u, u, u, U)
  return function(U, Q, F, A)
    local Y = tick()
    for T, G in ipairs(u[1]) do
      local z = G.part
      if (((z and not u[2][4][u[2][7]](G, Y)) and not Q[z.Name]) and not (A and G.sweepBar)) and not (z.Parent and F[z.Parent.Name]) then
        if G.ring then
          if u[3][4][u[3][7]](G, z, U) then
            return true
          end
        else
          T = z.Position
          local Q = T.X - U.X
          local F = T.Z - U.Z
          local A = (((G.size or z.Size).Magnitude * 0.5) + (G.pad or 0)) + 6
          if (((Q * Q) + (F * F)) <= (A * A)) and (u[4][4][u[4][7]](G, z.CFrame, u[5][4][u[5][7]](G, z), U)) then
            return true
          end
        end
      end
    end
    return false
  end
end, [6389] = function(u, u, u, u, U, U)
  return function(U)
    local Q, F = u[1].currentTarget, U:GetRoot()
    if not Q or not F then
      print("\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\185\128\224\184\155\224\185\137\224\184\178")
      return
    end
    local A, Y, T = Q:FindFirstChild("HumanoidRootPart"), U:GetTargetGroundPos(Q, true)
    print(("=== %s ==="):format(Q.Name))
    print(("HRP Y       : %.0f"):format(A.Position.Y))
    print(("\224\185\128\224\184\151\224\185\137\224\184\178 Y      : %.0f (\224\184\149\224\185\136\224\184\178\224\184\135\224\184\136\224\184\178\224\184\129 HRP %.0f)"):format(Y.Y, A.Position.Y - Y.Y))
    print(("\224\184\163\224\184\177\224\184\168\224\184\161\224\184\181       : %.0f | \224\184\132\224\184\163\224\184\182\224\185\136\224\184\135\224\184\170\224\184\185\224\184\135 %.0f"):format(T.radius, T.halfHeight))
    print(("\224\184\163\224\184\176\224\184\162\224\184\176\224\185\130\224\184\136\224\184\161\224\184\149\224\184\181\224\184\136\224\184\163\224\184\180\224\184\135: %.0f"):format(U.lastAttackDist))
    print(("ForceField \224\185\131\224\184\138\224\185\137\224\185\132\224\184\148\224\185\137: %s"):format((u[2].ForceFieldSkip[Q.Name] and "\224\185\132\224\184\161\224\185\136 (\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154\224\184\149\224\185\136\224\184\173)") or "\224\185\131\224\184\138\224\185\136"))
    print(("\224\184\171\224\184\165\224\184\154\224\184\167\224\184\135\224\185\130\224\184\132\224\185\137\224\184\135  : %s"):format(tostring(U:IsStrafeDodge(Q))))
    print(("\224\184\149\224\185\137\224\184\173\224\184\135\224\184\155\224\184\181\224\184\153\224\184\130\224\184\182\224\185\137\224\184\153\224\185\132\224\184\155: %s%s"):format(tostring(U:NeedClimb(Q)), (u[3][Q.Name] and " (\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153 SkipClimb)") or ""))
    print(("\224\184\163\224\184\176\224\184\162\224\184\176\224\184\136\224\184\178\224\184\129 HRP : %.0f | \224\184\136\224\184\178\224\184\129\224\185\128\224\184\151\224\185\137\224\184\178 %.0f"):format((A.Position - F.Position).Magnitude, U:DistanceToTarget(Q)))
    print(("\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\185\132\224\184\148\224\185\137\224\184\173\224\184\181\224\184\129: %.0f studs \224\184\129\224\185\136\224\184\173\224\184\153\224\185\128\224\184\136\224\184\173\224\184\170\224\184\129\224\184\180\224\184\165"):format(math.min(U:GetSafeAdvance(F.Position, Y), 999)))
  end
end, [5272] = function(u, u, u, u, U, U)
  return function(U)
    if tick() < u[1].NoClip then
      return true
    end
  end
end, [88] = coroutine.running, [10027] = function(u, u, u, u)
  return function(U, U)
    local Q = u[1]:GetRoot()
    if not Q then
      return
    end
    Q.CFrame = U
  end
end, Kj = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if A <= 179 then
    local e = u[39](H, Q + 2)
    return ((128 > e) and 37) or 31, G, N, z, e, U, F, T
  elseif A <= 180 then
    local Q, A, H = G[4], G[2], G[5]
    local e, D = Q + A, A <= 0
    local Q, m, g = not D, e >= H, e <= H
    A = (D and m) or (Q and g)
    G[4] = e
    if A then
      return 108, G, N, z, S, U, F, e
    else
      return 119, G, N, z, S, U, F, T
    end
  else
    local U, Q, F, A, T = u[47], (121 + N) % 256, u[16](Y), Y - 1, 1 + 0
    local u = 0 - T
    return 225, {A + 0, nil, u, T, G}, Q, 121, U, 61, 233, F
  end
end, [6566] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y)
    local T = tick()
    local G = u[1][4][u[1][7]](F - Q).Magnitude
    u[2].dodgeGoal = nil
    u[2].retreatGoal = nil
    if G <= A then
      U:StopWalking()
      return true
    end
    if U:PathHasHitbox(Q, F) then
      local z = u[2].orbSlide
      local H, N = ((z and (T < z.until_)) and not U:IsBlocked(z.pos)) and (u[1][4][u[1][7]](z.pos - Q).Magnitude > u[3].arriveThreshold)
      if H then
        N = z.pos
      else
        A = u[2].goToFail
        local z = (A and (T < A.until_)) and (u[1][4][u[1][7]](A.spot - F).Magnitude < 3)
        if z then
          N = nil
        else
          local A, z = {}, {14, 24, 36}
          for H, S in ipairs(z) do
            for e = 1, 16, 1 do
              H = ((e / 16) * 3.141592653589793) * 2
              e = Q + (Vector3.new(math.cos(H), 0, math.sin(H)) * S)
              A[#A + 1] = {w = e, total = S + u[1][4][u[1][7]](F - e).Magnitude}
            end
          end
          table.sort(A, function(H, S)
            return H.total < S.total
          end)
          z = nil
          for H, H in ipairs(A) do
            if ((U:LeashOK(H.w) and not U:IsBlocked(H.w)) and not U:PathHasHitbox(Q, H.w)) and not U:PathHasHitbox(H.w, F) then
              z = (u[4][4][u[4][7]](U, H.w, Q.Y))
              break
            end
          end
          N = z or (U:OrbSlide(Q, F, nil))
          if N then
            u[2].orbSlide = {pos = N, until_ = T + 0.8}
          else
            u[2].goToFail = {until_ = T + 0.08, spot = F}
          end
        end
      end
      if N then
        u[5][4][u[5][7]]("bonus", "%s: \224\184\151\224\184\178\224\184\135\224\184\130\224\184\167\224\184\178\224\184\135 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\184\130\224\185\137\224\184\178\224\184\135", Y)
        U:SetDestination(N, false)
        return false
      end
    end
    U:SetDestination(F, G > u[6].BonusBoss.routeDist)
    return false
  end
end, [5767] = function(u, u, u, u)
  return function()
    local U = u[1].bb and u[1].bb.volleys
    if not U then
      return false
    end
    local u = tick()
    for Q, Q in ipairs(U) do
      if (u - Q.t0) <= 9.5 then
        return true
      end
    end
    return false
  end
end, [6840] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].bb and u[1].bb.memory
    if (F and F.model.Parent) and u[2].bbMemDone then
      F.doneCache = u[2].bbMemDone(F)
    end
    if (u[1].bb.colorZone and u[1].bb.colorUrgent) and u[1].bb.colorSlack then
      if (u[1].bb.colorSlack - (tick() - (u[1].bb.colorSlackT or (tick())))) < 0.3 then
        u[1].bbz.plan = nil
        return false
      end
    end
    u[1].memH = 0.35
    local F, A = pcall(u[2].timeGuard, U, Q, u[1].bbz)
    u[1].memH = nil
    if not F then
      error(A, 0)
    end
    return A
  end
end, lq = "string", [101] = buffer.readi8, [100] = buffer.writef64, Bq = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if G <= 185 then
    if G <= 184 then
      local S = u[39](F, Q + 2)
      local e, D = (not not (128 <= S) and 284) or 325, Y[1]
      return e, Y[2], D, z, Q, N, S, T
    else
      local S = u[39](F, 2 + Q)
      local u, F = (not not (S >= 128) and 200) or 234, Y[1]
      return u, Y[2], F, z, Q, N, U, S
    end
  elseif G <= 186 then
    local u, F, S = z - 128, (Q - 128) * 16384, N * 128
    local e, D = (F + u) + S, Y[1]
    return 315, Y[2], D, e, 3, N, U, T
  elseif G <= 187 then
    N[A] = H
    local u = Y[1]
    return 60, Y[2], u, z, Q, N, U, T
  else
    local u, F, G = A + (128 * (N - 128)), Q + 2, Y[1]
    return 196, Y[2], G, z, F, u, U, T
  end
end, [3992] = function(u, u, u, u)
  return function(U, Q, F, A)
    local Y = U.CFrame
    local T, G, z = Y:PointToObjectSpace(F), Q / 2
    if A and (A.Magnitude > 1) then
      F = Vector3.new(A.X, 0, A.Z)
      z = if F.Magnitude > 0.1 then F.Unit else z
    end
    F, U = {{Y.RightVector, G.X - T.X}, {-Y.RightVector, G.X + T.X}, {Y.LookVector, G.Z - T.Z}, {-Y.LookVector, G.Z + T.Z}}, {}
    for A, Y in ipairs(F) do
      A = Vector3.new(Y[1].X, 0, Y[1].Z)
      if A.Magnitude > 0.1 then
        A = A.Unit
        if ((z and (A:Dot(z))) or 0) < u[1].escapeChaseTol then
          Q = math.max(Y[2], 0) + u[1].escapeMargin
          if Q <= u[1].escapeMax then
            table.insert(U, {dir = A, need = Q})
          end
        end
      end
    end
    table.sort(U, function(u, Q)
      return u.need < Q.need
    end)
    return U
  end
end, [3769] = function(u, u, u, u)
  return function(U, Q, F)
    if not u[1].useRoute or (#u[2] == 0) then
      return nil
    end
    local A, Y = u[3][4][u[3][7]](Q), u[3][4][u[3][7]](F)
    if not A or not Y then
      u[4][4][u[4][7]]("route", "outofrange", 5, "route \224\185\132\224\184\161\224\185\136\224\184\132\224\184\163\224\184\173\224\184\154\224\184\132\224\184\165\224\184\184\224\184\161\224\185\130\224\184\139\224\184\153\224\184\153\224\184\181\224\185\137 \226\134\146 \224\185\131\224\184\138\224\185\137 pathfinding \224\185\129\224\184\151\224\184\153")
      return nil
    end
    local T = {}
    if A ~= Y then
      local G, z, H, N, S = {}, {[A] = true}, {A}, 1, false
      while N <= #H do
        local e = H[N]
        N += 1
        if e == Y then
          S = true
          break
        end
        for D, D in ipairs(u[2][e].links) do
          if not z[D] then
            z[D] = true
            G[D] = e
            table.insert(H, D)
          end
        end
      end
      if not S then
        u[4][4][u[4][7]]("route", "nopath", 3, "route \224\185\128\224\184\138\224\184\183\224\185\136\224\184\173\224\184\161\224\184\136\224\184\178\224\184\129 node %d \224\185\132\224\184\155 %d \224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137", A, Y)
        return nil
      end
      N, S = {}, Y
      while S do
        table.insert(N, 1, S)
        S = G[S]
      end
      z = 0
      while (#N >= 2) and (z < u[1].routePruneMax) do
        H = u[2][N[2]].pos
        if (math.abs(H.Y - Q.Y) <= u[1].routeElevTrigger) and not U:HasWallBetween(Q, H) then
          table.remove(N, 1)
          z += 1
        else
          break
        end
      end
      for U = 1, #N, 1 do
        table.insert(T, {Position = u[2][N[U]].pos})
      end
    end
    table.insert(T, {Position = F})
    u[4][4][u[4][7]]("route", "ok", 2, "\224\185\131\224\184\138\224\185\137 route %d \224\184\136\224\184\184\224\184\148 (node %d -> %d)", #T, A, Y)
    return T
  end
end, [4783] = function(u, u, u, u, U, U)
  return function(U)
    table.clear(u[1])
    for U, Q in ipairs(u[2].ROUTE_POINTS) do
      u[1][U] = {pos = Vector3.new(Q[1], Q[2], Q[3]), links = {}}
    end
    for U, Q in pairs(u[2].ROUTE_LINKS) do
      if u[1][U] then
        for F, F in ipairs(Q) do
          if u[1][F] then
            u[3][4][u[3][7]](U, F)
          end
        end
      end
    end
    if u[4].routeAutoLink then
      for U = 1, #u[1] - 1, 1 do
        u[3][4][u[3][7]](U, U + 1)
      end
    end
    local U, Q = {}, 0
    for F = 1, #u[1], 1 do
      if not U[F] then
        Q += 1
        local A = {F}
        U[F] = true
        local F = 1
        while F <= #A do
          local Y = A[F]
          F += 1
          for F, F in ipairs(u[1][Y].links) do
            if not U[F] then
              U[F] = true
              table.insert(A, F)
            end
          end
        end
      end
    end
    u[5][4][u[5][7]]("route", "\224\185\130\224\184\171\224\184\165\224\184\148 %d \224\184\136\224\184\184\224\184\148 | \224\185\129\224\184\162\224\184\129\224\185\128\224\184\155\224\185\135\224\184\153 %d \224\184\129\224\185\137\224\184\173\224\184\153%s", #u[1], Q, ((Q > 1) and " (\224\184\162\224\184\177\224\184\135\224\184\130\224\184\178\224\184\148! \224\184\132\224\184\167\224\184\163\224\185\128\224\184\129\224\185\135\224\184\154\224\184\136\224\184\184\224\184\148\224\185\128\224\184\158\224\184\180\224\185\136\224\184\161\224\184\149\224\184\163\224\184\135\224\184\163\224\184\173\224\184\162\224\184\149\224\185\136\224\184\173)") or "")
  end
end, [2167] = function(u, u, u, u, U, U, U)
  return function(U, U)
    U = U or 6
    local Q = setmetatable({}, {__mode = "k"})
    task.spawn(function()
      local F = tick()
      while (tick() - F) < U do
        for A, Y in ipairs(u[1]) do
          local T = Y.part
          local G = (Y.vel and Y.vel.Magnitude) or 0
          if (T and T.Parent) and (G >= u[2].incomingMinSpeed) then
            A = Q[T]
            if A then
              A.turnSum = A.turnSum + (1 - A.dir:Dot(Y.vel.Unit))
              A.n = A.n + 1
              A.dir = Y.vel.Unit
              A.speed = G
            else
              Q[T] = {dir = Y.vel.Unit, turnSum = 0, n = 0, name = T.Name, speed = G}
            end
          end
        end
        task.wait(0.1)
      end
      print("=== \224\184\167\224\184\177\224\184\148\224\184\132\224\184\167\224\184\178\224\184\161\224\184\149\224\184\163\224\184\135\224\184\130\224\184\173\224\184\135\224\184\167\224\184\180\224\184\150\224\184\181 ===")
      F = false
      for u, u in pairs(Q) do
        if u.n > 5 then
          print(("%-22s speed %3.0f | \224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\167\224\184\170\224\184\176\224\184\170\224\184\161 %.2f / %d \224\185\128\224\184\159\224\184\163\224\184\161 | %s"):format(u.name, u.speed, u.turnSum, u.n, ((u.turnSum < 0.15) and "\224\184\158\224\184\184\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135 \224\184\151\224\184\179\224\184\153\224\184\178\224\184\162\224\184\162\224\184\178\224\184\167\224\185\132\224\184\148\224\185\137") or (((u.turnSum < 0.6) and "\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\167\224\184\154\224\185\137\224\184\178\224\184\135 \224\184\165\224\184\148 pathLook \224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 2") or "\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\167\224\185\128\224\184\162\224\184\173\224\184\176 \224\184\151\224\184\179\224\184\153\224\184\178\224\184\162\224\185\132\224\184\161\224\185\136\224\185\129\224\184\161\224\185\136\224\184\153 \224\184\165\224\184\148\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 1.5")))
          F = true
        end
      end
      if not F then
        print("\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173\224\184\130\224\184\173\224\184\135\224\184\151\224\184\181\224\185\136\224\184\130\224\184\162\224\184\177\224\184\154\224\185\128\224\184\165\224\184\162")
      end
    end)
    print(("[SCAN] \224\184\167\224\184\177\224\184\148 %d \224\184\167\224\184\180 \224\185\131\224\184\171\224\185\137\224\184\154\224\184\173\224\184\170\224\184\155\224\184\165\224\185\136\224\184\173\224\184\162\224\184\158\224\184\178\224\184\162\224\184\184\224\185\128\224\184\165\224\184\162"):format(U))
  end
end, s = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 58 then
    local N, S = u[24](Y, G), 4 + G
    local e = N / 2
    if not ((N % 2) ~= 0) then
      local N = H[1]
      return 108, H[2], N, S, F, T, e
    else
      local N = H[1]
      return 63, H[2], N, S, e, T, z
    end
  elseif U <= 59 then
    A[F] = T
    local U = u[39](Y, G)
    local u, A = (not (U >= 128) and 288) or 231, H[1]
    return u, H[2], A, G, 5, U, z
  else
    local u, U, A = Q[1], Q[3], Q[4]
    local Y, N = u + U, U <= 0
    local U, S, e = not N, Y >= A, Y <= A
    A = (N and S) or (U and e)
    Q[1] = Y
    if A then
      N = H[1]
      return 20, H[2], N, G, Y, T, z
    else
      u = H[1]
      return 295, H[2], u, G, F, T, z
    end
  end
end, [118] = buffer.len, JM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if S <= 56 then
    if S <= 55 then
      local m = e[1]
      G[U] = H
      return 191, m, Y, N, D, A, z
    else
      local m = N % 256
      u[91](T, Y, (u[116](G, u[39](H, Y + Q), m)))
      local g, c = 5, (F + (m * U)) % 256
      u[91](T, g, (u[116](G, u[39](H, Q + g), c)))
      g = 6
      m = ((U * c) + F) % 256
      return 39, e, g, m, u[91], u[39](H, Q + g), (u[116](m, G))
    end
  elseif S <= 57 then
    return (not (153 ~= H) and 86) or 133, e, Y, N, D, A, z
  else
    D(T, Y, A)
    local Y, S = 4, (F + (N * U)) % 256
    u[91](T, Y, (u[116](G, S, (u[39](H, Q + Y)))))
    Y = 5
    local N = ((U * S) + F) % 256
    u[91](T, Y, (u[116](N, G, (u[39](H, Y + Q)))))
    return 67, e, 6, F + (N * U), D, A, z
  end
end, g = function(u, U, Q, F, A, Y, T, G, z, H)
  if H <= 47 then
    if H <= 46 then
      Y[U] = Q
      local N = u[39](A, G)
      local S, e = (not not (N >= 128) and 297) or 227, F[1]
      return S, F[2], e, Y, z, G, 4, N, T
    else
      Y[U] = Q
      local N, S = Y[4], u[39](A, G)
      local e, D = (not not (S >= 128) and 306) or 141, F[1]
      return e, F[2], D, Y, z, G, N, S, T
    end
  elseif H <= 48 then
    local N = u[39](A, G + 2)
    local u, A = (not not (N >= 128) and 132) or 224, F[1]
    return u, F[2], A, Y, z, G, U, Q, N
  elseif H <= 49 then
    local u, A, H = G + ((z - 128) * 128), 2 + Y, F[1]
    return 109, F[2], H, A, u, G, U, Q, T
  else
    local u, A = 1 + G, F[1]
    return 51, F[2], A, Y, z, u, U, Q, T
  end
end, [5989] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = U.RootPart or (U.Parent and (U.Parent:FindFirstChild("HumanoidRootPart")))
    if not A then
      return
    end
    local Y = tick()
    local T = math.clamp(Y - (u[1].cfLastT or Y), 0, 0.1)
    u[1].cfLastT = Y
    U:Move(Vector3.zero)
    if (T <= 0) or (Q.Magnitude < 0.01) then
      return
    end
    local G = ((U.WalkSpeed * F) * (u[2].cframeSpeedMul or 1)) * T
    F = u[3]:GetClearDistance(A.Position, Q, G + 2, false)
    G = if F < (G + 1) then (math.max(F - 1, 0)) else G
    if G <= 0 then
      A.AssemblyLinearVelocity = Vector3.new(0, A.AssemblyLinearVelocity.Y, 0)
      return
    end
    Y = A.Position + (Q * G)
    F = u[3]:GetGroundY(Y.X, Y.Z, A.Position.Y + 3)
    G = (F and (F + (A.Size.Y / 2))) or A.Position.Y
    A.CFrame = CFrame.new(Vector3.new(Y.X, if math.abs(G - A.Position.Y) > 6 then A.Position.Y else G, Y.Z)) * (A.CFrame - A.CFrame.Position)
    A.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
  end
end, [3656] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = 0
    local function A(Y, T)
      for G, z in pairs(Y:GetChildren()) do
        if T and not z:IsA("Tool") then
          continue
        end
        if not z:FindFirstChild("abilitySlot") then
          continue
        end
        if not Q and u[1].SuicideIgnore[z.Name] then
          continue
        end
        F += 1
        G = z:FindFirstChild("cooldown")
        if not G or (G.Value <= 0) then
          return false
        end
      end
      return true
    end
    if not A(u[2].Backpack, false) then
      return false
    end
    local u = U:GetChar()
    if u and not A(u, true) then
      return false
    end
    return F > 0
  end
end, [80] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].prof
    F.acc[U] = (F.acc[U] or 0) + Q
    F.cnt[U] = (F.cnt[U] or 0) + 1
    if Q > (F.max[U] or 0) then
      F.max[U] = Q
    end
  end
end, [7040] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A = u[1].moveDirSmooth
    local Y = u[2].moveSmooth or 0
    if (A and (Y > 0)) and (Q.Magnitude > 0.01) then
      if math.deg(math.acos(math.clamp(A:Dot(Q), -1, 1))) < (u[2].moveSnapAngle or 70) then
        Q = A:Lerp(Q, Y)
        Q = if Q.Magnitude > 0.01 then Q.Unit else Q
      end
    end
    u[1].moveDirSmooth = Q
    u[1].moveCmd = F
    if u[2].moveMode == "cframe" then
      u[3][4][u[3][7]](U, Q, F)
      return
    end
    U:Move(Q * F)
  end
end, [6130] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = u[1].tgOwner
    if (not Q or not Q.ign) or not U then
      return false
    end
    if Q.ign[U.Name] then
      return true
    end
    local u = U.Parent
    if u == nil then
      return false
    end
    if Q.ignP[u.Name] then
      return true
    end
    U = u.Parent
    return (U ~= nil) and (Q.ignP[U.Name] == true)
  end
end, [11766] = function(u, u, u, u, U, U, U)
  return function()
    local U, Q = 0, false
    while true do
      task.wait()
      if not u[1][4][u[1][7]] or u[2].walkFarmStopped then
        break
      end
      if (os.clock() - U) < (u[3].farmInterval or 0.016666666666666666) then
        continue
      end
      U = os.clock()
      if not u[4]:IsActive() then
        Target = nil
        u[2].noTargetSince = 0
        if not Q then
          u[4]:StopWalking()
          u[4]:EnableControls()
          Q = true
        end
        continue
      end
      local U = os.clock()
      local F, A = pcall(u[5][4][u[5][7]], u[2].isBossRaidPlace)
      local Y = os.clock() - U
      if getgenv().__claudeBotLog then
        u[6].profAdd("farmStep", Y)
        u[6].profFlush()
      end
      if Y > 0.025 then
        u[7][4][u[7][7]]("perf", "perfslow", 0.25, "farmStep \224\184\138\224\185\137\224\184\178 %.0f ms | %s", Y * 1000, tostring(u[2].claudeLastState))
      end
      U = not F
      if U then
        u[7][4][u[7][7]]("err", "farmStepErr", 2, "farmStep ERR %s", tostring(A))
      end
      if U and u[8] then
        warn("[Walk Farm] Caught Error: ", A)
      end
      Q = false
    end
  end
end, gj = function(u, U, Q, F, A, Y, T, G, z)
  if A <= 202 then
    if A <= 201 then
      local H, N = z - 128, (F - 128) * 16384
      local F = ((128 * T) + N) + H
      return 6, 3 + Y, F, G
    else
      local F = u[39](z, Q + 1)
      if not (F >= 128) then
        return 216, Y, F, G
      else
        return 71, Y, z, F
      end
    end
  elseif A <= 203 then
    local u = Y[Y[1]] - 1
    Y[Y[1]] = u
    return (not not (0 ~= u) and 0) or 149, Y, z, G
  else
    local u, Q, F = U[3], U[1], U[4]
    local A, T = u + Q, Q <= 0
    local Q, H, N = not T, A >= F, A <= F
    u = (T and H) or (Q and N)
    U[3] = A
    if u then
      return 75, Y, z, A
    else
      return 231, Y, z, G
    end
  end
end, [6792] = function(u, u, u, u, U)
  return function(U)
    u[1].dest = nil
    u[1].waypoints = nil
    u[1].pathGoal = nil
    u[1].forcePath = false
    u[1].usingRoute = false
    u[1].lastPos = nil
    u[1].unstickUntil = 0
    u[1].climbUntil = 0
    local Q, F = U:GetHumanoid(), U:GetRoot()
    if Q and F then
      if u[2].useMove then
        Q:Move(Vector3.zero)
      else
        Q:MoveTo(F.Position)
      end
    end
  end
end, [16345] = function(u, u, u, u)
  return function(U, U)
    local Q, F = math.huge
    local A = math.huge
    local Y = false
    for T, T in ipairs(u[1].Projectiles) do
      if (T.homing and T.part) and T.part.Parent then
        local G, z = (T.part.Position - U).Magnitude, T.vel.Magnitude
        if z > 1 then
          local U = G / z
          local H, N, S = z - u[2].walkSpeed, A, Y
          if H <= 0 then
            A, Y = math.huge, true
          else
            local z = G / H
            A, Y = z, z > (u[3].homingLifetime - (tick() - T.bornAt))
          end
          if U < Q then
            Q, F = U, T
          else
            A, Y = N, S
          end
        end
      end
    end
    return F, Q, A, Y
  end
end, [2620] = function(u, u, u, u, U)
  return function()
    u[1].spawnedAt = tick()
    u[2]:ResetState()
    u[1].controlsOff = false
    task.delay(0.5, function()
      u[2]:DisableControls()
    end)
  end
end, Qq = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 180 then
    if Y <= 179 then
      local H, N = T + 1, F[1]
      return 70, U, F[2], N, H, z, Q
    else
      local H, N = z - 128, 16384 * (Q - 128)
      local S, e, D = (A * 128) + (N + H), 3 + T, F[1]
      return 202, U, F[2], D, e, S, Q
    end
  elseif Y <= 181 then
    local H = u[39](G, T)
    local u, G = (not (128 <= H) and 281) or 10, F[1]
    return u, U, F[2], G, T, z, H
  elseif Y <= 182 then
    local u, Y = U[4], F[1]
    return 198, u, F[2], Y, T, z, Q
  else
    local u, Y, G = z - 128, (Q - 128) * 16384, 128 * A
    local A, z, H = (Y + u) + G, 3 + T, F[1]
    return 47, U, F[2], H, z, A, Q
  end
end, lM = function(u, U, Q, F, A, Y, T)
  if T <= 112 then
    if T <= 111 then
      return ((240 <= Q) and 208) or 49, F, Y, U, A
    else
      local G = u[39](Q, 2 + Y)
      return ((G < 128) and 162) or 131, F, Y, U, G
    end
  elseif T <= 113 then
    local T, G = u[64](U), 1 + 0
    local u = 1 - G
    return 191, {nil, F, G, U + 0, u}, T, U, A
  else
    local u = ((U - 128) * 128) + Q
    return 130, F, 2 + Y, u, A
  end
end, xq = function(u, U, Q, F, A, Y, T, G, z)
  if A <= 298 then
    if A <= 297 then
      local H = u[39](F, G + 1)
      local N, S = (not (H < 128) and 86) or 114, U[1]
      return N, U[2], S, G, T, z, H
    else
      local H = u[39](F, G)
      local N, S = ((128 > H) and 11) or 24, U[1]
      return N, U[2], S, G, H, z, Y
    end
  elseif A <= 299 then
    Q[T] = z
    local Q = u[39](F, G)
    local H, N = (not (128 <= Q) and 105) or 87, U[1]
    return H, U[2], N, G, 8, Q, Y
  elseif A <= 300 then
    local Q = u[39](F, 2 + G)
    local u, F = (not not (128 <= Q) and 68) or 208, U[1]
    return u, U[2], F, G, T, z, Q
  else
    local u, Q = 1 + G, U[1]
    return 15, U[2], Q, u, T, z, Y
  end
end, b = function(u, ...)
  return (...)[...]
end, [68] = setmetatable, [27] = function(u, u)
  return function(u)
    local U = u:GetChar()
    if not U then
      return nil
    end
    return U:FindFirstChildOfClass("Humanoid")
  end
end, P = function(u, U, Q, F, A, Y, T, G)
  if Q <= 154 then
    if Q <= 153 then
      local z, H, N, S = u[39](F, 3 + T), (Y - 128) * 128, 2097152 * (A - 128), G - 128
      local u, F = (z % 128) * 16384, (z - (z % 128)) * 2097152
      local z, e, D = ((S + H) + N) + (F + u), T + 4, U[1]
      return 259, U[2], D, e, z, A
    else
      local u, F, z = G + ((A - 128) * 128), T + 2, U[1]
      return 6, U[2], z, F, Y, u
    end
  elseif Q <= 155 then
    local u, F, z = A + (128 * (Y - 128)), T + 2, U[1]
    return 38, U[2], z, F, u, A
  elseif Q <= 156 then
    local u, Q, F = A + (128 * (Y - 128)), 2 + T, U[1]
    return 309, U[2], F, Q, u, A
  else
    local u, Q = Y - 128, (A - 128) * 16384
    local F, Y, z = ((128 * G) + u) + Q, 3 + T, U[1]
    return 304, U[2], z, Y, F, A
  end
end, [6200] = function(u, u, u, u, U, U)
  return function(U, Q)
    local F = Vector3.new(U.X - Q.X, 0, U.Z - Q.Z)
    local A = F.Magnitude
    if A < 2 then
      return {}
    end
    local Y = F.Unit
    local T = {}
    F = math.max(u[1].strafeSteps, 2)
    for G = 1, F, 1 do
      local z = (math.rad(u[1].strafeMaxDeg) * G) / F
      if ((2 * A) * math.sin(z / 2)) >= u[1].strafeMinArc then
        G = {1, -1}
        for F, H in ipairs(G) do
          F = u[2][4][u[2][7]](Y, z * H)
          table.insert(T, {pos = Vector3.new(Q.X, U.Y, Q.Z) + (F * A)})
        end
      end
    end
    return T
  end
end, Jj = function(u, U, Q, F, A, Y, T, G)
  if U <= 232 then
    if U <= 231 then
      return 66, Y[2], F, Q, T
    else
      local z = u[39](A, G + 2)
      return (not (z >= 128) and 102) or 47, Y, F, z, T
    end
  elseif U <= 233 then
    return (not (212 ~= F) and 222) or 3, Y, F, Q, T
  else
    local U = u[39](F, G + 2)
    if not (U >= 128) then
      return 42, Y, U, Q, T
    else
      return 158, Y, F, Q, U
    end
  end
end, k = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if N <= 11 then
    if N <= 10 then
      local S = u[39](Y, 1 + T)
      local Y, e = (not (S < 128) and 65) or 296, U[1]
      return Y, U[2], e, Q, T, S
    else
      local Y, S = T + 1, U[1]
      return 5, U[2], S, Q, Y, G
    end
  elseif N <= 12 then
    A[F] = H
    A[A[3]] = z
    local Y = U[1]
    return 241, U[2], Y, Q, T, G
  elseif N <= 13 then
    A[z] = F
    local F = U[1]
    return 241, U[2], F, Q, T, G
  else
    local Q = {[u.XM] = function(F, A)
      local Y, z, H, N, S, e, D, m, g, c, r, M, y, p, f = u:KM()
      local v, K, B, R, o, k, j, s, _, q, i, l, n, L, O, b = z, H, F, A, N, S, e, D, m, g, c, r, M, y, p, f
      while Y do
        if v <= 118 then
          if v <= 58 then
            if v <= 28 then
              if v <= 13 then
                if v <= 6 then
                  if v <= 2 then
                    v, k, j, s, _ = u:OM(v, o, s, j, _, B, k, R, K)
                  else
                    v, o, k, s, _, q, i, l, n, L, O, b = u:zM(q, k, s, o, n, b, v, L, v <= 4, O, l, i, _)
                  end
                elseif v <= 9 then
                  v, _, q, l = u:uM(o, i, s, l, n, v, k, q, j, _)
                else
                  v, o, j, q, l, n, L, O, b = u:UM(o, s, O, k, q, l, b, n, j, L, _, i, v)
                end
              elseif v <= 20 then
                if v <= 16 then
                  v, K, o, k, j, s, _, q, i, l, n = u:TM(n, s, k, j, i, o, q, K, v, l, _)
                else
                  v, k, j, s, i, l, n, L, O = u:RM(v, L, _, O, j, o, v <= 18, i, k, l, s, q, n)
                end
              elseif v <= 24 then
                v, K, o, s, _, q, i, l = u:FM(_, q, v, K, s, j, l, o, i)
              else
                v, o, k, j, q, i, l, n, L, O, b = u:gM(n, j, O, k, q, i, o, s, L, _, b, l, v)
              end
            elseif v <= 43 then
              if v <= 35 then
                if v <= 31 then
                  v, k, j, _ = u:ZM(k, j, v, i, q, _, s)
                else
                  v, o, l, n, L, O = u:EM(O, n, j, L, i, l, _, v <= 33, s, b, q, o, v, k)
                end
              elseif v <= 39 then
                v, o, k, j, l, n = u:sM(b, k, L, n, s, q, v, j, l, _, i, o, O)
              else
                v, k, s, _ = u:CM(q, k, v, s, _)
              end
            elseif v <= 50 then
              if v <= 46 then
                v, o, k, j, _, q, i, l, n, L = u:SM(s, q, n, o, v, k, _, i, j, l, L)
              else
                v, o, k, s, q = u:_M(k, j, v <= 48, v, _, o, q, l, s)
              end
            elseif v <= 54 then
              v, K, o, k, j, l, n, L = u:HM(s, j, i, _, q, l, L, K, v, k, n, o)
            else
              v, K, l, n, L, O, b = u:JM(j, o, q, O, l, i, k, b, _, n, v, K, L)
            end
          elseif v <= 88 then
            if v <= 73 then
              if v <= 65 then
                if v <= 61 then
                  v, o, k, _ = u:DM(s, _, j, k, q, o, v)
                else
                  v, o, k, j, n = u:VM(o, k, s, j, _, n, K, v, l)
                end
              elseif v <= 69 then
                if v <= 67 then
                  v, o, _ = u:cM(v, i, s, j, n, k, l, q, o, _, K)
                else
                  v, o, k, j, q, i, l, n, L, O, b = u:qM(k, n, i, s, L, l, o, v, O, q, b)
                end
              elseif v <= 71 then
                v, o, k, _, q, i, l, n, L, O, b = u:pM(_, k, O, q, L, n, l, v, s, b, o, i)
              else
                v, o, k, j, q, i, l, n = u:xM(_, n, o, b, q, j, l, k, L, O, i, v)
              end
            elseif v <= 80 then
              if v <= 76 then
                v, j, s = u:eM(_, v, i, s, j, q, o)
              elseif v <= 78 then
                v, o, k, j, s, q, i, l, n = u:nM(n, _, l, k, v, s, i, q, j, o)
              else
                v, o, k, l, n, L, O = u:IM(o, i, O, v, j, L, q, n, _, k, l)
              end
            elseif v <= 84 then
              v, o, k, j = u:aM(_, o, j, v, k)
            else
              v, o, k, j = u:LM(v, o, k, q, j, _, l, L, n, i, O, s)
            end
          elseif v <= 103 then
            if v <= 95 then
              if v <= 91 then
                v, j, s = u:hM(k, j, s, v, _)
              else
                v, o, j, s, l, n, L, O = u:WM(s, v, O, n, L, q, _, o, k, l, j, i)
              end
            elseif v <= 99 then
              v, o, k = u:fM(s, k, o, _, q, v, j)
            else
              v, K, o, k, j, s, q, i = u:MM(v, o, _, i, K, j, q, k, s)
            end
          elseif v <= 110 then
            if v <= 106 then
              v, o, k, j, i = u:wM(v, k, _, i, j, s, o)
            else
              v, o, k = u:NM(_, i, l, n, v, o, j, s, k, q)
            end
          elseif v <= 114 then
            v, K, k, j, q = u:lM(j, _, K, q, k, v)
          else
            v, k, j, s, _ = u:dM(k, j, _, o, s, v)
          end
        elseif v <= 178 then
          if v <= 148 then
            if v <= 133 then
              if v <= 125 then
                if v <= 121 then
                  v, K, o, k = u:AM(o, L, K, s, j, O, l, _, n, v, i, k, q)
                else
                  v, K, o, k, j = u:PM(j, L, l, q, o, v, O, K, n, _, i, b, k, s)
                end
              elseif v <= 129 then
                v, k, j, q = u:mj(K, s, k, q, v, _, j)
              elseif v <= 131 then
                v, K, o, k, j, _, q, i, l = u:oj(K, k, s, l, _, q, i, j, o, v)
              else
                v, o, k, _, q, i, l, n, L, O, b = u:vj(q, L, o, n, b, i, O, l, s, k, v)
              end
            elseif v <= 140 then
              if v <= 136 then
                v, k, j = u:rj(_, v, k, j, s, q)
              else
                v, o, k, j, s, _ = u:ij(j, k, O, n, L, _, i, s, q, v, o, b, l)
              end
            elseif v <= 144 then
              v, o, s, l, n = u:bj(s, n, j, k, _, q, L, l, v, O, i, o)
            else
              v, o, k, s, l, n, L, O = u:tj(v, l, n, L, O, s, o, k, _, i, q, j)
            end
          elseif v <= 163 then
            if v <= 155 then
              if v <= 151 then
                v, o, k, l, n, L, O = u:Qj(O, k, _, i, j, n, q, o, s, L, l, v)
              else
                v, o, k, j = u:Bj(l, s, i, _, L, k, v, j, n, o, q)
              end
            elseif v <= 159 then
              v, K, o, j, s, i = u:Gj(k, q, j, s, _, i, K, v, o, l)
            else
              v, o, k, j, _, q = u:yj(s, _, j, v, q, k, o)
            end
          elseif v <= 170 then
            if v <= 166 then
              v, o, k, j, s = u:Yj(j, v, k, s, o, q, _)
            else
              v, o, k = u:kj(s, v, _, k, q, o, j)
            end
          elseif v <= 174 then
            v, o, k, j, s, _, q, l, n = u:jj(U, _, o, s, R, O, q, i, j, v, L, n, B, l, k)
          else
            v, o, k, j, s, q, i, l, n = u:Xj(n, s, i, o, q, _, l, j, v, k)
          end
        elseif v <= 208 then
          if v <= 193 then
            if v <= 185 then
              if v <= 181 then
                v, K, o, _, q, i, l, n = u:Kj(i, k, l, v, j, n, K, _, s, o, q)
              elseif v <= 183 then
                v, s = u:Oj(i, q, v, _, k, s)
              else
                v, o, _ = u:zj(l, O, L, j, v, q, n, o, _, k, i, s)
              end
            elseif v <= 189 then
              S = nil
              v, o, k, j, q, i, l, n, L, S = u:uj(l, k, j, L, _, n, v, v <= 187, s, o, q, i)
            else
              v, o, j, s, _ = u:Uj(_, s, l, o, v, j, k, K)
            end
          elseif v <= 200 then
            if v <= 196 then
              v, K, o, k, l, n, L, O = u:Tj(j, k, o, i, _, L, q, s, v, O, l, K, n)
            elseif v <= 198 then
              v, K, o, k, s, l, n, L, O = u:Rj(q, K, j, l, _, n, O, o, k, s, i, v, L)
            else
              v, K, o, _ = u:Fj(o, L, v, n, K, i, j, k, O, s, l, q, _)
            end
          elseif v <= 204 then
            v, o, k, q = u:gj(K, s, j, v, o, _, q, k)
          else
            v, o, k, j, _ = u:Zj(_, j, o, k, q, s, v, i)
          end
        elseif v <= 223 then
          if v <= 215 then
            if v <= 211 then
              v, k, s, _ = u:Ej(k, s, v, l, q, _, i)
            else
              v, o, k, j, s, q, i, l, n, L, O, b = u:sj(i, k, _, b, o, n, L, l, s, j, v, O, q)
            end
          elseif v <= 219 then
            v, o, k, s, q, L = u:Cj(v <= 217, o, K, q, k, L, s, v, _, j)
          else
            v, o, k, j, l, n, L = u:Sj(n, q, v, i, l, L, _, k, s, j, o)
          end
        elseif v <= 230 then
          if v <= 226 then
            r, f, g, M = u:_j(k, K, _, L, s, v)
            if r == 1 then
              return o
            elseif r == 2 then
              v, _, L = f, g, M
            end
          else
            v, K, o, k = u:Hj(o, K, l, v, q, O, s, i, _, k, b, n, L, j)
          end
        elseif v <= 234 then
          v, K, _, q, i = u:Jj(v, q, _, l, K, i, k)
        else
          v, K, o, k, s = u:Dj(k, _, K, v, s, o)
        end
      end
    end}
    U[2][5] = Q
    local u = U[1]
    return 131, U[2], u, Q, T, G
  end
end, Mq = ": ", [6910] = function(u, u)
  return function(u, U, Q)
    Q = Q or {}
    local F = u:GetRoot()
    if not F then
      return nil
    end
    local A, Y, T, G = Q.maxDist or 30, Q.go or 14, -math.huge
    local z = 0
    for H = 1, 16, 1 do
      local N = ((H / 16) * 3.141592653589793) * 2
      H = Vector3.new(math.cos(N), 0, math.sin(N))
      local S, e, D = u:GetClearDistance(U, H, A, true), 3, 0
      while e <= math.min(S, A) do
        N = U + (H * e)
        if u:IsBlocked(N) or not u:LeashOK(N) then
          break
        end
        e, D = e + 3, e
      end
      if D >= (Q.minDist or 6) then
        N = if Q.avoid then (if Q.prefer then D + (H:Dot(Q.prefer) * 12) else D) - (H:Dot(Q.avoid) * 12) else if Q.prefer then D + (H:Dot(Q.prefer) * 12) else D
        if N > T then
          T, G, z = N, H, D
        end
      end
    end
    if not G then
      return nil
    end
    T = U + (G * math.min(Y, z))
    A = u:GetGroundY(T.X, T.Z, U.Y)
    T = Vector3.new(T.X, (A or U.Y) + (F.Size.Y / 2), T.Z)
    if u.FutureSafe and not u:FutureSafe(T, (T - U).Magnitude) then
      A = U + ((G * math.min(Y, z)) * 0.5)
      Q = u:GetGroundY(A.X, A.Z, U.Y)
      A = Vector3.new(A.X, (Q or U.Y) + (F.Size.Y / 2), A.Z)
      T = if u:FutureSafe(A, (A - U).Magnitude) then A else T
    end
    return T
  end
end, [859] = function(u, u, u, u, U)
  return function(U, U)
    if not u[1].beamAvoid then
      return nil
    end
    for Q, F in pairs(u[2].beamTrack) do
      if (((Q.Parent and F.dir) and F.lenDir) and (F.speed > 1)) and not (u[3].tgOwns and (u[3].tgOwns(Q))) then
        local Q = U - F.center
        if math.abs(Q:Dot(F.lenDir)) <= (F.halfLen + u[1].beamSafeMargin) then
          local U = Q:Dot(F.dir)
          if U > -F.halfW then
            local Q, A = u[4][4][u[4][7]](F)
            local Y = U - F.halfW
            if not (Q and (Y > Q)) then
              local U = (math.max(Y, 0) / F.speed) + (A or 0)
              if U <= u[1].beamDodgeAhead then
                return F, U
              end
            end
          end
        end
      end
    end
    return nil
  end
end, [83] = tonumber, [6359] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    local Y = u[1].BonusBoss.longLine.center
    local T, G = u[2][4][u[2][7]](Q), u[2][4][u[2][7]](F)
    F = u[3].bb.gfExit and u[3].bb.gfExit.part
    local z = (F and F.Parent) and (u[2][4][u[2][7]](F.Position))
    local H, N = u[4][4][u[4][7]](U), u[3].bb.station and (u[2][4][u[2][7]](u[3].bb.station))
    local function S(e, D, m)
      local g = D - e
      return ((e + (g * (((g.Magnitude > 0.1) and (math.clamp((m - e):Dot(g) / g:Dot(g), 0, 1))) or 0))) - m).Magnitude
    end
    local e, D, m, g = {-8, -28.5, 151.5, 172, 131.5, 311.5}
    for c, r in ipairs(e) do
      c = math.rad(r)
      F = Y + (Vector3.new(math.cos(c), 0, math.sin(c)) * 58)
      F = Vector3.new(F.X, 0, F.Z)
      if U:LeashOK(Vector3.new(F.X, Q.Y, F.Z)) then
        c = (F - T).Magnitude
        r = (if (c / H) > (A - 0.4) then (if z and (S(T, F, z) < 21) then (if S(T, F, G) < 16 then c + 60 else c) + 60 else if S(T, F, G) < 16 then c + 60 else c) + 150 else if z and (S(T, F, z) < 21) then (if S(T, F, G) < 16 then c + 60 else c) + 60 else if S(T, F, G) < 16 then c + 60 else c) + (math.max(0, -u[1].bbSweepFleeSlack(F, 30)) * 60)
        D = if N and ((F - N).Magnitude < 3) then r else D
        if not m or (r < m) then
          m, g = r, F
        end
      end
    end
    if (D and m) and (D <= (m + 10)) then
      return u[3].bb.station
    end
    return (g and (Vector3.new(g.X, Q.Y, g.Z))) or nil
  end
end, Eq = function(u, U, Q, F, A, Y, T, G)
  if T <= 252 then
    if T <= 251 then
      local z, H = F + 1, U[1]
      return 37, U[2], H, z, Y
    else
      local z, H, N = ((Y - 128) * 128) + A, F + 2, U[1]
      return 51, U[2], N, H, z
    end
  elseif T <= 253 then
    u[42](G, U[2])
    local u = U[1]
    return 72, U[2], u, F, Y
  elseif T <= 254 then
    local u = Y - 128
    local T, G, z = (16384 * (A - 128)) + ((Q * 128) + u), 3 + F, U[1]
    return 23, U[2], z, G, T
  else
    local u, Q = 1 + F, U[1]
    return 71, U[2], Q, u, Y
  end
end, WM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if Q <= 93 then
    if Q <= 92 then
      local D = (N + (z * e)) % 256
      u[91](A, Y, (u[116](D, G, (u[39](U, Y + H)))))
      return 225, D, S, U, N, A, Y, F
    else
      return 190, z, S + 1, U, N, A, Y, F
    end
  elseif Q <= 94 then
    local Q, D, m, g = u[39](U, 3 + H), (G - 128) * 128, (T - 128) * 2097152, e - 128
    local c, r = (Q % 128) * 16384, 2097152 * (Q - (Q % 128))
    local Q, M = ((D + c) + r) + (g + m), H + 4
    return 113, z, S, Q, N, A, Y, F
  else
    local Q = A % Y
    u[91](e, N, (u[116](Q, H, (u[39](G, N + z)))))
    local F, A = 9, ((Q * S) + T) % 256
    u[91](e, F, (u[116](A, H, (u[39](G, z + F)))))
    return 185, z, S, U, 10, ((A * S) + T) % 256, u[91], u[39]
  end
end, [15152] = function(u, u, u, u)
  return function(u, U)
    if U.box then
      u:RemoveHitbox(U.box)
      if U.box.Parent then
        U.box:Destroy()
      end
      U.box = nil
    end
  end
end, [14] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    u[1].SuicideIgnore[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\185\132\224\184\161\224\185\136\224\184\153\224\184\177\224\184\154\224\184\149\224\184\173\224\184\153\224\185\128\224\184\138\224\185\135\224\184\132\224\184\132\224\184\185\224\184\165\224\184\148\224\184\178\224\184\167\224\184\153\224\185\140") or "\224\184\153\224\184\177\224\184\154\224\184\149\224\184\178\224\184\161\224\184\155\224\184\129\224\184\149\224\184\180")
  end
end, [8562] = function(u, u, u, u, U, U)
  return function(U)
    local Q, F = {}, U:GetChar()
    if F then
      table.insert(Q, F)
    end
    for U, U in ipairs(u[1]) do
      if U.part then
        table.insert(Q, U.part)
      end
    end
    if u[2].debugMarker then
      table.insert(Q, u[2].debugMarker)
    end
    u[2].rayParams.FilterDescendantsInstances = Q
  end
end, qq = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if z <= 288 then
    if z <= 287 then
      local e = u[39](H, S)
      local D, m = (not (e < 128) and 312) or 136, Q[1]
      return D, Q[2], m, S, 3, e, Y
    else
      local e, D = 1 + S, Q[1]
      return 32, Q[2], D, e, G, F, Y
    end
  elseif z <= 289 then
    local e = u[39](T, U + 1)
    local U, T = ((128 > e) and 49) or 106, Q[1]
    return U, Q[2], T, e, G, F, Y
  elseif z <= 290 then
    local U, T = S + 1, Q[1]
    return 299, Q[2], T, U, G, F, Y
  else
    local U, T, z, e = u[39](H, 3 + S), (Y - 128) * 128, 2097152 * (A - 128), N - 128
    local u, A = 16384 * (U % 128), (U - (U % 128)) * 2097152
    local U, Y, H = u + (((e + T) + z) + A), 4 + S, Q[1]
    return 6, Q[2], H, Y, G, F, U
  end
end, [11673] = function(u, u, u, u)
  return function(U)
    local U = tick()
    local Q = {}
    for F, A in ipairs(u[1]) do
      local Y = A.part
      if ((Y and Y.Parent) and not A.ring) and not u[2][4][u[2][7]](A, U) then
        Q[A] = true
        F = u[3][4][u[3][7]](A)
        F.Size = u[4][4][u[4][7]](A, Y)
        F.CFrame = Y.CFrame
        F.Color = (A.size and (Color3.fromRGB(255, 160, 0))) or (Color3.fromRGB(0, 170, 255))
      end
    end
    for U, F in pairs(u[5].hbHolo) do
      if not Q[U] then
        if F.Parent then
          F:Destroy()
        end
        u[5].hbHolo[U] = nil
      end
    end
  end
end, aM = function(u, U, Q, F, A, Y)
  if A <= 82 then
    if A <= 81 then
      return 130, Q, Y + 1, F
    else
      local T = Y + 1
      local G = u[39](U, T)
      return (not (G < 128) and 146) or 97, Q, T, G
    end
  elseif A <= 83 then
    local U = (128 * (Y - 128)) + F
    return 96, Q + 2, U, F
  else
    return 0, u:Q(F, Q), Y, F
  end
end, sj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if S <= 213 then
    if S <= 212 then
      return (not not (D <= 65) and 152) or 171, Y, Q, N, H, D, U, z, T, G, e, A
    else
      return 204, Y, 1 + Q, N, H, D, U, z, T, G, e, A
    end
  elseif S <= 214 then
    local S, m, g, c, r, M = 1 + Q, 61, 233, (250 + Y) % 256, u[16](4), 0
    local y = (g + (c * m)) % 256
    u[91](r, M, (u[116](250, y, (u[39](F, S + M)))))
    M = 1
    return 137, S, 250, m, H, g, r, M, (g + (y * m)) % 256, u[91], u[39], S + M
  else
    local F = u[39](H, 2 + N)
    if F < 128 then
      return 166, Y, Q, N, F, D, U, z, T, G, e, A
    else
      return 74, Y, Q, N, H, D, F, z, T, G, e, A
    end
  end
end, a = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if z <= 103 then
    if z <= 102 then
      local e = u[39](F, U + 2)
      local D, m = ((e < 128) and 157) or 18, T[1]
      return D, T[2], m, Q, U, A, Y, e
    else
      G[A] = Y
      G[G[3]] = Q
      local e = u[39](F, U)
      local F, D = (not (128 > e) and 272) or 179, T[1]
      return F, T[2], D, 8, U, e, Y, N
    end
  elseif z <= 104 then
    local F, e, D = ((Y - 128) * 128) + S, U + 2, T[1]
    return 5, T[2], D, Q, e, A, F, N
  elseif z <= 105 then
    local F, z = U + 1, T[1]
    return 304, T[2], z, Q, F, A, Y, N
  else
    local F = u[39](H, G + 2)
    local u, A = (not (128 <= F) and 16) or 264, T[1]
    return u, T[2], A, Q, U, F, Y, N
  end
end, [58] = function(u, u, u, u)
  return function(U)
    return (tick() - u[1].spawnedAt) < u[2].respawnDelay
  end
end, [3748] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y, T)
    if T and (T(F, A)) then
      return true
    end
    for G = 1, #U, 1 do
      T = U[G]
      local z, H = F.X - T.o.X, F.Z - T.o.Z
      G = (z * T.d.Z) - (H * T.d.X)
      if (G < T.half) and (G > -T.half) then
        local G, N = (z * T.d.X) + (H * T.d.Z), T.v * (A - T.t0)
        N = if N < 0 then 0 else N
        if ((N <= T.len) and ((G - N) < T.hl)) and ((N - G) < T.hl) then
          return true
        end
      end
    end
    local G, z = u[1].Mid.center, u[1].Mid.beamHalf
    for u = 1, #Q, 1 do
      U = Q[u]
      if (A >= U.tA) and (A <= U.tB) then
        u, T = U.c or G, U.half or z
        local Q = ((F.X - u.X) * U.u.Z) - ((F.Z - u.Z) * U.u.X)
        if (Q < T) and (Q > -T) then
          if not U.len then
            return true
          end
          local Q = ((F.X - u.X) * U.u.X) + ((F.Z - u.Z) * U.u.Z)
          if (Q > -T) and (Q < (U.len + T)) then
            return true
          end
        end
      end
    end
    if Y then
      for u = 1, #Y, 1 do
        z = Y[u]
        if (A >= z.tA) and (A <= z.tB) then
          G, T = F.X - z.c.X, F.Z - z.c.Z
          u = (G * G) + (T * T)
          if (u < (z.r * z.r)) and (not z.rIn or ((u > (z.rIn * z.rIn)) and (not z.u or (((G * z.u.X) + (T * z.u.Z)) > -2)))) then
            return true
          end
        end
      end
    end
    return false
  end
end, [6314] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = math.huge
    for F, A in ipairs(u[1].bbSpiralList()) do
      local u, Y = A[1] - U.X, A[2] - U.Z
      F = math.sqrt((u * u) + (Y * Y)) - A[3]
      Q = if F < Q then F else Q
    end
    return Q
  end
end, [9934] = function(u, u)
  return function()
    return Color3.fromRGB(255, 120, 0)
  end
end, vq = function(u, U, Q, F, A, Y, T, G, z)
  if Q <= 164 then
    local Q, H, N = G[1], G[5], G[4]
    local S, e = Q + H, H <= 0
    local H, D, m = not e, S >= N, S <= N
    Q = (e and D) or (H and m)
    G[1] = S
    if Q then
      N = z[1]
      return 245, z[2], N, T, U, S
    else
      e = z[1]
      return 244, z[2], e, T, U, A
    end
  else
    local U = u[39](F, Y)
    local u, Q = (not not (U >= 128) and 88) or 292, z[1]
    return u, z[2], Q, 4, U, A
  end
end, NM = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if Y <= 108 then
    if Y <= 107 then
      local S = H + 1
      local e = u[39](z, S)
      return (not not (128 <= e) and 117) or 144, S, e
    else
      local S = ((T * N) + Q) % 256
      u[91](F, A, (u[116](U, S, (u[39](z, H + A)))))
      return 180, S, H
    end
  elseif Y <= 109 then
    U[N] = u[116](G * N, T)
    return 126, T, H
  else
    local U = 1 + H
    local Q = u[39](z, U)
    return (not (Q < 128) and 69) or 10, U, Q
  end
end, [85] = buffer.readf64, [53] = buffer.copy, PM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D, m)
  if T <= 123 then
    if T <= 122 then
      return 61, z, Y, 1 + D, U
    else
      return 0, z[2], D, D, U
    end
  elseif T <= 124 then
    local T, g = U - 128, 16384 * (N - 128)
    local c = (A * 128) + (g + T)
    return 130, z, Y, D + 3, c
  else
    Q(S, F, (u[116](D, H, (G(m, e)))))
    local Q, F = 2, ((H * N) + A) % 256
    u[91](S, Q, (u[116](D, u[39](m, Q + Y), F)))
    Q = 3
    local T = (A + (F * N)) % 256
    u[91](S, Q, (u[116](D, u[39](m, Q + Y), T)))
    return 0, z, u[78](S, U), D, U
  end
end, [11696] = function(u, u, u, u, U)
  return function()
    local U = u[1].BonusBoss.orbGuard
    local Q = tick()
    local F = {}
    if u[2].bb.orbListT and ((Q - u[2].bb.orbListT) < 0.03) then
      return u[2].bb.orbListCache
    end
    u[2].bb.orbListT, u[2].bb.orbListCache = Q, F
    for A, Y in ipairs(workspace:GetChildren()) do
      if (U.names[Y.Name] and (Y:IsA("BasePart"))) and (Y.Transparency < 1) then
        A = u[2].bb.orbTrack[Y]
        if not A then
          A = {p = Y.Position, t = Q, born = Q}
          u[2].bb.orbTrack[Y] = A
        elseif (Q - A.t) >= 0.05 then
          local u = Vector3.new(Y.Position.X - A.p.X, 0, Y.Position.Z - A.p.Z) / (Q - A.t)
          if u.Magnitude < U.maxSpeed then
            A.v = u
          end
          A.p = Y.Position
          A.t = Q
        end
        F[#F + 1] = {pos = Vector3.new(Y.Position.X, 0, Y.Position.Z), v = A.v or Vector3.zero, r = math.min(Y.Size.X, Y.Size.Z) / 2}
      end
    end
    return F
  end
end, _ = function(u, U, Q, F, A, Y, T, G)
  if T <= 66 then
    local T = u[39](U, 1 + Y)
    local u, U = (not (T >= 128) and 36) or 300, A[1]
    return u, A[2], U, G, T
  else
    local u, U, Y = Q[3], Q[1], Q[5]
    local T, z = u + U, U <= 0
    local U, H, N = not z, T >= Y, T <= Y
    Y = (z and H) or (U and N)
    Q[3] = T
    if Y then
      u = A[1]
      return 298, A[2], u, T, F
    else
      H = A[1]
      return 33, A[2], H, G, F
    end
  end
end, [4286] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = U:GetRoot()
    U = u[1].faceTarget
    if not Q or not U then
      return 0
    end
    local u, F = Vector3.new(U.X - Q.Position.X, 0, U.Z - Q.Position.Z), Q.CFrame.LookVector
    Q = Vector3.new(F.X, 0, F.Z)
    if (u.Magnitude < 0.5) or (Q.Magnitude < 0.1) then
      return 0
    end
    return math.deg(math.acos(math.clamp(Q.Unit:Dot(u.Unit), -1, 1)))
  end
end, jj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D, m, g)
  if N <= 172 then
    if N <= 171 then
      return (not (77 >= G) and 136) or 103, F, g, H, A, Q, G, m, e
    else
      local c = D[0][Y]
      local Y, D, r = U[1][c], U[2], 0
      local U = D[7]
      local M, y = u[39](U, Y), 1 + Y
      if not (142 < M) then
        return 169, c, Y, D, r, U, M, m, e
      else
        return 188, c, Y, r, U, M, G, m, e
      end
    end
  elseif N <= 173 then
    S(z, m, (u[116](e, g, T)))
    local U, Y = 4, (G + (H * e)) % 256
    u[91](z, U, (u[116](Y, g, (u[39](Q, F + U)))))
    U = 5
    local T = (G + (H * Y)) % 256
    u[91](z, U, (u[116](g, T, (u[39](Q, U + F)))))
    return 52, F, g, H, A, Q, G, T, 6
  else
    local U = g + 1
    local Y = u[39](Q, U)
    return (not (Y < 128) and 139) or 155, F, U, Y, A, Q, G, m, e
  end
end, [10522] = function(u, u, u, u)
  return function(U, Q)
    local F = tick()
    if u[1].goal and (F < u[1].until_) then
      local A = Vector3.new(u[1].goal.X - Q.X, 0, u[1].goal.Z - Q.Z).Magnitude
      if A <= u[2].arriveThreshold then
        u[3][4][u[3][7]]("dodge", "\224\184\171\224\184\153\224\184\181 %s \224\184\150\224\184\182\224\184\135\224\184\136\224\184\184\224\184\148\224\185\129\224\184\165\224\185\137\224\184\167", tostring(u[1].name))
        u[1].goal = nil
      elseif U:IsBlocked(u[1].goal) then
        u[3][4][u[3][7]]("dodge", "\224\184\136\224\184\184\224\184\148\224\184\171\224\184\153\224\184\181 %s \224\185\130\224\184\148\224\184\153\224\184\170\224\184\129\224\184\180\224\184\165\224\184\151\224\184\177\224\184\154 \224\184\171\224\184\178\224\185\131\224\184\171\224\184\161\224\185\136", tostring(u[1].name))
        u[1].goal = nil
      else
        u[4][4][u[4][7]]("escape", "\224\184\171\224\184\153\224\184\181 %s (\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.0f studs)", tostring(u[1].name), A)
        u[5].dodgeGoal = nil
        u[5].retreatGoal = nil
        u[5].projGoal = nil
        U:SetDestination(u[1].goal, false)
        return true
      end
    end
    local A, Y, T = U:GetBigHitbox(Q)
    if not A then
      u[1].goal = nil
      return false
    end
    local G = U:GetRoot()
    if not G then
      return false
    end
    local z = G.Size.Y / 2
    U:RefreshRayFilter()
    local H, N, S, e, D = A.part.Position, T + u[2].escapeMargin, math.max(u[2].escapeDirs or 32, 8), u[2].escapeStep
    A = math.huge
    while e <= u[2].escapeMaxDist do
      for m = 1, S, 1 do
        G = ((m / S) * 3.141592653589793) * 2
        m = Vector3.new(math.cos(G), 0, math.sin(G))
        local G = Q + (m * e)
        if Vector3.new(G.X - H.X, 0, G.Z - H.Z).Magnitude >= N then
          if U:GetClearDistance(Q, m, e + 4, true) >= e then
            local H = U:GetGroundY(G.X, G.Z, Q.Y)
            if H and (((Q.Y - z) - H) <= u[2].maxDrop) then
              local Q = Vector3.new(G.X, H + z, G.Z)
              if u[6][4][u[6][7]](U, Q, e / math.max(u[2].walkSpeed, 1)) then
                D, A = Q, e
                break
              end
            end
          end
        end
      end
      if D then
        break
      end
      e += u[2].escapeStep
    end
    if not D then
      u[7][4][u[7][7]]("dodge", "noescape", 1, "%s \224\184\167\224\184\135\224\185\131\224\184\171\224\184\141\224\185\136 (\224\184\163\224\184\177\224\184\168\224\184\161\224\184\181 %.0f) \224\184\171\224\184\178\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137\224\185\128\224\184\165\224\184\162", Y, T)
      return false
    end
    u[1].goal = D
    u[1].until_ = F + u[2].escapeHold
    u[1].name = Y
    u[5].dodgeGoal = nil
    u[5].retreatGoal = nil
    u[5].projGoal = nil
    u[4][4][u[4][7]]("escape", "%s \224\184\167\224\184\135\224\185\131\224\184\171\224\184\141\224\185\136 (\224\184\163\224\184\177\224\184\168\224\184\161\224\184\181 %.0f) \226\134\146 \224\184\171\224\184\153\224\184\181\224\184\173\224\184\173\224\184\129 %.0f studs \224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\185\128\224\184\148\224\184\181\224\184\162\224\184\167", Y, T, A)
    U:ShowGoalMarker(D)
    U:SetDestination(D, false)
    return true
  end
end, [73] = coroutine.wrap, B = "n", Lq = function(u, U, Q, F, A, Y, T, G, z, H)
  if Y <= 320 then
    local N, S = U[6], u[39](G, H)
    local U, e = (not not (S >= 128) and 41) or 278, z[1]
    return U, z[2], e, H, N, S, Q
  elseif Y <= 321 then
    local U = u[39](G, H)
    local Y, N = (not (U < 128) and 99) or 171, z[1]
    return Y, z[2], N, H, A, F, U
  else
    local U, Y, N, S = u[39](G, H + 3), 128 * (F - 128), (Q - 128) * 2097152, T - 128
    local u = 16384 * (U % 128)
    local F, T, G = (N + ((2097152 * (U - (U % 128))) + S)) + (u + Y), H + 4, z[1]
    return 46, z[2], G, T, A, F, Q
  end
end, [5460] = function(u, u, u)
  return function(u, U, Q)
    local F, A = u:GetRoot(), u:GetGroundY(U.X, U.Z, Q or (U.Y + 5))
    return Vector3.new(U.X, (A or U.Y) + ((F and (F.Size.Y / 2)) or 1.5), U.Z)
  end
end, [4672] = function(u, u, u, u, U)
  return function(U)
    if not u[1].incomingCheck or (U <= 0) then
      return
    end
    u[2][4][u[2][7]] += U
    if u[2][4][u[2][7]] < 0.016666666666666666 then
      return
    end
    U = u[2][4][u[2][7]]
    u[2][4][u[2][7]] = 0
    for Q, F in ipairs(u[3]) do
      Q = F.part
      if Q and Q.Parent then
        local u, A = Q.Position, Q.AssemblyLinearVelocity
        A = if ((if (A.Magnitude < 0.1) and F.lastPos then (u - F.lastPos) / U else A).Magnitude < 1) and F.planVel then F.planVel else if (A.Magnitude < 0.1) and F.lastPos then (u - F.lastPos) / U else A
        if F.isClaude == nil then
          F.isClaude = Q.Name:sub(1, 6) == "claude"
        end
        F.vel = if F.isClaude then Vector3.zero else A
        F.lastPos = u
      end
    end
  end
end, [9871] = function(u, u, u, u)
  return function(u, U)
    local Q = u.part
    if not Q or not Q.Parent then
      return true
    end
    if U > u.expireAt then
      return true
    end
    U = u.ownerHum
    if U and (not U.Parent or (U.Health <= 0)) then
      return true
    end
    return false
  end
end, [79] = rawset, [0] = string.rep, sq = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 257 then
    if G <= 256 then
      local N = u[39](H, 2 + z)
      local S, e = (not (N >= 128) and 176) or 223, A[1]
      return S, A[2], e, T, Q, Y, N
    else
      F[T] = Q
      local N = u[39](H, z)
      local S, e = ((128 > N) and 214) or 129, A[1]
      return S, A[2], e, 15, N, Y, U
    end
  elseif G <= 258 then
    local N = u[39](H, 2 + z)
    local S, e = (not not (N >= 128) and 199) or 22, A[1]
    return S, A[2], e, T, Q, Y, N
  elseif G <= 259 then
    F[T] = Q
    local F = u[39](H, z)
    local G, N = ((F < 128) and 233) or 148, A[1]
    return G, A[2], N, 2, F, Y, U
  else
    local F = u[39](H, z + 2)
    local u, Y = (not (128 <= F) and 113) or 248, A[1]
    return u, A[2], Y, T, Q, F, U
  end
end, [574] = function(u, u, u, u)
  return function(U)
    print(("ForceField: %s | NoDodge: %s | \224\184\155\224\184\180\224\184\148\224\184\129\224\184\178\224\184\163\224\184\171\224\184\165\224\184\154: %s"):format((U:HasForceField() and "\224\184\161\224\184\181") or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181", tostring(U:IsNoDodge()), tostring(U:SkipDodge())))
    if u[1].suicideReset then
      local Q = {}
      for F in pairs(u[2].SuicideIgnore) do
        table.insert(Q, F)
      end
      print(("\224\184\149\224\184\178\224\184\162\224\184\163\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165: \224\185\128\224\184\155\224\184\180\224\184\148 | \224\184\132\224\184\185\224\184\165\224\184\148\224\184\178\224\184\167\224\184\153\224\185\140\224\184\132\224\184\163\224\184\154: %s | \224\185\132\224\184\161\224\185\136\224\184\153\224\184\177\224\184\154: %s"):format(tostring(U:AllSkillsDown()), ((#Q > 0) and (table.concat(Q, ", "))) or "-"))
      for F, F in pairs((u[3]:FindFirstChild("Backpack") or (Instance.new("Folder"))):GetChildren()) do
        if F:FindFirstChild("abilitySlot") then
          Q = F:FindFirstChild("cooldown")
          print(("   %-16s %s%s"):format(F.Name, ((Q and (Q.Value > 0)) and (("\224\184\132\224\184\185\224\184\165\224\184\148\224\184\178\224\184\167\224\184\153\224\185\140 %.1f"):format(Q.Value))) or "\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161", (u[2].SuicideIgnore[F.Name] and "  (\224\185\132\224\184\161\224\185\136\224\184\153\224\184\177\224\184\154)") or ""))
        end
      end
    end
    local Q = {}
    for F in pairs(u[2].SkillNoDelay) do
      table.insert(Q, F)
    end
    print(("\224\184\170\224\184\129\224\184\180\224\184\165\224\184\162\224\184\129\224\185\128\224\184\167\224\185\137\224\184\153 delay: %s"):format(((#Q > 0) and (table.concat(Q, ", "))) or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181"))
    print(("\224\185\128\224\184\158\224\184\180\224\185\136\224\184\135\224\185\128\224\184\129\224\184\180\224\184\148: %s | \224\184\171\224\184\177\224\184\153\224\184\171\224\184\153\224\185\137\224\184\178: \224\185\128\224\184\154\224\184\181\224\185\136\224\184\162\224\184\135 %.0f\194\176 (%s)"):format((U:JustSpawned() and (("\224\185\131\224\184\138\224\185\136 \224\184\163\224\184\173\224\184\173\224\184\181\224\184\129 %.1f \224\184\167\224\184\180"):format(u[1].respawnDelay - (tick() - u[4].spawnedAt)))) or "\224\185\132\224\184\161\224\185\136", U:FaceError(), (U:IsFacingTarget() and "\224\184\162\224\184\180\224\184\135\224\185\132\224\184\148\224\185\137") or "\224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\184\162\224\184\180\224\184\135"))
    print(("state=%s | dest=%s | mode=%s | wps=%s | stuck=%d | hitbox=%d | proj=%d"):format(u[5].state, (u[6].dest and "\224\184\161\224\184\181") or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181", (u[6].usingRoute and "route") or ((u[6].usePath and "path") or "\224\184\149\224\184\163\224\184\135"), (u[6].waypoints and (u[6].index .. ("/" .. #u[6].waypoints))) or "nil", u[6].stuckCount, #u[7], #u[4].Projectiles))
  end
end, [45] = (0), [28] = string.unpack, Sj = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if F <= 221 then
    if F <= 220 then
      local e, D, m, g = 1 + z, (161 + S) % 256, u[16](1), 0
      u[91](m, g, (u[116]((233 + (D * 61)) % 256, 161, (u[39](G, g + e)))))
      return 0, u[39](m, H), z, N, Y, U, T
    else
      local e = ((N * Y) + Q) % 256
      u[91](A, U, (u[116](e, u[39](G, U + S), z)))
      local D, m = 7, (Q + (N * e)) % 256
      u[91](A, D, (u[116](u[39](G, D + S), m, z)))
      return 95, S, z, N, 8, (N * m) + Q, 256
    end
  elseif F <= 222 then
    local Q = 1 + z
    local F = u[39](H, Q)
    return (not (128 > F) and 44) or 81, S, Q, F, Y, U, T
  else
    local u = 1 + z
    return 168, S, z, N, Y, U, T
  end
end, [13106] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y)
    local T = Q and u[1].BossHome[Q.Name]
    local G = u[2].bob
    if (not T or not T.enabled) or Y then
      u[2].bobHold = false
      G.state = "home"
      return false
    end
    if G.boss ~= Q.Name then
      G.boss = Q.Name
      G.state = "home"
      G.since = 0
      G.home = nil
    end
    Y = U:GetRoot()
    if not Y then
      return false
    end
    local z = T.homePos or (U:BobHome())
    if not z then
      u[3][4][u[3][7]]("state", "bobnohome", 5, "%s: \224\184\171\224\184\178\224\184\154\224\185\137\224\184\178\224\184\153\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 \226\134\146 \224\184\170\224\184\185\224\185\137\224\185\129\224\184\154\224\184\154\224\184\155\224\184\129\224\184\149\224\184\180", Q.Name)
      u[2].bobHold = false
      return false
    end
    local H, N = tick(), Y.Position
    if not u[1].bobGuard and (U:HandleBeam(N)) then
      u[2].bobHold = true
      return true
    end
    if T.orb and (U:HandleOrb(Q)) then
      u[2].bobHold = true
      if G.state == "engage" then
        G.state = "home"
      end
      return true
    end
    Y = Q:FindFirstChildOfClass("Humanoid")
    local S = (Y and (Y.MaxHealth > 0)) and ((Y.Health / Y.MaxHealth) < 0.15)
    if G.state == "engage" then
      if u[4][4][u[4][7]](U) or ((H - G.since) > T.engageMax) then
        Y = u[5][4][u[5][7]](U)
        if (Y <= (T.lingerMax or 0)) or (S and ((T.lingerMax or 0) > 0)) then
          G.state = "linger"
          G.since = H
          u[6][4][u[6][7]]("bob", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\171\224\184\161\224\184\148 \224\185\129\224\184\149\224\185\136\224\184\173\224\184\177\224\184\153\224\184\150\224\184\177\224\184\148\224\185\132\224\184\155\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161\224\185\131\224\184\153 %.1f \224\184\167\224\184\180 \226\134\146 \224\184\173\224\184\162\224\184\185\224\185\136\224\184\149\224\184\181\224\184\149\224\185\136\224\184\173", Y)
          u[2].bobHold = false
          return false
        end
        G.state = "return"
        G.since = H
        u[6][4][u[6][7]]("bob", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\171\224\184\161\224\184\148 (\224\184\173\224\184\177\224\184\153\224\184\150\224\184\177\224\184\148\224\185\132\224\184\155\224\184\173\224\184\181\224\184\129 %.0f \224\184\167\224\184\180) \226\134\146 \224\184\129\224\184\165\224\184\177\224\184\154\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178", Y)
      else
        u[2].bobHold = Vector3.new(A.X - N.X, 0, A.Z - N.Z).Magnitude > (F + T.nearGap)
        return false
      end
    end
    if G.state == "linger" then
      if u[7][4][u[7][7]](U) then
        G.state = "engage"
        G.since = H
        u[6][4][u[6][7]]("bob", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161 \226\134\146 \224\184\149\224\184\181\224\184\149\224\185\136\224\184\173")
        return false
      end
      if not S and ((H - G.since) > ((T.lingerMax or 0) + 3)) then
        G.state = "return"
        G.since = H
      else
        u[2].bobHold = false
        return false
      end
    end
    u[2].bobHold = true
    if u[7][4][u[7][7]](U) then
      G.state = "engage"
      G.since = H
      u[2].bobHold = false
      u[6][4][u[6][7]]("bob", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161 \226\134\146 \224\184\167\224\184\180\224\185\136\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\149\224\184\181")
      return false
    end
    if U:HandleBigEscape(N) then
      return true
    end
    if U:HandleHoming(N, A) then
      return true
    end
    if not u[1].bobGuard and (U:HandleBeam(N)) then
      return true
    end
    if U:HandleIncoming(N) then
      return true
    end
    Q = U:IsBlocked(N)
    local e = nil
    if Q or (U:IsBlocked(z)) then
      Y = u[8].homeSafe
      S, F = (Y and (H < Y.until_)) and not U:IsBlocked(Y.pos)
      if S then
        F = Y.pos
      else
        F = U:FindSafeNear(z, T.homeRadius, A)
        u[8].homeSafe = (F and {pos = F, until_ = H + 0.5}) or nil
      end
      F = if (F and Q) and (Vector3.new(F.X - N.X, 0, F.Z - N.Z).Magnitude < u[9].arriveThreshold) then nil else F
      if F then
        e = F
      else
        local F = Vector3.new(A.X - N.X, 0, A.Z - N.Z).Magnitude
        local Y = U:FindDodgeSpot(N, A, math.max(F - 5, 0), false)
        Y = if not Y then (U:FindDodgeSpot(N, A, nil, false)) else Y
        if Y then
          u[6][4][u[6][7]]("bob", "\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\185\128\224\184\149\224\185\135\224\184\161 \224\184\171\224\184\165\224\184\154\224\184\173\224\184\173\224\184\129\224\184\129\224\185\136\224\184\173\224\184\153")
          U:ShowDodgePath(N, Y, "dodge")
          U:SetDestination(Y, false)
          return true
        end
        F = Vector3.new(z.X - A.X, 0, z.Z - A.Z)
        Y = U:OpenEscape(N, {go = 14, prefer = ((F.Magnitude > 0.1) and F.Unit) or nil})
        if Y then
          u[6][4][u[6][7]]("bob", "\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\185\128\224\184\149\224\185\135\224\184\161 \224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\184\151\224\184\181\224\185\136\224\185\130\224\184\165\224\185\136\224\184\135\224\184\163\224\184\173\224\184\129\224\185\136\224\184\173\224\184\153")
          U:ShowDodgePath(N, Y, "dodge")
          U:SetDestination(Y, false)
          return true
        end
        u[3][4][u[3][7]]("dodge", "bobtrapped", 1, "\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\185\128\224\184\149\224\185\135\224\184\161 \224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\185\132\224\184\171\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137\224\185\128\224\184\165\224\184\162")
        e = z
      end
    else
      e = z
    end
    u[8].dodgeGoal = nil
    u[8].retreatGoal = nil
    A = Vector3.new(e.X - N.X, 0, e.Z - N.Z).Magnitude
    if (A <= T.homeArrive) and not Q then
      G.state = "home"
      u[6][4][u[6][7]]("bob", "\224\184\163\224\184\173\224\184\170\224\184\129\224\184\180\224\184\165\224\184\151\224\184\181\224\185\136\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178")
      U:StopWalking()
      return true
    end
    if U:PathHasHitbox(N, e) then
      S = u[8].bobDetour
      Q, z = ((S and (H < S.until_)) and not U:IsBlocked(S.pos)) and (Vector3.new(S.pos.X - N.X, 0, S.pos.Z - N.Z).Magnitude > u[9].arriveThreshold)
      if Q then
        z = S.pos
      else
        z = U:OrbSlide(N, e, nil) or (U:FindDodgeSpot(N, e, nil, false))
        if z then
          u[8].bobDetour = {pos = z, until_ = H + 0.8}
        end
      end
      if z then
        u[6][4][u[6][7]]("bob", "\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178 \224\184\151\224\184\178\224\184\135\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165 \224\184\173\224\185\137\224\184\173\224\184\161\224\184\129\224\185\136\224\184\173\224\184\153")
        U:ShowDodgePath(N, z, "retreat")
        U:SetDestination(z, false)
        return true
      end
    end
    u[6][4][u[6][7]]("bob", "%s (%.0f studs)", ((G.state == "return") and "\224\184\129\224\184\165\224\184\177\224\184\154\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178") or "\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\184\178", A)
    U:SetDestination(e, A > u[1].OrbMechanic.routeDist)
    return true
  end
end, [14235] = function(u, u, u, u, U)
  return function(U)
    local Q = U:GetHumanoid()
    if not Q then
      return
    end
    print(("\224\185\130\224\184\171\224\184\161\224\184\148\224\185\128\224\184\148\224\184\180\224\184\153: %s | control \224\184\155\224\184\180\224\184\148\224\185\129\224\184\165\224\185\137\224\184\167: %s"):format((u[1].useMove and "Move (\224\184\151\224\184\184\224\184\129\224\185\128\224\184\159\224\184\163\224\184\161)") or "MoveTo", tostring(u[2].controlsOff)))
    print(("MoveDirection %.2f,%.2f | WalkSpeed %.0f | \224\185\128\224\184\155\224\185\137\224\184\178 %s"):format(Q.MoveDirection.X, Q.MoveDirection.Z, Q.WalkSpeed, (u[3].dest and "\224\184\161\224\184\181") or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181"))
    print(("\224\184\170\224\184\177\224\185\136\224\184\135\224\185\128\224\184\148\224\184\180\224\184\153 %.2f | \224\184\132\224\185\137\224\184\178\224\184\135\224\184\161\224\184\178 %.1f \224\184\167\224\184\180 | state=%s"):format(u[2].moveCmd, ((u[2].moveStuckSince > 0) and (tick() - u[2].moveStuckSince)) or 0, u[4].state))
  end
end, [4052] = function(u, u, u, u)
  return function(U)
    local Q = U:GetChar()
    if not Q then
      return
    end
    local U, F = Q:FindFirstChild("physicalBuff"), Q:FindFirstChild("spellBuff")
    if U and (u[1].currentBuff.object ~= U) then
      u[1].currentBuff.object = U
      u[1].currentBuff.time = tick()
      return
    end
    if F and (u[1].currentBuff.object ~= F) then
      u[1].currentBuff.object = F
      u[1].currentBuff.time = tick()
      return
    end
  end
end, Rq = function(u, U, Q, F, A, Y, T)
  if Y <= 240 then
    local G = U[1]
    return 315, U[2], G, Q, 1, A
  elseif Y <= 241 then
    local Y = u[39](F, T)
    local G, z = (not (128 > Y) and 207) or 246, U[1]
    return G, U[2], z, Y, T, A
  else
    local A = u[39](F, 2 + T)
    local u, F = (not (128 <= A) and 84) or 76, U[1]
    return u, U[2], F, Q, T, A
  end
end, UM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if D <= 11 then
    if D <= 10 then
      return 207, U + 1, H, Y, T, z, N, F, G
    else
      local m = u[39](Q, 1 + U)
      return ((m < 128) and 83) or 140, U, m, Y, T, z, N, F, G
    end
  elseif D <= 12 then
    u[91](e, T, (u[116](u[39](S, U + T), A, z)))
    local D, m = 2, ((z * H) + Y) % 256
    u[91](e, D, (u[116](m, A, (u[39](S, D + U)))))
    D = 3
    return 33, U, H, Y, D, (Y + (H * m)) % 256, u[91], u[39], U + D
  else
    local Y = u[39](Q, A + 2)
    return (not (128 > Y) and 129) or 51, U, H, Y, T, z, N, F, G
  end
end, KM = function(u)
  return true, 172, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
end, [99] = string.match, fM = function(u, U, Q, F, A, Y, T, G)
  if T <= 97 then
    if T <= 96 then
      return 0, u[123](U, F, Q), Q
    else
      return 15, F, 1 + Q
    end
  elseif T <= 98 then
    return ((35 >= Y) and 186) or 82, F, Q
  else
    local Y, T, z, H = u[39](U, 3 + F), (Q - 128) * 128, 2097152 * (G - 128), A - 128
    local u, U = (Y % 128) * 16384, 2097152 * (Y - (Y % 128))
    Y = (u + z) + ((H + U) + T)
    return 206, 4 + F, Y
  end
end, yj = function(u, U, Q, F, A, Y, T, G)
  if A <= 161 then
    if A <= 160 then
      return (not not (Q ~= 247) and 175) or 107, G, T, F, Q, Y
    else
      local z = u:Q(F, G)
      u[U] = z
      return 203, z, T, F, Q, Y
    end
  elseif A <= 162 then
    local A = F - 128
    local z = (16384 * (U - 128)) + (A + (128 * Y))
    return 101, G, T + 3, z, Q, Y
  else
    local U = u[39](Q, T + 1)
    if not (U >= 128) then
      return 235, G, T, F, U, Y
    else
      return 234, G, T, F, Q, U
    end
  end
end, AM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if N <= 119 then
    local m, g = F[1], u[39](G, Y)
    return (not (g < 128) and 209) or 38, m, g, e
  elseif N <= 120 then
    Q(S, G, (u[116](T(z, U + G), e, H)))
    local Q = 15
    u[91](S, Q, (u[116]((D + (Y * H)) % 256, u[39](z, Q + U), e)))
    return 0, F, u[40](u[78](S, A), u[78](S, 4), u[78](S, 8), (u[78](S, 12))), e
  else
    local U = 1 + e
    local Q = u[39](A, U)
    return (not (Q >= 128) and 196) or 115, F, U, Q
  end
end, w = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 129 then
    if U <= 128 then
      local N = F - 128
      local S, e, D = (16384 * (T - 128)) + ((128 * A) + N), G + 3, z[1]
      return 93, z[2], D, e, S, T, A
    else
      local N = u[39](H, G + 1)
      local S, e = (not (128 <= N) and 95) or 7, z[1]
      return S, z[2], e, G, F, T, N
    end
  elseif U <= 130 then
    T[Q] = F
    local N = z[1]
    return 279, z[2], N, G, F, T, A
  elseif U <= 131 then
    local U, N = ((Y[Y[3]] == 1) and 319) or 152, z[1]
    return U, z[2], N, G, F, T, A
  else
    local U, Y, N, S = u[39](H, G + 3), 128 * (T - 128), 2097152 * (A - 128), Q - 128
    local u, Q = 16384 * (U % 128), (U - (U % 128)) * 2097152
    local U, T, H = ((S + N) + (Y + u)) + Q, 4 + G, z[1]
    return 299, z[2], H, T, F, U, A
  end
end, [1757] = function(u, u, u, u, U, U, U)
  return function()
    local U = 0
    while true do
      if not u[1][4][u[1][7]] then
        break
      end
      if getgenv().__dwToken ~= u[2].__token then
        break
      end
      task.wait(0.1)
      if not u[1][4][u[1][7]].Loading then
        continue
      end
      local Q, Q = pcall(function()
        local F = u[3]:FindFirstChild("introGui")
        if F then
          u[4]:fireclickbutton(F.title.Frame.TextButton)
          return
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Sell") and (u[4]:Cooldown("Auto Sell Items", 1))) and not u[4].SellItemsBusy then
          u[4].SellItemsBusy = true
          task.spawn(function()
            local A, Y = pcall(u[4].SellItems, u[4])
            u[4].SellItemsBusy = false
            if not A and u[5] then
              warn("[Auto Sell] ", Y)
            end
          end)
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Equip Best") and (u[4]:Cooldown("Auto Equip Best", 1)) then
          u[4]:EquipBestItemByClass(u[1][4][u[1][7]]:GetFlag("Selected Equip Best Class") or "Mage Class")
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Replay / Next Tier") and (u[4]:IsInBossRaid())) and ((workspace.dungeonProgress.Value == "bossKilled") or (u[3]:FindFirstChild("failedGui"))) then
          if ((u[1][4][u[1][7]]:GetFlag("Boss Raids End Action") == "Next Tier") and not u[3]:FindFirstChild("failedGui")) and (workspace.tier.Value < 30) then
            if u[3].Menu.Frame.Frame.nextTierButton.TextButton.Text:find("(Locked)") then
              u[6]:FireServer()
            else
              u[6]:FireServer({advanceTier = true})
            end
          else
            u[6]:FireServer()
          end
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Join Party") and not u[7].IsDungeon()) and (u[4]:Cooldown("Auto Join Party", 1)) then
          task.spawn(function()
            u[8]:InvokeServer(u[1][4][u[1][7]]:GetFlag("Join Party Username"))
          end)
          return
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Accept Join Request (Boss Raids)") and (u[4]:IsInBossRaid())) and (u[4]:Cooldown("Auto Accept Join Request", 0.5)) then
          u[4]:ConfirmJoinRequest(u[1][4][u[1][7]]:GetFlag("Accept Join Whitelists List (Boss Raids)"))
          return
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Accept Join Request") and (u[7].IsDungeon())) and (u[4]:Cooldown("Auto Accept Join Request", 0.5)) then
          u[4]:ConfirmJoinRequest(u[1][4][u[1][7]]:GetFlag("Accept Join Whitelists List"))
          return
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Send Join Request") and not u[7].IsDungeon()) and (u[4]:Cooldown("Auto Send Join Request", 1)) then
          u[4]:sendJoinRequest(u[1][4][u[1][7]]:GetFlag("Join Request Username"))
          return
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Whitelist Party (Raid)") and not u[7].IsDungeon() then
          F = u[4]:IsInBossRaidLobby()
          if F and (F.Name == u[9].Name) then
            if F.private.Value then
              for A, A in next, u[4]:ExtractWhitelistName(u[1][4][u[1][7]]:GetFlag("Whitelists List (Raid)")), nil do
                if not F.whitelist:FindFirstChild(A) then
                  u[4]:WhitelistPlayer(A, true, "Boss Raid")
                end
              end
            end
          end
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Whitelist Party") and not u[7].IsDungeon() then
          F = u[4]:IsInLobby()
          if F and (F.Name == u[9].Name) then
            if F.mapName.private.Value then
              for A, A in next, u[4]:ExtractWhitelistName(u[1][4][u[1][7]]:GetFlag("Whitelists List")), nil do
                if not F.mapName.private:FindFirstChild(A) then
                  u[4]:WhitelistPlayer(A, true)
                end
              end
            end
          end
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Restart") and (u[7].IsDungeon()) then
          F = workspace.start.startTime.Value
          if F > 0 then
            if ((Workspace:GetServerTimeNow() + 1) - F) >= u[1][4][u[1][7]]:GetFlag("Restart Interval") then
              if u[4]:Cooldown("Replay Dungeon", 3) then
                u[4]:AddReplayCache()
                u[6]:FireServer()
              end
              return
            end
          end
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Restart High Ping") and (u[7].IsDungeon()) then
          if math.round(u[9]:GetNetworkPing() * 1000) >= u[1][4][u[1][7]]:GetFlag("Ping Threshold") then
            u[6]:FireServer()
            return
          end
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Roll Crates") and not u[7].IsDungeon() then
          if not _G.Connections["Crate Reward Prediction"] then
            return
          end
          if u[4]:IsInBossRaidLobby() or (u[7].IsDungeon()) then
            return
          end
          local A, Y = u[4]:IsCrateRolling()
          if A then
            if (Y and Y.name) and (u[4]:Cooldown("Crate Rolling Log", 1)) then
              u[10](("[Crate] rolling... -> %s (%s)"):format(tostring(Y.name), tostring(Y.rarity)))
            end
            return
          end
          Y = u[4]:GetPurchaseCrateButton(u[1][4][u[1][7]]:GetFlag("Selected Crates"))
          if Y and (u[4]:Cooldown("Open Crate Cooldown", 1)) then
            u[4]:fireclickbutton(Y)
          end
          return
        end
        if ((u[1][4][u[1][7]]:GetFlag("Auto Replay Dungeon") and (u[7].IsDungeon())) and (u[4]:Cooldown("Auto Replay Dungeon", 1))) and (tick() >= U) then
          F = workspace:FindFirstChild("dungeonProgress")
          if F and (table.find({"bossKilled", "outOfTime", "hardcoreFailed"}, F.Value)) then
            U = tick() + 15
            local U = u[4]:GetReplayCache()
            if u[1][4][u[1][7]]:GetFlag("Auto Back To Lobby") and (U >= u[1][4][u[1][7]]:GetFlag("Back to Lobby After")) then
              u[11].Components["Current Replayed Status"]:SetText("\226\149\176\226\148\136 \240\159\148\180 Back to Lobby . . .")
              u[11].Components["Current Replayed Status"]:SetVisibility(true)
              u[4]:ResetReplayCache()
              u[12]:FireServer()
            else
              u[11].Components["Current Replayed Status"]:SetText("\226\149\176\226\148\136 \240\159\159\162 Replay Dungeon . . .")
              u[11].Components["Current Replayed Status"]:SetVisibility(true)
              u[4]:AddReplayCache()
              u[6]:FireServer()
            end
            return
          end
        else
          u[1][4][u[1][7]]:GetFlag("Auto Replay Dungeon")
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Select Best Dungeon") and not u[7].IsDungeon() then
          local U, A = u[4]:GetBestDungeon()
          u[11].Components["Selected Dungeon Dropdown"]:Set(U)
          u[11].Components["Selected Dungeon Difficulty Dropdown"]:Set(A)
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Select Latest Tier") and not u[7].IsDungeon() then
          F = u[4]:GetLatestBossRaids()
          u[11].Components["Selected Raid Tier Dropdown"]:Set("Tier " .. F)
        end
        if u[1][4][u[1][7]]:GetFlag("Auto Start Bosses Raids") and (u[13].PlaceId == 77649408247578) then
          if u[4]:IsInBossRaidLobby() then
            u[4]:StartBossRaidInLobby()
          else
            u[14]:InvokeServer(u[1][4][u[1][7]]:GetFlag("Selected Raid Tier"):match("%d+"), true, 0)
          end
          return
        end
        if u[4]:IsInBossRaid() then
          if not workspace.dungeonStarted.Value and (u[1][4][u[1][7]]:GetFlag("Auto Ready in Boss Raids")) then
            local U = u[4]:ExtractWhitelistName(u[1][4][u[1][7]]:GetFlag("Required Player To Start (Boss Raids)"), true)
            local F = ""
            local A = {}
            local Y = next
            local T, G = u[15]:GetChildren()
            for z, z in Y, T, G do
              if z.Name ~= u[9].Name then
                table.insert(A, z.Name:lower())
              end
            end
            Y = true
            for T, T in next, U, nil do
              if not table.find(A, T) then
                F, Y = T, false
              end
            end
            if not Y then
              if u[4]:Cooldown("Send Start Dungeon Notify", 2) then
                task.spawn(function()
                  u[1][4][u[1][7]]:Notification({Title = "Waiting for Player!", Description = ("Waiting '%s' before start the dungeon"):format(F), Duration = 3, Icon = "73789337996373"})
                end)
              end
              return
            end
            u[16]:FireServer()
            return
          end
        end
        if (u[1][4][u[1][7]]:GetFlag("Auto Start Dungeon") or (u[1][4][u[1][7]]:GetFlag("Auto Start Party & Dungeon"))) and not u[7].IsDungeon() then
          if u[4]:IsInLobby() then
            u[4]:StartDungeonInLobby()
          else
            u[4]:CreateLobby({Room = u[1][4][u[1][7]]:GetFlag("Selected Dungeon"), Difficulty = u[1][4][u[1][7]]:GetFlag("Selected Dungeon Difficulty"), Hardcore = u[1][4][u[1][7]]:GetFlag("Selected Dungeon Hardcore")})
          end
          return
        end
      end)
      if Q and u[5] then
        warn("[Main Thread] Caught Error: ", Q)
      end
    end
  end
end, uj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if z then
    if G <= 186 then
      local z, D, m, g, c, r = 1 + Q, 61, 233, (N + 37) % 256, u[16](8), 0
      local M = ((D * g) + m) % 256
      u[91](c, r, (u[116](37, M, (u[39](Y, r + z)))))
      return 148, z, 37, D, m, c, 1, ((M * D) + m) % 256, u[91]
    else
      local z, D, m, g = 1 + Q, (N + 5) % 256, u[16](1), 0
      u[91](m, g, (u[116]((233 + (D * 61)) % 256, 5, (u[39](H, z + g)))))
      return 0, -u[39](m, F), Q, F, S, e, U, T, A
    end
  elseif G <= 188 then
    return (not not (Y > 172) and 145) or 135, N, Q, F, S, e, U, T, A
  else
    local Y = u[39](H, Q + 1)
    return ((Y < 128) and 59) or 105, N, Q, F, Y, e, U, T, A
  end
end, [12948] = function(u, u, u, u, U, U)
  return function(U, Q)
    Q = Q or u[1].memH
    local F = u[1].bb and u[1].bb.sweep
    if (((F and F.model) and F.model.Parent) and F.safeCenter) and F.axis then
      local A = u[2]:GetRoot()
      if (A and (math.abs((F.safeCenter - u[3][4][u[3][7]](A.Position)):Dot(F.axis)) <= 15)) and (math.abs((F.safeCenter - u[3][4][u[3][7]](U)):Dot(F.axis)) > 15) then
        return false
      end
    end
    F = u[1].bb and u[1].bb.memory
    if (not F or not F.model.Parent) or not F.mid then
      return true
    end
    local A = u[4].bbMemDone(F)
    local Y = F.seq[A + 1] or (F.guess and F.guess[A + 1])
    if not Y then
      return true
    end
    if (A == 0) and (tick() < (F.at + 4.5)) then
      return true
    end
    local T = ((Y == "L") and F.leftDir) or -F.leftDir
    local Y, G = (u[3][4][u[3][7]](U) - F.mid):Dot(T), Q and (((F.at + (u[4].BonusBoss.memHitT[A + 1] or 0)) - tick()) > Q)
    if (Y < 5.5) and not G then
      return false
    end
    if math.abs(Y) > 14 then
      Q = u[2]:GetRoot()
      G = (Q and (math.abs((u[3][4][u[3][7]](Q.Position) - F.mid):Dot(T)))) or 0
      if math.abs(Y) > (G + 1) then
        return false
      end
    end
    return true
  end
end, [77] = function(u, u, u, u, U, U)
  return function(U, U, Q)
    u[1].StrafeDodge[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\184\171\224\184\165\224\184\154\224\185\128\224\184\155\224\185\135\224\184\153\224\184\167\224\184\135\224\185\130\224\184\132\224\185\137\224\184\135") or "\224\184\171\224\184\165\224\184\154\224\184\150\224\184\173\224\184\162\224\184\171\224\184\165\224\184\177\224\184\135\224\185\129\224\184\154\224\184\154\224\184\155\224\184\129\224\184\149\224\184\180")
  end
end, A = function(u, U, Q, F, A, Y, T, G, z)
  if U <= 149 then
    if U <= 148 then
      local H = u[39](Q, 1 + A)
      local N, S = (not (H < 128) and 250) or 138, z[1]
      return N, z[2], S, A, Y, T, H
    else
      Y[T] = F
      local H = z[1]
      return 229, z[2], H, A, Y, T, F
    end
  elseif U <= 150 then
    G[Y] = T
    local H = u[39](Q, A)
    local u, Q = ((H < 128) and 74) or 143, z[1]
    return u, z[2], Q, A, 9, H, F
  elseif U <= 151 then
    local u, U, Q = (128 * (T - 128)) + F, 2 + A, z[1]
    return 187, z[2], Q, U, Y, u, F
  else
    local u, U = (not (G[G[3]] == 0) and 3) or 293, z[1]
    return u, z[2], U, A, Y, T, F
  end
end, [13676] = function(u, u, u, u)
  return function()
    while task.wait(0.1) do
      if u[1].genv.__dwToken ~= u[2].token then
        break
      end
      local U = u[2].bb.spiralChains
      for Q = #U, 1, -1 do
        local F = U[Q]
        if (tick() - F.t) > 0.35 then
          for A, A in ipairs(F.parts) do
            pcall(function()
              u[3]:RemoveHitbox(A)
            end)
            A:Destroy()
          end
          table.remove(U, Q)
        end
      end
    end
  end
end, r = function(u, ...)
  (...)[...] = nil
end, [57] = string.format, [13033] = function(u, u, u, u, U, U)
  return function(U, U)
    if u[1].perfLive then
      print("perf: \224\184\173\224\184\162\224\184\185\224\185\136\224\185\129\224\184\165\224\185\137\224\184\167")
      return
    end
    u[1].perfLive = true
    local Q, F = (U or 8) / 1000, {"OrbSlide", "FindSafeNear", "FindDodgeSpot", "OpenEscape", "HandleIncoming", "PredictChain", "HandleOrb", "BobFight", "HandleBeam", "MoveToTarget", "FutureSafe", "HandleBigEscape", "HandleHoming", "DrawWalkPath", "DrawHitboxHolo"}
    for A, A in ipairs(F) do
      local F = u[2][A]
      if type(F) == "function" then
        u[2][A] = function(...)
          local Y, T = os.clock(), table.pack(F(...))
          local F = os.clock() - Y
          if F > Q then
            warn(("[perf] %s \224\185\131\224\184\138\224\185\137 %.1f ms | hitbox=%d"):format(A, F * 1000, #u[3]))
          end
          return table.unpack(T, 1, T.n)
        end
      end
    end
    print("perf: \224\185\128\224\184\155\224\184\180\224\184\148\224\185\129\224\184\165\224\185\137\224\184\167 \224\185\128\224\184\149\224\184\183\224\184\173\224\184\153\224\185\128\224\184\161\224\184\183\224\185\136\224\184\173\224\184\159\224\184\177\224\184\135\224\184\129\224\185\140\224\184\138\224\184\177\224\184\153\224\185\128\224\184\148\224\184\181\224\184\162\224\184\167\224\185\128\224\184\129\224\184\180\224\184\153 " .. ((U or 8) .. " ms"))
  end
end, [52] = select, [8030] = function(u, u, u, u, U)
  return function(U, Q, F, A)
    if U.ring then
      local Y = u[1][4][u[1][7]](U, Q)
      Y = if A then Y + A else Y
      local T = Vector3.new(F.X - Y.X, 0, F.Z - Y.Z)
      local G = T.Magnitude
      local z = u[2][4][u[2][7]](U, Q)
      if z and (G > 0.5) then
        if math.cos(math.rad(U.ringHalf + (U.ringAngPad or 3))) > T.Unit:Dot(z) then
          return math.huge
        end
      end
      if math.abs(F.Y - Y.Y) > (U.ringY or 20) then
        return math.huge
      end
      z, T = u[3][4][u[3][7]](U, Q)
      if z > T then
        return math.huge
      end
      if G < z then
        return z - G
      end
      if G > T then
        return G - T
      end
      return -math.min(G - z, T - G)
    end
    local Y = Q.CFrame
    local T = (if A then Y + A else Y):PointToObjectSpace(F)
    F = u[4][4][u[4][7]](U, Q) / 2
    if U.shape == "Ball" then
      return (Vector3.new(T.X / F.X, T.Y / F.Y, T.Z / F.Z).Magnitude - 1) * math.min(F.X, F.Y, F.Z)
    elseif U.shape == "Cylinder" then
      Y, Q = (Vector3.new(0, T.Y / F.Y, T.Z / F.Z).Magnitude - 1) * math.min(F.Y, F.Z), math.abs(T.X) - F.X
      if (Y > 0) and (Q > 0) then
        return math.sqrt((Y * Y) + (Q * Q))
      end
      return math.max(Y, Q)
    end
    Q, Y, U = math.abs(T.X) - F.X, math.abs(T.Y) - F.Y, math.abs(T.Z) - F.Z
    if ((Q > 0) or (Y > 0)) or (U > 0) then
      T, A, F = math.max(Q, 0), math.max(Y, 0), math.max(U, 0)
      return math.sqrt(((T * T) + (A * A)) + (F * F))
    end
    return math.max(Q, Y, U)
  end
end, Vq = function(u, U, Q, F, A, Y, T, G)
  if G <= 281 then
    local z, H = 1 + U, T[1]
    return 149, T[2], H, z, Q
  elseif G <= 282 then
    local G, z, H, N = u[39](F, U + 3), 128 * (Q - 128), (A - 128) * 2097152, Y - 128
    local u, F = (G % 128) * 16384, (G - (G % 128)) * 2097152
    local G, S, e = H + (N + ((z + u) + F)), U + 4, T[1]
    return 309, T[2], e, S, G
  else
    local u, F = Q - 128, (A - 128) * 16384
    local Q, A, G = ((128 * Y) + F) + u, 3 + U, T[1]
    return 51, T[2], G, A, Q
  end
end, [102] = string.find, [14793] = function(u, u, u, u)
  return function(U)
    local Q = tick() - U.at
    local F = 0
    local A = 0
    for Y, T in ipairs(u[1].BonusBoss.memHitT) do
      F, A = if Q > (T + 0.45) then Y else F, if Q > (T - 0.5) then Y else A
    end
    local Y = math.clamp(U.hits, F, A)
    if (Y ~= U.hits) and (U.hitFix ~= Y) then
      U.hitFix = Y
      u[2][4][u[2][7]]("state", "bbmemfix" .. Y, 1, "Memory: \224\184\153\224\184\177\224\184\154\224\184\149\224\184\181\224\184\149\224\184\178\224\184\161\224\185\128\224\184\167\224\184\165\224\184\178 %d (\224\184\130\224\184\173\224\184\154 precast %d) t+%.2f", Y, U.hits, Q)
    end
    return Y
  end
end, q = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if T <= 84 then
    local S, e = N - 128, 16384 * (H - 128)
    local H, D, m = (U * 128) + (S + e), 3 + A, Q[1]
    return 71, Q[2], m, H, D, U, z
  elseif T <= 85 then
    local T, H, S, e = u[39](G, 3 + A), (U - 128) * 128, (Y - 128) * 2097152, F - 128
    local F, Y = 16384 * (T % 128), 2097152 * (T - (T % 128))
    local T, D, m = (H + ((S + e) + Y)) + F, 4 + A, Q[1]
    return 93, Q[2], m, N, D, T, z
  else
    local F = u[39](G, A + 2)
    local u, Y = (not (128 <= F) and 45) or 209, Q[1]
    return u, Q[2], Y, N, A, U, F
  end
end, _M = function(u, U, Q, F, A, Y, T, G, z, H)
  if F then
    if A <= 47 then
      local F, N, S, e = u[39](z, 3 + U), 128 * (H - 128), 2097152 * (Y - 128), G - 128
      local z, D = 16384 * (F % 128), (F - (F % 128)) * 2097152
      F = (N + S) + ((e + D) + z)
      return 61, T, U + 4, F, G
    else
      local F = u[39](H, 1 + U)
      if not (128 > F) then
        return 20, T, U, H, F
      else
        return 143, T, U, F, G
      end
    end
  elseif A <= 49 then
    local F, A, z, N = U + 1, (202 + T) % 256, u[16](1), 0
    local S = ((A * 61) + 233) % 256
    u[91](z, N, (u[116](u[39](H, N + F), S, 202)))
    return 0, not (u[39](z, Q) == 169), U, H, G
  else
    return (not not (240 >= Y) and 111) or 160, T, U, H, G
  end
end, IM = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if A <= 79 then
    local A = N - 128
    local e = ((Y - 128) * 16384) + ((H * 128) + A)
    return 207, U + 3, e, S, z, T, F
  else
    T(Q, S, (u[116](N, z, (u[39](H, U + S)))))
    local F, A = 2, (G + (Y * z)) % 256
    u[91](Q, F, (u[116](u[39](H, U + F), A, N)))
    F = 3
    local Q = ((A * Y) + G) % 256
    return 34, U, N, F, Q, u[91], (u[116](N, Q, (u[39](H, U + F))))
  end
end, p = function(u, U, Q, F, A, Y, T)
  if Q <= 87 then
    local Q = u[39](T, 1 + A)
    local G, z = (not (128 > Q) and 102) or 56, F[1]
    return G, F[2], z, U, Q
  else
    local U = u[39](T, 1 + A)
    local u, Q = ((U < 128) and 205) or 115, F[1]
    return u, F[2], Q, U, Y
  end
end, [12837] = function(u, U, U, U, Q, Q)
  return function()
    local Q, F, A, Y, T, G, z, H, N, S, e, D, m = 2
    while true do
      if Q <= 4 then
        if Q <= 1 then
          if Q <= 0 then
            local g = u[8](T + 1, 255)
            local c = u[8](G + S[g], 255)
            S[g], S[c] = S[c], S[g]
            local r, M = u[114](0, (u[71](S[u[8](S[g] + S[c], 255)], 0))), u[8](g + 1, 255)
            g = u[8](c + S[M], 255)
            Q, A, Y, T, G = 8, r, M, g, S[g]
          else
            Q, F = 6, F[3]
          end
        elseif Q <= 2 then
          local g = U[1][4][U[1][7]]
          local c = U[2][4][U[2][7]]
          local r = u[118](g) - c
          local M, y, p = U[3][4][U[3][7]], u[16](r), r - (r % 4)
          local U, f = p - 1, 4 + 0
          Q, F, T, G, z, H, N, S, e, D = 4, {nil, 0 - f, F, U + 0, f}, 0, 0, g, c, r, M, y, p
        elseif Q <= 3 then
          local U, g, c = F[2], F[4], F[1]
          local r, M = U + g, g <= 0
          local U, g, y = not M, r >= c, r <= c
          c = (M and g) or (U and y)
          F[2] = r
          if c then
            Q, A = 10, r
          else
            Q = 1
          end
        else
          local U, g, c = F[2], F[5], F[4]
          local r, M = U + g, g <= 0
          local g, y, p = not M, r >= c, r <= c
          U = (M and y) or (g and p)
          F[2] = r
          if U then
            Q, m = 0, r
          else
            Q = 9
          end
        end
      elseif Q <= 7 then
        if Q <= 5 then
          local U, g = N - 1, 1 + 0
          local N = D - g
          Q, F = 3, {U + 0, N, F, g, nil}
        elseif Q <= 6 then
          return e
        else
          local U, N = u[71](G, 16), u[8](Y + 1, 255)
          local D = u[8](T + S[N], 255)
          local g, c = S[D], S[N]
          S[N] = g
          S[D] = c
          c = u[114](A, U, (u[71](S[u[8](S[N] + S[D], 255)], 24)))
          u[75](e, m, (u[116](u[24](z, H + m), c)))
          Q, A, Y, T, G = 4, N, D, N, D
        end
      elseif Q <= 8 then
        S[Y], S[T] = G, S[Y]
        local U, N = u[114](A, (u[71](S[u[8](S[Y] + S[T], 255)], 8))), u[8](Y + 1, 255)
        local D = u[8](T + S[N], 255)
        S[N], S[D] = S[D], S[N]
        Q, A, Y, T, G = 7, U, N, D, S[u[8](S[N] + S[D], 255)]
      elseif Q <= 9 then
        Q, F = 5, F[3]
      else
        local U = u[8](T + 1, 255)
        local F = u[8](G + S[U], 255)
        S[U], S[F] = S[F], S[U]
        local Y = S[u[8](S[U] + S[F], 255)]
        u[91](e, A, (u[116](u[39](z, H + A), Y)))
        Q, T, G = 3, U, F
      end
    end
  end
end, xM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if e <= 72 then
    local e, D, m, g, c, r = z + 1, 61, 233, (124 + F) % 256, u[16](12), 0
    local M = (m + (D * g)) % 256
    u[91](c, r, (u[116](u[39](U, r + e), 124, M)))
    return 18, e, 124, D, m, c, 1, ((M * D) + m) % 256
  else
    H(S, G, (u[116](Q, N(U, A), z)))
    local A, G = 2, (Y + (Q * T)) % 256
    u[91](S, A, (u[116](G, u[39](U, F + A), z)))
    A = 3
    local Q = ((T * G) + Y) % 256
    u[91](S, A, (u[116](z, u[39](U, A + F), Q)))
    return 56, F, z, T, Y, S, 4, Y + (T * Q)
  end
end, Sq = function(u, U, Q, F, A, Y)
  local T, G, z, H = u[39](Y, F + 3), 128 * (A - 128), 2097152 * (Q - 128), U - 128
  U = (T % 128) * 16384
  return (((2097152 * (T - (T % 128))) + U) + (H + G)) + z, 4 + F, 23
end, [12150] = function(u, u, u, u, U)
  return function(U, Q, F, A, Y, T, G, z, H, N, S)
    local e = u[1][4][u[1][7]](F)
    local D = 0
    while D <= (N + 1e-06) do
      if u[2].midHitAt(U, Q, e, (T + u[2].Mid.react) + D, G, H) then
        return u[2].Mid.react + D
      end
      D += 0.1
    end
    e = u[2].midPathHit(U, Q, F, A, Y, T + N, G, z, H, S)
    return (e and (e + N)) or nil
  end
end, Hq = function(u, U, Q, F, A, Y, T, G, z)
  if z <= 267 then
    if z <= 266 then
      local H, N, S = Y + ((Q - 128) * 128), 2 + G, A[1]
      return 82, A[2], S, N, H, Y, F
    else
      local H, N = Y - 128, (U - 128) * 16384
      local S, e, D = ((128 * F) + N) + H, 3 + G, A[1]
      return 37, A[2], D, e, Q, S, F
    end
  elseif z <= 268 then
    local H = u[39](T, 2 + G)
    local N, S = (not (128 > H) and 282) or 277, A[1]
    return N, A[2], S, G, Q, Y, H
  elseif z <= 269 then
    Q[Y] = U
    local U = A[1]
    return 313, A[2], U, G, Q, Y, F
  else
    local U = u[39](T, 1 + G)
    local u, Y = ((128 > U) and 266) or 144, A[1]
    return u, A[2], Y, G, Q, U, F
  end
end, [11776] = function(u, u, u, u, U, U)
  return function(U)
    local Q = U:GetBuffSkill()
    local U, F = (Q and {((Q == "q") and "e") or "q"}) or {"q", "e"}, math.huge
    local function Q(A)
      for Y, T in ipairs(A:GetChildren()) do
        Y = T:FindFirstChild("abilitySlot")
        if Y and (table.find(U, Y.Value)) then
          local U = T:FindFirstChild("cooldown")
          local A, Y = (U and U.Value) or 0, F
          if A < Y then
            F = A
          end
        end
      end
    end
    Q(u[1]:FindFirstChild("Backpack") or (Instance.new("Folder")))
    if u[1].Character then
      Q(u[1].Character)
    end
    return F
  end
end, h = function(u, U, Q, F, A, Y, T, G)
  if U <= 113 then
    if U <= 112 then
      local z = u[39](Y, 1 + A)
      local H, N = (not (z < 128) and 29) or 25, F[1]
      return H, F[2], N, A, z, Q
    else
      local z, H = G - 128, (Q - 128) * 16384
      local N, S, e = (z + (T * 128)) + H, 3 + A, F[1]
      return 103, F[2], e, S, N, Q
    end
  elseif U <= 114 then
    local z, H, N = T + (128 * (Q - 128)), 2 + A, F[1]
    return 150, F[2], N, H, G, z
  elseif U <= 115 then
    local U = u[39](Y, A + 2)
    local u, Y = (not (U < 128) and 8) or 206, F[1]
    return u, F[2], Y, A, G, U
  else
    local u = G - 128
    local U, Y, G = (((Q - 128) * 16384) + (128 * T)) + u, A + 3, F[1]
    return 12, F[2], G, Y, U, Q
  end
end, [2] = function(u, u, u, u)
  return function()
    local U, Q = u[1].genv.__claudeBotLog, u[1].prof
    local u = os.clock() - Q.t0
    if not U or (u < 2) then
      return
    end
    local F = {}
    for A in pairs(Q.acc) do
      F[#F + 1] = A
    end
    table.sort(F, function(A, Y)
      return Q.acc[A] > Q.acc[Y]
    end)
    local A = {}
    for Y = 1, math.min(#F, 14), 1 do
      local T = F[Y]
      A[#A + 1] = ("%s %.1fms/s n%d max%.1f"):format(T, (Q.acc[T] * 1000) / u, Q.cnt[T], Q.max[T] * 1000)
    end
    if #A > 0 then
      pcall(U, "perf", "PROF " .. table.concat(A, " | "))
    end
    Q.acc, Q.cnt, Q.max, Q.t0 = {}, {}, {}, os.clock()
  end
end, [3603] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A, Y = Q:WaitForChild(F.from, 3), Q:WaitForChild(F.to, 3)
    if not A or not Y then
      u[1][4][u[1][7]]("dodge", "beamnode", 3, "beam %s \224\184\171\224\184\178 %s/%s \224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173", Q.Name, F.from, F.to)
      return
    end
    local T, G = u[2][4][u[2][7]](A), u[2][4][u[2][7]](Y)
    if not T or not G then
      return
    end
    local z, H = F.extend or 0, Instance.new("Part")
    H.Name = "_beamHit"
    H.Size = Vector3.new(F.width, F.height, math.max((G - T).Magnitude, 2) + (z * 2))
    H.CFrame = CFrame.lookAt(T:Lerp(G, 0.5), G)
    H.Anchored = true
    H.CanCollide = F.collide == true
    H.CanQuery = false
    H.CanTouch = false
    H.Transparency = (u[3].enabled and 0.8) or 1
    H.Color = Color3.fromRGB(0, 200, 255)
    H.Material = Enum.Material.Neon
    H.Parent = workspace
    U:RegisterHitbox(H, {lifetime = F.lifetime, pad = F.pad, owner = F.owner})
    local U = {center = T:Lerp(G, 0.5), dir = nil, lenDir = nil, halfLen = (math.max((G - T).Magnitude, 2) + (z * 2)) / 2, halfW = (F.width / 2) + (F.pad or 0), speed = 0}
    u[4].beamTrack[H] = U
    u[5].AttachBeamPlan(U)
    local N = u[6][4][u[6][7]]("Bob The Frost Giant")
    local function S()
      u[4].beamTrack[H] = nil
      u[5]:RemoveHitbox(H)
      if H.Parent then
        H:Destroy()
      end
    end
    local e = nil
    e = u[7].Heartbeat:Connect(function(D)
      if ((not Q.Parent or not H.Parent) or not N) or not N.Parent then
        e:Disconnect()
        S()
        return
      end
      H.CanCollide = (F.collide == true) and not u[5]:HasForceField()
      local N, m = u[2][4][u[2][7]](A), u[2][4][u[2][7]](Y)
      if not N or not m then
        return
      end
      if not U.plan then
        u[5].AttachBeamPlan(U)
      end
      local A = (m - N).Magnitude
      if A < 2 then
        return
      end
      local Y = N:Lerp(m, 0.5)
      H.Size = Vector3.new(F.width, F.height, A + (z * 2))
      H.CFrame = CFrame.lookAt(Y, m)
      m = Y - U.center
      N = Vector3.new(m.X, 0, m.Z)
      if N.Magnitude > 30 then
        U.center = Y
        N = Vector3.zero
      end
      if (N.Magnitude > 0.05) and (D > 0) then
        m = N.Unit
        U.dir = (U.dir and U.dir:Lerp(m, 0.35).Unit) or m
        U.speed = N.Magnitude / D
      end
      N = H.CFrame.LookVector
      D = Vector3.new(N.X, 0, N.Z)
      if D.Magnitude > 0.01 then
        U.lenDir = D.Unit
      end
      U.center = Y
      U.halfLen = (A + (z * 2)) / 2
      U.halfW = (F.width / 2) + (F.pad or 0)
      u[5]:BeamEscapeTP(H, U)
    end)
    task.delay(F.lifetime, function()
      e:Disconnect()
      S()
    end)
    u[8][4][u[8][7]]("dodge", "beam %s \224\184\162\224\184\178\224\184\167 %.0f \224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\149\224\184\178\224\184\161", Q.Name, (G - T).Magnitude)
  end
end, MM = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 101 then
    if U <= 100 then
      return 0, Y[3], Q, z, T, H, G, A
    else
      local N, S, e, D = (75 + Q) % 256, u[16](T), T - 1, 1 + 0
      local u = 0 - D
      return 21, {e + 0, Y, nil, D, u}, N, z, 75, 61, 233, S
    end
  elseif U <= 102 then
    local u = H - 128
    local U = (((F - 128) * 16384) + (128 * G)) + u
    return 61, Y, Q, z + 3, T, U, G, A
  else
    return ((72 < G) and 174) or 78, Y, Q, z, T, H, G, A
  end
end, [90] = buffer.readi16, OM = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 0 then
    T[z] = Q
    return 224, G, A, F, Y
  elseif U <= 1 then
    local U, T, z = H[1], H[5], H[2]
    local N, S = U + T, T <= 0
    local U, e, D = not S, N >= z, N <= z
    T = (S and e) or (U and D)
    H[1] = N
    if T then
      return 17, G, N, F, Y
    else
      return 100, G, A, F, Y
    end
  else
    local U, F = A[7], 1 + A[4][Q]
    local Q = u[39](U, F)
    return ((Q < 128) and 76) or 45, U, A, F, Q
  end
end, [9690] = function(u, u, u, u)
  return function(U, Q)
    return u[1].timeGuard(U, Q, u[2].odz)
  end
end, [2069] = function(u, u, u, u)
  return function(U)
    local Q = tick()
    for F, F in ipairs(u[1]) do
      local A = F.part
      if (A and (A.Name:sub(1, 6) ~= "claude")) and not u[2][4][u[2][7]](F, Q) then
        if F.ring then
          if u[3][4][u[3][7]](F, A, U) then
            return true
          end
        elseif u[4][4][u[4][7]](F, A.CFrame, u[5][4][u[5][7]](F, A), U) then
          return true
        end
      end
    end
    return false
  end
end, [16250] = function(u, u, u, u, U)
  return function(U, Q, F, A, Y, T, G)
    local z, H = 0.05, 0.1
    local function N(S, e)
      if S.tGone then
        if e >= S.tGone then
          return nil
        end
      elseif u[1].bbBadGone(S.p, S.v, e) then
        return nil
      end
      return S.p + (S.v * e)
    end
    local u = {}
    for S = 0, 15, 1 do
      local e = (S * 3.141592653589793) / 8
      u[#u + 1] = Vector3.new(math.cos(e), 0, math.sin(e))
    end
    local S, e = 0
    local D, m = U
    while S <= ((A + 0.3) + 1e-06) do
      U = Q + (F * S)
      e = if not e and ((U - D).Magnitude <= 12) then S else e
      for U, g in ipairs(Y) do
        U = N(g, S)
        if U and ((U - D).Magnitude < g.thr) then
          return nil
        end
      end
      if e and (S >= (e + 0.3)) then
        return m, e
      end
      if not e and (S > A) then
        return nil
      end
      if S >= H then
        local U = S + 0.2
        local A, H, g = Q + (F * U)
        for Q = 0, 23, 1 do
          local F = (Q * 3.141592653589793) / 12
          local c, r = A + Vector3.new(math.cos(F) * 11, 0, math.sin(F) * 11), true
          for M, M in ipairs(Y) do
            F = N(M, U)
            if F and ((F - c).Magnitude < 16) then
              r = false
              break
            end
          end
          if r then
            Q = (c - D).Magnitude
            if not H or (Q < H) then
              H, g = Q, c
            end
          end
        end
        if not g then
          return nil
        end
        H, U = nil
        for Q, F in ipairs(u) do
          Q = true
          for u = 1, 6, 1 do
            local c, r = D + (F * ((T * z) * u)), Q
            if not G(c) then
              Q = false
              break
            end
            Q = r
            for G, G in ipairs(Y) do
              A = N(G, S + (z * u))
              if A and ((A - c).Magnitude < G.thr) then
                Q = false
                break
              end
            end
            if not Q then
              break
            end
          end
          if Q then
            local u = (g - (D + (F * (T * z)))).Magnitude
            if not H or (u < H) then
              H, U = u, F
            end
          end
        end
        if not U then
          return nil
        end
        m = m or U
        D += U * (T * z)
      end
      S += z
    end
    return (e and m) or nil, e
  end
end, [105] = table.clear, [9441] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = u[1].Mid
    if not A.enabled then
      return false
    end
    if (F.prefix and u[2].bossDeadAt) and u[2].bossDeadAt[F.prefix] then
      F.plan = nil
      return false
    end
    u[1].tgPrune(F)
    local Y, T, G = F.lanes, F.beams, F.discs
    if ((((#Y == 0) and (#T == 0)) and (#G == 0)) and not ((F.dyn and u[1].bbOrbList) and (#u[1].bbOrbList() > 0))) and not (((F == u[2].bbz) and u[2].bb) and u[2].bb.memory) then
      F.plan = nil
      return false
    end
    local z = tick()
    local H = u[3][4][u[3][7]](U)
    local N = A.dists[#A.dists] + 6
    local S, e = u[4][4][u[4][7]](Q), {}
    for D, D in ipairs(Y) do
      local m, g = S.X - D.o.X, S.Z - D.o.Z
      local c, r = math.abs((m * D.d.Z) - (g * D.d.X)), (m * D.d.X) + (g * D.d.Z)
      if ((c < (D.half + N)) and (r > (-N - D.hl))) and (r < ((D.len + N) + D.hl)) then
        e[#e + 1] = D
      end
    end
    local D = A.hold
    for m, m in ipairs(G) do
      local g, c, r = S.X - m.c.X, S.Z - m.c.Z, m.tB - z
      if ((r > D) and (r < 2.6)) and (((g * g) + (c * c)) < ((m.r + 35) ^ 2)) then
        D = r
      end
    end
    if (((F == u[2].bbz) and u[2].bb) and u[2].bb.touchActive) and ((z - u[2].bb.touchActive) < 0.2) then
      D = math.min(D, 0.2)
    end
    local m
    for g, g in ipairs(T) do
      if g.sweep then
        m = {}
        break
      end
    end
    if m then
      for g, g in ipairs(T) do
        if not g.sweep then
          m[#m + 1] = g
        end
      end
    end
    S = F.plan
    N = ((S and S.startAt) and (math.max(0, S.startAt - z))) or 0
    if (((S and (z < S.until_)) and (S.stay or (u[4][4][u[4][7]](S.pos - Q).Magnitude > 2))) and (u[1].tgPlanStillOK(S, ((N > 0) and (u[1].midPathHitW(e, T, Q, S.pos, H, z, G, D, F.dyn, N, m))) or (u[1].midPathHit(e, T, Q, S.pos, H, z, G, D, F.dyn, m)), z))) and (not F.extraOK or (F.extraOK(U, Q, S.pos, H))) then
      U:SetDestination(((N > 0) and Q) or S.pos, false)
      return true
    end
    F.plan = nil
    local g = u[5].dest or Q
    S = u[1].midPathHit(e, T, Q, g, H, z, G, D, F.dyn, m)
    if not S then
      return false
    end
    N = F.giveUpAt
    if ((N and ((z - N.t) < 0.05)) and (u[4][4][u[4][7]](N.pos - Q).Magnitude < 2)) and (u[4][4][u[4][7]](N.goal - g).Magnitude < 2) then
      F.gaveUp = N.t
      return false
    end
    local c, r, M, y = {}
    local p = {}
    local function f(v)
      for K, K in ipairs(G) do
        if K.big and (K.tB > z) then
          local B, R = v.X - K.c.X, v.Z - K.c.Z
          if ((B * B) + (R * R)) < (K.r * K.r) then
            return true
          end
        end
      end
      return false
    end
    local function v(K, B)
      local R = Vector3.new(K.X, Q.Y, K.Z)
      if not U:LeashOK(R) or (F.static(R)) then
        return
      end
      if F.extraOK and not F.extraOK(U, Q, R, H) then
        return
      end
      p[#p + 1] = {g = R, d = B}
      K = u[1].midPathHit(e, T, Q, R, H, z, G, D, F.dyn, m)
      if not K then
        c[#c + 1] = {g = R, d = B, s = u[4][4][u[4][7]](R - g).Magnitude + (B * 0.3)}
      else
        local B = f(R)
        if (not M or (y and not B)) or ((B == y) and (K > M)) then
          r, M, y = R, K, B
        end
      end
    end
    v(Q, 0)
    for K = 1, A.dirs, 1 do
      N = ((K / A.dirs) * 3.141592653589793) * 2
      K = Vector3.new(math.cos(N), 0, math.sin(N))
      for B, B in ipairs(F.dists or A.dists) do
        v(Q + (K * B), B)
      end
    end
    if F.extraCands then
      for K, K in ipairs(F.extraCands(Q)) do
        v(K, u[4][4][u[4][7]](K - Q).Magnitude)
      end
    end
    table.sort(c, function(K, B)
      return K.s < B.s
    end)
    local function K(B, R)
      local o = math.floor(R / 6)
      for R = 1, o, 1 do
        if F.static(Q:Lerp(B, R / (o + 1))) then
          return false
        end
      end
      return true
    end
    N = nil
    for B = 1, math.min(#c, 8), 1 do
      v = c[B]
      if ((v.d < 1) or (U:GetClearDistance(Q, u[4][4][u[4][7]](v.g - Q).Unit, v.d + 1, true) >= v.d)) and (K(v.g, v.d)) then
        N = v.g
        break
      end
    end
    local c, B = "\224\184\158\224\185\137\224\184\153"
    if not N and (#p > 0) then
      table.sort(p, function(R, o)
        return R.d < o.d
      end)
      v = {0.15, 0.3, 0.45, 0.6, 0.8}
      for R, o in ipairs(v) do
        for k = 1, math.min(#p, 40), 1 do
          R = p[k]
          if (((R.d >= 1) and not u[1].midPathHitW(e, T, Q, R.g, H, z, G, D, F.dyn, o, m)) and (U:GetClearDistance(Q, u[4][4][u[4][7]](R.g - Q).Unit, R.d + 1, true) >= R.d)) and (K(R.g, R.d)) then
            N, B = R.g, o
            break
          end
        end
        if N then
          break
        end
      end
      c = if B then (("\224\184\163\224\184\173 %.2f \224\184\167\224\184\180 \224\185\129\224\184\165\224\185\137\224\184\167\224\185\132\224\184\155"):format(B)) else c
    end
    if not N then
      if r then
        K, v = not y and (f(g))
        if K then
          v = K
        else
          local H = S + 0.15
          v = M > H
        end
        if v then
          if v then
            c, N = (("\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\185\132\224\184\155\224\185\130\224\184\148\224\184\153\224\184\138\224\185\137\224\184\178\224\184\170\224\184\184\224\184\148 %.2f \224\184\167\224\184\180"):format(M)), r
          elseif not F.holdOnNone then
            F.gaveUp = z
            F.giveUpAt = {t = z, pos = Q, goal = g}
            u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 (\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
            return false
          else
            u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\184\149\224\185\136\224\184\173 (\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
            u[7].dodgeGoal = nil
            u[7].projGoal = nil
            u[7].retreatGoal = nil
            U:SetDestination(g, false)
            return true
          end
        else
          local H = F.holdOnNone
          if H then
            if M >= S then
              c, N = (("\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\185\132\224\184\155\224\185\130\224\184\148\224\184\153\224\184\138\224\185\137\224\184\178\224\184\170\224\184\184\224\184\148 %.2f \224\184\167\224\184\180"):format(M)), r
            elseif not F.holdOnNone then
              F.gaveUp = z
              F.giveUpAt = {t = z, pos = Q, goal = g}
              u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 (\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
              return false
            else
              u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\184\149\224\185\136\224\184\173 (\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
              u[7].dodgeGoal = nil
              u[7].projGoal = nil
              u[7].retreatGoal = nil
              U:SetDestination(g, false)
              return true
            end
          elseif H then
            c, N = (("\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\185\132\224\184\155\224\185\130\224\184\148\224\184\153\224\184\138\224\185\137\224\184\178\224\184\170\224\184\184\224\184\148 %.2f \224\184\167\224\184\180"):format(M)), r
          elseif not F.holdOnNone then
            F.gaveUp = z
            F.giveUpAt = {t = z, pos = Q, goal = g}
            u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 (\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
            return false
          else
            u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\184\149\224\185\136\224\184\173 (\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
            u[7].dodgeGoal = nil
            u[7].projGoal = nil
            u[7].retreatGoal = nil
            U:SetDestination(g, false)
            return true
          end
        end
      elseif not F.holdOnNone then
        F.gaveUp = z
        F.giveUpAt = {t = z, pos = Q, goal = g}
        u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 (\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
        return false
      else
        u[6][4][u[6][7]]("dodge", F.label .. "none", 0.5, "%s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\184\149\224\185\136\224\184\173 (\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", F.label, S)
        u[7].dodgeGoal = nil
        u[7].projGoal = nil
        u[7].retreatGoal = nil
        U:SetDestination(g, false)
        return true
      end
    end
    u[7].dodgeGoal = nil
    u[7].projGoal = nil
    u[7].retreatGoal = nil
    v = u[8][4][u[8][7]](U, N, Q.Y)
    F.plan = {pos = v, until_ = (z + A.commit) + (B or 0), hitAbs = (((c ~= "\224\184\158\224\185\137\224\184\153") and not B) and (z + M)) or nil, startAt = (B and (z + B)) or nil, stay = u[4][4][u[4][7]](v - Q).Magnitude < 2}
    U:SetDestination((B and Q) or v, false)
    u[9][4][u[9][7]](F.label, "\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\130\224\184\148\224\184\153\224\185\131\224\184\153 %.2f \224\184\167\224\184\180 \226\134\146 \224\185\132\224\184\155 %.0f studs (%s) \224\185\128\224\184\165\224\184\153 %d/%d \224\184\165\224\184\179 %d \224\184\167\224\184\135 %d", S, u[4][4][u[4][7]](v - Q).Magnitude, c, #e, #Y, #T, #G)
    return true
  end
end, [78] = buffer.readf32, [4265] = function(u, u, u, u)
  return function(U, U, Q, F)
    local A = u[1][4][u[1][7]](Q - U).Magnitude / F
    if u[2].bbVolleyHit and (u[2].bbVolleyHit(Q, math.max(0, A - 0.2), A + 1)) then
      return false
    end
    return true
  end
end, [4633] = function(u, u, u, u, U, U, U)
  return function()
    u[1].tgPrune(u[2].mid)
  end
end, TM = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if H <= 14 then
    local e, D, m, g = z[5], G(U), u[0], A + F
    local c = u[39](Q, g)
    if not (c >= 128) then
      return 93, e, D, m, g, c, S, G, Y, N, U
    else
      return 23, e, D, m, g, Q, c, G, Y, N, U
    end
  elseif H <= 15 then
    local H, e, D, m, g = u[47], (121 + T) % 256, u[16](A), A - 1, 1 + 0
    local c = 0 - g
    return 219, {z, nil, g, m + 0, c}, e, F, A, 121, S, H, 61, 233, D
  else
    local H, S = u[64](Q), 1 + 0
    return 126, {z, 1 - S, Q + 0, S, nil}, T, F, A, Q, H, G, Y, N, U
  end
end, [49] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    local F = tick()
    if F < u[1].Cooldowns[U] then
      return false
    end
    u[1].Cooldowns[U] = F + Q
    return true
  end
end, [65] = function(u, u, u, u, U, U, U)
  return function(U)
    return u[1].Character
  end
end, [82] = function(u, u, u, u, U, U, U)
  return function(U, U)
    if not U then
      return false
    end
    return u[1][U.Name] ~= true
  end
end, I = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 98 then
    if G <= 97 then
      local N, S = Y - 128, 16384 * (Q - 128)
      local e, D, m = N + ((128 * U) + S), z + 3, A[1]
      return 249, A[2], m, D, T, e, U
    else
      local N = Y - 128
      local S, e, D = (16384 * (Q - 128)) + ((128 * U) + N), 3 + z, A[1]
      return 187, A[2], D, e, T, S, U
    end
  elseif G <= 99 then
    local Q = u[39](F, 1 + z)
    local u, F = ((Q < 128) and 154) or 134, A[1]
    return u, A[2], F, z, T, Y, Q
  elseif G <= 100 then
    local u, Q, F = H + (128 * (T - 128)), z + 2, A[1]
    return 70, A[2], F, Q, u, Y, U
  else
    local u, Q = z + 1, A[1]
    return 249, A[2], Q, u, T, Y, U
  end
end, [71] = bit32.lshift, kj = function(u, U, Q, F, A, Y, T, G)
  if Q <= 168 then
    if Q <= 167 then
      local z, H = T - 128, (A - 128) * 16384
      return 236, z + ((G * 128) + H), 3
    else
      local z = u[U]
      if not not z then
        return 203, z, A
      else
        return 161, T, A
      end
    end
  elseif Q <= 169 then
    return (not (36 < Y) and 128) or 212, T, A
  else
    local Q, Y, z, H = u[39](U, T + 3), 128 * (A - 128), (G - 128) * 2097152, F - 128
    local u, U = 16384 * (Q % 128), (Q - (Q % 128)) * 2097152
    Q = (u + Y) + ((U + H) + z)
    return 6, 4 + T, Q
  end
end, sM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if G <= 37 then
    if G <= 36 then
      F(S, H, (u[116](Q, A, (D(N, U)))))
      local m, g = 1, ((z * A) + T) % 256
      u[91](S, m, (u[116](Q, u[39](N, m + e), g)))
      return 0, u[113](S, Y), Q, z, H, A
    else
      local Y, m, g = z - 128, 16384 * (N - 128), T * 128
      local c = (m + Y) + g
      return 193, e, Q + 3, c, H, A
    end
  elseif G <= 38 then
    return 236, e, 1, z, H, A
  else
    F(S, H, (u[116](D, U)))
    local U, F = 7, (T + (A * z)) % 256
    u[91](S, U, (u[116](F, Q, (u[39](N, e + U)))))
    U = 8
    local A = ((F * z) + T) % 256
    u[91](S, U, (u[116](A, u[39](N, U + e), Q)))
    return 7, e, Q, z, 9, ((z * A) + T) % 256
  end
end, iq = function(u, U, Q, F, A, Y, T, G, z, H)
  if F <= 170 then
    if F <= 169 then
      local N, S, e, D = u[39](Y, 3 + H), (T - 128) * 128, 2097152 * (Q - 128), G - 128
      local u = (N % 128) * 16384
      local Y, G, m = ((N - (N % 128)) * 2097152) + (D + (e + (u + S))), H + 4, A[1]
      return 12, A[2], m, U, G, z, Y
    else
      local u, Y = z - 128, 16384 * (T - 128)
      local G, N, S = u + ((128 * Q) + Y), H + 3, A[1]
      return 162, A[2], S, U, N, G, T
    end
  elseif F <= 171 then
    local u, Q = 1 + H, A[1]
    return 6, A[2], Q, U, u, z, T
  elseif F <= 172 then
    local u, Q, F = ((U - 128) * 128) + z, H + 2, A[1]
    return 71, A[2], F, u, Q, z, T
  else
    local u, Q = H + 1, A[1]
    return 269, A[2], Q, U, u, z, T
  end
end, H = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if T <= 68 then
    local S, e, D, m = u[39](Y, 3 + F), 128 * (U - 128), (N - 128) * 2097152, H - 128
    local H = 16384 * (S % 128)
    local N, g, c = (((2097152 * (S - (S % 128))) + (D + H)) + e) + m, F + 4, G[1]
    return 15, G[2], c, A, g, z, N
  elseif T <= 69 then
    Q[z] = U
    local T = u[39](Y, F)
    local H, N = (not (T < 128) and 30) or 147, G[1]
    return H, G[2], N, A, F, 2, T
  else
    Q[A] = z
    local A, T = Q[1], u[39](Y, F)
    local u, Q = (not not (128 <= T) and 112) or 238, G[1]
    return u, G[2], Q, A, F, T, U
  end
end, e = function(u, U, Q, F, A, Y, T, G, z)
  if A <= 92 then
    local A = u[39](z, 2 + G)
    local H, N = (not (128 > A) and 43) or 170, F[1]
    return H, F[2], N, U, A
  else
    Q[U] = Y
    local U = u[39](z, G)
    local u, Q = (not (128 > U) and 27) or 201, F[1]
    return u, F[2], Q, U, T
  end
end, [8858] = function(u, u, u, u, U, U, U)
  return function(U)
    u[1].walkPathLive = not u[1].walkPathLive
    print("walk path debug:", (u[1].walkPathLive and "ON") or "OFF")
    if not u[1].walkPathLive then
      for U, U in ipairs(u[1].walkPathPool) do
        if U then
          U:Destroy()
        end
      end
      table.clear(u[1].walkPathPool)
      return
    end
    task.spawn(function()
      while u[1].walkPathLive do
        pcall(function()
          u[2]:DrawWalkPath()
        end)
        task.wait(0.2)
      end
    end)
  end
end, Xq = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 207 then
    local N = u[39](z, 1 + A)
    local S, e = (not not (N >= 128) and 79) or 226, F[1]
    return S, F[2], e, A, N, Y, T
  elseif G <= 208 then
    local G, N = Y - 128, (T - 128) * 16384
    local S, e, D = G + ((H * 128) + N), A + 3, F[1]
    return 15, F[2], D, e, Q, S, T
  else
    local G, N, S, e = u[39](z, A + 3), 128 * (T - 128), (H - 128) * 2097152, U - 128
    local u = 16384 * (G % 128)
    local U, T, z = N + (e + (S + (((G - (G % 128)) * 2097152) + u))), A + 4, F[1]
    return 150, F[2], z, T, Q, Y, U
  end
end, Dq = function(u, U, Q, F, A, Y, T, G, z, H)
  if H <= 277 then
    if H <= 276 then
      local N, S = z[2], U[1]
      return 124, N, U[2], S, Y, Q, F, A
    else
      local N, S, e = (F - 128) + (((Y - 128) * 16384) + (A * 128)), Q + 3, U[1]
      return 309, z, U[2], e, S, G, N, A
    end
  elseif H <= 278 then
    local Y, N = Q + 1, U[1]
    return 259, z, U[2], N, Y, G, F, A
  elseif H <= 279 then
    local Y, H, N = z[3], z[1], z[5]
    local S, e = Y + H, H <= 0
    local D, m, g = not e, S >= N, S <= N
    Y = (e and m) or (D and g)
    z[3] = S
    if Y then
      H = U[1]
      return 130, z, U[2], H, Q, G, F, S
    else
      m = U[1]
      return 276, z, U[2], m, Q, G, F, A
    end
  else
    local F = u[39](T, 2 + Q)
    local u, Y = (not (128 > F) and 77) or 323, U[1]
    return u, z, U[2], Y, Q, G, F, A
  end
end, [2865] = function(u, u, u, u, U, U, U)
  return function(U)
    u[1].dodgePathLive = not u[1].dodgePathLive
    if not u[1].dodgePathLive then
      for U, U in ipairs(u[1].dodgePaths) do
        U:Destroy()
      end
      table.clear(u[1].dodgePaths)
    end
    print("dodge path debug:", (u[1].dodgePathLive and "ON") or "OFF")
  end
end, mq = function(u, U, Q, F, A, Y, T, G)
  if G <= 158 then
    local z, H, N = T - 128, (Y - 128) * 16384, 128 * F
    local S, e, D = (H + z) + N, 3 + A, Q[1]
    return 69, Q[2], D, e, S, Y
  elseif G <= 159 then
    local G, z, H = (128 * (Y - 128)) + F, 2 + A, Q[1]
    return 37, Q[2], H, z, T, G
  else
    local F = u[39](U, A + 2)
    local u, U = (not not (F >= 128) and 265) or 305, Q[1]
    return u, Q[2], U, A, T, F
  end
end, [12482] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = u[1].bbz
    if not A then
      return true
    end
    u[2].tgPrune(A)
    return u[2].midPathHit(A.lanes, A.beams, Q, F, u[3][4][u[3][7]](U), tick(), A.discs, nil, A.dyn) == nil
  end
end, [6854] = function(u, u, u, u)
  return function(U, U, Q, F)
    local A = Vector3.new(U, F + u[1].groundUp, Q)
    local U = u[1].groundUp + u[1].groundDown
    Q = u[2][4][u[2][7]](A, Vector3.new(0, -U, 0))
    if not Q then
      return nil
    end
    return Q.Position.Y
  end
end, [13895] = function(u, u, u, u, U, U)
  return function(U)
    u[1].dest = nil
    u[1].usePath = false
    u[1].forcePath = false
    u[1].usingRoute = false
    u[1].waypoints = nil
    u[1].pathGoal = nil
    u[1].computing = false
    u[1].failUntil = 0
    u[1].lastPos = nil
    u[1].stuckCount = 0
    u[1].lastStuckAt = 0
    u[1].unstickUntil = 0
    u[1].unstickDir = nil
    u[1].pathFailCount = 0
    u[1].climbUntil = 0
    u[2].dodgeGoal = nil
    u[2].retreatGoal = nil
    u[2].faceTarget = nil
    u[2].holdUntil = 0
    u[2].projGoal = nil
    u[2].projGoalUntil = 0
    u[2].circleGoal = nil
    u[2].circleResume = 0
    u[2].climbUntil = 0
    u[2].state = "idle"
    u[3].goal = nil
    u[3].until_ = 0
    u[4][4][u[4][7]]()
  end
end, O = function(u, U, Q, F, A, Y, T, G)
  if A <= 25 then
    local A, z, H = U + ((G - 128) * 128), 2 + T, F[1]
    return 236, F[2], H, z, A
  else
    local A, z, H, N = u[39](Y, T + 3), (G - 128) * 128, 2097152 * (U - 128), Q - 128
    local u = (A % 128) * 16384
    local U, Q, Y = (z + ((2097152 * (A - (A % 128))) + N)) + (u + H), 4 + T, F[1]
    return 236, F[2], Y, Q, U
  end
end, [7860] = function(u, u, u, u, U, U, U)
  return function()
    if not u[1]:IsActive() then
      return
    end
    local U = u[1]:GetChar()
    if not U then
      return
    end
    local Q, F = U:FindFirstChildOfClass("Humanoid"), U:FindFirstChild("HumanoidRootPart")
    if (not Q or not F) or (Q.Health <= 0) then
      return
    end
    if U:FindFirstChild("physicalBuff") or (U:FindFirstChild("spellBuff")) then
      Q.WalkSpeed = 30
    else
      Q.WalkSpeed = (u[2][4][u[2][7]] and (u[2][4][u[2][7]]:GetFlag("Walk Speed"))) or 20
    end
    if u[3].useMove and (u[1]:Cooldown("CtrlOff", 2)) then
      u[1]:DisableControls()
    end
    u[1]:MoveWatchdog(Q)
    u[1]:RefreshRayFilter()
    u[1]:UpdateFacing(u[4].faceTarget)
    local A = tick()
    local Y = F.Position
    U = u[5].dest
    if not U then
      u[6][4][u[6][7]](Q)
      return
    end
    if A < u[5].climbUntil then
      if (A - u[5].lastJump) > u[3].climbJumpInterval then
        u[5].lastJump = A
        Q.Jump = true
      end
      u[7][4][u[7][7]](Q, F, U)
      return
    end
    if u[5].climbUntil > 0 then
      u[5].climbUntil = 0
      local T = (U - Y).Magnitude
      if T > (u[5].climbStartDist - u[3].climbMinProgress) then
        u[8][4][u[8][7]]("stuck", "\224\184\155\224\184\181\224\184\153\224\185\132\224\184\161\224\185\136\224\184\130\224\184\182\224\185\137\224\184\153 (%.0f -> %.0f) \224\184\130\224\185\137\224\184\178\224\184\161\224\184\161\224\184\173\224\184\153", u[5].climbStartDist, T)
        u[1]:BlacklistTarget(u[4].currentTarget)
        u[1]:StopWalking()
        return
      end
      u[8][4][u[8][7]]("stuck", "\224\184\155\224\184\181\224\184\153\224\185\132\224\184\148\224\185\137 (%.0f -> %.0f) \224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\185\136\224\184\173", u[5].climbStartDist, T)
      u[5].lastPos = nil
    end
    if (A < u[5].unstickUntil) and u[5].unstickDir then
      u[7][4][u[7][7]](Q, F, Y + (u[5].unstickDir * u[3].unstickDistance))
      return
    end
    if not u[5].lastPos then
      u[5].lastPos = Y
      u[5].lastPosTime = A
    elseif (Y - u[5].lastPos).Magnitude > u[3].stuckDistance then
      u[5].lastPos = Y
      u[5].lastPosTime = A
      if (A - u[5].lastStuckAt) > u[3].stuckForgetTime then
        u[5].stuckCount = 0
      end
    elseif (A - u[5].lastPosTime) > u[3].stuckTime then
      u[5].lastPos = Y
      u[5].lastPosTime = A
      u[5].lastStuckAt = A
      u[5].stuckCount = u[5].stuckCount + 1
      local T, G = 0
      for z = 1, u[3].unstickDirs, 1 do
        local H = ((z / u[3].unstickDirs) * 3.141592653589793) * 2
        z = Vector3.new(math.cos(H), 0, math.sin(H))
        H = u[1]:GetClearDistance(Y, z, u[3].unstickDistance, true)
        if H > T then
          T, G = H, z
        end
      end
      u[8][4][u[8][7]]("stuck", "\224\184\149\224\184\180\224\184\148\224\184\163\224\184\173\224\184\154\224\184\151\224\184\181\224\185\136 %d | state=%s | %s | dest \224\184\171\224\185\136\224\184\178\224\184\135 %.0f | \224\184\151\224\184\180\224\184\168\224\185\130\224\184\165\224\185\136\224\184\135\224\184\170\224\184\184\224\184\148 %.0f", u[5].stuckCount, u[4].state, (u[5].usingRoute and "route") or ((u[5].usePath and "path") or "\224\184\149\224\184\163\224\184\135"), (U - Y).Magnitude, T)
      if G and (T > 4) then
        u[5].unstickDir = G
        u[5].unstickUntil = A + u[3].unstickTime
      end
      Q.Jump = true
      if (u[5].usingRoute and u[5].waypoints) and (u[5].index < #u[5].waypoints) then
        u[5].index = u[5].index + 1
        u[5].lastMoveTo = 0
        u[8][4][u[8][7]]("route", "\224\184\149\224\184\180\224\184\148\224\184\149\224\184\163\224\184\135 waypoint \226\134\146 \224\184\130\224\185\137\224\184\178\224\184\161\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\151\224\184\181\224\185\136 %d", u[5].index)
      else
        u[5].waypoints = nil
        u[5].forcePath = true
        u[5].usePath = true
        u[1]:ComputePath(U)
      end
      if u[5].stuckCount >= u[3].stuckGiveUp then
        u[5].stuckCount = 0
        u[1]:BlacklistTarget(u[4].currentTarget)
        u[1]:StopWalking()
      end
      return
    end
    A = (u[5].usePath and u[5].waypoints) or nil
    if not A then
      if u[5].usePath and not u[5].computing then
        u[1]:ComputePath(U)
      end
      if u[5].usePath and u[3].routeWaitNode then
        nodePos = u[1]:NearestReachableNode(Y)
        if nodePos then
          u[9][4][u[9][7]]("route", "waitnode", 2, "\224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181 route \226\134\146 \224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155 node \224\185\131\224\184\129\224\184\165\224\185\137\224\184\170\224\184\184\224\184\148\224\184\129\224\185\136\224\184\173\224\184\153 (%.0f studs)", (nodePos - Y).Magnitude)
          u[7][4][u[7][7]](Q, F, nodePos)
          return
        end
      end
      u[7][4][u[7][7]](Q, F, U)
      return
    end
    if u[5].index > #A then
      u[5].waypoints = nil
      u[5].usingRoute = false
      u[5].forcePath = false
      return
    end
    if not u[1]:SkipDodge() then
      U = math.min(u[5].index + u[3].lookAheadWaypoints, #A)
      for T = u[5].index, U, 1 do
        local G = A[T].Position
        if ((G - Y).Magnitude <= u[3].advanceMax) and (u[1]:IsBlocked(G)) then
          u[5].waypoints = nil
          return
        end
      end
    end
    if u[5].usingRoute then
      U = 0
      while (u[5].index < #A) and (U < u[3].routeSkipAhead) do
        local T, G = A[u[5].index].Position, A[u[5].index + 1].Position
        if Vector3.new(T.X - Y.X, 0, T.Z - Y.Z).Magnitude > Vector3.new(G.X - Y.X, 0, G.Z - Y.Z).Magnitude then
          u[5].index = u[5].index + 1
          u[5].lastMoveTo = 0
          U += 1
        else
          break
        end
      end
      if u[5].index > #A then
        u[5].waypoints = nil
        u[5].usingRoute = false
        return
      end
    end
    U = A[u[5].index]
    A = Vector3.new(U.Position.X - Y.X, 0, U.Position.Z - Y.Z)
    if ((u[5].usingRoute and u[3].routeArrive) or u[3].waypointThreshold) >= A.Magnitude then
      u[5].index = u[5].index + 1
      u[5].lastMoveTo = 0
      return
    end
    if U.Action == Enum.PathWaypointAction.Jump then
      A = Q:GetState()
      if (A ~= Enum.HumanoidStateType.Jumping) and (A ~= Enum.HumanoidStateType.Freefall) then
        Q:ChangeState(Enum.HumanoidStateType.Jumping)
      end
    end
    u[7][4][u[7][7]](Q, F, U.Position)
  end
end, [12000] = function(u, u, u, u)
  return function(U, Q, F, A, Y, T)
    local G = U:GetRoot()
    if not G then
      return nil
    end
    U:RefreshRayFilter()
    Y = if Y == nil then u[1].dodgeSideRays else Y
    local z, H = G.Size.Y / 2, Vector3.new(Q.X - F.X, 0, Q.Z - F.Z)
    if H.Magnitude < 0.1 then
      local N = G.CFrame.LookVector
      H = (Vector3.new(-N.X, 0, -N.Z))
    end
    H = (if H.Magnitude < 0.1 then (Vector3.new(0, 0, 1)) else H).Unit
    if T and not A then
      for N, S in ipairs(u[2][4][u[2][7]](Q, F)) do
        N = Vector3.new(S.pos.X - Q.X, 0, S.pos.Z - Q.Z)
        G = N.Magnitude
        if (G > 0.5) and (G <= u[1].dodgeMaxRange) then
          if U:GetClearDistance(Q, N.Unit, G + u[1].wallClearance, Y) >= G then
            local N = U:GetGroundY(S.pos.X, S.pos.Z, Q.Y)
            if N and (((Q.Y - z) - N) <= u[1].maxDrop) then
              local e = Vector3.new(S.pos.X, N + z, S.pos.Z)
              if not U:IsBlocked(e) and (U:GetSafeAdvance(Q, e) >= G) then
                u[3][4][u[3][7]]("dodge", "strafe", 1, "\224\184\173\224\185\137\224\184\173\224\184\161\224\184\130\224\185\137\224\184\178\224\184\135 %.0f studs (\224\184\163\224\184\177\224\184\168\224\184\161\224\184\181\224\185\128\224\184\151\224\185\136\224\184\178\224\185\128\224\184\148\224\184\180\224\184\161 %.0f)", G, (e - F).Magnitude)
                return e
              end
            end
          end
        end
      end
    end
    T, G = u[4][4][u[4][7]](H), {}
    for N, S in ipairs(T) do
      G[N] = S:Dot(H) < 0
    end
    local N, S = {}, 0
    for e, D in ipairs(T) do
      N[e] = U:GetClearDistance(Q, D, u[1].dodgeMaxRange, Y)
      S = if N[e] > S then N[e] else S
    end
    Y, H = -math.huge
    for e = 1, 2, 1 do
      local D = ((e == 1) and u[1].beamAvoid) and (next(u[5].beamTrack) ~= nil)
      local m, g = (e == 1) and (u[6].pathMoveSafe ~= nil), u[1].dodgeStep
      while g <= u[1].dodgeMaxRange do
        for c, r in ipairs(T) do
          if g <= (N[c] - u[1].wallClearance) then
            local T = Q + (r * g)
            if not U:IsBlocked(T) then
              local r = Vector3.new(T.X - F.X, 0, T.Z - F.Z).Magnitude
              local F, M = not G[c] or (r >= u[1].frontMinDist), not A or (r >= A)
              M = if not U:LeashOK(T) then false else M
              local y = not D or (U:BeamSafe(T))
              if (F and M) and y then
                local F = U:GetGroundY(T.X, T.Z, Q.Y)
                if F and (((Q.Y - z) - F) <= u[1].maxDrop) then
                  local D = Vector3.new(T.X, F + z, T.Z)
                  if not U:IsBlocked(D) and (not m or (u[6].pathMoveSafe(U, Q, D))) then
                    if e == 2 then
                      u[3][4][u[3][7]]("dodge", "beamdirty", 1, "\224\185\128\224\184\165\224\184\181\224\185\136\224\184\162\224\184\135\224\184\167\224\184\180\224\184\150\224\184\181 beam/\224\184\130\224\184\173\224\184\135\224\184\158\224\184\184\224\185\136\224\184\135\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 \224\184\162\224\184\173\224\184\161\224\185\128\224\184\130\224\185\137\224\184\178\224\185\132\224\184\155\224\185\131\224\184\153\224\184\167\224\184\180\224\184\150\224\184\181")
                    end
                    return D
                  end
                end
              elseif (not G[c] and (e == 2)) and (U:LeashOK(T)) then
                local F = r + (math.min(N[c], 20) * 0.5)
                if F > Y then
                  Y, H = F, T
                end
              end
            end
          end
        end
        g += u[1].dodgeStep
      end
    end
    if H then
      G = U:GetGroundY(H.X, H.Z, Q.Y)
      if G and (((Q.Y - z) - G) <= u[1].maxDrop) then
        u[3][4][u[3][7]]("dodge", "fallback", 1, "\224\185\131\224\184\138\224\185\137 fallback | \224\184\151\224\184\180\224\184\168\224\185\130\224\184\165\224\185\136\224\184\135\224\184\170\224\184\184\224\184\148 %.0f studs", S)
        return Vector3.new(H.X, G + z, H.Z)
      end
    end
    u[3][4][u[3][7]]("dodge", "nospot", 1, "\224\184\171\224\184\178\224\184\151\224\184\181\224\185\136\224\184\171\224\184\165\224\184\154\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 | \224\184\151\224\184\180\224\184\168\224\185\130\224\184\165\224\185\136\224\184\135\224\184\170\224\184\184\224\184\148 %.0f | hitbox=%d | minDist=%s", S, #u[7], tostring(A))
    return nil
  end
end, [8092] = function(u, u, u)
  return function(u)
    local u = workspace:FindFirstChild("dungeonName") or (workspace:WaitForChild("dungeonName", 5))
    return (u and u.Value) or nil
  end
end, [15911] = function(u, u, u, u, U, U)
  return function(U)
    local Q, F = {}, workspace:FindFirstChild("eliteSwordsman")
    for A, Y in pairs(u[1][4][u[1][7]]:GetChildren()) do
      A = Y:FindFirstChild("enemyFolder")
      if not A then
        continue
      end
      for T, T in pairs(A:GetChildren()) do
        if u[2]:GetdungeonName() == "Steampunk Sewers" then
          for u, u in pairs(T:GetChildren()) do
            if u:IsA("Accessory") then
              u:Destroy()
            end
          end
        end
        Y = T:FindFirstChildOfClass("Humanoid")
        if (not T:FindFirstChild("HumanoidRootPart") or not Y) or (Y.Health <= 0) then
          continue
        end
        if not ignoreBlacklist and (U:IsBlacklisted(T)) then
          continue
        end
        if not U:GetTargetGroundPos(T, false) then
          continue
        end
        table.insert(Q, T)
      end
    end
    if F then
      for u, A in pairs(F:GetChildren()) do
        u = A:FindFirstChildOfClass("Humanoid")
        if (not A:FindFirstChild("HumanoidRootPart") or not u) or (u.Health <= 0) then
          continue
        end
        if not ignoreBlacklist and (U:IsBlacklisted(A)) then
          continue
        end
        if not U:GetTargetGroundPos(A, false) then
          continue
        end
        table.insert(Q, A)
      end
    end
    return Q
  end
end, [4083] = function(u, u, u, u, U)
  return function(U, Q, F, A)
    local Y, T = u[1].BonusBoss.longLine, Vector3.new(U.X, 0, U.Z)
    U = Vector3.new(Q.X, 0, Q.Z) - T
    Q = U.Magnitude
    local u, G = ((Q > 0.01) and (U / Q)) or Vector3.zero, 0
    while (G * A) <= (Q + 0.01) do
      local z, H = (T + (u * math.min(G * A, Q))) - Y.center, F + G
      for u, Q in ipairs(Y.angles) do
        U = 0.1 * (u - 1)
        if (H >= (U + 0.6)) and (H <= (U + 1.6)) then
          u = math.rad(Q)
          if math.abs((z.X * math.sin(u)) - (z.Z * math.cos(u))) < 8 then
            return false
          end
        end
      end
      G += 0.05
    end
    return true
  end
end, [3964] = function(u, u, u, u, U)
  return function(U, Q)
    if not u[1].bbVolleyActive() then
      return false
    end
    local F = u[2].bb
    if u[1].bbMemSafe and not u[1].bbMemSafe(Q) then
      return false
    end
    local A = tick()
    local Y = u[3][4][u[3][7]](U)
    local T = F.volleyGoal
    if T and (A < F.volleyGoalUntil) then
      local G, z = u[4][4][u[4][7]](T - Q).Magnitude, math.max(0, (F.volleyStartAt or 0) - A)
      local H = z + (G / Y)
      if (((G > 2) and not u[1].volBlocked(T)) and not u[1].bbVolleyHit(T, H - 0.2, H + 1.5)) and not u[5][4][u[5][7]](Q, T, z, G / Y, 1.5) then
        if z > 0.02 then
          if not u[1].bbVolleyHit(Q, 0, z + 0.05) then
            U:SetDestination(Q, false)
            u[6][4][u[6][7]]("bonus", "Missile: \224\184\163\224\184\173 %.2f \224\184\167\224\184\180 \224\185\129\224\184\165\224\185\137\224\184\167\224\184\129\224\185\137\224\184\178\224\184\167 %.0f studs", z, G)
            return true
          end
        else
          U:SetDestination(T, false)
          u[6][4][u[6][7]]("bonus", "Missile: \224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154 %.0f studs", G)
          return true
        end
      end
      F.volleyGoal = nil
    end
    if not u[1].bbVolleyHit(Q, 0, 2) then
      return false
    end
    local G, z, H, N = (u[1].bbOrbClear and (u[1].bbOrbList())) or nil
    for S = 3, 45, 3 do
      T = {0, 0.2, 0.4, 0.6}
      for e, D in ipairs(T) do
        if (D == 0) or not u[1].bbVolleyHit(Q, 0, D + 0.05) then
          for T = 0, 15, 1 do
            e = ((T / 16) * 3.141592653589793) * 2
            local m, g = Q + Vector3.new(math.cos(e) * S, 0, math.sin(e) * S), S / Y
            T = D + g
            if (((not u[1].bbVolleyHit(m, math.max(0, T - 0.25), T + 2.5) and (U:LeashOK(m))) and not u[1].volBlocked(m)) and (not G or (u[1].bbOrbClear(G, Q, m, Y) >= 0.5))) and not u[5][4][u[5][7]](Q, m, D, g, 2.5) then
              local Y, T = math.max(3, math.ceil(S / 7)), true
              for G = 1, Y, 1 do
                local e = G / (Y + 1)
                G = D + (g * e)
                if u[1].bbVolleyHit(Q:Lerp(m, e), G - 0.15, G + 0.15) then
                  T = false
                  break
                end
              end
              if T then
                z, H, N = m, S, D
                break
              end
            end
          end
        end
        if z then
          break
        end
      end
      if z then
        break
      end
    end
    if not z then
      u[7][4][u[7][7]]("dodge", "bbvolleyno", 0.5, "Missile: \224\184\165\224\184\185\224\184\129\224\184\151\224\184\179\224\184\153\224\184\178\224\184\162\224\184\161\224\184\178\224\185\131\224\184\153 1 \224\184\167\224\184\180 \224\185\129\224\184\149\224\185\136\224\184\171\224\184\178\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137")
      return false
    end
    z = u[8][4][u[8][7]](U, z, Q.Y)
    F.volleyGoal, F.volleyGoalUntil, F.volleyStartAt = z, (A + 1.5) + N, A + N
    u[9].dodgeGoal = nil
    u[9].retreatGoal = nil
    u[9].projGoal = nil
    if N > 0 then
      U:SetDestination(Q, false)
    else
      U:SetDestination(z, false)
    end
    u[6][4][u[6][7]]("bonus", "Missile: \224\184\165\224\184\185\224\184\129\224\184\151\224\184\179\224\184\153\224\184\178\224\184\162\224\184\161\224\184\178\224\185\131\224\184\153 1 \224\184\167\224\184\180 \226\134\146 \224\184\163\224\184\173 %.1f \224\184\167\224\184\180 \224\185\129\224\184\165\224\185\137\224\184\167\224\184\171\224\184\165\224\184\154 %.0f studs", N, H)
    return true
  end
end, [14374] = function(u, u, u, u)
  return function(U)
    local U = {"Inner Focus", "Inner Rage", "Enhanced Inner Focus", "Enhanced Inner Rage"}
    local Q = next
    local F, A = (u[1]:FindFirstChild("Backpack") or (Instance.new("Folder"))):GetChildren()
    local u
    for Y, Y in Q, F, A do
      if table.find(U, Y.Name) then
        u = Y
        break
      end
    end
    F = u and (u:FindFirstChild("abilitySlot"))
    if F then
      return F.Value
    end
    return nil
  end
end, [10] = buffer.readi32, Qj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if e <= 149 then
    u[H] = nil
    return 0, z, Q, S, T, N, U
  elseif e <= 150 then
    local H = ((Q - 128) * 128) + Y
    return 207, z + 2, H, S, T, N, U
  else
    local U = T % N
    u[91](A, S, (u[116](u[39](F, S + z), U, Q)))
    local T, H = 9, ((U * Y) + G) % 256
    u[91](A, T, (u[116](H, u[39](F, T + z), Q)))
    return 199, z, Q, 10, (G + (H * Y)) % 256, u[91], u[39]
  end
end, jM = function(u, U, Q, F)
  local A = u[59]
  A()
  local Y = u.fq
  for u, T in U, Q, F do
    A(Y, u, T)
  end
end, [2566] = function(u, u, u, u, U)
  return function(U)
    if u[1].debugMarker then
      u[1].debugMarker.Transparency = 1
    end
  end
end, [2124] = function(u, u, u, u)
  return function(u, U, Q, F)
    F = F or 4
    for A = 1, F, 1 do
      if u:IsBlocked(U:Lerp(Q, A / F)) then
        return true
      end
    end
    return false
  end
end, bj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if H <= 142 then
    if H <= 141 then
      G(S, z, (u[116](A, N, Q)))
      local G, N = 4, (T + (F * Q)) % 256
      u[91](S, G, (u[116](u[39](Y, G + e), N, A)))
      G = 5
      local D = ((N * F) + T) % 256
      u[91](S, G, (u[116](D, A, (u[39](Y, e + G)))))
      return 221, e, U, D, 6
    else
      return (not (T <= 5) and 87) or 214, e, U, z, Q
    end
  elseif H <= 143 then
    local u, F = U + ((Y - 128) * 128), 2 + A
    return 113, e, u, z, Q
  else
    return 6, e + 1, U, z, Q
  end
end, [9305] = function(u, u, u, u)
  return function(U)
    local Q = u[1].BonusBoss.sweepMid
    return math.abs((Vector3.new(U.X, 0, U.Z) - Q.center):Dot(Q.axis)) <= Q.half
  end
end, [43] = function(u, u, u, u)
  return function(U, U, Q)
    u[1][U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154 \224\184\167\224\184\180\224\185\136\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\170\224\184\185\224\185\137\224\185\128\224\184\165\224\184\162") or "\224\184\171\224\184\165\224\184\154\224\184\149\224\184\178\224\184\161\224\184\155\224\184\129\224\184\149\224\184\180")
  end
end, [33] = buffer.fill, wM = function(u, U, Q, F, A, Y, T, G)
  if U <= 104 then
    local z = ((Y - 128) * 128) + F
    return 181, G, 2 + Q, z, A
  elseif U <= 105 then
    local U = u[39](T, 2 + Q)
    return (not (U >= 128) and 205) or 29, G, Q, Y, U
  else
    local u = Y + (128 * (Q - 128))
    return 6, G + 2, u, Y, A
  end
end, FM = function(u, U, Q, F, A, Y, T, G, z, H)
  if F <= 22 then
    if F <= 21 then
      local N, S, e = A[5], A[4], A[1]
      local D, m = N + S, S <= 0
      local S, g, c = not m, D >= e, D <= e
      N = (m and g) or (S and c)
      A[5] = D
      if N then
        return 32, A, z, Y, U, Q, H, D
      else
        return 157, A, z, Y, U, Q, H, G
      end
    else
      local N, S, e, D = (232 + z) % 256, u[16](U), U - 1, 1 + 0
      return 180, {A, D, nil, 0 - D, e + 0}, N, Y, 232, 61, 233, S
    end
  elseif F <= 23 then
    local F = u[39](Y, T + 1)
    if 128 > F then
      return 90, A, z, F, U, Q, H, G
    else
      return 215, A, z, Y, U, F, H, G
    end
  else
    local U = u[39](Y, z + 2)
    return ((U < 128) and 228) or 99, A, z, Y, U, Q, H, G
  end
end, [93] = buffer.writeu16, [14805] = function(u, u, u, u)
  return function(U, Q)
    local F = U:GetRoot()
    if (not F or not Q.part) or not Q.part.Parent then
      return
    end
    local A = Q.vel
    if A.Magnitude < u[1].minSpeed then
      return
    end
    local Y, T = A.Unit, Q.part.Position
    local G = F.Position - T
    if (G.Magnitude < 1) or (Y:Dot(G.Unit) < u[1].aimTol) then
      return
    end
    F = math.max(0, G.Magnitude - u[1].pathStopBefore)
    G = math.min(u[1].pathMaxLength, F)
    if G < 5 then
      return
    end
    local F = Instance.new("Part")
    F.Name = "_projPath"
    F.Size = Vector3.new(u[1].pathWidth, u[1].pathHeight, G)
    F.CFrame = CFrame.lookAt(T + (Y * (G / 2)), T + (Y * G))
    F.Anchored = true
    F.CanCollide = false
    F.CanQuery = false
    F.CanTouch = false
    F.Transparency = (u[2].enabled and 0.85) or 1
    F.Color = u[3][4][u[3][7]]()
    F.Material = Enum.Material.Neon
    F.Parent = workspace
    Q.box = F
    U:RegisterHitbox(F, {lifetime = u[1].pathLifetime})
    task.delay(u[1].pathLifetime + 0.1, function()
      u[4]:RemoveHitbox(F)
      if F.Parent then
        F:Destroy()
      end
    end)
    u[5][4][u[5][7]]("proj", "%s \224\184\167\224\184\180\224\184\150\224\184\181\224\184\149\224\184\163\224\184\135 \224\184\162\224\184\178\224\184\167 %.0f (speed %.0f)", Q.part.Name, G, A.Magnitude)
  end
end, [10210] = function(u, u, u, u, U, U, U)
  return function(U)
    if not u[1].enabled or (U <= 0) then
      return
    end
    local Q = tick()
    for F = #u[2].Projectiles, 1, -1 do
      local A = u[2].Projectiles[F]
      local Y = A.part
      if (not Y or not Y.Parent) or ((Q - A.bornAt) > u[1].homingLifetime) then
        u[3]:RemoveProjBox(A)
        table.remove(u[2].Projectiles, F)
      else
        local F, T = Y.Position, Y.AssemblyLinearVelocity
        T = if T.Magnitude < 0.1 then (F - A.lastPos) / U else T
        if (not A.homing and (A.vel.Magnitude > 1)) and (T.Magnitude > 1) then
          A.turnSum = A.turnSum + (1 - A.vel.Unit:Dot(T.Unit))
          if A.turnSum > u[1].turnThreshold then
            A.homing = true
            u[3]:RemoveProjBox(A)
            u[4][4][u[4][7]]("proj", "%s \224\185\128\224\184\155\224\185\135\224\184\153 homing (turn %.2f) \224\185\128\224\184\155\224\184\165\224\184\181\224\185\136\224\184\162\224\184\153\224\185\132\224\184\155\224\185\130\224\184\171\224\184\161\224\184\148\224\184\171\224\184\153\224\184\181", Y.Name, A.turnSum)
          elseif (Q - A.bornAt) > u[1].checkDuration then
            A.settled = true
          end
        end
        A.vel = T
        A.lastPos = F
      end
    end
  end
end, [14051] = function(u, u, u, u)
  return function(U, Q, F)
    local A = u[1].bb.memory
    if not A or not A.model.Parent then
      return false
    end
    local Y, T, G = u[2].BonusBoss.memory, tick(), u[2].bbMemDone(A)
    local z = G + 1
    local H, N = A.seq[z], Vector3.new(-A.leftDir.Z, 0, A.leftDir.X)
    local S = A.mid or (u[3][4][u[3][7]](F))
    local e = S + (N * u[3][4][u[3][7]](F - S):Dot(N))
    local D = (u[3][4][u[3][7]](Q) - e):Dot(N)
    D = if u[3][4][u[3][7]](Q - F).Magnitude < 45 then (math.clamp(D, -Y.longMax, Y.longMax)) else D
    local m = (Y.offset / u[4][4][u[4][7]](U)) + 0.6
    if (G == 0) and (T < ((A.at + 6) - m)) then
      if U:HandleIncoming(Q) then
        return true
      end
      if u[7][4][u[7][7]](U, Q, u[5][4][u[5][7]](U, u[6][4][u[6][7]](Vector3.new(e.X, Q.Y, e.Z) + (N * D)), Q.Y), 2, "Memory") then
        u[8][4][u[8][7]]("bonus", "Memory: \224\184\162\224\184\183\224\184\153\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\185\137\224\184\153\224\185\129\224\184\154\224\185\136\224\184\135 \224\184\136\224\184\179\224\185\128\224\184\130\224\184\181\224\184\162\224\184\167 (%d/4)", A.shown or 0)
      else
        u[8][4][u[8][7]]("bonus", "Memory: \224\185\132\224\184\155\224\184\129\224\184\165\224\184\178\224\184\135\224\185\128\224\184\170\224\185\137\224\184\153\224\185\129\224\184\154\224\185\136\224\184\135")
      end
      return true
    end
    if not H then
      if (z > 4) or ((T - A.at) <= 5) then
        return false
      end
      A.guess = A.guess or {}
      if not A.guess[z] and ((T - A.at) > 5) then
        G = nil
        for T = z + 1, 4, 1 do
          if A.seq[T] then
            G = A.seq[T]
            break
          end
        end
        if not G then
          for T = z - 1, 1, -1 do
            if A.seq[T] then
              G = A.seq[T]
              break
            end
          end
        end
        G = G or ((((u[3][4][u[3][7]](Q) - S):Dot(A.leftDir) >= 0) and "L") or "R")
        A.guess[z] = G
        u[9][4][u[9][7]]("state", "bbmemgap" .. z, 1, "Memory: \224\185\132\224\184\161\224\185\136\224\185\128\224\184\171\224\185\135\224\184\153\224\185\128\224\184\130\224\184\181\224\184\162\224\184\167\224\184\138\224\185\136\224\184\173\224\184\135 #%d \226\134\146 \224\185\131\224\184\138\224\185\137\224\184\157\224\184\177\224\185\136\224\184\135\224\184\138\224\185\136\224\184\173\224\184\135\224\184\150\224\184\177\224\184\148\224\185\132\224\184\155 %s", z, G)
      end
      H = A.guess[z]
    end
    G = ((H == "L") and A.leftDir) or -A.leftDir
    m = u[5][4][u[5][7]](U, u[6][4][u[6][7]]((Vector3.new(e.X, Q.Y, e.Z) + (G * Y.offset)) + (N * D)), Q.Y)
    if (u[3][4][u[3][7]](Q) - e):Dot(G) >= math.max(Y.offset - 3, 5.5) then
      if U:HandleIncoming(Q) then
        return true
      end
      if u[3][4][u[3][7]](Q - F).Magnitude > 36 then
        S = u[5][4][u[5][7]](U, u[6][4][u[6][7]](Vector3.new(e.X, Q.Y, e.Z) + (G * Y.offset)), Q.Y)
        if (u[3][4][u[3][7]](S - Q).Magnitude > 3) and not U:IsBlocked(S) then
          u[7][4][u[7][7]](U, Q, S, 3, "Memory")
          u[8][4][u[8][7]]("bonus", "Memory: \224\184\157\224\184\177\224\185\136\224\184\135 %s \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\185\128\224\184\130\224\185\137\224\184\178\224\184\171\224\184\178\224\184\154\224\184\173\224\184\170 (#%d)", H, z)
          return true
        end
      end
      U:StopWalking()
      u[8][4][u[8][7]]("bonus", "Memory: \224\184\162\224\184\183\224\184\153\224\184\157\224\184\177\224\185\136\224\184\135 %s \224\184\163\224\184\173\224\184\149\224\184\181 #%d/%d", H, z, A.shown or 0)
      return true
    end
    if u[7][4][u[7][7]](U, Q, m, 2, "Memory") then
      u[8][4][u[8][7]]("bonus", "Memory: \224\184\150\224\184\182\224\184\135\224\184\157\224\184\177\224\185\136\224\184\135 %s (#%d)", H, z)
    else
      u[8][4][u[8][7]]("bonus", "Memory: \224\184\162\224\185\137\224\184\178\224\184\162\224\185\132\224\184\155\224\184\157\224\184\177\224\185\136\224\184\135 %s (#%d/%d)", H, z, A.shown or 0)
    end
    return true
  end
end, [14102] = function(u, u, u, u)
  return function()
    while task.wait(0.25) do
      if u[1].genv.__dwToken ~= u[2].token then
        break
      end
      local U, Q = pcall(function()
        return u[3]:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
      end)
      if U and (type(Q) == "number") then
        u[2].pingMs = (u[2].pingMs and ((u[2].pingMs * 0.6) + (Q * 0.4))) or Q
        local F = math.clamp((u[2].pingMs - 150) / 1000, 0, 0.4)
        u[1].Mid.react = 0.1 + F
        if u[1].BonusBoss and u[1].BonusBoss.orbGuard then
          u[1].BonusBoss.orbGuard.react = 0.1 + F
        end
        if F > 0.05 then
          u[4][4][u[4][7]]("state", "pingreact", 3, "ping %.0fms \226\134\146 \224\185\128\224\184\156\224\184\183\224\185\136\224\184\173\224\185\128\224\184\167\224\184\165\224\184\178\224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\130\224\184\162\224\184\177\224\184\154 +%.2f \224\184\167\224\184\180", u[2].pingMs, F)
        end
      end
      for F, A in pairs(u[1].BossPrefix) do
        Q = u[1].findBossModel(F)
        U = Q and (Q:FindFirstChildOfClass("Humanoid"))
        if U and (U.Health > 0) then
          u[2].bossAlive[F], u[2].bossDeadAt[A] = tick(), nil
        elseif u[2].bossAlive[F] and not u[2].bossDeadAt[A] then
          u[2].bossDeadAt[A] = tick()
          u[2].bossAlive[F] = nil
          local U = u[1].purgeBossHazards(A)
          u[4][4][u[4][7]]("state", "bossdead" .. A, 1, "\224\184\154\224\184\173\224\184\170 %s \224\184\149\224\184\178\224\184\162 \226\134\146 \224\184\165\224\185\137\224\184\178\224\184\135 hitbox %d \224\184\173\224\184\177\224\184\153 \224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154\224\184\149\224\185\136\224\184\173", F, U)
        elseif u[2].bossDeadAt[A] then
          u[1].purgeBossHazards(A)
        end
      end
    end
  end
end, [97] = type, [14539] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].bb and u[1].bb.spiralChains
    if not F then
      return false
    end
    local u = tick()
    for A, Y in ipairs(F) do
      A = Y.pred
      if A and ((u - Y.t) < 0.25) then
        local u = Y.dt or 0.065
        for F = 1, #A, 1 do
          local T = (Y.t + (F * u)) + 0.75
          if (Q >= (T - (0.01 * F))) and (Q <= ((T + 0.35) + (0.015 * F))) then
            local u, Q = A[F], 11.5 + (F * 0.5)
            local F, A = U.X - u.X, U.Z - u.Z
            if ((F * F) + (A * A)) < (Q * Q) then
              return true
            end
          end
        end
      end
    end
    return false
  end
end, [13090] = function(u, u, u)
  return function(u)
    local U, Q = tick(), u.lanes
    for F = #Q, 1, -1 do
      local A = Q[F]
      if (U > ((A.t0 + (A.len / A.v)) + 0.3)) or (A.part and not A.part.Parent) then
        table.remove(Q, F)
      end
    end
    local Q, F = ipairs, {u.beams, u.discs}
    for u, u in Q(F) do
      for Q = #u, 1, -1 do
        if U > u[Q].tB then
          table.remove(u, Q)
        end
      end
    end
  end
end, [12842] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = u[1].beamPlan
    if not Q or ((tick() - Q.at) > 5) then
      return false
    end
    local u = Q.cf.LookVector
    local F = Vector3.new(u.X, 0, u.Z)
    if F.Magnitude > 0.01 then
      U.dir = F.Unit
    end
    U.speed = Q.dist / math.max(Q.dur, 0.01)
    U.plan = Q
    return true
  end
end, [12174] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    local Y = U and U.shape
    if Y == "Ball" then
      U = Q:PointToObjectSpace(A)
      local T, G, z = U.X / (F.X / 2), U.Y / (F.Y / 2), U.Z / (F.Z / 2)
      return (((T * T) + (G * G)) + (z * z)) <= 1
    elseif Y == "Cylinder" then
      local U = Q:PointToObjectSpace(A)
      if math.abs(U.X) > (F.X / 2) then
        return false
      end
      local Y, T = U.Y / (F.Y / 2), U.Z / (F.Z / 2)
      return ((Y * Y) + (T * T)) <= 1
    end
    return u[1][4][u[1][7]](Q, F, A)
  end
end, [6285] = function(u, u, u, u)
  return function(U, Q, F)
    Q = if typeof(Q) == "CFrame" then Q.Position else Q
    u[1].dest = Q
    u[1].usePath = ((F or u[1].forcePath) and true) or false
    if not u[1].usePath then
      u[1].waypoints = nil
      u[1].pathGoal = nil
      u[1].usingRoute = false
      return
    end
    if not ((not u[1].waypoints or not u[1].pathGoal) or ((u[1].pathGoal - Q).Magnitude > u[2].routeGoalMove)) then
      return
    end
    local A, Y = U:GetRoot(), tick()
    if (A and u[2].useRoute) and ((Y - u[1].lastRoute) >= u[2].routeRecompute) then
      u[1].lastRoute = Y
      F = U:FindRoute(A.Position, Q)
      if F then
        u[1].waypoints = F
        u[1].usingRoute = true
        u[1].index = 1
        u[1].pathGoal = Q
        u[1].lastMoveTo = 0
        return
      end
    end
    if u[1].usingRoute and u[1].waypoints then
      return
    end
    U:ComputePath(Q)
  end
end, [15762] = function(u, u, u, u, U)
  return function(U, U)
    local Q, F = U:WaitForChild("leftHitbox", 2), U:WaitForChild("rightHitbox", 2)
    if not Q or not F then
      return
    end
    u[1].bb.lastMemAt = tick()
    local A = {model = U, at = tick(), seq = {}, hits = 0, mid = u[2][4][u[2][7]]((Q.Position + F.Position) / 2), leftDir = u[2][4][u[2][7]](Q.Position - F.Position).Unit}
    u[1].bb.memory = A
    Q, F = {leftPrecastGood = "L", rightPrecastGood = "R", leftPrecast = "hitL", rightPrecast = "hitR"}, {}
    A.win = {}
    local Y, T = U:FindFirstChild("leftPrecastGood"), U:FindFirstChild("rightPrecastGood")
    while U.Parent do
      local G = tick() - A.at
      for z = 1, 4, 1 do
        local H, N = (2 + (0.745 * (z - 1))) - 0.15, A.win[z]
        if (G >= H) and (G <= (H + 0.6)) then
          N = N or {L = 1, R = 1}
          A.win[z] = N
          if Y then
            N.L = math.min(N.L, Y.Transparency)
          end
          if T then
            N.R = math.min(N.R, T.Transparency)
          end
        elseif (N and (G > (H + 0.6))) and not N.done then
          N.done = true
          if (not A.seq[z] and (math.min(N.L, N.R) < 0.9)) and (math.abs(N.L - N.R) > 0.2) then
            A.seq[z] = ((N.L < N.R) and "L") or "R"
            A.shown = (A.shown or 0) + 1
            u[3][4][u[3][7]]("state", "bbmemw" .. z, 0.2, "Memory \224\185\128\224\184\130\224\184\181\224\184\162\224\184\167 \224\184\138\224\185\136\224\184\173\224\184\135 #%d = %s (\224\184\136\224\184\178\224\184\129\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135\224\185\128\224\184\167\224\184\165\224\184\178 L%.2f R%.2f)", z, A.seq[z], N.L, N.R)
          end
        end
      end
      for Y, T in pairs(Q) do
        G = U:FindFirstChild(Y)
        if G then
          local U, Q = G.Transparency, F[Y]
          if (Q and (Q >= 0.95)) and (U < 0.95) then
            if (T == "L") or (T == "R") then
              local Q = (math.clamp(math.floor((((tick() - A.at) - 2) / 0.745) + 0.5) + 1, 1, 4))
              while A.seq[Q] and (Q < 4) do
                Q += 1
              end
              A.seq[Q] = T
              A.shown = (A.shown or 0) + 1
              u[3][4][u[3][7]]("state", "bbmem" .. Q, 0.2, "Memory \224\185\128\224\184\130\224\184\181\224\184\162\224\184\167 \224\184\138\224\185\136\224\184\173\224\184\135 #%d = %s (t+%.2f)", Q, T, tick() - A.at)
            else
              A.hits = A.hits + 1
              A.lastHit = tick()
              u[3][4][u[3][7]]("state", "bbhit" .. A.hits, 0.2, "Memory \224\184\149\224\184\181 #%d \224\184\157\224\184\177\224\185\136\224\184\135 %s", A.hits, ((T == "hitL") and "L") or "R")
            end
          end
          F[Y] = U
        end
      end
      task.wait(0.03)
    end
    if u[1].bb.memory == A then
      u[1].bb.memory = nil
    end
  end
end, LM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if U <= 86 then
    if U <= 85 then
      z(N, G, S)
      local G, z = 6, (A + (Y * H)) % 256
      u[91](N, G, (u[116](z, u[39](T, G + Q), F)))
      G = 7
      u[91](N, G, (u[116]((A + (z * Y)) % 256, F, (u[39](T, G + Q)))))
      return 0, u[85](N, e), F, Y
    else
      local T = F + 1
      local G, z, z = u[39](e, T), T + 1, F + 2
      T = u[39](e, z)
      return (not not (T >= 128) and 226) or 237, G, z, T
    end
  elseif U <= 87 then
    return ((9 ~= A) and 27) or 178, Q, F, Y
  else
    local u, U = Y - 128, (e - 128) * 16384
    local Y = (u + (A * 128)) + U
    return 15, Q, 3 + F, Y
  end
end, [24] = buffer.readu32, Gq = function(u, U, Q, F, A, Y, T, G, z)
  if T <= 190 then
    if T <= 189 then
      local H = u[39](F, 2 + A)
      local N, S = ((128 > H) and 116) or 169, Y[1]
      return N, Y[2], S, A, U, G, H, Q
    else
      local H, N = A + 1, Y[1]
      return 82, Y[2], N, H, U, G, z, Q
    end
  elseif T <= 191 then
    local H, N, S, e = u[39](F, A + 3), 128 * (U - 128), 2097152 * (G - 128), z - 128
    local D = (H % 128) * 16384
    local m, g, c = e + (((N + (2097152 * (H - (H % 128)))) + S) + D), A + 4, Y[1]
    return 69, Y[2], c, g, m, G, z, Q
  elseif T <= 192 then
    local T, H, N = (128 * (G - 128)) + z, 2 + A, Y[1]
    return 32, Y[2], N, H, U, T, z, Q
  else
    local Q = u[39](F, 2 + A)
    local u, F = (not (128 <= Q) and 97) or 121, Y[1]
    return u, Y[2], F, A, U, G, z, Q
  end
end, _q = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if Y <= 264 then
    local Y, S, e, D = u[39](G, 3 + z), 128 * (F - 128), 2097152 * (U - 128), H - 128
    local G = 16384 * (Y % 128)
    local m, g, c = (S + (D + ((Y - (Y % 128)) * 2097152))) + (e + G), 4 + z, N[1]
    return 109, N[2], c, g, m, U, H
  else
    local Y, G, S, e = u[39](A, U + 3), 128 * (H - 128), 2097152 * (Q - 128), T - 128
    local u = 16384 * (Y % 128)
    local Q, A, T = ((2097152 * (Y - (Y % 128))) + u) + ((e + S) + G), U + 4, N[1]
    return 13, N[2], T, z, F, A, Q
  end
end, U = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if N <= 35 then
    local S, e, D = G - 128, 16384 * (T - 128), z * 128
    local T, z, m = (e + S) + D, Y + 3, H[1]
    return 59, A, H[2], m, z, F, T
  elseif N <= 36 then
    local T, z, N = G + (128 * (F - 128)), 2 + Y, H[1]
    return 15, A, H[2], N, z, T, G
  else
    Q[F] = G
    local F, T = u[64](U), u[64](U)
    Q[Q[10]] = F
    Q[Q[16]] = T
    T = 1 + 0
    local u, Q = {nil, A, 1 - T, T, U + 0}, H[1]
    return 110, u, H[2], Q, Y, F, G
  end
end, [7330] = function(u, u, u, u, U)
  return function(U)
    local Q = u[1].hbHolo[U]
    if Q and Q.Parent then
      return Q
    end
    Q = Instance.new("Part")
    Q.Name = "_hbHolo"
    Q.Anchored = true
    Q.CanCollide = false
    Q.CanQuery = false
    Q.CanTouch = false
    Q.CastShadow = false
    Q.Material = Enum.Material.ForceField
    Q.Transparency = 0.45
    if U.shape == "Cylinder" then
      Q.Shape = Enum.PartType.Cylinder
    elseif U.shape == "Ball" then
      local F = Instance.new("SpecialMesh")
      F.MeshType = Enum.MeshType.Sphere
      F.Parent = Q
    end
    Q.Parent = workspace
    u[1].hbHolo[U] = Q
    return Q
  end
end, M = function(u, U, Q, F, A, Y, T, G, z)
  if G <= 124 then
    if G <= 123 then
      local H = Y[2][5]
      if not not H then
        local N = Y[1]
        return 131, Y[2], N, H, A, Q, z
      else
        local H = Y[1]
        return 14, Y[2], H, T, A, Q, z
      end
    else
      local H, N = Q + 1, Y[1]
      return 210, Y[2], N, T, A, H, z
    end
  elseif G <= 125 then
    local H, N, S = z + ((Q - 128) * 128), A + 2, Y[1]
    return 12, Y[2], S, T, N, H, z
  elseif G <= 126 then
    local G = u[39](U, 1 + A)
    local H, N = (not not (G >= 128) and 160) or 222, Y[1]
    return H, Y[2], N, T, A, G, z
  else
    F[Q] = z
    local Q = u[39](U, A)
    local u, U = ((128 > Q) and 107) or 61, Y[1]
    return u, Y[2], U, T, A, 10, Q
  end
end, pq = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 293 then
    if G <= 292 then
      local N, S = A + 1, F[1]
      return 273, Q, F[2], S, N, U
    else
      local N, S = Y[Y[13]], Y[Y[8]]
      N[0] = Y[Y[11]]
      S[0] = Y[Y[14]]
      u[68](N, T)
      u[68](S, T)
      S = F[1]
      return 72, Q, F[2], S, A, U
    end
  elseif G <= 294 then
    local Y = u[39](z, A + 1)
    local u, T = (not (128 <= Y) and 252) or 167, F[1]
    return u, Q, F[2], T, A, Y
  elseif G <= 295 then
    local u, Y = Q[2], F[1]
    return 287, u, F[2], Y, A, U
  else
    local u, Y, T = H + (128 * (U - 128)), 2 + A, F[1]
    return 149, Q, F[2], T, Y, u
  end
end, [124] = function(u, u, u, u, U, U)
  return function(U, Q)
    local F = Q or (U.moveState and U.moveState.currentTarget)
    return (F ~= nil) and (u[1][F.Name] == true)
  end
end, DM = function(u, U, Q, F, A, Y, T, G)
  if G <= 59 then
    local z = Y + (128 * (Q - 128))
    return 22, T, A + 2, z
  elseif G <= 60 then
    local Y, G, z, H = u[39](U, 3 + T), (A - 128) * 128, 2097152 * (F - 128), Q - 128
    local N = (Y % 128) * 16384
    local S = (H + (G + ((Y - (Y % 128)) * 2097152))) + (z + N)
    return 207, T + 4, S, Q
  else
    local Y = (F - 1) * 2
    T[Y + 1] = u[8](U, 3)
    T[Y + 2] = u[122](U, 2)
    return 1, T, A, Q
  end
end, [3698] = Vector2.new, [67] = unpack, [3176] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].bbOrbList and (u[1].bbOrbList())
    if not F or (#F == 0) then
      return false
    end
    local A, Y, T, G = math.max(0, Q - tick()), u[1].BonusBoss.bounds, U.X, U.Z
    for Q, z in ipairs(F) do
      local F, H, N = ((z.r + (((z.r >= 8) and 3.5) or 4)) + (z.v.Magnitude * A)) + 0.5, z.pos.X - T, z.pos.Z - G
      if ((H * H) + (N * N)) > (F * F) then
        continue
      end
      if (z.r >= 8) and (u[1].bbBadGone(z.pos, z.v, A)) then
        continue
      end
      N, Q, F = u[1].tgReflect(z.pos.X + (z.v.X * A), Y.xMin, Y.xMax), u[1].tgReflect(z.pos.Z + (z.v.Z * A), Y.zMin, Y.zMax), z.r + (((z.r >= 8) and 3.5) or 4)
      H, z = N - U.X, Q - U.Z
      if ((H * H) + (z * z)) < (F * F) then
        return true
      end
    end
    return false
  end
end, Cq = function(u, U, Q, F, A, Y, T, G, z)
  if U <= 261 then
    local U, H, N, S = u[39](z, Q + 3), (A - 128) * 128, 2097152 * (G - 128), Y - 128
    local Y, e = (U % 128) * 16384, 2097152 * (U - (U % 128))
    local U, D, m = Y + (((S + H) + N) + e), 4 + Q, T[1]
    return 5, T[2], m, D, U, G
  else
    F[A] = G
    F[F[2]] = T[2]
    local U, A = F[13], u[39](z, Q)
    local u, F = (not not (A >= 128) and 294) or 50, T[1]
    return u, T[2], F, Q, U, A
  end
end, iM = function(u, U, Q, F, A, Y)
  if U <= 18 then
    if U <= 17 then
      local T = u[39](A, 2 + Y)
      return (not (128 <= T) and 13) or 28, Y, F, T
    else
      return 29, Y + 1, F, Q
    end
  elseif U <= 19 then
    return 4, 1 + Y, F, Q
  else
    local U = u[39](A, Y)
    return ((U < 128) and 0) or 32, Y, U, Q
  end
end, [89] = buffer.writef32, [7564] = function(u, u, u, u)
  return function(U, Q, F)
    if not u[1].enabled then
      return false
    end
    local F = tick()
    if u[2].projGoal and (F < u[2].projGoalUntil) then
      if Vector3.new(u[2].projGoal.X - Q.X, 0, u[2].projGoal.Z - Q.Z).Magnitude > u[3].arriveThreshold then
        U:SetDestination(u[2].projGoal, false)
        return true
      end
      u[2].projGoal = nil
    end
    local A, Y, T, T = U:GetHomingThreat(Q)
    if not A then
      return false
    end
    local G = A.part.Position
    if T then
      local z = Vector3.new(Q.X - G.X, 0, Q.Z - G.Z)
      if z.Magnitude > 0.1 then
        local H = z.Unit
        local z = U:GetClearDistance(Q, H, u[1].kiteDist + 6, true)
        if z > 10 then
          local N = Q + (H * math.min(z - 4, u[1].kiteDist))
          u[4][4][u[4][7]]("kite", "\224\184\171\224\184\153\224\184\181\224\184\165\224\184\185\224\184\129\224\184\149\224\184\178\224\184\161 (\224\184\150\224\184\182\224\184\135\224\184\149\224\184\177\224\184\167\224\185\131\224\184\153 %.1f \224\184\167\224\184\180)", Y)
          u[2].projGoal = N
          u[2].projGoalUntil = F + u[1].dodgeCommit
          U:SetDestination(N, false)
          return true
        end
      end
    end
    if Y <= u[1].strafeAt then
      G = Vector3.new(A.vel.X, 0, A.vel.Z)
      if G.Magnitude > 0.1 then
        T = G.Unit
        local A, G = Vector3.new(-T.Z, 0, T.X), ipairs
        local T = {A, -A}
        for z, z in G(T) do
          if U:GetClearDistance(Q, z, u[1].strafeDist + 5, true) >= u[1].strafeDist then
            A = Q + (z * u[1].strafeDist)
            u[4][4][u[4][7]]("sidestep", "\224\184\149\224\184\177\224\184\148\224\184\173\224\184\173\224\184\129\224\184\130\224\185\137\224\184\178\224\184\135 (\224\184\150\224\184\182\224\184\135\224\184\149\224\184\177\224\184\167\224\185\131\224\184\153 %.2f \224\184\167\224\184\180)", Y)
            u[2].projGoal = A
            u[2].projGoalUntil = F + u[1].dodgeCommit
            U:SetDestination(A, false)
            return true
          end
        end
        u[5][4][u[5][7]]("proj", "nostrafe", 1, "\224\184\149\224\184\177\224\184\148\224\184\173\224\184\173\224\184\129\224\184\130\224\185\137\224\184\178\224\184\135\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\149\224\184\180\224\184\148\224\184\129\224\184\179\224\185\129\224\184\158\224\184\135\224\184\170\224\184\173\224\184\135\224\184\157\224\184\177\224\185\136\224\184\135)")
      end
    end
    return false
  end
end, yq = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if Y <= 195 then
    if Y <= 194 then
      local e, D = G[2], N[1]
      return 216, e, N[2], D, S, U, Q, T, H
    else
      local e, D, m = ((T - 128) * 128) + A, 2 + S, N[1]
      return 127, G, N[2], m, D, U, Q, e, H
    end
  elseif Y <= 196 then
    local A, e = U - 3821, u[39](z, S)
    local D, m = (not (128 <= e) and 78) or 135, N[1]
    return D, G, N[2], m, S, A, 14, e, H
  elseif Y <= 197 then
    local A = u[39](z, S + 2)
    local Y, e = (not (A < 128) and 137) or 267, N[1]
    return Y, G, N[2], e, S, U, Q, T, A
  else
    local Q, A = F[1], u[39](z, S)
    local u, F = (not not (128 <= A) and 175) or 101, N[1]
    return u, G, N[2], F, S, U, Q, A, H
  end
end, C = function(u, U, Q, F, A, Y, T, G)
  if Y <= 61 then
    local Y = u[39](T, 1 + F)
    local z, H = (not (Y < 128) and 73) or 4, A[1]
    return z, A[2], H, F, Y
  else
    local Y, z, H, N = u[39](T, 3 + F), 128 * (Q - 128), (U - 128) * 2097152, G - 128
    local u = 16384 * (Y % 128)
    local U, Q, T = ((2097152 * (Y - (Y % 128))) + (z + (u + N))) + H, F + 4, A[1]
    return 149, A[2], T, Q, U
  end
end, [94] = coroutine.close, [25] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local F = math.max(U.Size.X, U.Size.Z)
    local A = math.floor((F * 2) + 0.5)
    local Y = u[1].ringCache[A]
    if Y and ((tick() - Y.at) < u[2].RING_SCAN.cacheTime) then
      if Y.inner then
        return Y.inner, Y.outer, u[3][4][u[3][7]](U), Y.half
      end
      return nil
    end
    local T = u[3][4][u[3][7]](U)
    if not T then
      return nil
    end
    local G = RaycastParams.new()
    G.FilterType = Enum.RaycastFilterType.Include
    G.FilterDescendantsInstances = {U}
    local z, H, N, S, e = (U.Position.Y + (U.Size.Y / 2)) + 5, Vector3.new(0, -(U.Size.Y + 15), 0), (F / 2) + 12, Q.X, Q.Z
    local function D(m)
      return workspace:Raycast(Vector3.new(S + (T.X * m), z, e + (T.Z * m)), H, G) ~= nil
    end
    F = u[2].RING_SCAN.coarseStep
    U, Q, Y = F
    while U <= N do
      if D(U) then
        Q, Y = if not Q then U else Q, U
      end
      U += F
    end
    if not Q then
      u[1].ringCache[A] = {at = tick()}
      return nil
    end
    local G = u[2].RING_SCAN.fineStep
    U = math.max(Q - F, G)
    Q = math.min(Y + F, N)
    N, F = nil
    while U <= Q do
      if D(U) then
        N, F = if not N then U else N, U
      end
      U += G
    end
    if (not N or not F) or (F <= N) then
      u[1].ringCache[A] = {at = tick()}
      return nil
    end
    U = 90 + u[2].RING_SCAN.angPad
    u[1].ringCache[A] = {at = tick(), inner = N, outer = F, half = U}
    return N, F, T, U
  end
end, [44] = function(u)
  return function(u)
    local U = u:GetChar()
    if not U then
      return nil
    end
    return U:FindFirstChild("HumanoidRootPart")
  end
end, [13715] = function(u, u, u, u, U)
  return function(U, Q)
    if u[1].ringDebugLive then
      U:HideRingDebug()
      print("\224\184\155\224\184\180\224\184\148 ring debug")
      return
    end
    u[1].ringDebugLive = true
    print("\224\185\128\224\184\155\224\184\180\224\184\148 ring debug (\224\184\129\224\184\165\224\185\136\224\184\173\224\184\135\224\185\129\224\184\148\224\184\135 = \224\184\138\224\185\136\224\184\167\224\184\135\224\184\151\224\184\181\224\185\136\224\184\163\224\184\176\224\184\154\224\184\154\224\184\132\224\184\180\224\184\148\224\184\167\224\185\136\224\184\178\224\185\130\224\184\148\224\184\153)")
    task.spawn(function()
      while u[1].ringDebugLive do
        if (U:DrawRingDebug(Q) == 0) and u[1].ringDebug then
          u[1].ringDebug:ClearAllChildren()
        end
        task.wait(0.15)
      end
      U:HideRingDebug()
    end)
  end
end, [3466] = function(u, u, u, u, U)
  return function()
    while true do
      if not u[1][4][u[1][7]] then
        break
      end
      local U, U = pcall(function()
        local Q = u[2].PlayerGui:FindFirstChild("readyButton")
        if Q then
          local F, A, Y = next, Q.playersReady.playerHolder:GetChildren()
          for T, T in F, A, Y do
            if T.Name == u[2].Name then
              T.Text = "discord.gg/reaperxhub"
            end
          end
        end
        pcall(function()
          Window:SetSubName(u[3]:GetCurrentPlaceForWindow())
        end)
        Q = u[2].Character:FindFirstChild("playerNameplate")
        if Q then
          if u[1][4][u[1][7]]:GetFlag("Streamer Mode") then
            u[2].PlayerGui.playerStatus.Frame.playerName.Text = "discord.gg/reaperxhub"
            Q.Frame.name.Text = "discord.gg/reaperxhub"
            u[2].PlayerGui.playerStatus.Frame.portraitBorder.portrait.Image = "rbxassetid://84187185878207"
          else
            u[2].PlayerGui.playerStatus.Frame.playerName.Text = u[2].DisplayName
            Q.Frame.name.Text = u[2].DisplayName
            u[2].PlayerGui.playerStatus.Frame.portraitBorder.portrait.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. (u[2].UserId .. "&width=420&height=420&format=png ")
          end
        end
      end)
      if U and u[4] then
        warn("[Secondary Thread] Caught Error: ", U)
      end
      if u[1][4][u[1][7]] and (u[1][4][u[1][7]]:GetFlag("Streamer Mode")) then
        u[5].Stepped:Wait()
      else
        task.wait(0.25)
      end
    end
  end
end, [1] = tostring, aq = function(u, U, Q, F, A, Y, T, G, z, H)
  if T <= 318 then
    local T, N, S, e = u[39](Y, 3 + F), 128 * (z - 128), (G - 128) * 2097152, A - 128
    local u, z = (T % 128) * 16384, (T - (T % 128)) * 2097152
    local T, D, m = S + (e + ((N + u) + z)), F + 4, H[1]
    return 2, H[2], m, Q, T, D, G, Y, A
  else
    local u, Q, F, A = U[U[14]], U[U[16]], U[U[15]], U[U[9]]
    u[0] = U[U[8]]
    local Y, T = U[10], H[1]
    return 120, H[2], T, u, Q, F, A, 0, Y
  end
end, Gj = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if z <= 157 then
    if z <= 156 then
      local S = u[39](U, 2 + A)
      return ((S < 128) and 210) or 4, G, H, F, A, S
    else
      return 0, G[2], T, F, A, T
    end
  elseif z <= 158 then
    local z, S, e, D = u[39](Y, 3 + U), 128 * (A - 128), 2097152 * (Q - 128), T - 128
    local Q, Y = 16384 * (z % 128), 2097152 * (z - (z % 128))
    local z, m = (D + Q) + ((Y + S) + e), 4 + U
    return 195, G, H, F, z, T
  else
    local U = u[39](N, 2)
    return (not (128 <= U) and 167) or 65, G, H, U, A, T
  end
end, [117] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    if (tick() - u[1][U]) > Q then
      u[1][U] = tick() + Q
      return true
    end
    return false
  end
end, [95] = table.concat, Rj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if e <= 197 then
    local e, m, g = Q[1], U(T), H + F
    local c = u[39](Y, g)
    return (not (128 > c) and 163) or 30, e, m, g, c, A, T, D, G
  else
    local T, G = 12, (U + (A * F)) % 256
    u[91](S, T, (u[116](H, G, (u[39](Y, T + z)))))
    T = 13
    local A = ((F * G) + U) % 256
    u[91](S, T, (u[116](u[39](Y, T + z), A, H)))
    return 120, Q, z, H, N, 14, (U + (A * F)) % 256, u[91], u[39]
  end
end, [17] = bit32.rrotate, Tq = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if H <= 236 then
    if H <= 235 then
      local S = u[39](T, N + 2)
      local e, D = ((S < 128) and 166) or 81, z[1]
      return e, z[2], D, Q, N, U, S
    else
      F[Q] = Y
      F[F[2]] = z[2]
      local F = u[39](T, N)
      local Y, S = ((128 > F) and 255) or 44, z[1]
      return Y, z[2], S, F, N, U, A
    end
  elseif H <= 237 then
    local F, Y, S = ((A - 128) * 128) + G, 2 + N, z[1]
    return 262, z[2], S, Q, Y, U, F
  elseif H <= 238 then
    local F, Y = N + 1, z[1]
    return 236, z[2], Y, Q, F, U, A
  else
    local U = u[39](T, N)
    local u, F = (not (128 <= U) and 251) or 212, z[1]
    return u, z[2], F, Q, N, 1, U
  end
end, [55] = xpcall, [11208] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = u[1].bb and u[1].bb.volleys
    if not A or (#A == 0) then
      return false
    end
    local Y, T, G = u[2].BonusBoss.volley, tick(), u[2].BonusBoss.longLine.center
    local u = Vector3.new(U.X - G.X, 0, U.Z - G.Z)
    for z, H in ipairs(A) do
      if (T - H.t0) <= (((Y.dt * Y.kMax) + (Y.len / Y.speed)) + 0.5) then
        z, G = u:Dot(H.perp), u:Dot(H.dir) - H.a0
        if (G >= -Y.lenHalf) and (G <= (Y.len + Y.lenHalf)) then
          U = math.floor((z / Y.step) + 0.5)
          for u = U - 1, U + 1, 1 do
            if (math.abs(u) <= Y.kMax) and (math.abs(z - (u * Y.step)) < Y.half) then
              local U = H.t0 + (Y.dt * math.abs(u))
              local u, A = U + ((G - Y.lenHalf) / Y.speed), U + ((G + Y.lenHalf) / Y.speed)
              if (u < (T + F)) and (A > (T + Q)) then
                return true
              end
            end
          end
        end
      end
    end
    return false
  end
end, [5895] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    if not Q or not u[1].SuicideMob[Q.Name] then
      return false
    end
    if u[2]:DistanceFromCharacter(Q.HumanoidRootPart.Position) > 70 then
      return
    end
    if not u[3].suicideReset then
      return false
    end
    local F = tick()
    if (F - u[4].lastSuicide) < u[3].suicideEvery then
      return false
    end
    if U:JustSpawned() then
      return false
    end
    if U:HasForceField() then
      return false
    end
    if not U:AllSkillsDown() then
      return false
    end
    if Q.Name == "Odin" then
      local A = Q:FindFirstChildOfClass("Humanoid")
      if (A and (A.MaxHealth > 0)) and ((A.Health / A.MaxHealth) < 0.3) then
        return false
      end
    end
    local A = U:GetChar()
    U = A and (A:FindFirstChildOfClass("Humanoid"))
    if not U or (U.Health <= 0) then
      return false
    end
    u[5][4][u[5][7]]("target", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\132\224\184\185\224\184\165\224\184\148\224\184\178\224\184\167\224\184\153\224\185\140\224\184\132\224\184\163\224\184\154\224\184\151\224\184\184\224\184\129\224\184\149\224\184\177\224\184\167 \226\134\146 \224\184\149\224\184\178\224\184\162\224\184\163\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165")
    u[4].lastSuicide = F
    task.delay(0.1, function()
      if u[6]:IsLive(Q) then
        replicatesignal(u[2].Kill)
      end
    end)
    return true
  end
end, kM = function(u, U, Q)
  local F = u[8]
  U, Q = F(U, 4294967295), F(Q, 4294967295)
  local A, Y = F(U, 65535), u[122]
  local T, G, z = Y(U, 16), F(Q, 65535), Y(Q, 16)
  return F((A * G) + u[71](F((A * z) + (T * G), 65535), 16), 4294967295) % 4294967296
end, vj = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if S <= 132 then
    local S, e, D, m, g = N + 1, 61, 233, (F + 57) % 256, 0
    return 26, S, 57, e, D, u[16](2), g, (D + (e * m)) % 256, u[91], u[39], g + S
  else
    local S = 1 + N
    local N = u[39](H, S)
    return (not (128 > N) and 189) or 41, F, S, N, U, T, z, A, Q, G, Y
  end
end, [6327] = function(u, u, u, u, U)
  return function()
    local U = tick()
    if u[1].bb.spListT and ((U - u[1].bb.spListT) < 0.03) then
      return u[1].bb.spList
    end
    local Q = {}
    for F, A in ipairs(u[2]) do
      local Y = A.part
      if Y and not u[3][4][u[3][7]](A, U) then
        F = if Y.Name == "claudeSpiralPredict" then 12 else if ((Y.Name == "precast") and Y.Parent) and (Y.Parent.Name == "bonusBossSmallSpiralFlame") then 11.5 else nil
        if F then
          Q[#Q + 1] = {Y.Position.X, Y.Position.Z, F}
        end
      end
    end
    u[1].bb.spListT, u[1].bb.spList = U, Q
    return Q
  end
end, [76] = string.pack, mM = function(u, U, Q, F, A, Y, T)
  if F <= 5 then
    if F <= 4 then
      local G = u[39](Q, U)
      return (not (128 <= G) and 18) or 16, U, G, Y
    else
      local G = u[39](Q, 1 + U)
      return ((G < 128) and 11) or 27, U, G, Y
    end
  elseif F <= 6 then
    local F = A + ((Y - 128) * 128)
    return 10, 2 + U, T, F
  else
    local F, G, z, H = u[39](Q, U + 3), (T - 128) * 128, 2097152 * (Y - 128), A - 128
    local u, Q = (F % 128) * 16384, 2097152 * (F - (F % 128))
    F = H + ((G + z) + (Q + u))
    return 29, 4 + U, F, Y
  end
end, Cj = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if U then
    if z <= 216 then
      local U, S = Y + ((H - 128) * 128), G + 2
      return 168, Q, Y, U, A, T
    else
      local U, S, e, D = u[39](G, 3 + Q), 128 * (Y - 128), (N - 128) * 2097152, H - 128
      local N, m = (U % 128) * 16384, (U - (U % 128)) * 2097152
      U = ((e + D) + m) + (N + S)
      return 96, Q + 4, U, G, A, T
    end
  elseif z <= 218 then
    local U = u[39](H, 2 + Y)
    return (not (U < 128) and 134) or 88, Q, Y, G, U, T
  else
    local u, U, z = F[5], F[3], F[4]
    local H, N = u + U, U <= 0
    local U, S, e = not N, H >= z, H <= z
    u = (N and S) or (U and e)
    F[5] = H
    if u then
      return 53, Q, Y, G, A, H
    else
      return 197, Q, Y, G, A, T
    end
  end
end, j = function(u, U, Q, F, A, Y, T, G, z)
  if z <= 15 then
    A[Y] = G
    local z = u[39](F, T)
    local u, F = ((z < 128) and 190) or 270, U[1]
    return u, U[2], F, A, Q, 3, z
  else
    local u, F, z = (Q - 128) + (((T - 128) * 16384) + (Y * 128)), A + 3, U[1]
    return 109, U[2], z, F, u, Y, G
  end
end, l = function(u, U, Q, F, A, Y, T, G)
  if A <= 139 then
    if A <= 138 then
      local z, H, N = ((F - 128) * 128) + U, T + 2, Q[1]
      return 59, Q[2], N, H, z, U
    else
      local z, H = T + 1, Q[1]
      return 187, Q[2], H, z, F, U
    end
  elseif A <= 140 then
    local z, H, N, S = u[39](G, 3 + T), 128 * (F - 128), (U - 128) * 2097152, Y - 128
    local Y = (z % 128) * 16384
    local e, D, m = (N + (2097152 * (z - (z % 128)))) + (H + (S + Y)), 4 + T, Q[1]
    return 59, Q[2], m, D, e, U
  elseif A <= 141 then
    local A, Y = 1 + T, Q[1]
    return 127, Q[2], Y, A, F, U
  else
    local U = u[39](G, T + 2)
    local u, A = (not (U < 128) and 261) or 285, Q[1]
    return u, Q[2], A, T, F, U
  end
end, rj = function(u, U, Q, F, A, Y, T)
  if Q <= 134 then
    local G, z, H, N = u[39](U, F + 3), (A - 128) * 128, 2097152 * (Y - 128), T - 128
    local u, Y = 16384 * (G % 128), 2097152 * (G - (G % 128))
    G = N + ((H + z) + (Y + u))
    return 15, 4 + F, G
  elseif Q <= 135 then
    return (not not (153 >= U) and 63) or 177, F, A
  else
    return (not not (T >= 142) and 2) or 46, F, A
  end
end, F = function(u, U, Q, F, A, Y, T, G, z, H)
  if Y <= 43 then
    local N, S, e, D = u[39](A, 3 + H), (T - 128) * 128, (F - 128) * 2097152, Q - 128
    local F = 16384 * (N % 128)
    local m, g, c = ((2097152 * (N - (N % 128))) + D) + (e + (S + F)), 4 + H, G[1]
    return 162, G[2], c, g, m, Q
  elseif Y <= 44 then
    local F = u[39](A, H + 1)
    local u, A = (not (F < 128) and 242) or 172, G[1]
    return u, G[2], A, H, F, Q
  else
    local u = Q - 128
    local Q, F, A = ((16384 * (z - 128)) + (128 * U)) + u, 3 + H, G[1]
    return 150, G[2], A, F, T, Q
  end
end, [66] = string.gmatch, rq = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 166 then
    local N, S = F - 128, (Y - 128) * 16384
    local Y, e, D = (Q * 128) + (S + N), 3 + z, H[1]
    return 70, H[2], D, e, Y, T, A
  elseif U <= 167 then
    local U = u[39](G, 2 + z)
    local Q, Y = (not (U < 128) and 94) or 283, H[1]
    return Q, H[2], Y, z, F, T, U
  else
    local U = u[39](G, z)
    local u, Q = (not not (128 <= U) and 303) or 173, H[1]
    return u, H[2], Q, z, F, U, A
  end
end, oM = function(u, U, Q, F, A, Y, T, G, z)
  if F <= 9 then
    if F <= 8 then
      local H, N, S = U[5], U[1], U[4]
      local e, D = H + N, N <= 0
      local H, m, g = not D, e >= S, e <= S
      N = (D and m) or (H and g)
      U[5] = e
      if N then
        return 20, Q, z, A, G, e
      else
        return 1, Q, z, A, G, T
      end
    else
      local U = ((G - 128) * 128) + T
      return 29, Q, 2 + z, A, U, T
    end
  elseif F <= 10 then
    local U = u[16](T)
    u[53](U, 0, Q, z, T)
    local F = T + z
    Y[G] = U
    u[45] = F
    F = u:Q(Y, A)
    return 21, u[F[F[4]]](u, nil, nil, u.i, F), z, A, G, T
  else
    local u = G + (128 * (A - 128))
    return 4, Q, z + 2, u, G, T
  end
end, [15263] = function(u, U, U, U, Q, F, F)
  local F, A, Y
  local T, G, z, H, N, S, e, D, m, g, c, r, M, y, p, f, v, K, B, R, o, k, j, s, _, q, i, l, n, L, O, b, I, t, W, a = u[64], u[63], u[71], u[8], u[122], u[116], u[41], u[114], u[67], u.B, u[31], u[37], u[6], u[20], u[73], u.jM, u[52], u[39], u[91], 1
  while true do
    if R <= 0 then
      return n
    elseif R <= 1 then
      F = Q[Q[14]]
      A = Q[Q[16]]
      Y, R, n, L, O, b, I, t, W, a = Q[Q[5]], 2, 10, 12, 9, 11, 6, 13, 15, 8
    else
      o = Q[Q[W]]
      k = Q[Q[n]]
      j = Q[Q[O]]
      s = Q[Q[b]]
      _ = Q[Q[a]]
      q = Q[Q[t]]
      i = Q[Q[I]]
      l = Q[Q[L]]
      R, n = 0, function(...)
        local R, n, L
        local O, b, I = Y
        local Y, t = i
        local i = T(q)
        local q, W
        local a = G()
        local G, C, P, X, J
        if Y == 103 then
          while true do
            local x = s[O]
            if x >= 75 then
              if x < 113 then
                local V
                if x < 94 then
                  if x >= 84 then
                    if x < 89 then
                      if x >= 86 then
                        if x >= 87 then
                          if x == 88 then
                            G, L, P = l[O], _[O], k[O]
                            n = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                            t, b = H(G, z(1, n) - 1), N(G, n)
                            local w, Z, E = k, u:YM(P), u:YM(O)
                            w[O] = u:YM((S(Z, 63) + u:kM(385007113, 4294967295)) + (u:kM(3909960183, E) + u:kM(3909960183, (e(E)))))
                            Z, w, E = l, u:YM(t), u:YM(b)
                            Z[O] = u:YM((S(w, 80) + u:kM(976692175, 4294967295)) + (u:kM(3318275121, E) + u:kM(3318275121, (e(E)))))
                            Z, E = _, u:YM(L)
                            Z[O] = u:YM((u:kM(346225915, E) + u:kM(346225915, 14)) + (u:kM(3602515466, (D(14, E))) + u:kM(346225916, (S(E, 14)))))
                            w, E = s, u:YM(b)
                            w[O] = u:YM((u:kM(44258771, E) + u:kM(44258771, 29)) + (u:kM(4206449754, (D(29, E))) + u:kM(44258772, (S(E, 29)))))
                            O -= 1
                          else
                            V = C
                            C, G = {[6] = V, [5] = J, [8] = I, [9] = X}, l[O]
                            J, I = i[G + 2] + 0, i[G + 1] + 0
                            X, O = i[G] - J, _[O]
                          end
                        else
                          i[_[O]] = i[l[O]](m(i[k[O]], 1, i[k[O]][g]))
                        end
                      elseif x ~= 85 then
                        a[F[O]] = o[O]
                      else
                        G, L = l[O], _[O]
                        P = {[g] = (L - G) + 1}
                        c(i, G, L, 1, P)
                        i[k[O]] = P
                      end
                    elseif x < 91 then
                      if x == 90 then
                        O = if i[_[O]] == A[O] then l[O] else O
                      else
                        G, L, P, n = k[O], X()
                        if L then
                          i[G + 1] = P
                          i[G + 2] = n
                          O = _[O]
                        end
                      end
                    elseif x < 92 then
                      i[_[O]] = i[l[O]] + k[O]
                    elseif x == 93 then
                      i[l[O]] = i[_[O]] <= i[k[O]]
                    else
                      i[_[O]] = i[k[O]][l[O]]
                    end
                  elseif x < 79 then
                    if x < 77 then
                      if x ~= 76 then
                        if R then
                          for w in r, R, nil do
                            if R then
                              local Z = R[w]
                              if Z then
                                Z[4] = Z
                                Z[6] = i[w]
                                Z[7] = 6
                                R[w] = nil
                              end
                            end
                          end
                        end
                        return i[l[O]], i[k[O]], i[_[O]]
                      else
                        i[_[O]] = i[k[O]] * l[O]
                      end
                    elseif x ~= 78 then
                      O = _[O]
                    else
                      G, L, P = k[O], l[O], _[O]
                      n = G + L
                      t = i[n]
                      b = t[g]
                      W = (L + b) - 1
                      t[g] = W
                      c(t, 1, b, L, t)
                      c(i, G + 1, n - 1, 1, t)
                      i[G] = M(i[G](m(t, 1, t[g])))
                    end
                  elseif x < 81 then
                    if x == 80 then
                      G = F[O]
                      local w, Z = A[O], U
                      local E = (w and (#w / 2)) or 0
                      local d, h = (E > 0) and {}
                      if d then
                        h = R
                        for uu = 1, E, 1 do
                          local E = (uu - 1) * 2
                          local Uu, Qu = w[E + 1], w[E + 2]
                          if Uu == 3 then
                            h = if not h then {} else h
                            local w, E = h[Qu]
                            if not w then
                              w = {[7] = Qu, [4] = i}
                              h[Qu] = w
                              E = w
                            else
                              E = w
                            end
                            d[uu] = E
                          elseif Uu == 0 then
                            d[uu] = i[Qu]
                          elseif Uu == 1 then
                            d[uu] = {[7] = Qu, [4] = i}
                          elseif Uu == 2 then
                            d[uu] = Z[Qu]
                          end
                        end
                      else
                        h = R
                      end
                      P = u[G[G[4]]](u, nil, nil, d, G)
                      y(P, a)
                      i[l[O]] = P
                      L, R = d, h
                    else
                      i[k[O]] = i[l[O]] < _[O]
                    end
                  elseif x >= 82 then
                    if x ~= 83 then
                      i[_[O]](i[l[O]], A[O])
                    else
                      O = if i[_[O]] then l[O] else k[O]
                    end
                  else
                    i[l[O]] = i[k[O]] == F[O]
                  end
                elseif x < 103 then
                  if x >= 98 then
                    if x >= 100 then
                      if x < 101 then
                        i[_[O]] = i[l[O]] < A[O]
                      elseif x ~= 102 then
                        i[l[O]](i[k[O]], i[_[O]])
                      else
                        if R then
                          for w in r, R, nil do
                            if R then
                              local Z = R[w]
                              if Z then
                                Z[4] = Z
                                Z[6] = i[w]
                                Z[7] = 6
                                R[w] = nil
                              end
                            end
                          end
                        end
                        return i[k[O]](i[_[O]])
                      end
                    elseif x == 99 then
                      i[l[O]] = i[_[O]] % k[O]
                    else
                      i[_[O] + i[l[O]]] = i[k[O]]
                    end
                  elseif x >= 96 then
                    if x ~= 97 then
                      i[k[O]] = i[_[O]] > l[O]
                    else
                      i[_[O]] = i[k[O]] + o[O]
                    end
                  elseif x ~= 95 then
                    i[_[O]]()
                  else
                    i[_[O]] = not i[k[O]]
                  end
                elseif x < 108 then
                  if x < 105 then
                    if x == 104 then
                      G = i[l[O]]
                      i[_[O]] = M(m(G, k[O], G[g]))
                    else
                      G, L, P = l[O], _[O], k[O]
                      n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                      t, b = H(P, z(1, n) - 1), N(P, n)
                      local w, Z, E = k, u:YM(t), u:YM(G)
                      w[O] = u:YM((S(Z, 11) + u:kM(50078318, 4294967295)) + (u:kM(4244888978, E) + u:kM(4244888978, (e(E)))))
                      local w, Z, E, d = l, u:YM(G), u:YM(O), u:YM(L)
                      w[O] = u:YM((S(Z, 103) + u:kM(2147483648, E)) + (u:kM(2147483648, d) + u:kM(2147483648, (S(E, d)))))
                      Z, E = _, u:YM(L)
                      Z[O] = u:YM((S(E, 91) + u:kM(1050268069, 4294967295)) + (u:kM(3244699227, E) + u:kM(3244699227, (e(E)))))
                      Z, w = s, u:YM(b)
                      Z[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 107) + u:kM(2147483647, (e((S(w, 107)))))))
                      O -= 1
                    end
                  elseif x >= 106 then
                    if x ~= 107 then
                      a[o[O]] = i[_[O]]
                    else
                      O = if not (i[k[O]] < i[l[O]]) then _[O] else O
                    end
                  else
                    i[_[O]](m(i[k[O]], 1, i[k[O]][g]))
                  end
                elseif x < 110 then
                  if x == 109 then
                    i[_[O]] = U[l[O]][i[k[O]]]
                  else
                    G, L, P = k[O], _[O], l[O]
                    n, t = i[G], G + L
                    b = i[t]
                    c(i, G + 1, t - 1, P + 1, n)
                    c(b, 1, b.n, P + L, n)
                  end
                elseif x >= 111 then
                  if x == 112 then
                    V = C
                    C, G, L = {[6] = V, [5] = J, [8] = I, [9] = X}, _[O], p(f)
                    L(u, i[G], i[G + 1], i[G + 2])
                    O, X = l[O], L
                  else
                    O = i[l[O]]
                  end
                else
                  G = l[O]
                  L, P, n = i[G], i[G + 1], i[G + 2]
                  i[G] = L(P, n)
                end
              elseif x < 132 then
                if x >= 122 then
                  if x < 127 then
                    if x >= 124 then
                      if x < 125 then
                        O = if i[_[O]] == i[l[O]] then k[O] else O
                      elseif x == 126 then
                        i[_[O]] = l[O]
                        i[_[O + 1]] = l[O + 1]
                        O += 1
                      else
                        O = if i[_[O]] == k[O] then l[O] else O
                      end
                    elseif x == 123 then
                      G = l[O] + 1
                      for V = 1, _[O], 1 do
                        L = H(S(k[O], V), 127)
                        k[G] = S(k[G], L)
                        l[G] = S(l[G], L)
                        _[G] = S(_[G], L)
                        s[G] = S(s[G], L)
                        G += 1
                      end
                      s[O] = 24
                    else
                      i[l[O]] = i[k[O]](F[O])
                    end
                  elseif x >= 129 then
                    if x < 130 then
                      G, L, P = _[O], {...}, l[O]
                      c(L, 1, G - 1, P, i)
                      i[(P + G) - 1] = M(v(G, ...))
                    elseif x ~= 131 then
                      local v, V, w = Q, k[O], _[O]
                      local Z = v[v[2]]
                      v = Z[4]
                      local E = S(v[V], 27730616)
                      v[V] = E
                      v, V = Z[7], E + 1
                      Z = K(v, V)
                      local d, h
                      if Z < 128 then
                        d, h = Z, V + 1
                      else
                        E = K(v, V + 1)
                        if E < 128 then
                          d, h = ((Z - 128) * 128) + E, V + 2
                        else
                          local uu = K(v, V + 2)
                          if uu < 128 then
                            d, h = ((Z - 128) + ((E - 128) * 16384)) + (uu * 128), V + 3
                          else
                            local Uu = K(v, V + 3)
                            d, h = (((((Z - 128) * 128) + ((E - 128) * 2097152)) + (uu - 128)) + ((Uu % 128) * 16384)) + ((Uu - (Uu % 128)) * 2097152), V + 4
                          end
                        end
                      end
                      for V = h, (h + d) - 1, 1 do
                        B(v, V, (S(K(v, V), w)))
                      end
                      k[O], _[O], l[O], s[O] = 110, 135, 213, 24
                    else
                      O = if i[l[O]] ~= A[O] then _[O] else O
                    end
                  elseif x ~= 128 then
                    i[_[O]] = l[O]
                  else
                    i[_[O]] = l[O] <= i[k[O]]
                  end
                elseif x < 117 then
                  if x < 115 then
                    if x == 114 then
                      i[k[O]] = o[O]
                    else
                      O = if i[k[O]] ~= i[l[O]] then _[O] else O
                    end
                  else
                    local v = O
                    if x == 116 then
                      Y, O = _[v], k[v] + 1
                      break
                    else
                      G = U[_[v]]
                      G[4][G[7]][i[k[v]]] = i[l[v]]
                    end
                  end
                elseif x >= 119 then
                  if x < 120 then
                    G, L, P = _[O], k[O], l[O]
                    n = i[G]
                    c(i, G + 1, G + L, P + 1, n)
                  elseif x == 121 then
                    i[k[O]] = l[O] - i[_[O]]
                  else
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return i[_[O]](o[O], A[O])
                  end
                elseif x ~= 118 then
                  local v = k[O]
                  if R then
                    local V = R[v]
                    if V then
                      V[4] = V
                      V[6] = i[v]
                      V[7] = 6
                      R[v] = nil
                    end
                  end
                else
                  G, L, P = k[O], l[O], _[O]
                  n = ((G < 2097152) and 7) or 14
                  t, b = H(G, z(1, n) - 1), N(G, n)
                  local v, V = k, u:YM(t)
                  v[O] = u:YM((S(V, 76) + u:kM(1754695103, 4294967295)) + (u:kM(2540272193, V) + u:kM(2540272193, (e(V)))))
                  local w, Z, E = l, u:YM(L), u:YM(b)
                  w[O] = u:YM((S(Z, 0) + u:kM(27228255, 4294967295)) + (u:kM(4267739041, E) + u:kM(4267739041, (e(E)))))
                  v, E, w = _, u:YM(P), u:YM(n)
                  v[O] = u:YM((S(E, 82) + u:kM(44711431, 4294967295)) + (u:kM(4250255865, w) + u:kM(4250255865, (e(w)))))
                  w, E, V = s, u:YM(b), u:YM(P)
                  w[O] = u:YM((S(E, 50) + u:kM(227082884, 4294967295)) + (u:kM(4067884412, V) + u:kM(4067884412, (e(V)))))
                  O -= 1
                end
              elseif x < 141 then
                if x >= 136 then
                  if x >= 138 then
                    if x >= 139 then
                      if x ~= 140 then
                        O = if o[O] <= i[k[O]] then _[O] else O
                      else
                        i[_[O]] = i[l[O]]()
                      end
                    else
                      O = if _[O] <= i[k[O]] then l[O] else O
                    end
                  elseif x == 137 then
                    i[_[O]] = i[l[O]] / k[O]
                  else
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return A[O]
                  end
                elseif x >= 134 then
                  if x == 135 then
                    i[l[O]] = i[k[O]] == i[_[O]]
                  else
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return i[l[O]]()
                  end
                elseif x == 133 then
                  i[l[O]] = i[k[O]] == _[O]
                else
                  O = if i[k[O]] ~= _[O] then l[O] else O
                end
              elseif x < 146 then
                if x < 143 then
                  if x == 142 then
                    i[_[O]] = -i[l[O]]
                  else
                    i[_[O]] = M(i[k[O]]())
                  end
                elseif x >= 144 then
                  if x == 145 then
                    U[k[O]][i[_[O]]] = o[O]
                  else
                    i[k[O]] = i[l[O]] > i[_[O]]
                  end
                else
                  i[_[O]] = i[k[O]] <= l[O]
                end
              elseif x >= 148 then
                if x < 149 then
                  i[_[O]](i[l[O]])
                elseif x == 150 then
                  G = _[O]
                  P = G + l[O]
                  if R then
                    for v in r, R, nil do
                      if R then
                        local V = R[v]
                        if V then
                          V[4] = V
                          V[6] = i[v]
                          V[7] = 6
                          R[v] = nil
                        end
                      end
                    end
                  end
                  return i[G](m(i, G + 1, P))
                else
                  G, L, P = k[O], l[O], _[O]
                  n = ((L < 2097152) and 7) or 14
                  t, b = H(L, z(1, n) - 1), N(L, n)
                  k[O] = u:YM((S(u:YM(G), 123) + u:kM(448828874, 4294967295)) + (u:kM(3846138422, 123) + u:kM(3846138422, (e(123)))))
                  local v, V, w = l, u:YM(t), u:YM(P)
                  v[O] = u:YM((S(V, 98) + u:kM(460510422, 4294967295)) + (u:kM(3834456874, w) + u:kM(3834456874, (e(w)))))
                  V, v = _, u:YM(P)
                  V[O] = u:YM((S(v, 23) + u:kM(205394794, 4294967295)) + (u:kM(4089572502, v) + u:kM(4089572502, (e(v)))))
                  v, V = s, u:YM(b)
                  v[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, V)) + (u:kM(2147483648, 10) + u:kM(2147483647, (e((S(V, 10)))))))
                  O -= 1
                end
              elseif x ~= 147 then
                i[l[O]] = U[k[O]][F[O]]
              else
                if R then
                  for v in r, R, nil do
                    if R then
                      local V = R[v]
                      if V then
                        V[4] = V
                        V[6] = i[v]
                        V[7] = 6
                        R[v] = nil
                      end
                    end
                  end
                end
                return m(i[k[O]], 1, i[k[O]][g])
              end
            elseif x < 37 then
              if x >= 18 then
                if x < 27 then
                  if x >= 22 then
                    if x >= 24 then
                      if x >= 25 then
                        if x == 26 then
                          G = U[l[O]]
                          G[4][G[7]][i[k[O]]] = F[O]
                        else
                          i[_[O]] = #i[l[O]]
                        end
                      end
                    elseif x ~= 23 then
                      i[_[O]] = l[O] < i[k[O]]
                    else
                      X += J
                      G = if J <= 0 then X >= I else X <= I
                      if G then
                        i[k[O]] = X
                        O = l[O]
                      end
                    end
                  elseif x >= 20 then
                    if x == 21 then
                      i[_[O]] = i[k[O]] .. i[l[O]]
                    else
                      i[l[O]] = i[k[O]] < i[_[O]]
                    end
                  elseif x ~= 19 then
                    G, L = {...}, k[O]
                    c(G, 1, _[O], L, i)
                  else
                    i[k[O]] = a[o[O]]
                  end
                elseif x < 32 then
                  if x < 29 then
                    if x ~= 28 then
                      i[l[O]][k[O]] = i[_[O]]
                    else
                      i[k[O]] = i[l[O]] % i[_[O]]
                    end
                  elseif x < 30 then
                    G = U[_[O]]
                    i[l[O]] = G[4][G[7]][A[O]]
                  elseif x ~= 31 then
                    G, L, P = l[O], k[O], _[O]
                    n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                    t, b = H(P, z(1, n) - 1), N(P, n)
                    local v, V, w = k, u:YM(L), u:YM(O)
                    v[O] = u:YM((S(V, 62) + u:kM(1852354004, 4294967295)) + (u:kM(2442613292, w) + u:kM(2442613292, (e(w)))))
                    l[O] = u:YM((S(u:YM(G), 97) + u:kM(887294552, 4294967295)) + (u:kM(3407672744, 97) + u:kM(3407672744, (e(97)))))
                    v, V, w = _, u:YM(t), u:YM(P)
                    v[O] = u:YM((S(V, 36) + u:kM(454197245, 4294967295)) + (u:kM(3840770051, w) + u:kM(3840770051, (e(w)))))
                    V, w, v = s, u:YM(b), u:YM(t)
                    V[O] = u:YM((S(w, 114) + u:kM(1217377646, 4294967295)) + (u:kM(3077589650, v) + u:kM(3077589650, (e(v)))))
                    O -= 1
                  else
                    i[l[O]][A[O]] = _[O]
                  end
                elseif x < 34 then
                  if x == 33 then
                    G = U[_[O]]
                    G[4][G[7]][o[O]] = i[k[O]]
                  else
                    i[k[O]] = i[l[O]][F[O]]
                  end
                elseif x >= 35 then
                  if x ~= 36 then
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return i[_[O]], i[l[O]]
                  else
                    U[_[O]][o[O]] = k[O]
                  end
                else
                  i[k[O]][o[O]] = F[O]
                end
              elseif x < 9 then
                if x >= 4 then
                  if x < 6 then
                    if x == 5 then
                      U[l[O]][F[O]] = A[O]
                    else
                      i[_[O]] = k[O] + i[l[O]]
                    end
                  elseif x >= 7 then
                    if x == 8 then
                      if R then
                        for v in r, R, nil do
                          if R then
                            local V = R[v]
                            if V then
                              V[4] = V
                              V[6] = i[v]
                              V[7] = 6
                              R[v] = nil
                            end
                          end
                        end
                      end
                      return
                    else
                      O = if _[O] < i[k[O]] then l[O] else O
                    end
                  else
                    i[k[O]] = i[_[O]] >= o[O]
                  end
                elseif x < 2 then
                  if x == 1 then
                    G = U[k[O]]
                    i[l[O]] = G[4][G[7]]
                  else
                    i[l[O]][i[k[O]]] = _[O]
                  end
                elseif x == 3 then
                  i[k[O]] = i[l[O]] ~= i[_[O]]
                else
                  i[k[O]] = o[O] .. i[_[O]]
                end
              elseif x >= 13 then
                if x < 15 then
                  if x == 14 then
                    G, L = _[O], i[l[O]]
                    i[G + 1] = L
                    i[G] = L[A[O]]
                  else
                    G = U[_[O]]
                    i[k[O]] = G[4][G[7]][l[O]]
                  end
                elseif x >= 16 then
                  if x == 17 then
                    i[_[O]] = M(i[k[O]](i[l[O]]))
                  else
                    i[_[O]] = i[k[O]] * i[l[O]]
                  end
                else
                  i[k[O]][i[l[O]]] = i[_[O]]
                end
              elseif x < 11 then
                if x ~= 10 then
                  i[l[O]](i[k[O]], m(i[_[O]], 1, i[_[O]][g]))
                else
                  i[_[O]] = U[k[O]]
                end
              elseif x ~= 12 then
                i[l[O]] = _[O] > i[k[O]]
              else
                for v = _[O], l[O], 1 do
                  i[v] = nil
                end
              end
            elseif x < 56 then
              if x < 46 then
                if x >= 41 then
                  if x < 43 then
                    if x ~= 42 then
                      i[l[O]] = i[k[O]] ~= F[O]
                    else
                      G = U[k[O]]
                      i[_[O]] = G[4][G[7]][i[l[O]]]
                    end
                  elseif x >= 44 then
                    if x ~= 45 then
                      i[_[O]](o[O])
                    else
                      i[k[O]] = i[_[O]] .. o[O]
                    end
                  else
                    G, L, P = l[O], _[O], k[O]
                    n, t = (G + P) - 1, G + L
                    b = i[t]
                    W = b[g]
                    b[g] = (L + W) - 1
                    c(b, 1, W, L, b)
                    c(i, G + 1, t - 1, 1, b)
                    q = M(i[G](m(b, 1, b[g])))
                    c(q, 1, P, G, i)
                  end
                elseif x >= 39 then
                  if x ~= 40 then
                    i[k[O]] = l[O] >= i[_[O]]
                  else
                    i[l[O]] = i[k[O]] - i[_[O]]
                  end
                elseif x == 38 then
                  i[l[O]] = F[O] * i[k[O]]
                else
                  U[_[O]][o[O]] = i[k[O]]
                end
              elseif x < 51 then
                if x < 48 then
                  if x ~= 47 then
                    i[k[O]] = u[l[O]]
                  else
                    i[k[O]] = {}
                  end
                elseif x >= 49 then
                  if x ~= 50 then
                    i[l[O]] = i[_[O]] - k[O]
                  else
                    G = U[l[O]]
                    G[4][G[7]] = i[_[O]]
                  end
                else
                  i[k[O]] = i[l[O]][i[_[O]]]
                end
              elseif x < 53 then
                if x ~= 52 then
                  i[l[O]] = i[k[O]] >= _[O]
                else
                  G, L, P = _[O], k[O], l[O]
                  n, t, b = (G + P) - 1, G + L, M(i[G](m(i, G + 1, G + L)))
                  c(b, 1, P, G, i)
                end
              elseif x < 54 then
                if R then
                  for v in r, R, nil do
                    if R then
                      local V = R[v]
                      if V then
                        V[4] = V
                        V[6] = i[v]
                        V[7] = 6
                        R[v] = nil
                      end
                    end
                  end
                end
                return i[_[O]](i[l[O]], i[k[O]])
              elseif x == 55 then
                i[l[O]][F[O]] = i[k[O]]
              else
                G, L, P = _[O], l[O], k[O]
                n = ((G < 2097152) and 7) or 14
                t, b = H(G, z(1, n) - 1), N(G, n)
                k[O] = u:YM((S(u:YM(P), 30) + u:kM(3139554381, 4294967295)) + (u:kM(1155412915, 30) + u:kM(1155412915, (e(30)))))
                local v, V, w = l, u:YM(L), u:YM(G)
                v[O] = u:YM((S(V, 86) + u:kM(246505247, 4294967295)) + (u:kM(4048462049, w) + u:kM(4048462049, (e(w)))))
                w, v = _, u:YM(t)
                w[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, v)) + (u:kM(2147483648, 19) + u:kM(2147483647, (e((S(v, 19)))))))
                V, v, w = s, u:YM(b), u:YM(L)
                V[O] = u:YM((S(v, 89) + u:kM(281996032, 4294967295)) + (u:kM(4012971264, w) + u:kM(4012971264, (e(w)))))
                O -= 1
              end
            elseif x >= 65 then
              if x >= 70 then
                if x < 72 then
                  if x ~= 71 then
                    i[k[O]] = i[_[O]] >= i[l[O]]
                  else
                    i[l[O]] = i[_[O]] / A[O]
                  end
                elseif x < 73 then
                  i[k[O]] = i[l[O]] % F[O]
                elseif x == 74 then
                  i[k[O]] = i[_[O]](i[l[O]])
                else
                  X, I, J, C = C[9], C[8], C[5], C[6]
                end
              elseif x >= 67 then
                if x >= 68 then
                  if x ~= 69 then
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return i[k[O]](i[l[O]], F[O])
                  else
                    if R then
                      for v in r, R, nil do
                        if R then
                          local V = R[v]
                          if V then
                            V[4] = V
                            V[6] = i[v]
                            V[7] = 6
                            R[v] = nil
                          end
                        end
                      end
                    end
                    return i[l[O]]
                  end
                else
                  i[l[O]](A[O], i[_[O]])
                end
              elseif x ~= 66 then
                G, L = k[O], _[O]
                P = G + L
                n = i[P]
                t = n[g]
                if R then
                  for v in r, R, nil do
                    if R then
                      local V = R[v]
                      if V then
                        V[4] = V
                        V[6] = i[v]
                        V[7] = 6
                        R[v] = nil
                      end
                    end
                  end
                end
                n[g] = (L + t) - 1
                c(n, 1, t, L, n)
                c(i, G + 1, P - 1, 1, n)
                return i[G](m(n, 1, n[g]))
              else
                i[_[O]] = i[k[O]] + i[l[O]]
              end
            elseif x < 60 then
              if x >= 58 then
                if x == 59 then
                  O = if i[_[O]] <= l[O] then k[O] else O
                else
                  i[_[O]][i[l[O]]] = A[O]
                end
              elseif x == 57 then
                i[k[O]] = i[l[O]]
              else
                i[_[O]][k[O]] = l[O]
              end
            elseif x >= 62 then
              if x >= 63 then
                if x == 64 then
                  i[l[O]] = i[_[O]] ~= k[O]
                else
                  O = if i[_[O]] < l[O] then k[O] else O
                end
              else
                G = U[l[O]]
                G[4][G[7]] = F[O]
              end
            elseif x == 61 then
              i[l[O]] = k[O] * i[_[O]]
            else
              G, L, P = l[O], _[O], k[O]
              n = G + L
              i[G] = M(i[G](m(i, G + 1, n)))
            end
            O += 1
          end
        end
        if Y == 242 then
          while true do
            local v, x = k[O]
            if v >= 76 then
              if v < 114 then
                if v < 95 then
                  if v >= 85 then
                    if v < 90 then
                      if v >= 87 then
                        if v < 88 then
                          G = U[_[O]]
                          G[4][G[7]] = i[s[O]]
                        elseif v ~= 89 then
                          i[_[O]] = i[l[O]] / i[s[O]]
                        else
                          if R then
                            for V in r, R, nil do
                              if R then
                                local w = R[V]
                                if w then
                                  w[4] = w
                                  w[6] = i[V]
                                  w[7] = 6
                                  R[V] = nil
                                end
                              end
                            end
                          end
                          return i[_[O]](i[l[O]], i[s[O]])
                        end
                      elseif v == 86 then
                        i[l[O]][i[s[O]]] = i[_[O]]
                      else
                        i[_[O]] = i[l[O]] > s[O]
                      end
                    elseif v < 92 then
                      if v == 91 then
                        i[l[O]] = _[O] + i[s[O]]
                      else
                        G, L, P = _[O], l[O], s[O]
                        n = ((G < 2097152) and 7) or 14
                        t, b = H(G, z(1, n) - 1), N(G, n)
                        local V, w = l, u:YM(L)
                        V[O] = u:YM((u:kM(2235585072, w) + u:kM(2235585072, 41)) + (u:kM(4118764448, (H(w, 41))) + u:kM(2059382225, (S(w, 41)))))
                        w, V = _, u:YM(t)
                        w[O] = u:YM((u:kM(460846009, V) + u:kM(460846009, 94)) + (u:kM(3373275278, (H(V, 94))) + u:kM(3834121288, (S(V, 94)))))
                        w, V = s, u:YM(P)
                        w[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, V)) + (u:kM(2147483648, 84) + u:kM(2147483647, (e((S(V, 84)))))))
                        local V, w, Z = k, u:YM(b), u:YM(O)
                        V[O] = u:YM((u:kM(3114520398, 4294967295) + u:kM(4294967295, (e((S(w, 106)))))) + (u:kM(1180446899, Z) + u:kM(1180446899, (e(Z)))))
                        O -= 1
                      end
                    elseif v >= 93 then
                      if v == 94 then
                        G = F[O]
                        local V, w = o[O], U
                        local Z = (V and (#V / 2)) or 0
                        local E, d = (Z > 0) and {}
                        if E then
                          d = R
                          for h = 1, Z, 1 do
                            local Z = (h - 1) * 2
                            local uu, Uu = V[Z + 1], V[Z + 2]
                            if uu == 3 then
                              d = if not d then {} else d
                              local V, Z = d[Uu]
                              if not V then
                                V = {[7] = Uu, [4] = i}
                                d[Uu] = V
                                Z = V
                              else
                                Z = V
                              end
                              E[h] = Z
                            elseif uu == 0 then
                              E[h] = i[Uu]
                            elseif uu == 1 then
                              E[h] = {[7] = Uu, [4] = i}
                            elseif uu == 2 then
                              E[h] = w[Uu]
                            end
                          end
                        else
                          d = R
                        end
                        P = u[G[G[4]]](u, nil, nil, E, G)
                        y(P, a)
                        i[s[O]] = P
                        R, L = d, E
                      else
                        local V = l[O]
                        if R then
                          local w = R[V]
                          if w then
                            w[4] = w
                            w[6] = i[V]
                            w[7] = 6
                            R[V] = nil
                          end
                        end
                      end
                    else
                      i[_[O]] = o[O]
                    end
                  elseif v < 80 then
                    if v >= 78 then
                      if v == 79 then
                        G = U[_[O]]
                        i[s[O]] = G[4][G[7]][l[O]]
                      else
                        i[s[O]] = -i[l[O]]
                      end
                    elseif v ~= 77 then
                      O = i[s[O]]
                    else
                      i[_[O]] = i[l[O]] ~= j[O]
                    end
                  elseif v < 82 then
                    if v ~= 81 then
                      G, L, P = s[O], l[O], _[O]
                      n, t = i[G], G + L
                      b = i[t]
                      c(i, G + 1, t - 1, P + 1, n)
                      c(b, 1, b[g], P + L, n)
                    else
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return F[O]
                    end
                  elseif v < 83 then
                    i[s[O]] = T(l[O])
                  elseif v == 84 then
                    i[l[O]] = i[_[O]] <= s[O]
                  else
                    U[_[O]][o[O]] = j[O]
                  end
                elseif v < 104 then
                  if v >= 99 then
                    if v < 101 then
                      if v ~= 100 then
                        i[s[O]] = i[_[O]] > i[l[O]]
                      else
                        i[l[O]] = j[O] .. i[_[O]]
                      end
                    elseif v >= 102 then
                      if v == 103 then
                        i[s[O]] = Q
                      else
                        O = if not (i[_[O]] <= s[O]) then l[O] else O
                      end
                    else
                      i[s[O]] = i[l[O]][i[_[O]]]
                    end
                  elseif v < 97 then
                    if v == 96 then
                      G = l[O]
                      P = G + s[O]
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return i[G](m(i, G + 1, P))
                    else
                      U[_[O]][j[O]] = i[l[O]]
                    end
                  elseif v == 98 then
                    i[_[O]] = i[s[O]][o[O]]
                  else
                    i[s[O]] = S(i[l[O]], _[O])
                  end
                elseif v >= 109 then
                  if v < 111 then
                    if v == 110 then
                      G, L, P = l[O], s[O], _[O]
                      n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                      t, b = H(P, z(1, n) - 1), N(P, n)
                      local V, w, Z = l, u:YM(G), u:YM(b)
                      V[O] = u:YM((S(w, 74) + u:kM(2147483648, w)) + (u:kM(2147483648, Z) + u:kM(2147483648, (S(w, Z)))))
                      w, Z, V = _, u:YM(t), u:YM(P)
                      w[O] = u:YM((S(Z, 0) + u:kM(1277474150, 4294967295)) + (u:kM(3017493146, V) + u:kM(3017493146, (e(V)))))
                      s[O] = u:YM((S(u:YM(L), 1) + u:kM(32384029, 4294967295)) + (u:kM(4262583267, 1) + u:kM(4262583267, (e(1)))))
                      V, Z, w = k, u:YM(b), u:YM(O)
                      V[O] = u:YM((S(Z, 46) + u:kM(670559427, 4294967295)) + (u:kM(3624407869, w) + u:kM(3624407869, (e(w)))))
                      O -= 1
                    else
                      i[s[O]] = i[_[O]] >= i[l[O]]
                    end
                  elseif v < 112 then
                    O = if s[O] < i[_[O]] then l[O] else O
                  elseif v == 113 then
                    X += J
                    G = if J <= 0 then X >= I else X <= I
                    if G then
                      i[l[O]] = X
                      O = _[O]
                    end
                  else
                    O = if i[s[O]] == i[_[O]] then l[O] else O
                  end
                elseif v >= 106 then
                  if v >= 107 then
                    if v ~= 108 then
                      i[s[O]]()
                    else
                      i[s[O]] = i[_[O]][l[O]]
                    end
                  else
                    i[l[O]] = i[s[O]] >= _[O]
                  end
                elseif v == 105 then
                  G, L, P = l[O], _[O], s[O]
                  n = G + L
                  t = i[n]
                  b = t[g]
                  W = (L + b) - 1
                  t[g] = W
                  c(t, 1, b, L, t)
                  c(i, G + 1, n - 1, 1, t)
                  i[G] = M(i[G](m(t, 1, t[g])))
                else
                  x = C
                  C, G = {[6] = x, [5] = J, [8] = I, [9] = X}, s[O]
                  J, I = i[G + 2] + 0, i[G + 1] + 0
                  X, O = i[G] - J, _[O]
                end
              elseif v >= 133 then
                if v >= 142 then
                  if v < 147 then
                    if v >= 144 then
                      if v >= 145 then
                        if v ~= 146 then
                          i[_[O]] = S(i[s[O]], i[l[O]])
                        else
                          G, L, P = s[O], _[O], l[O]
                          n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                          t, b = H(P, z(1, n) - 1), N(P, n)
                          local V, w = l, u:YM(t)
                          V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 26) + u:kM(2147483647, (e((S(w, 26)))))))
                          w, V = _, u:YM(L)
                          w[O] = u:YM((S(V, 58) + u:kM(562331055, 4294967295)) + (u:kM(3732636241, V) + u:kM(3732636241, (e(V)))))
                          V, w = s, u:YM(G)
                          V[O] = u:YM((S(w, 57) + u:kM(1470010749, 4294967295)) + (u:kM(2824956547, w) + u:kM(2824956547, (e(w)))))
                          V, w = k, u:YM(b)
                          V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 105) + u:kM(2147483647, (e((S(w, 105)))))))
                          O -= 1
                        end
                      else
                        i[s[O]] = l[O]
                        i[s[O + 1]] = l[O + 1]
                        O += 1
                      end
                    elseif v == 143 then
                      i[s[O]] = i[l[O]] + i[_[O]]
                    else
                      i[_[O]] = i[s[O]] .. o[O]
                    end
                  elseif v < 149 then
                    if v == 148 then
                      i[_[O]] = U[s[O]]
                    else
                      G = s[O]
                      L, P, n = i[G], i[G + 1], i[G + 2]
                      i[G] = L(P, n)
                    end
                  elseif v < 150 then
                    i[s[O]] = i[l[O]] == _[O]
                  elseif v ~= 151 then
                    i[s[O]] = i[l[O]] % _[O]
                  else
                    O = if i[_[O]] == l[O] then s[O] else O
                  end
                elseif v >= 137 then
                  if v < 139 then
                    if v ~= 138 then
                      G, L = _[O], i[s[O]]
                      i[G + 1] = L
                      i[G] = L[o[O]]
                    else
                      i[s[O]] = i[l[O]] == i[_[O]]
                    end
                  elseif v >= 140 then
                    if v == 141 then
                      O = if not (i[s[O]] < i[_[O]]) then l[O] else O
                    else
                      i[_[O]] = i[s[O]](o[O])
                    end
                  else
                    i[l[O]] = M(i[s[O]](i[_[O]]))
                  end
                elseif v >= 135 then
                  if v ~= 136 then
                    O = if not (j[O] < i[l[O]]) then _[O] else O
                  else
                    i[_[O]] = i[l[O]] <= i[s[O]]
                  end
                elseif v ~= 134 then
                  i[s[O]] = i[l[O]] .. i[_[O]]
                else
                  G = U[s[O]]
                  i[_[O]] = G[4][G[7]]
                end
              elseif v < 123 then
                if v >= 118 then
                  if v < 120 then
                    if v == 119 then
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return i[_[O]](i[s[O]])
                    else
                      i[l[O]] = i[_[O]] < j[O]
                    end
                  elseif v < 121 then
                    i[s[O]] = i[_[O]] / o[O]
                  elseif v ~= 122 then
                    if R then
                      for V in r, R, nil do
                        if R then
                          local w = R[V]
                          if w then
                            w[4] = w
                            w[6] = i[V]
                            w[7] = 6
                            R[V] = nil
                          end
                        end
                      end
                    end
                    return i[l[O]]
                  else
                    i[_[O]](m(i[l[O]], 1, i[l[O]][g]))
                  end
                elseif v >= 116 then
                  if v ~= 117 then
                    i[l[O]] = i[_[O]] ~= i[s[O]]
                  else
                    i[s[O]] = U[l[O]][F[O]]
                  end
                elseif v == 115 then
                  G, L, P = s[O], _[O], l[O]
                  n, t = (G + P) - 1, G + L
                  b = i[t]
                  W = b[g]
                  q = (L + W) - 1
                  b[g] = q
                  c(b, 1, W, L, b)
                  c(i, G + 1, t - 1, 1, b)
                  W = M(i[G](m(b, 1, b[g])))
                  c(W, 1, P, G, i)
                else
                  i[s[O]] = i[_[O]] * i[l[O]]
                end
              elseif v < 128 then
                if v >= 125 then
                  if v >= 126 then
                    if v ~= 127 then
                      O = if i[l[O]] < s[O] then _[O] else O
                    else
                      i[s[O]](i[_[O]], m(i[l[O]], 1, i[l[O]][g]))
                    end
                  else
                    O = l[O]
                  end
                elseif v == 124 then
                  i[s[O]][_[O]] = i[l[O]]
                else
                  i[s[O]] = i[l[O]] * _[O]
                end
              elseif v >= 130 then
                if v < 131 then
                  G = U[s[O]]
                  G[4][G[7]] = F[O]
                elseif v == 132 then
                  if R then
                    for V in r, R, nil do
                      if R then
                        local w = R[V]
                        if w then
                          w[4] = w
                          w[6] = i[V]
                          w[7] = 6
                          R[V] = nil
                        end
                      end
                    end
                  end
                  return i[_[O]], j[O]
                else
                  i[_[O]] = i[l[O]] ^ s[O]
                end
              elseif v == 129 then
                O = if i[s[O]] then _[O] else l[O]
              else
                G = l[O] + 1
                for V = 1, s[O], 1 do
                  L = H(S(_[O], V), 127)
                  l[G] = S(l[G], L)
                  _[G] = S(_[G], L)
                  s[G] = S(s[G], L)
                  k[G] = S(k[G], L)
                  G += 1
                end
                k[O] = 11
              end
            elseif v >= 38 then
              if v >= 57 then
                if v < 66 then
                  if v < 61 then
                    if v < 59 then
                      if v ~= 58 then
                        i[_[O]] = i[l[O]]()
                      else
                        O = if i[l[O]] ~= j[O] then _[O] else O
                      end
                    elseif v == 60 then
                      i[l[O]] = s[O] ^ i[_[O]]
                    else
                      i[l[O]] = i[s[O]] % F[O]
                    end
                  elseif v >= 63 then
                    if v < 64 then
                      G = U[l[O]]
                      G[4][G[7]][j[O]] = i[_[O]]
                    elseif v ~= 65 then
                      O = if i[l[O]] < i[s[O]] then _[O] else O
                    else
                      i[s[O]] = o[O] + F[O]
                    end
                  elseif v == 62 then
                    i[_[O]] = i[s[O]] - i[l[O]]
                  else
                    i[_[O]] = u[s[O]]
                  end
                elseif v < 71 then
                  if v >= 68 then
                    if v < 69 then
                      G, L, P = s[O], _[O], l[O]
                      n = G + L
                      i[G] = M(i[G](m(i, G + 1, n)))
                    elseif v ~= 70 then
                      i[_[O]] = i[l[O]] % i[s[O]]
                    else
                      i[_[O]] = U[s[O]]
                      i[s[O + 1]] = l[O + 1]
                      O += 1
                    end
                  elseif v ~= 67 then
                    i[_[O]] = i[l[O]] / s[O]
                  else
                    i[s[O]] = i[_[O]] + o[O]
                  end
                elseif v < 73 then
                  if v ~= 72 then
                    i[_[O]][l[O]] = s[O]
                  else
                    i[_[O]] = i[s[O]] <= o[O]
                  end
                elseif v < 74 then
                  O = if i[s[O]] == F[O] then l[O] else O
                elseif v == 75 then
                  i[_[O]](i[l[O]], j[O])
                else
                  G, L, P = _[O], l[O], s[O]
                  n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                  t, b = H(P, z(1, n) - 1), N(P, n)
                  local V, w = l, u:YM(L)
                  V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 25) + u:kM(2147483647, (e((S(w, 25)))))))
                  local Z, E, d = _, u:YM(G), u:YM(b)
                  Z[O] = u:YM((S(E, 12) + u:kM(738287628, 4294967295)) + (u:kM(3556679668, d) + u:kM(3556679668, (e(d)))))
                  d, Z, E = s, u:YM(t), u:YM(n)
                  d[O] = u:YM((S(Z, 8) + u:kM(2147483648, 8)) + (u:kM(2147483648, E) + u:kM(2147483648, (S(8, E)))))
                  V, w, E = k, u:YM(b), u:YM(t)
                  V[O] = u:YM((u:kM(2473556215, 4294967295) + u:kM(4294967295, (e((S(w, 17)))))) + (u:kM(1821411082, E) + u:kM(1821411082, (e(E)))))
                  O -= 1
                end
              elseif v < 47 then
                if v < 42 then
                  if v < 40 then
                    if v == 39 then
                      G = U[l[O]]
                      i[_[O]] = G[4][G[7]][i[s[O]]]
                    else
                      i[l[O]] = i[_[O]](i[s[O]])
                    end
                  elseif v ~= 41 then
                    i[_[O]] = not i[l[O]]
                  else
                    i[l[O]][j[O]] = _[O]
                  end
                elseif v >= 44 then
                  if v < 45 then
                    i[_[O]] = i[l[O]] < i[s[O]]
                  elseif v == 46 then
                    i[l[O]] = s[O] * i[_[O]]
                  else
                    i[s[O]] = #i[l[O]]
                  end
                elseif v == 43 then
                  i[_[O]] = l[O] - i[s[O]]
                else
                  i[s[O]] = l[O]
                end
              elseif v < 52 then
                if v >= 49 then
                  if v < 50 then
                    x = C
                    C, G, L = {[6] = x, [5] = J, [8] = I, [9] = X}, l[O], p(f)
                    L(u, i[G], i[G + 1], i[G + 2])
                    O, X = _[O], L
                  elseif v ~= 51 then
                    G = U[_[O]]
                    i[s[O]] = G[4][G[7]][o[O]]
                  else
                    G, L, P = _[O], l[O], s[O]
                    n, t, b = (G + P) - 1, G + L, M(i[G](m(i, G + 1, G + L)))
                    c(b, 1, P, G, i)
                  end
                elseif v == 48 then
                  O = if not (_[O] < i[s[O]]) then l[O] else O
                else
                  i[_[O]](o[O], i[s[O]])
                end
              elseif v < 54 then
                if v ~= 53 then
                  if R then
                    for x in r, R, nil do
                      if R then
                        local V = R[x]
                        if V then
                          V[4] = V
                          V[6] = i[x]
                          V[7] = 6
                          R[x] = nil
                        end
                      end
                    end
                  end
                  return i[l[O]](i[_[O]], j[O])
                else
                  i[l[O]] = i[_[O]] < s[O]
                end
              elseif v < 55 then
                i[_[O]] = i[s[O]](m(i[l[O]], 1, i[l[O]][g]))
              elseif v ~= 56 then
                i[s[O]][i[l[O]]] = F[O]
              else
                X, I, J, C = C[9], C[8], C[5], C[6]
              end
            elseif v >= 19 then
              if v < 28 then
                if v < 23 then
                  if v < 21 then
                    if v ~= 20 then
                      i[_[O] + i[l[O]]] = i[s[O]]
                    else
                      i[l[O]] = a[F[O]]
                    end
                  elseif v ~= 22 then
                    G, L, P = s[O], _[O], l[O]
                    n = ((P < 2097152) and 7) or 14
                    t, b = H(P, z(1, n) - 1), N(P, n)
                    local x, V = l, u:YM(t)
                    x[O] = u:YM((u:kM(2064115425, V) + u:kM(2064115425, 91)) + (u:kM(166736446, (H(V, 91))) + u:kM(2230851872, (S(V, 91)))))
                    V, x = _, u:YM(L)
                    V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, x)) + (u:kM(2147483648, 123) + u:kM(2147483647, (e((S(x, 123)))))))
                    local V, w, Z = s, u:YM(G), u:YM(n)
                    V[O] = u:YM((S(w, 52) + u:kM(452115366, 4294967295)) + (u:kM(3842851930, Z) + u:kM(3842851930, (e(Z)))))
                    V, x, w = k, u:YM(b), u:YM(n)
                    V[O] = u:YM((S(x, 50) + u:kM(656189761, 4294967295)) + (u:kM(3638777535, w) + u:kM(3638777535, (e(w)))))
                    O -= 1
                  else
                    Y, O = l[O], _[O] + 1
                    break
                  end
                elseif v < 25 then
                  if v == 24 then
                    i[_[O]] = i[s[O]]
                  else
                    O = if not (i[l[O]] <= i[s[O]]) then _[O] else O
                  end
                elseif v < 26 then
                  G = U[l[O]]
                  G[4][G[7]][i[_[O]]] = i[s[O]]
                elseif v == 27 then
                  i[s[O]] = i[_[O]] * o[O]
                else
                  i[l[O]](i[_[O]], i[s[O]])
                end
              elseif v < 33 then
                if v < 30 then
                  if v ~= 29 then
                    local x, V, w = Q, _[O], s[O]
                    local Z = x[x[2]]
                    x = Z[4]
                    local E = S(x[V], 27730616)
                    x[V] = E
                    x, V = Z[7], E + 1
                    E = K(x, V)
                    local d, h
                    if E < 128 then
                      d, h = E, V + 1
                    else
                      Z = K(x, V + 1)
                      if Z < 128 then
                        d, h = ((E - 128) * 128) + Z, V + 2
                      else
                        local uu = K(x, V + 2)
                        if uu < 128 then
                          d, h = ((E - 128) + ((Z - 128) * 16384)) + (uu * 128), V + 3
                        else
                          local Uu = K(x, V + 3)
                          d, h = (((((E - 128) * 128) + ((Z - 128) * 2097152)) + (uu - 128)) + ((Uu % 128) * 16384)) + ((Uu - (Uu % 128)) * 2097152), V + 4
                        end
                      end
                    end
                    for V = h, (h + d) - 1, 1 do
                      B(x, V, (S(K(x, V), w)))
                    end
                    _[O], s[O], l[O], k[O] = 132, 63, 54, 11
                  else
                    i[_[O]][o[O]] = i[s[O]]
                  end
                elseif v < 31 then
                  O = if not (i[s[O]] < _[O]) then l[O] else O
                elseif v == 32 then
                  G, L, P = l[O], s[O], _[O]
                  n = ((L < 2097152) and 7) or 14
                  t, b = H(L, z(1, n) - 1), N(L, n)
                  local x, V = l, u:YM(G)
                  x[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, V)) + (u:kM(2147483648, 61) + u:kM(2147483647, (e((S(V, 61)))))))
                  local w, Z, E = _, u:YM(P), u:YM(O)
                  w[O] = u:YM((S(Z, 66) + u:kM(32922167, 4294967295)) + (u:kM(4262045129, E) + u:kM(4262045129, (e(E)))))
                  x, w = s, u:YM(t)
                  x[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 59) + u:kM(2147483647, (e((S(w, 59)))))))
                  Z, E, V = k, u:YM(b), u:YM(O)
                  Z[O] = u:YM((S(E, 79) + u:kM(1260753927, 4294967295)) + (u:kM(3034213369, V) + u:kM(3034213369, (e(V)))))
                  O -= 1
                else
                  i[_[O]](j[O])
                end
              elseif v >= 35 then
                if v < 36 then
                  G, L, P = _[O], l[O], s[O]
                  n = i[G]
                  c(i, G + 1, G + L, P + 1, n)
                elseif v == 37 then
                  i[s[O]] = i[_[O]] ~= l[O]
                else
                  i[l[O]] = i[s[O]] + _[O]
                end
              elseif v == 34 then
                O = if i[s[O]] ~= _[O] then l[O] else O
              else
                i[l[O]][j[O]] = F[O]
              end
            elseif v < 9 then
              if v < 4 then
                if v >= 2 then
                  if v == 3 then
                    if R then
                      for x in r, R, nil do
                        if R then
                          local V = R[x]
                          if V then
                            V[4] = V
                            V[6] = i[x]
                            V[7] = 6
                            R[x] = nil
                          end
                        end
                      end
                    end
                    return i[s[O]], i[_[O]]
                  else
                    O = if i[l[O]] ~= i[_[O]] then s[O] else O
                  end
                elseif v ~= 1 then
                  U[s[O]][i[_[O]]] = i[l[O]]
                else
                  i[l[O]] = M(i[s[O]]())
                end
              elseif v >= 6 then
                if v < 7 then
                  i[_[O]] = l[O] < i[s[O]]
                elseif v ~= 8 then
                  i[l[O]](i[s[O]])
                else
                  a[j[O]] = i[_[O]]
                end
              elseif v == 5 then
                i[l[O]] = i[s[O]] == F[O]
              else
                for x = s[O], _[O], 1 do
                  i[x] = nil
                end
              end
            elseif v >= 14 then
              if v < 16 then
                if v == 15 then
                  i[l[O]] = {}
                else
                  G, L, P, n = l[O], X()
                  if L then
                    i[G + 1] = P
                    i[G + 2] = n
                    O = s[O]
                  end
                end
              elseif v >= 17 then
                if v == 18 then
                  if R then
                    for x in r, R, nil do
                      if R then
                        local V = R[x]
                        if V then
                          V[4] = V
                          V[6] = i[x]
                          V[7] = 6
                          R[x] = nil
                        end
                      end
                    end
                  end
                  return
                else
                  i[_[O]] = s[O] >= i[l[O]]
                end
              else
                i[l[O]] = i[s[O]] - F[O]
              end
            elseif v >= 11 then
              if not (v < 12) then
                if v == 13 then
                  O = if i[_[O]] <= l[O] then s[O] else O
                else
                  i[l[O]] = i[s[O]] - _[O]
                end
              end
            elseif v ~= 10 then
              G = i[s[O]]
              local v, x = o[O], U
              local V = (v and (#v / 2)) or 0
              local w, Z = (V > 0) and {}
              if w then
                Z = R
                for E = 1, V, 1 do
                  local V = (E - 1) * 2
                  local d, h = v[V + 1], v[V + 2]
                  if d == 3 then
                    Z = if not Z then {} else Z
                    local v, V = Z[h]
                    if not v then
                      v = {[7] = h, [4] = i}
                      Z[h] = v
                      V = v
                    else
                      V = v
                    end
                    w[E] = V
                  elseif d == 0 then
                    w[E] = i[h]
                  elseif d == 1 then
                    w[E] = {[7] = h, [4] = i}
                  elseif d == 2 then
                    w[E] = x[h]
                  end
                end
              else
                Z = R
              end
              P = u[G[G[4]]](u, nil, nil, w, G)
              y(P, a)
              i[_[O]] = P
              R, L = Z, w
            else
              i[l[O]] = U[_[O]][i[s[O]]]
            end
            O += 1
          end
        end
        if Y == 199 then
          while true do
            local v, x = _[O]
            if v >= 88 then
              if v >= 132 then
                if v < 154 then
                  if v < 143 then
                    if v < 137 then
                      if v >= 134 then
                        if v >= 135 then
                          if v == 136 then
                            i[s[O]][k[O]] = i[l[O]]
                          else
                            O = i[s[O]]
                          end
                        else
                          i[l[O]] = i[k[O]]()
                        end
                      elseif v ~= 133 then
                        G = U[l[O]]
                        G[4][G[7]][A[O]] = i[s[O]]
                      else
                        O = if i[k[O]] < s[O] then l[O] else O
                      end
                    elseif v < 140 then
                      if v >= 138 then
                        if v ~= 139 then
                          i[l[O]] = not i[s[O]]
                        else
                          O = if i[s[O]] == A[O] then l[O] else O
                        end
                      else
                        G = U[k[O]]
                        i[l[O]] = G[4][G[7]][s[O]]
                      end
                    elseif v < 141 then
                      i[l[O]] = i[s[O]][k[O]]
                    elseif v == 142 then
                      G, L, P = k[O], s[O], l[O]
                      n, t = (G + P) - 1, G + L
                      b = i[t]
                      W = b[g]
                      q = (L + W) - 1
                      b[g] = q
                      c(b, 1, W, L, b)
                      c(i, G + 1, t - 1, 1, b)
                      W = M(i[G](m(b, 1, b[g])))
                      c(W, 1, P, G, i)
                    else
                      i[l[O]] = i[k[O]](m(i[s[O]], 1, i[s[O]][g]))
                    end
                  elseif v >= 148 then
                    if v < 151 then
                      if v < 149 then
                        G, L, P = s[O], k[O], l[O]
                        n = ((L < 2097152) and 7) or 14
                        t, b = H(L, z(1, n) - 1), N(L, n)
                        local V, w, Z = l, u:YM(P), u:YM(b)
                        V[O] = u:YM((S(w, 48) + u:kM(387483387, 4294967295)) + (u:kM(3907483909, Z) + u:kM(3907483909, (e(Z)))))
                        Z, w = s, u:YM(G)
                        Z[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 50) + u:kM(2147483647, (e((S(w, 50)))))))
                        w, V = k, u:YM(t)
                        w[O] = u:YM((S(V, 55) + u:kM(1821305641, 4294967295)) + (u:kM(2473661655, V) + u:kM(2473661655, (e(V)))))
                        w, Z, V = _, u:YM(b), u:YM(P)
                        w[O] = u:YM((S(Z, 48) + u:kM(244079573, 4294967295)) + (u:kM(4050887723, V) + u:kM(4050887723, (e(V)))))
                        O -= 1
                      elseif v == 150 then
                        i[l[O]] = k[O] <= i[s[O]]
                      else
                        G = i[s[O]]
                        i[l[O]] = M(m(G, k[O], G.n))
                      end
                    elseif v >= 152 then
                      if v ~= 153 then
                        i[s[O]] = l[O] * i[k[O]]
                      else
                        i[l[O]] = s[O]
                        i[l[O + 1]] = s[O + 1]
                        O += 1
                      end
                    else
                      O = if i[s[O]] <= l[O] then k[O] else O
                    end
                  elseif v >= 145 then
                    if v < 146 then
                      i[k[O]] = U[l[O]][j[O]]
                    elseif v ~= 147 then
                      i[s[O]] = o[O] .. i[k[O]]
                    else
                      i[s[O]] = H(i[k[O]], i[l[O]])
                    end
                  elseif v ~= 144 then
                    i[l[O]][i[k[O]]] = s[O]
                  else
                    i[k[O]] = i[s[O]] - i[l[O]]
                  end
                elseif v >= 165 then
                  if v < 171 then
                    if v < 168 then
                      if v < 166 then
                        x = C
                        C, G = {[6] = x, [5] = J, [8] = I, [9] = X}, k[O]
                        J, I = i[G + 2] + 0, i[G + 1] + 0
                        X, O = i[G] - J, s[O]
                      elseif v ~= 167 then
                        O = if i[l[O]] then s[O] else k[O]
                      else
                        i[s[O]] = i[l[O]] + i[k[O]]
                      end
                    elseif v < 169 then
                      X += J
                      G = if J <= 0 then X >= I else X <= I
                      if G then
                        i[k[O]] = X
                        O = s[O]
                      end
                    elseif v ~= 170 then
                      i[s[O]] = i[k[O]] >= i[l[O]]
                    else
                      i[k[O]] = S(i[s[O]], o[O])
                    end
                  elseif v >= 174 then
                    if v < 175 then
                      G = l[O]
                      P = G + s[O]
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return i[G](m(i, G + 1, P))
                    elseif v ~= 176 then
                      G = l[O]
                      L, P, n, t = i[G], i[G + 1], i[G + 2], i[G + 3]
                      i[G] = L(P, n, t)
                    else
                      i[k[O]](i[s[O]], o[O])
                    end
                  elseif v >= 172 then
                    if v == 173 then
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return i[s[O]](i[k[O]], o[O])
                    else
                      i[s[O]] = U[l[O]]
                      i[l[O + 1]] = s[O + 1]
                      O += 1
                    end
                  else
                    i[s[O]] = i[k[O]] > l[O]
                  end
                elseif v < 159 then
                  if v < 156 then
                    if v ~= 155 then
                      i[s[O]] = N(i[l[O]], k[O])
                    else
                      local V, w, Z = l[O], i[k[O]], s[O]
                      local E, d = H(w, 4294967295), H(Z, 4294967295)
                      local w, Z, h, uu = H(E, 65535), N(E, 16), H(d, 65535), N(d, 16)
                      i[V] = H((w * h) + z(H((w * uu) + (Z * h), 65535), 16), 4294967295) % 4294967296
                    end
                  elseif v >= 157 then
                    if v == 158 then
                      i[l[O]] = M(i[s[O]](i[k[O]]))
                    else
                      i[l[O]] = #i[s[O]]
                    end
                  else
                    G, L, P = k[O], s[O], l[O]
                    n, t, b = (G + P) - 1, G + L, M(i[G](m(i, G + 1, G + L)))
                    c(b, 1, P, G, i)
                  end
                elseif v < 162 then
                  if v < 160 then
                    i[s[O]] = U[l[O]]
                  elseif v == 161 then
                    i[l[O]] = i[k[O]] .. j[O]
                  else
                    i[s[O]] = S(i[k[O]], l[O])
                  end
                elseif v >= 163 then
                  if v ~= 164 then
                    i[l[O]] = s[O] + i[k[O]]
                  else
                    i[s[O]] = i[l[O]] < A[O]
                  end
                else
                  G, L, P = s[O], k[O], l[O]
                  n = ((P < 2097152) and 7) or 14
                  t, b = H(P, z(1, n) - 1), N(P, n)
                  local V, w, Z = l, u:YM(t), u:YM(G)
                  V[O] = u:YM((S(w, 52) + u:kM(583345438, 4294967295)) + (u:kM(3711621858, Z) + u:kM(3711621858, (e(Z)))))
                  w, V, Z = s, u:YM(G), u:YM(t)
                  w[O] = u:YM((S(V, 75) + u:kM(257130871, 4294967295)) + (u:kM(4037836425, Z) + u:kM(4037836425, (e(Z)))))
                  V, w = k, u:YM(L)
                  V[O] = u:YM((u:kM(44677529, w) + u:kM(44677529, 7)) + (u:kM(4205612238, (D(w, 7))) + u:kM(44677530, (S(w, 7)))))
                  Z, w, V = _, u:YM(b), u:YM(L)
                  Z[O] = u:YM((S(w, 26) + u:kM(710490583, 4294967295)) + (u:kM(3584476713, V) + u:kM(3584476713, (e(V)))))
                  O -= 1
                end
              elseif v >= 110 then
                if v < 121 then
                  if v < 115 then
                    if v < 112 then
                      if v ~= 111 then
                        if R then
                          for V in r, R, nil do
                            if R then
                              local w = R[V]
                              if w then
                                w[4] = w
                                w[6] = i[V]
                                w[7] = 6
                                R[V] = nil
                              end
                            end
                          end
                        end
                        return i[k[O]](i[l[O]], i[s[O]])
                      else
                        i[s[O]] = A[O] + o[O]
                      end
                    elseif v >= 113 then
                      if v == 114 then
                        G, L, P = s[O], l[O], k[O]
                        n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                        t, b = H(P, z(1, n) - 1), N(P, n)
                        local V, w, Z = l, u:YM(L), u:YM(b)
                        V[O] = u:YM((S(w, 2) + u:kM(279256169, 4294967295)) + (u:kM(4015711127, Z) + u:kM(4015711127, (e(Z)))))
                        s[O] = u:YM((S(u:YM(G), 61) + u:kM(4222061133, 4294967295)) + (u:kM(72906163, 61) + u:kM(72906163, (e(61)))))
                        V, Z = k, u:YM(t)
                        V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Z)) + (u:kM(2147483648, 10) + u:kM(2147483647, (e((S(Z, 10)))))))
                        V, w, Z = _, u:YM(b), u:YM(n)
                        V[O] = u:YM((S(w, 100) + u:kM(2416698066, 4294967295)) + (u:kM(1878269230, Z) + u:kM(1878269230, (e(Z)))))
                        O -= 1
                      else
                        i[s[O]] = l[O] ^ i[k[O]]
                      end
                    else
                      i[s[O]] = D(i[l[O]], i[k[O]])
                    end
                  elseif v >= 118 then
                    if v < 119 then
                      i[l[O]](i[s[O]], m(i[k[O]], 1, i[k[O]][g]))
                    elseif v ~= 120 then
                      i[s[O]] = U[k[O]][i[l[O]]]
                    else
                      i[l[O]] = u[k[O]]
                    end
                  elseif v >= 116 then
                    if v ~= 117 then
                      i[k[O]] = S(j[O], i[l[O]])
                    else
                      i[s[O]] = {}
                    end
                  else
                    i[s[O]] = i[l[O]] == A[O]
                  end
                elseif v < 126 then
                  if v >= 123 then
                    if v >= 124 then
                      if v == 125 then
                        local V = l[O]
                        i[V], i[k[O]] = i[s[O]]()
                      else
                        i[s[O]]()
                      end
                    else
                      X, I, J, C = C[9], C[8], C[5], C[6]
                    end
                  elseif v == 122 then
                    O = if i[k[O]] < i[s[O]] then l[O] else O
                  else
                    local V = l[O]
                    if R then
                      local w = R[V]
                      if w then
                        w[4] = w
                        w[6] = i[V]
                        w[7] = 6
                        R[V] = nil
                      end
                    end
                  end
                elseif v >= 129 then
                  if v < 130 then
                    i[l[O]] = i[s[O]] % k[O]
                  elseif v == 131 then
                    G = U[k[O]]
                    i[l[O]] = G[4][G[7]][i[s[O]]]
                  else
                    local V, w, Z = k[O], s[O], i[l[O]]
                    local E, d = H(w, 4294967295), H(Z, 4294967295)
                    local w, Z, h, uu = H(E, 65535), N(E, 16), H(d, 65535), N(d, 16)
                    i[V] = H((w * h) + z(H((w * uu) + (Z * h), 65535), 16), 4294967295) % 4294967296
                  end
                elseif v < 127 then
                  i[k[O]] = H(i[s[O]], o[O])
                elseif v ~= 128 then
                  i[l[O]] = i[s[O]] % A[O]
                else
                  i[k[O]][i[l[O]]] = i[s[O]]
                end
              elseif v >= 99 then
                if v < 104 then
                  if v >= 101 then
                    if v < 102 then
                      if R then
                        for V in r, R, nil do
                          if R then
                            local w = R[V]
                            if w then
                              w[4] = w
                              w[6] = i[V]
                              w[7] = 6
                              R[V] = nil
                            end
                          end
                        end
                      end
                      return A[O]
                    elseif v ~= 103 then
                      U[l[O]][j[O]] = k[O]
                    else
                      i[l[O]] = s[O]
                    end
                  elseif v == 100 then
                    i[s[O]][A[O]] = o[O]
                  else
                    O = if i[s[O]] == k[O] then l[O] else O
                  end
                elseif v >= 107 then
                  if v < 108 then
                    G, L, P = l[O], s[O], k[O]
                    n = G + L
                    i[G] = M(i[G](m(i, G + 1, n)))
                  elseif v ~= 109 then
                    G, L, P = l[O], k[O], s[O]
                    n = i[G]
                    c(i, G + 1, G + L, P + 1, n)
                  else
                    if R then
                      for V in r, R, nil do
                        if R then
                          local w = R[V]
                          if w then
                            w[4] = w
                            w[6] = i[V]
                            w[7] = 6
                            R[V] = nil
                          end
                        end
                      end
                    end
                    return i[s[O]](m(i[l[O]], 1, i[l[O]][g]))
                  end
                elseif v < 105 then
                  i[k[O]](o[O], m(i[s[O]], 1, i[s[O]][g]))
                elseif v == 106 then
                  i[s[O]] = i[k[O]] % 4294967296
                else
                  i[k[O]] = H(o[O], j[O])
                end
              elseif v < 93 then
                if v >= 90 then
                  if v < 91 then
                    G = U[s[O]]
                    G[4][G[7]] = A[O]
                  elseif v ~= 92 then
                    i[s[O]] = -i[k[O]]
                  else
                    i[l[O]] = i[k[O]] / i[s[O]]
                  end
                elseif v ~= 89 then
                  i[k[O]](j[O])
                else
                  i[k[O]] = i[l[O]] * s[O]
                end
              elseif v < 96 then
                if v >= 94 then
                  if v ~= 95 then
                    i[k[O]] = s[O] - i[l[O]]
                  else
                    i[s[O]] = i[k[O]] + l[O]
                  end
                else
                  u[s[O]] = i[l[O]]
                end
              elseif v < 97 then
                i[l[O]] = i[k[O]] % i[s[O]]
              elseif v == 98 then
                O = if not (l[O] < i[k[O]]) then s[O] else O
              else
                i[k[O]] = H(j[O], i[l[O]])
              end
            elseif v < 44 then
              if v < 22 then
                if v >= 11 then
                  if v >= 16 then
                    if v >= 19 then
                      if v < 20 then
                        i[l[O]] = i[s[O]] == i[k[O]]
                      elseif v == 21 then
                        i[s[O]] = i[k[O]] .. i[l[O]]
                      else
                        local V, w, Z = l[O], i[k[O]], i[s[O]]
                        local E, d = H(w, 4294967295), H(Z, 4294967295)
                        local w, Z, h, uu = H(E, 65535), N(E, 16), H(d, 65535), N(d, 16)
                        i[V] = H((w * h) + z(H((w * uu) + (Z * h), 65535), 16), 4294967295) % 4294967296
                      end
                    elseif v >= 17 then
                      if v == 18 then
                        i[s[O]] = A[O] % i[l[O]]
                      else
                        U[k[O]][j[O]] = i[l[O]]
                      end
                    else
                      O = if i[s[O]] < A[O] then l[O] else O
                    end
                  elseif v >= 13 then
                    if v >= 14 then
                      if v ~= 15 then
                        i[l[O]] = i[k[O]] ~= j[O]
                      else
                        i[k[O]] = i[l[O]] >= j[O]
                      end
                    else
                      i[k[O]](i[l[O]])
                    end
                  elseif v ~= 12 then
                    i[l[O]] = i[k[O]](i[s[O]])
                  else
                    i[s[O]](o[O], i[k[O]])
                  end
                elseif v < 5 then
                  if v < 2 then
                    if v == 1 then
                      i[s[O]][i[l[O]]] = A[O]
                    else
                      i[s[O]] = i[l[O]] * i[k[O]]
                    end
                  elseif v < 3 then
                    i[l[O]](i[k[O]], i[s[O]])
                  elseif v == 4 then
                    i[k[O]] = i[l[O]] * j[O]
                  else
                    i[k[O]] = i[l[O]] <= i[s[O]]
                  end
                elseif v < 8 then
                  if v < 6 then
                    i[s[O]] = i[l[O]](A[O])
                  elseif v ~= 7 then
                    if R then
                      for V in r, R, nil do
                        if R then
                          local w = R[V]
                          if w then
                            w[4] = w
                            w[6] = i[V]
                            w[7] = 6
                            R[V] = nil
                          end
                        end
                      end
                    end
                    return
                  else
                    i[s[O]] = z(i[l[O]], k[O])
                  end
                elseif v < 9 then
                  i[s[O]] = D(l[O], i[k[O]])
                elseif v ~= 10 then
                  G, L, P = k[O], s[O], l[O]
                  n = G + L
                  t = i[n]
                  b = t[g]
                  W = (L + b) - 1
                  t[g] = W
                  c(t, 1, b, L, t)
                  c(i, G + 1, n - 1, 1, t)
                  i[G] = M(i[G](m(t, 1, t.n)))
                else
                  i[l[O]] = u[A[O]]
                end
              elseif v >= 33 then
                if v >= 38 then
                  local V = O
                  if v < 41 then
                    if v < 39 then
                      i[l[V]] = i[s[V]] + A[V]
                    elseif v ~= 40 then
                      G = U[l[V]]
                      i[s[V]] = G[4][G[7]][A[V]]
                    else
                      G = j[V]
                      local w, Z = A[V], U
                      local E = (w and (#w / 2)) or 0
                      local d, h = (E > 0) and {}
                      if d then
                        h = R
                        for uu = 1, E, 1 do
                          local E = (uu - 1) * 2
                          local Uu, Qu = w[E + 1], w[E + 2]
                          if Uu == 3 then
                            h = if not h then {} else h
                            local w, E = h[Qu]
                            if not w then
                              w = {[7] = Qu, [4] = i}
                              h[Qu] = w
                              E = w
                            else
                              E = w
                            end
                            d[uu] = E
                          elseif Uu == 0 then
                            d[uu] = i[Qu]
                          elseif Uu == 1 then
                            d[uu] = {[7] = Qu, [4] = i}
                          elseif Uu == 2 then
                            d[uu] = Z[Qu]
                          end
                        end
                      else
                        h = R
                      end
                      P = u[G[G[4]]](u, nil, nil, d, G)
                      y(P, a)
                      i[l[V]] = P
                      L, R = d, h
                    end
                  elseif v >= 42 then
                    if v ~= 43 then
                      Y, O = l[V], s[V] + 1
                      break
                    else
                      G = U[l[V]]
                      i[k[V]] = G[4][G[7]]
                    end
                  else
                    i[s[V]](m(i[l[V]], 1, i[l[V]][g]))
                  end
                elseif v >= 35 then
                  if v >= 36 then
                    if v ~= 37 then
                      i[k[O]] = H(i[s[O]], l[O])
                    else
                      G, L, P = k[O], l[O], s[O]
                      n = ((P < 2097152) and 7) or 14
                      t, b = H(P, z(1, n) - 1), N(P, n)
                      local V, w = l, u:YM(L)
                      V[O] = u:YM((u:kM(604274511, w) + u:kM(604274511, 69)) + (u:kM(3086418274, (D(w, 69))) + u:kM(604274512, (S(w, 69)))))
                      V, w = s, u:YM(t)
                      V[O] = u:YM((u:kM(1827272569, w) + u:kM(1827272569, 84)) + (u:kM(640422158, (D(84, w))) + u:kM(1827272570, (S(w, 84)))))
                      V, w = k, u:YM(G)
                      V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, w)) + (u:kM(2147483648, 34) + u:kM(2147483647, (e((S(w, 34)))))))
                      local V, w, Z = _, u:YM(b), u:YM(t)
                      V[O] = u:YM((S(w, 63) + u:kM(963184174, 4294967295)) + (u:kM(3331783122, Z) + u:kM(3331783122, (e(Z)))))
                      O -= 1
                    end
                  else
                    if R then
                      for V in r, R, nil do
                        if R then
                          local w = R[V]
                          if w then
                            w[4] = w
                            w[6] = i[V]
                            w[7] = 6
                            R[V] = nil
                          end
                        end
                      end
                    end
                    return i[l[O]], i[s[O]]
                  end
                elseif v ~= 34 then
                  G = U[l[O]]
                  G[4][G[7]][i[s[O]]] = k[O]
                else
                  local V, w, Z = k[O], j[O], i[l[O]]
                  local E, d = H(w, 4294967295), H(Z, 4294967295)
                  local w, Z, h, uu = H(E, 65535), N(E, 16), H(d, 65535), N(d, 16)
                  i[V] = H((w * h) + z(H((w * uu) + (Z * h), 65535), 16), 4294967295) % 4294967296
                end
              elseif v >= 27 then
                if v < 30 then
                  if v >= 28 then
                    if v ~= 29 then
                      O = if not (i[s[O]] <= i[k[O]]) then l[O] else O
                    else
                      i[k[O]] = a[o[O]]
                    end
                  else
                    i[s[O]] = i[l[O]] / k[O]
                  end
                elseif v >= 31 then
                  if v == 32 then
                    G = k[O] + 1
                    for V = 1, s[O], 1 do
                      L = H(S(l[O], V), 127)
                      l[G] = S(l[G], L)
                      s[G] = S(s[G], L)
                      k[G] = S(k[G], L)
                      _[G] = S(_[G], L)
                      G += 1
                    end
                    _[O] = 62
                  else
                    O = if l[O] < i[k[O]] then s[O] else O
                  end
                else
                  O = if i[l[O]] == i[k[O]] then s[O] else O
                end
              elseif v < 24 then
                if v ~= 23 then
                  i[l[O]] = i[k[O]] - s[O]
                else
                  i[l[O]][A[O]] = s[O]
                end
              elseif v < 25 then
                i[l[O]] = i[k[O]] <= s[O]
              elseif v ~= 26 then
                G = s[O]
                L, P, n = i[G], i[G + 1], i[G + 2]
                i[G] = L(P, n)
              else
                G, L, P = s[O], k[O], l[O]
                n, t = i[G], G + L
                b = i[t]
                c(i, G + 1, t - 1, P + 1, n)
                c(b, 1, b[g], P + L, n)
              end
            elseif v < 66 then
              if v >= 55 then
                if v >= 60 then
                  if v >= 63 then
                    if v >= 64 then
                      if v ~= 65 then
                        i[l[O]][j[O]] = i[k[O]]
                      else
                        i[l[O]] = i[k[O]][i[s[O]]]
                      end
                    else
                      i[s[O]] = o[O]
                    end
                  elseif v < 61 then
                    i[l[O]] = u
                  elseif not (v == 62) then
                    i[l[O]] = i[k[O]] < i[s[O]]
                  end
                elseif v < 57 then
                  if v == 56 then
                    x = C
                    C, G, L = {[6] = x, [5] = J, [8] = I, [9] = X}, k[O], p(f)
                    L(u, i[G], i[G + 1], i[G + 2])
                    O, X = s[O], L
                  else
                    G, L, P = l[O], k[O], s[O]
                    n = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                    t, b = H(G, z(1, n) - 1), N(G, n)
                    local x, V = l, u:YM(t)
                    x[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, V)) + (u:kM(2147483648, 99) + u:kM(2147483647, (e((S(V, 99)))))))
                    V, x = s, u:YM(P)
                    V[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, x)) + (u:kM(2147483648, 67) + u:kM(2147483647, (e((S(x, 67)))))))
                    local x, V, w = k, u:YM(L), u:YM(b)
                    x[O] = u:YM((S(V, 90) + u:kM(517179273, 4294967295)) + (u:kM(3777788023, w) + u:kM(3777788023, (e(w)))))
                    w, V = _, u:YM(b)
                    w[O] = u:YM((u:kM(440339803, V) + u:kM(440339803, 63)) + (u:kM(3414287690, (D(63, V))) + u:kM(440339804, (S(V, 63)))))
                    O -= 1
                  end
                elseif v < 58 then
                  i[l[O]] = i[s[O]]
                  i[l[O + 1]] = s[O + 1]
                  O += 1
                elseif v ~= 59 then
                  i[s[O]] = i[k[O]][o[O]]
                else
                  O = if i[s[O]] ~= A[O] then l[O] else O
                end
              elseif v < 49 then
                if v < 46 then
                  if v ~= 45 then
                    O = l[O]
                  else
                    if R then
                      for D in r, R, nil do
                        if R then
                          local x = R[D]
                          if x then
                            x[4] = x
                            x[6] = i[D]
                            x[7] = 6
                            R[D] = nil
                          end
                        end
                      end
                    end
                    return i[s[O]]
                  end
                elseif v >= 47 then
                  if v == 48 then
                    U[l[O]][i[k[O]]] = i[s[O]]
                  else
                    if R then
                      for D in r, R, nil do
                        if R then
                          local x = R[D]
                          if x then
                            x[4] = x
                            x[6] = i[D]
                            x[7] = 6
                            R[D] = nil
                          end
                        end
                      end
                    end
                    return i[s[O]](i[k[O]])
                  end
                else
                  i[s[O]] = A[O] + i[l[O]]
                end
              elseif v >= 52 then
                if v < 53 then
                  local D, x, V = s[O], i[k[O]], o[O]
                  local w, Z = H(x, 4294967295), H(V, 4294967295)
                  local x, V, E, d = H(w, 65535), N(w, 16), H(Z, 65535), N(Z, 16)
                  i[D] = H((x * E) + z(H((x * d) + (V * E), 65535), 16), 4294967295) % 4294967296
                elseif v ~= 54 then
                  G, L, P = s[O], k[O], l[O]
                  n = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                  t, b = H(G, z(1, n) - 1), N(G, n)
                  local D, x = l, u:YM(P)
                  D[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, x)) + (u:kM(2147483648, 86) + u:kM(2147483647, (e((S(x, 86)))))))
                  local D, V, w = s, u:YM(t), u:YM(O)
                  D[O] = u:YM((S(V, 85) + u:kM(646386988, 4294967295)) + (u:kM(3648580308, w) + u:kM(3648580308, (e(w)))))
                  V, D = k, u:YM(L)
                  V[O] = u:YM((S(D, 16) + u:kM(759399134, 4294967295)) + (u:kM(3535568162, D) + u:kM(3535568162, (e(D)))))
                  x, D, w = _, u:YM(b), u:YM(L)
                  x[O] = u:YM((u:kM(862952968, 4294967295) + u:kM(4294967295, (e((S(D, 127)))))) + (u:kM(3432014329, w) + u:kM(3432014329, (e(w)))))
                  O -= 1
                else
                  local D, x, V = Q, l[O], s[O]
                  local w = D[D[2]]
                  D = w[4]
                  local Z = S(D[x], 27730616)
                  D[x] = Z
                  D, x = w[7], Z + 1
                  w = K(D, x)
                  local E, d
                  if w < 128 then
                    E, d = w, x + 1
                  else
                    Z = K(D, x + 1)
                    if Z < 128 then
                      E, d = ((w - 128) * 128) + Z, x + 2
                    else
                      local h = K(D, x + 2)
                      if h < 128 then
                        E, d = ((w - 128) + ((Z - 128) * 16384)) + (h * 128), x + 3
                      else
                        local uu = K(D, x + 3)
                        E, d = (((((w - 128) * 128) + ((Z - 128) * 2097152)) + (h - 128)) + ((uu % 128) * 16384)) + ((uu - (uu % 128)) * 2097152), x + 4
                      end
                    end
                  end
                  for x = d, (d + E) - 1, 1 do
                    B(D, x, (S(K(D, x), V)))
                  end
                  l[O], s[O], k[O], _[O] = 20, 39, 53, 62
                end
              elseif v < 50 then
                O = if not (i[l[O]] < i[k[O]]) then s[O] else O
              elseif v ~= 51 then
                i[l[O]] = k[O] / i[s[O]]
              else
                if R then
                  for D in r, R, nil do
                    if R then
                      local x = R[D]
                      if x then
                        x[4] = x
                        x[6] = i[D]
                        x[7] = 6
                        R[D] = nil
                      end
                    end
                  end
                end
                return i[l[O]], A[O]
              end
            elseif v >= 77 then
              if v < 82 then
                if v >= 79 then
                  if v < 80 then
                    if R then
                      for D in r, R, nil do
                        if R then
                          local x = R[D]
                          if x then
                            x[4] = x
                            x[6] = i[D]
                            x[7] = 6
                            R[D] = nil
                          end
                        end
                      end
                    end
                    return j[O], m(i[l[O]], 1, i[l[O]][g])
                  elseif v ~= 81 then
                    a[o[O]] = i[s[O]]
                  else
                    i[s[O]] = T(k[O])
                  end
                elseif v == 78 then
                  i[k[O]] = i[l[O]] == s[O]
                else
                  i[l[O]] = i[s[O]] ~= i[k[O]]
                end
              elseif v >= 85 then
                if v >= 86 then
                  if v == 87 then
                    i[l[O]] = i[s[O]]
                  else
                    G = U[s[O]]
                    G[4][G[7]] = i[k[O]]
                  end
                else
                  i[s[O]] = i[k[O]] < l[O]
                end
              elseif v >= 83 then
                if v == 84 then
                  i[l[O]] = i[k[O]] - j[O]
                else
                  i[l[O]] = S(i[s[O]], i[k[O]])
                end
              else
                i[l[O]] = M(i[k[O]](m(i[s[O]], 1, i[s[O]][g])))
              end
            elseif v >= 71 then
              if v >= 74 then
                if v >= 75 then
                  if v ~= 76 then
                    G, L, P, n = s[O], X()
                    if L then
                      i[G + 1] = P
                      i[G + 2] = n
                      O = l[O]
                    end
                  else
                    i[l[O]] = i[k[O]] ~= s[O]
                  end
                else
                  O = if i[k[O]] ~= i[s[O]] then l[O] else O
                end
              elseif v >= 72 then
                if v == 73 then
                  G, L = s[O], i[k[O]]
                  i[G + 1] = L
                  i[G] = L[o[O]]
                else
                  local D, x, V = l[O], j[O], A[O]
                  local w, Z = H(x, 4294967295), H(V, 4294967295)
                  local x, V, E, d = H(w, 65535), N(w, 16), H(Z, 65535), N(Z, 16)
                  i[D] = H((x * E) + z(H((x * d) + (V * E), 65535), 16), 4294967295) % 4294967296
                end
              else
                i[l[O]] = e(i[k[O]])
              end
            elseif v < 68 then
              if v == 67 then
                G = U[l[O]]
                G[4][G[7]][j[O]] = A[O]
              else
                i[s[O]] = i[l[O]] >= k[O]
              end
            elseif v >= 69 then
              if v == 70 then
                U[l[O]][j[O]] = A[O]
              else
                i[l[O]] = i[s[O]] > i[k[O]]
              end
            else
              i[l[O]] = i[s[O]] / A[O]
            end
            O += 1
          end
        end
        if Y == 136 then
          while true do
            local A, Y = k[O]
            if A < 77 then
              if A < 38 then
                if A < 19 then
                  if A < 9 then
                    if A >= 4 then
                      if A < 6 then
                        if A ~= 5 then
                          i[s[O]] = i[_[O]] * i[l[O]]
                        else
                          i[s[O]] = i[_[O]](m(i[l[O]], 1, i[l[O]][g]))
                        end
                      elseif A < 7 then
                        G = U[l[O]]
                        i[_[O]] = G[4][G[7]][j[O]]
                      elseif A == 8 then
                        G = U[s[O]]
                        i[_[O]] = G[4][G[7]][i[l[O]]]
                      else
                        i[_[O]] = u[s[O]]
                      end
                    elseif A >= 2 then
                      if A ~= 3 then
                        i[l[O]] = i[_[O]] + s[O]
                      else
                        i[s[O]] = i[l[O]][_[O]]
                      end
                    elseif A ~= 1 then
                      i[l[O]](j[O], i[_[O]])
                    else
                      if R then
                        for D in r, R, nil do
                          if R then
                            local v = R[D]
                            if v then
                              v[4] = v
                              v[6] = i[D]
                              v[7] = 6
                              R[D] = nil
                            end
                          end
                        end
                      end
                      return i[s[O]], m(i[_[O]], 1, i[_[O]][g])
                    end
                  elseif A >= 14 then
                    if A < 16 then
                      if A == 15 then
                        i[l[O]] = N(i[_[O]], s[O])
                      else
                        i[_[O] + i[l[O]]] = i[s[O]]
                      end
                    elseif A >= 17 then
                      if A == 18 then
                        G, L, P = _[O], l[O], s[O]
                        n = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                        t, b = H(G, z(1, n) - 1), N(G, n)
                        local D, v = s, u:YM(P)
                        D[O] = u:YM((u:kM(779078140, v) + 109) + (u:kM(4294967294, (H(v, 109))) + (u:kM(3515889157, 4294967295) + u:kM(779078139, (e(v))))))
                        local x, V, w = l, u:YM(L), u:YM(O)
                        x[O] = u:YM((S(V, 72) + u:kM(559461215, 4294967295)) + (u:kM(3735506081, w) + u:kM(3735506081, (e(w)))))
                        x, D = _, u:YM(t)
                        x[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, D)) + (u:kM(2147483648, 9) + u:kM(2147483647, (e((S(D, 9)))))))
                        v, V = k, u:YM(b)
                        v[O] = u:YM((S(V, 24) + u:kM(354060813, 4294967295)) + (u:kM(3940906483, V) + u:kM(3940906483, (e(V)))))
                        O -= 1
                      else
                        i[s[O]] = e(i[_[O]])
                      end
                    else
                      u[F[O]] = o[O]
                    end
                  elseif A >= 11 then
                    if A >= 12 then
                      if A == 13 then
                        i[_[O]] = U[l[O]]
                      else
                        i[_[O]] = i[s[O]] == o[O]
                      end
                    else
                      X += J
                      G = if J <= 0 then X >= I else X <= I
                      if G then
                        i[_[O]] = X
                        O = s[O]
                      end
                    end
                  elseif A == 10 then
                    a[o[O]] = i[s[O]]
                  else
                    i[l[O]] = i[s[O]] + i[_[O]]
                  end
                elseif A < 28 then
                  if A < 23 then
                    if A < 21 then
                      if A ~= 20 then
                        if R then
                          for D in r, R, nil do
                            if R then
                              local v = R[D]
                              if v then
                                v[4] = v
                                v[6] = i[D]
                                v[7] = 6
                                R[D] = nil
                              end
                            end
                          end
                        end
                        return i[_[O]](i[s[O]])
                      else
                        i[_[O]] = o[O]
                      end
                    elseif A ~= 22 then
                      i[l[O]] = i[s[O]] > _[O]
                    else
                      if R then
                        for D in r, R, nil do
                          if R then
                            local v = R[D]
                            if v then
                              v[4] = v
                              v[6] = i[D]
                              v[7] = 6
                              R[D] = nil
                            end
                          end
                        end
                      end
                      return i[l[O]]
                    end
                  elseif A >= 25 then
                    if A >= 26 then
                      if A == 27 then
                        G, L = l[O], s[O]
                        P = G + L
                        n = i[P]
                        t = n[g]
                        if R then
                          for D in r, R, nil do
                            if R then
                              local v = R[D]
                              if v then
                                v[4] = v
                                v[6] = i[D]
                                v[7] = 6
                                R[D] = nil
                              end
                            end
                          end
                        end
                        n[g] = (L + t) - 1
                        c(n, 1, t, L, n)
                        c(i, G + 1, P - 1, 1, n)
                        return i[G](m(n, 1, n[g]))
                      else
                        O = i[_[O]]
                      end
                    else
                      i[l[O]] = i[_[O]] ~= s[O]
                    end
                  elseif A == 24 then
                    i[_[O]] = u[o[O]]
                  else
                    G, L, P = s[O], l[O], _[O]
                    n, t, b = (G + P) - 1, G + L, M(i[G](m(i, G + 1, G + L)))
                    c(b, 1, P, G, i)
                  end
                elseif A < 33 then
                  if A >= 30 then
                    if A < 31 then
                      i[_[O]] = T(s[O])
                    elseif A ~= 32 then
                      i[_[O]] = i[s[O]][i[l[O]]]
                    else
                      i[_[O]] = u
                    end
                  elseif A == 29 then
                    local T = s[O]
                    if R then
                      local D = R[T]
                      if D then
                        D[4] = D
                        D[6] = i[T]
                        D[7] = 6
                        R[T] = nil
                      end
                    end
                  else
                    i[_[O]] = i[l[O]] * s[O]
                  end
                elseif A < 35 then
                  if A == 34 then
                    O = if _[O] < i[l[O]] then s[O] else O
                  else
                    i[s[O]] = i[l[O]] >= i[_[O]]
                  end
                elseif A >= 36 then
                  if A ~= 37 then
                    i[s[O]] = i[l[O]] <= _[O]
                  else
                    if R then
                      for T in r, R, nil do
                        if R then
                          local D = R[T]
                          if D then
                            D[4] = D
                            D[6] = i[T]
                            D[7] = 6
                            R[T] = nil
                          end
                        end
                      end
                    end
                    G = _[O]
                    return m(i, G, (G + s[O]) - 1)
                  end
                else
                  i[_[O]] = U[l[O]]
                  i[l[O + 1]] = s[O + 1]
                  O += 1
                end
              elseif A >= 57 then
                if A >= 67 then
                  if A < 72 then
                    if A < 69 then
                      if A == 68 then
                        G, L, P = _[O], s[O], l[O]
                        n = ((G < 2097152) and 7) or 14
                        t, b = H(G, z(1, n) - 1), N(G, n)
                        local T, D = s, u:YM(L)
                        T[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, D)) + (u:kM(2147483648, 9) + u:kM(2147483647, (e((S(D, 9)))))))
                        l[O] = u:YM((S(u:YM(P), 29) + u:kM(2559274949, 4294967295)) + (u:kM(1735692347, 29) + u:kM(1735692347, (e(29)))))
                        D, T = _, u:YM(t)
                        D[O] = u:YM((T + u:kM(414323397, 74)) + (u:kM(4294967294, (H(74, T))) + (u:kM(3880643900, 4294967295) + u:kM(414323396, (e(74))))))
                        D, T = k, u:YM(b)
                        D[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, T)) + (u:kM(2147483648, 94) + u:kM(2147483647, (e((S(T, 94)))))))
                        O -= 1
                      else
                        i[l[O]] = i[_[O]](i[s[O]])
                      end
                    elseif A >= 70 then
                      if A == 71 then
                        G, L, P = l[O], s[O], _[O]
                        n = G + L
                        t = i[n]
                        b = t[g]
                        W = (L + b) - 1
                        t[g] = W
                        c(t, 1, b, L, t)
                        c(i, G + 1, n - 1, 1, t)
                        i[G] = M(i[G](m(t, 1, t[g])))
                      else
                        i[l[O]][i[_[O]]] = i[s[O]]
                      end
                    else
                      G, L, P = s[O], l[O], _[O]
                      n = G + L
                      i[G] = M(i[G](m(i, G + 1, n)))
                    end
                  elseif A >= 74 then
                    if A >= 75 then
                      if A ~= 76 then
                        O = if i[_[O]] ~= l[O] then s[O] else O
                      else
                        i[s[O]] = {}
                      end
                    else
                      O = if not (i[s[O]] < i[_[O]]) then l[O] else O
                    end
                  elseif A ~= 73 then
                    G = j[O]
                    local T, D = o[O], U
                    local v = (T and (#T / 2)) or 0
                    local x, V = (v > 0) and {}
                    if x then
                      V = R
                      for w = 1, v, 1 do
                        local v = (w - 1) * 2
                        local Z, E = T[v + 1], T[v + 2]
                        if Z == 3 then
                          V = if not V then {} else V
                          local T, v = V[E]
                          if not T then
                            T = {[7] = E, [4] = i}
                            V[E] = T
                            v = T
                          else
                            v = T
                          end
                          x[w] = v
                        elseif Z == 0 then
                          x[w] = i[E]
                        elseif Z == 1 then
                          x[w] = {[7] = E, [4] = i}
                        elseif Z == 2 then
                          x[w] = D[E]
                        end
                      end
                    else
                      V = R
                    end
                    P = u[G[G[4]]](u, nil, nil, x, G)
                    y(P, a)
                    i[_[O]] = P
                    R, L = V, x
                  else
                    G = U[s[O]]
                    G[4][G[7]] = o[O]
                  end
                elseif A < 62 then
                  if A < 59 then
                    if A == 58 then
                      i[_[O]](i[l[O]], j[O])
                    else
                      O = if i[_[O]] < l[O] then s[O] else O
                    end
                  elseif A < 60 then
                    if R then
                      for T in r, R, nil do
                        if R then
                          local D = R[T]
                          if D then
                            D[4] = D
                            D[6] = i[T]
                            D[7] = 6
                            R[T] = nil
                          end
                        end
                      end
                    end
                    return i[_[O]], i[l[O]]
                  elseif A ~= 61 then
                    G = _[O] + 1
                    for T = 1, s[O], 1 do
                      L = H(S(l[O], T), 127)
                      s[G] = S(s[G], L)
                      l[G] = S(l[G], L)
                      _[G] = S(_[G], L)
                      k[G] = S(k[G], L)
                      G += 1
                    end
                    k[O] = 105
                  else
                    i[s[O]] = i[l[O]][F[O]]
                  end
                elseif A < 64 then
                  if A ~= 63 then
                    local T, D, y = _[O], o[O], j[O]
                    local v, x = H(D, 4294967295), H(y, 4294967295)
                    local D, y, V, w = H(v, 65535), N(v, 16), H(x, 65535), N(x, 16)
                    i[T] = H((D * V) + z(H((D * w) + (y * V), 65535), 16), 4294967295) % 4294967296
                  else
                    i[_[O]] = l[O] * i[s[O]]
                  end
                elseif A >= 65 then
                  if A ~= 66 then
                    i[s[O]] = _[O] + i[l[O]]
                  else
                    i[s[O]] = i[_[O]] < l[O]
                  end
                else
                  G, L, P = _[O], l[O], s[O]
                  n, t = i[G], G + L
                  b = i[t]
                  c(i, G + 1, t - 1, P + 1, n)
                  c(b, 1, b.n, P + L, n)
                end
              elseif A >= 47 then
                if A < 52 then
                  if A >= 49 then
                    if A >= 50 then
                      if A ~= 51 then
                        i[s[O]] = o[O] + F[O]
                      else
                        i[_[O]](m(i[s[O]], 1, i[s[O]][g]))
                      end
                    else
                      i[l[O]] = s[O]
                    end
                  elseif A == 48 then
                    i[l[O]] = i[s[O]] <= i[_[O]]
                  else
                    local T, D, y = l[O], i[_[O]], i[s[O]]
                    local v, x = H(D, 4294967295), H(y, 4294967295)
                    local D, y, V, w = H(v, 65535), N(v, 16), H(x, 65535), N(x, 16)
                    i[T] = H((D * V) + z(H((D * w) + (y * V), 65535), 16), 4294967295) % 4294967296
                  end
                elseif A < 54 then
                  if A ~= 53 then
                    G = U[_[O]]
                    G[4][G[7]] = i[s[O]]
                  else
                    i[_[O]] = s[O] - i[l[O]]
                  end
                elseif A >= 55 then
                  if A == 56 then
                    i[s[O]] = a[o[O]]
                  else
                    i[_[O]](j[O], m(i[l[O]], 1, i[l[O]][g]))
                  end
                else
                  if R then
                    for T in r, R, nil do
                      if R then
                        local D = R[T]
                        if D then
                          D[4] = D
                          D[6] = i[T]
                          D[7] = 6
                          R[T] = nil
                        end
                      end
                    end
                  end
                  return j[O], o[O]
                end
              elseif A >= 42 then
                if A >= 44 then
                  if A >= 45 then
                    if A == 46 then
                      i[l[O]] = i[s[O]] ~= F[O]
                    else
                      if R then
                        for T in r, R, nil do
                          if R then
                            local D = R[T]
                            if D then
                              D[4] = D
                              D[6] = i[T]
                              D[7] = 6
                              R[T] = nil
                            end
                          end
                        end
                      end
                      return o[O]
                    end
                  else
                    i[s[O]] = i[_[O]](o[O])
                  end
                elseif A ~= 43 then
                  i[_[O]] = i[s[O]] - i[l[O]]
                else
                  i[_[O]](o[O])
                end
              elseif A < 40 then
                if A ~= 39 then
                  i[s[O]] = i[_[O]] .. i[l[O]]
                else
                  O = if i[l[O]] == i[s[O]] then _[O] else O
                end
              elseif A ~= 41 then
                i[s[O]] = i[l[O]] / i[_[O]]
              else
                i[l[O]][j[O]] = i[_[O]]
              end
            elseif A < 116 then
              if A >= 96 then
                if A < 106 then
                  if A >= 101 then
                    if A >= 103 then
                      if A < 104 then
                        O = if i[l[O]] ~= j[O] then _[O] else O
                      elseif not (A == 105) then
                        u[o[O]] = i[s[O]]
                      end
                    elseif A ~= 102 then
                      i[s[O]]()
                    else
                      i[l[O]] = S(i[_[O]], i[s[O]])
                    end
                  elseif A < 98 then
                    if A == 97 then
                      i[_[O]] = i[l[O]] == s[O]
                    else
                      i[s[O]] = i[_[O] + i[l[O]]]
                    end
                  elseif A < 99 then
                    O = if i[l[O]] then s[O] else _[O]
                  elseif A == 100 then
                    i[l[O]] = #i[s[O]]
                  else
                    local T, D, y = Q, s[O], _[O]
                    local v = T[T[2]]
                    T = v[4]
                    local x = S(T[D], 27730616)
                    T[D] = x
                    D, T = v[7], x + 1
                    v = K(D, T)
                    local V, w
                    if v < 128 then
                      V, w = v, T + 1
                    else
                      x = K(D, T + 1)
                      if x < 128 then
                        V, w = ((v - 128) * 128) + x, T + 2
                      else
                        local Z = K(D, T + 2)
                        if Z < 128 then
                          V, w = ((v - 128) + ((x - 128) * 16384)) + (Z * 128), T + 3
                        else
                          local E = K(D, T + 3)
                          V, w = (((((v - 128) * 128) + ((x - 128) * 2097152)) + (Z - 128)) + ((E % 128) * 16384)) + ((E - (E % 128)) * 2097152), T + 4
                        end
                      end
                    end
                    for T = w, (w + V) - 1, 1 do
                      B(D, T, (S(K(D, T), y)))
                    end
                    s[O], _[O], l[O], k[O] = 29, 123, 236, 105
                  end
                elseif A < 111 then
                  if A >= 108 then
                    if A < 109 then
                      i[_[O]] = j[O] % 4294967296
                    elseif A ~= 110 then
                      i[l[O]] = s[O]
                      i[l[O + 1]] = s[O + 1]
                      O += 1
                    else
                      G, L, P = _[O], l[O], s[O]
                      n = ((L < 2097152) and 7) or 14
                      t, b = H(L, z(1, n) - 1), N(L, n)
                      local T, D = s, u:YM(P)
                      T[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, D)) + (u:kM(2147483648, 11) + u:kM(2147483647, (e((S(D, 11)))))))
                      D, T = l, u:YM(t)
                      D[O] = u:YM((S(T, 122) + u:kM(50864269, 4294967295)) + (u:kM(4244103027, T) + u:kM(4244103027, (e(T)))))
                      local D, y, v = _, u:YM(G), u:YM(O)
                      D[O] = u:YM((S(y, 15) + u:kM(2591745966, 4294967295)) + (u:kM(1703221330, v) + u:kM(1703221330, (e(v)))))
                      D, T = k, u:YM(b)
                      D[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, T)) + (u:kM(2147483648, 116) + u:kM(2147483647, (e((S(T, 116)))))))
                      O -= 1
                    end
                  elseif A ~= 107 then
                    G = U[_[O]]
                    i[l[O]] = G[4][G[7]][s[O]]
                  else
                    i[s[O]] = i[l[O]] % 4294967296
                  end
                elseif A < 113 then
                  if A == 112 then
                    U[l[O]][j[O]] = i[_[O]]
                  else
                    i[l[O]] = i[_[O]] > i[s[O]]
                  end
                elseif A >= 114 then
                  if A == 115 then
                    X, I, J, C = C[9], C[8], C[5], C[6]
                  else
                    i[s[O]] = i[_[O]] + o[O]
                  end
                else
                  Y = C
                  C, G, L = {[6] = Y, [5] = J, [8] = I, [9] = X}, l[O], p(f)
                  L(u, i[G], i[G + 1], i[G + 2])
                  O, X = _[O], L
                end
              elseif A < 86 then
                if A < 81 then
                  if A < 79 then
                    if A == 78 then
                      i[_[O]] = o[O] .. i[s[O]]
                    else
                      if R then
                        for T in r, R, nil do
                          if R then
                            local D = R[T]
                            if D then
                              D[4] = D
                              D[6] = i[T]
                              D[7] = 6
                              R[T] = nil
                            end
                          end
                        end
                      end
                      return F[O], i[l[O]]
                    end
                  elseif A == 80 then
                    i[_[O]] = H(i[l[O]], j[O])
                  else
                    i[_[O]] = i[l[O]] % i[s[O]]
                  end
                elseif A < 83 then
                  if A == 82 then
                    i[l[O]][j[O]] = F[O]
                  else
                    i[l[O]] = i[s[O]] ~= i[_[O]]
                  end
                elseif A < 84 then
                  i[s[O]] = M(i[_[O]](m(i[l[O]], 1, i[l[O]][g])))
                elseif A == 85 then
                  O = if i[_[O]] <= s[O] then l[O] else O
                else
                  for T = l[O], _[O], 1 do
                    i[T] = nil
                  end
                end
              elseif A >= 91 then
                if A < 93 then
                  if A == 92 then
                    i[_[O]] = i
                  else
                    i[_[O]] = H(i[s[O]], i[l[O]])
                  end
                elseif A < 94 then
                  G, L = s[O], i[l[O]]
                  i[G + 1] = L
                  i[G] = L[F[O]]
                elseif A ~= 95 then
                  local T, D, y = _[O], l[O], i[s[O]]
                  local p, f = H(D, 4294967295), H(y, 4294967295)
                  local D, y, v, K = H(p, 65535), N(p, 16), H(f, 65535), N(f, 16)
                  i[T] = H((D * v) + z(H((D * K) + (y * v), 65535), 16), 4294967295) % 4294967296
                else
                  i[s[O]] = i[_[O]] % l[O]
                end
              elseif A >= 88 then
                if A < 89 then
                  i[s[O]][l[O]] = i[_[O]]
                elseif A == 90 then
                  G = l[O]
                  P = G + _[O]
                  if R then
                    for T in r, R, nil do
                      if R then
                        local D = R[T]
                        if D then
                          D[4] = D
                          D[6] = i[T]
                          D[7] = 6
                          R[T] = nil
                        end
                      end
                    end
                  end
                  return i[G](m(i, G + 1, P))
                else
                  i[s[O]] = i[_[O]] / o[O]
                end
              elseif A ~= 87 then
                i[s[O]] = i[_[O]] - l[O]
              else
                local T, D, y = _[O], j[O], i[l[O]]
                local p, f = H(D, 4294967295), H(y, 4294967295)
                local D, y, v, K = H(p, 65535), N(p, 16), H(f, 65535), N(f, 16)
                i[T] = H((D * v) + z(H((D * K) + (y * v), 65535), 16), 4294967295) % 4294967296
              end
            elseif A < 135 then
              if A < 125 then
                if A < 120 then
                  if A < 118 then
                    if A == 117 then
                      O = if i[l[O]] == F[O] then s[O] else O
                    else
                      i[s[O]] = i[l[O]] < i[_[O]]
                    end
                  elseif A ~= 119 then
                    i[_[O]] = i[l[O]]
                  else
                    Y = C
                    C, G = {[6] = Y, [5] = J, [8] = I, [9] = X}, s[O]
                    J, I = i[G + 2] + 0, i[G + 1] + 0
                    X, O = i[G] - J, _[O]
                  end
                elseif A >= 122 then
                  if A < 123 then
                    i[l[O]](i[_[O]], m(i[s[O]], 1, i[s[O]].n))
                  elseif A == 124 then
                    i[s[O]] = o[O] + i[_[O]]
                  else
                    G = U[s[O]]
                    i[_[O]] = G[4][G[7]]
                  end
                elseif A == 121 then
                  i[l[O]] = -i[_[O]]
                else
                  i[_[O]][i[s[O]]] = o[O]
                end
              elseif A < 130 then
                if A >= 127 then
                  if A >= 128 then
                    if A ~= 129 then
                      G, L, P = _[O], s[O], l[O]
                      n = ((L < 2097152) and 7) or 14
                      t, b = H(L, z(1, n) - 1), N(L, n)
                      local Y, T, D = s, u:YM(t), u:YM(P)
                      Y[O] = u:YM((S(T, 86) + u:kM(456106603, 4294967295)) + (u:kM(3838860693, D) + u:kM(3838860693, (e(D)))))
                      Y, D = l, u:YM(P)
                      Y[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, D)) + (u:kM(2147483648, 20) + u:kM(2147483647, (e((S(D, 20)))))))
                      D, T = _, u:YM(G)
                      D[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, T)) + (u:kM(2147483648, 122) + u:kM(2147483647, (e((S(T, 122)))))))
                      D, T = k, u:YM(b)
                      D[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, T)) + (u:kM(2147483648, 11) + u:kM(2147483647, (e((S(T, 11)))))))
                      O -= 1
                    else
                      i[_[O]] = not i[l[O]]
                    end
                  else
                    i[s[O]] = H(i[l[O]], _[O])
                  end
                elseif A == 126 then
                  i[_[O]] = i[l[O]]()
                else
                  G, L, P, n = s[O], X()
                  if L then
                    i[G + 1] = P
                    i[G + 2] = n
                    O = _[O]
                  end
                end
              elseif A >= 132 then
                if A >= 133 then
                  if A == 134 then
                    i[_[O]](i[l[O]])
                  else
                    G = l[O]
                    L, P, n = i[G], i[G + 1], i[G + 2]
                    i[G] = L(P, n)
                  end
                else
                  i[s[O]][l[O]] = F[O]
                end
              elseif A == 131 then
                i[s[O]] = N(i[_[O]], i[l[O]])
              else
                if R then
                  for Y in r, R, nil do
                    if R then
                      local T = R[Y]
                      if T then
                        T[4] = T
                        T[6] = i[Y]
                        T[7] = 6
                        R[Y] = nil
                      end
                    end
                  end
                end
                return
              end
            elseif A < 145 then
              if A >= 140 then
                if A >= 142 then
                  if A < 143 then
                    if R then
                      for Y in r, R, nil do
                        if R then
                          local T = R[Y]
                          if T then
                            T[4] = T
                            T[6] = i[Y]
                            T[7] = 6
                            R[Y] = nil
                          end
                        end
                      end
                    end
                    return i[_[O]](i[s[O]], i[l[O]])
                  elseif A == 144 then
                    i[s[O]](i[_[O]], i[l[O]])
                  else
                    i[l[O]] = U[_[O]][j[O]]
                  end
                elseif A ~= 141 then
                  O = _[O]
                else
                  i[_[O]] = Q
                end
              elseif A >= 137 then
                if A < 138 then
                  G, L, P = s[O], l[O], _[O]
                  n, t = (G + P) - 1, G + L
                  b = i[t]
                  W = b[g]
                  q = (L + W) - 1
                  b[g] = q
                  c(b, 1, W, L, b)
                  c(i, G + 1, t - 1, 1, b)
                  W = M(i[G](m(b, 1, b[g])))
                  c(W, 1, P, G, i)
                elseif A ~= 139 then
                  u[l[O]] = i[s[O]]
                else
                  if R then
                    for U in r, R, nil do
                      if R then
                        local Q = R[U]
                        if Q then
                          Q[4] = Q
                          Q[6] = i[U]
                          Q[7] = 6
                          R[U] = nil
                        end
                      end
                    end
                  end
                  return m(i[s[O]], 1, i[s[O]][g])
                end
              elseif A ~= 136 then
                G, L, P = l[O], _[O], s[O]
                n = ((P < 16384) and 7) or (((P < 2097152) and 14) or 21)
                t, b = H(P, z(1, n) - 1), N(P, n)
                local U, Q, Y = s, u:YM(t), u:YM(G)
                U[O] = u:YM((S(Q, 10) + u:kM(773307416, 4294967295)) + (u:kM(3521659880, Y) + u:kM(3521659880, (e(Y)))))
                U, Y, Q = l, u:YM(G), u:YM(t)
                U[O] = u:YM((S(Y, 70) + u:kM(1979477300, 4294967295)) + (u:kM(2315489996, Q) + u:kM(2315489996, (e(Q)))))
                Q, Y, U = _, u:YM(L), u:YM(O)
                Q[O] = u:YM((S(Y, 93) + u:kM(1357006047, 4294967295)) + (u:kM(2937961249, U) + u:kM(2937961249, (e(U)))))
                U, Y = k, u:YM(b)
                U[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Y)) + (u:kM(2147483648, 30) + u:kM(2147483647, (e((S(Y, 30)))))))
                O -= 1
              else
                i[_[O]] = i[s[O]] / l[O]
              end
            elseif A >= 150 then
              if A >= 152 then
                if A >= 153 then
                  if A ~= 154 then
                    a[o[O]] = F[O]
                  else
                    i[s[O]] = i[_[O]] == i[l[O]]
                  end
                else
                  G, L, P = s[O], l[O], _[O]
                  n = ((L < 16384) and 7) or (((L < 2097152) and 14) or 21)
                  t, b = H(L, z(1, n) - 1), N(L, n)
                  local U, Q = s, u:YM(G)
                  U[O] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Q)) + (u:kM(2147483648, 70) + u:kM(2147483647, (e((S(Q, 70)))))))
                  U, Q = l, u:YM(t)
                  U[O] = u:YM((S(Q, 49) + u:kM(2283638714, 4294967295)) + (u:kM(2011328582, Q) + u:kM(2011328582, (e(Q)))))
                  local U, Y, T = _, u:YM(P), u:YM(n)
                  U[O] = u:YM((S(Y, 90) + u:kM(141987539, 4294967295)) + (u:kM(4152979757, T) + u:kM(4152979757, (e(T)))))
                  Q, Y, T = k, u:YM(b), u:YM(t)
                  Q[O] = u:YM((S(Y, 95) + u:kM(396915344, 4294967295)) + (u:kM(3898051952, T) + u:kM(3898051952, (e(T)))))
                  O -= 1
                end
              elseif A == 151 then
                i[_[O]] = i[l[O]] .. j[O]
              else
                O = if s[O] <= i[l[O]] then _[O] else O
              end
            elseif A < 147 then
              if A == 146 then
                i[l[O]] = i[_[O]] * j[O]
              else
                if R then
                  for u in r, R, nil do
                    if R then
                      local U = R[u]
                      if U then
                        U[4] = U
                        U[6] = i[u]
                        U[7] = 6
                        R[u] = nil
                      end
                    end
                  end
                end
                return i[l[O]](i[s[O]], F[O])
              end
            elseif A < 148 then
              i[s[O]] = M(i[_[O]](i[l[O]]))
            elseif A ~= 149 then
              G, L, P = _[O], s[O], l[O]
              n = i[G]
              c(i, G + 1, G + L, P + 1, n)
            else
              i[s[O]][F[O]] = l[O]
            end
            O += 1
          end
        end
      end
    end
  end
end, [16191] = function(u, u, u, u, U, U)
  return function(U, Q)
    local F = u[1].bb.sweep
    if not F or not F.model.Parent then
      return false
    end
    if not F.safe then
      return false
    end
    if F.safeCenter and F.axis then
      local A = u[2][4][u[2][7]](Q)
      local Y = (F.safeCenter - A):Dot(F.axis)
      if math.abs(Y) <= 15 then
        if U:HandleIncoming(Q) then
          return true
        end
        local T = u[1].bb.longLine and ((tick() - u[1].bb.longLine.t0) < u[3].BonusBoss.longLine.hold)
        if (((U:IsBlocked(Q) or (F.bandSpot and (U:IsBlocked(F.bandSpot)))) or ((F.bandSpot and u[3].bbzPathOK) and not u[3].bbzPathOK(U, Q, F.bandSpot))) or (T and not u[3].bbLLPointSafe(F.bandSpot or Q))) or (u[3].bbSpiralClear(F.bandSpot or Q) < ((F.bandSpot and 2) or 4)) then
          F.bandSpot = nil
          local G, z, H, N = Vector3.new(-F.axis.Z, 0, F.axis.X), A + (F.axis * Y), {}, {}
          for S = 0, 48, 6 do
            for e, D in ipairs(((S == 0) and {1}) or {1, -1}) do
              e = {0, -5, 5, -10, 10, -14, 14}
              for m, g in ipairs(e) do
                m = (z + (G * (S * D))) + (F.axis * g)
                g = Vector3.new(m.X, Q.Y, m.Z)
                if U:LeashOK(g) and (not T or (u[3].bbLLPointSafe(g) and (u[3].bbLLPathSafe(Q, g, tick() - u[1].bb.longLine.t0, u[4][4][u[4][7]](U))))) then
                  m = u[2][4][u[2][7]](g - Q).Magnitude
                  local S = {g = g, d = m, s = math.min(u[3].bbSpiralClear(g), 12) - (m * 0.08)}
                  if not U:IsBlocked(g) and (not u[3].bbzPathOK or (u[3].bbzPathOK(U, Q, g))) then
                    H[#H + 1] = S
                  elseif not u[3].bbBlockedReal(g) then
                    N[#N + 1] = S
                  end
                end
              end
            end
          end
          local function S(e)
            table.sort(e, function(D, m)
              return D.s > m.s
            end)
            for D = 1, math.min(#e, 10), 1 do
              local m = e[D]
              if (m.d < 1) or (U:GetClearDistance(Q, u[2][4][u[2][7]](m.g - Q).Unit, m.d + 1, true) >= m.d) then
                return m.g
              end
            end
          end
          G = S(H)
          z = (not G and (S(N))) or nil
          F.bandSpot = (G or z) and (u[5][4][u[5][7]](U, G or z, Q.Y))
          if not F.bandSpot and (u[3].bbBlockedReal(Q)) then
            u[6][4][u[6][7]]("dodge", "bbsweepnone", 0.5, "Sweeping: \224\185\131\224\184\153\224\185\129\224\184\150\224\184\154\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\167\224\185\136\224\184\178\224\184\135 \226\134\146 dodge \224\184\155\224\184\129\224\184\149\224\184\180")
            u[1].bb.forceDodge = tick()
            return false
          end
        end
        if F.bandSpot and (u[2][4][u[2][7]](F.bandSpot - Q).Magnitude > 2) then
          U:SetDestination(F.bandSpot, false)
          u[7][4][u[7][7]]("bonus", "Sweeping: \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\184\171\224\184\165\224\184\154\224\184\170\224\184\129\224\184\180\224\184\165\224\185\131\224\184\153\224\185\129\224\184\150\224\184\154\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162")
          return true
        end
        T = Vector3.new(-F.axis.Z, 0, F.axis.X)
        local G = (A - F.safeCenter):Dot(T)
        if (math.abs(G) > 25) and not U:IsBlocked(Q) then
          local z = (A + (F.axis * Y)) + (T * (math.clamp(G, -18, 18) - G))
          local T = Vector3.new(z.X, Q.Y, z.Z)
          if (U:LeashOK(T) and not U:IsBlocked(T)) and not U:PathHasHitbox(Q, T) then
            U:SetDestination(u[5][4][u[5][7]](U, T, Q.Y), false)
            u[7][4][u[7][7]]("bonus", "Sweeping: \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\185\128\224\184\130\224\185\137\224\184\178\224\184\129\224\184\165\224\184\178\224\184\135\224\185\129\224\184\150\224\184\154 (%.0f)", G)
            return true
          end
        end
        u[3].bbBuffRelease()
        U:StopWalking()
        u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\162\224\184\183\224\184\153\224\184\129\224\184\165\224\184\178\224\184\135\224\185\129\224\184\150\224\184\154\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 \224\184\163\224\184\173\224\184\136\224\184\154")
        return true
      end
      local T, G = A + (F.axis * Y), Vector3.new(-F.axis.Z, 0, F.axis.X)
      local z = (T - F.safeCenter):Dot(G)
      T -= G * (z - math.clamp(z, -30, 30))
      T = if not U:LeashOK(Vector3.new(T.X, Q.Y, T.Z)) then (u[2][4][u[2][7]](F.safe)) else T
      u[8].dodgeGoal = nil
      u[8].retreatGoal = nil
      u[8].projGoal = nil
      z = u[1].bb.longLine
      if z and ((tick() - z.t0) < u[3].BonusBoss.longLine.hold) then
        local H, N = tick() - z.t0, u[4][4][u[4][7]](U)
        local function S(e)
          local D = u[2][4][u[2][7]](e - Q)
          e = math.min(D.Magnitude, N * 1)
          return (D.Magnitude < 0.1) or (u[3].bbLLPathSafe(Q, Q + (D.Unit * e), H, N))
        end
        if not S(T) then
          local N, e, D = Vector3.new(-F.axis.Z, 0, F.axis.X), {8, -8, 16, -16}
          for m, g in ipairs(e) do
            m = T + (N * g)
            if U:LeashOK(Vector3.new(m.X, Q.Y, m.Z)) and (S(m)) then
              D = m
              break
            end
          end
          if D then
            T = D
          elseif not U:IsBlocked(Q) then
            U:StopWalking()
            u[3].bbBuffWait()
            u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\163\224\184\173\224\185\128\224\184\170\224\185\137\224\184\153 LongLine \224\184\171\224\184\161\224\184\148 (%.1f \224\184\167\224\184\180)", u[3].BonusBoss.longLine.hold - H)
            return true
          end
        end
      end
      G = u[1].bb.gfExit and u[1].bb.gfExit.part
      if G and G.Parent then
        local H = u[2][4][u[2][7]](G.Position)
        local function N(S, e)
          local D = e - S
          return ((S + (D * (((D.Magnitude > 0.1) and (math.clamp((H - S):Dot(D) / D:Dot(D), 0, 1))) or 0))) - H).Magnitude
        end
        z = u[2][4][u[2][7]](Q)
        if (u[2][4][u[2][7]](Q - H).Magnitude > 20) and (N(z, u[2][4][u[2][7]](T)) < 22) then
          local S = Vector3.new(-F.axis.Z, 0, F.axis.X)
          local e, D = (((z - H):Dot(S) >= 0) and 1) or -1, {12, 20, 28, 36}
          for H, m in ipairs(D) do
            H = T + (S * (m * e))
            if (N(z, u[2][4][u[2][7]](H)) >= 22) and (U:LeashOK(Vector3.new(H.X, Q.Y, H.Z))) then
              T = H
              break
            end
          end
        end
      end
      do
        local H, N, S = (u[3].bbOrbList and (u[3].bbOrbList())) or {}, u[4][4][u[4][7]](U), u[1].bb.longLine
        local e = S and (tick() - S.t0)
        local function D(m)
          local g = u[2][4][u[2][7]](m - Q)
          if g.Magnitude < 0.1 then
            return true
          end
          m = Q + (g.Unit * math.min(g.Magnitude, N * 1))
          if (#H > 0) and (u[3].bbOrbClear(H, Q, m, N) < 1) then
            return false
          end
          if (e and (e < u[3].BonusBoss.longLine.hold)) and not u[3].bbLLPathSafe(Q, m, e, N) then
            return false
          end
          for g = 0.25, 1, 0.25 do
            if u[3].bbSpiralClear(Q:Lerp(m, g)) < 1 then
              return false
            end
          end
          return true
        end
        if not D(T) then
          S = Vector3.new(-F.axis.Z, 0, F.axis.X)
          z = {8, -8, 16, -16, 24, -24, (A - F.safeCenter):Dot(S) - (T - F.safeCenter):Dot(S), 36, -36}
          local function m(g)
            local c = u[2][4][u[2][7]](g - Q)
            g = math.min(c.Magnitude, N * 1.2)
            return (g < 1) or (U:GetClearDistance(Q, c.Unit, g + 1, true) >= (g * 0.95))
          end
          local function g(c)
            local r = u[2][4][u[2][7]](c - Q)
            if r.Magnitude < 0.1 then
              return 10
            end
            c = Q + (r.Unit * math.min(r.Magnitude, N * 1))
            r = ((#H > 0) and (math.min(u[3].bbOrbClear(H, Q, c, N), 10))) or 10
            r = if (e and (e < u[3].BonusBoss.longLine.hold)) and not u[3].bbLLPathSafe(Q, c, e, N) then r - 50 else r
            for H = 0.25, 1, 0.25 do
              local M = math.max(u[3].bbSpiralClear(Q:Lerp(c, H)), -8)
              r = if M < 1 then r - ((1 - M) * 2) else r
            end
            return r
          end
          local function H(c)
            if not (e and (e < u[3].BonusBoss.longLine.hold)) then
              return false
            end
            local r = u[2][4][u[2][7]](c - Q)
            if r.Magnitude < 0.1 then
              return false
            end
            return not u[3].bbLLPathSafe(Q, Q + (r.Unit * math.min(r.Magnitude, N * 1)), e, N)
          end
          G = H(T)
          local N, e, c
          for r, M in ipairs(z) do
            r = T + (S * M)
            if (U:LeashOK(Vector3.new(r.X, Q.Y, r.Z)) and (G or not H(r))) and (m(r)) then
              local H = e
              if D(r) then
                N, e, c = r, math.huge, M
                break
              end
              local S = g(r)
              if not H or (S > H) then
                N, e, c = r, S, M
              else
                e = H
              end
            end
          end
          m = g(T)
          if N and ((e == math.huge) or (e > (m + 0.5))) then
            u[6][4][u[6][7]]("dodge", "bbsweeporb", 0.5, "Sweeping: \224\184\151\224\184\178\224\184\135\224\184\167\224\184\180\224\185\136\224\184\135\224\184\161\224\184\181\224\184\154\224\184\173\224\184\165/spiral \226\134\146 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153 %d (%s)", c, ((e == math.huge) and "\224\184\158\224\185\137\224\184\153") or (("\224\184\132\224\184\176\224\185\129\224\184\153\224\184\153 %.1f \224\185\128\224\184\148\224\184\180\224\184\161 %.1f"):format(e, m)))
            T = N
          end
        end
      end
      G = u[1].bb.longLine
      z = G and (tick() - G.t0)
      if (z and (z < u[3].BonusBoss.longLine.hold)) and (not u[3].bbzSafeDuring or (u[3].bbzSafeDuring(Q, 0, 1))) then
        G, A = u[2][4][u[2][7]](Vector3.new(T.X, 0, T.Z) - Q), u[4][4][u[4][7]](U)
        if (G.Magnitude > 0.5) and not u[3].bbLLPathSafe(Q, Q + (G.Unit * math.min(G.Magnitude, A)), z, A) then
          U:StopWalking()
          u[3].bbBuffWait()
          u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\151\224\184\178\224\184\135\224\184\170\224\184\184\224\184\148\224\184\151\224\185\137\224\184\178\224\184\162\224\184\130\224\185\137\224\184\178\224\184\161\224\185\128\224\184\170\224\185\137\224\184\153 LongLine \226\134\146 \224\184\163\224\184\173 (%.1f \224\184\167\224\184\180)", u[3].BonusBoss.longLine.hold - z)
          return true
        end
      end
      G = u[5][4][u[5][7]](U, Vector3.new(T.X, Q.Y, T.Z), Q.Y)
      if u[3].bbzPathOK then
        T, A = u[2][4][u[2][7]](G - Q), u[4][4][u[4][7]](U)
        z = ((T.Magnitude > (A * 1.2)) and (Q + ((T.Unit * A) * 1.2))) or G
        if not u[3].bbzPathOK(U, Q, z) then
          local T = u[9].dest
          local H = T and u[2][4][u[2][7]](T - Q).Magnitude
          if (T and (H > 2)) and (u[3].bbzPathOK(U, Q, T)) then
            u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\151\224\184\178\224\184\135\224\184\167\224\184\180\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\184\136\224\184\176\224\185\130\224\184\148\224\184\153 \226\134\146 \224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\184\178\224\184\161\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154 guard \224\184\149\224\185\136\224\184\173")
            return true
          end
          local N, S = u[1].bbz, {}
          for e, e in ipairs(N.beams) do
            if not e.sweep then
              S[#S + 1] = e
            end
          end
          local e, D = u[3].midPathHit(N.lanes, S, Q, z, A, tick(), N.discs, nil, N.dyn, S) ~= nil, u[1].bb.sweepHoldAt and ((tick() - u[1].bb.sweepHoldAt) < 0.2)
          if ((e and ((not T and D) or (T and (H <= 2)))) and u[3].bbzSafeDuring) and (u[3].bbzSafeDuring(Q, 0, 0.6)) then
            u[1].bb.sweepHoldAt = tick()
            U:StopWalking()
            u[3].bbBuffWait()
            u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\151\224\184\178\224\184\135\224\184\167\224\184\180\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\184\136\224\184\176\224\185\130\224\184\148\224\184\153 \226\134\146 \224\184\162\224\184\183\224\184\153\224\184\163\224\184\173\224\184\149\224\184\178\224\184\161 guard")
            return true
          end
        end
      end
      u[3].bbBuffRelease()
      U:SetDestination(G, false)
      u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\167\224\184\180\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\185\129\224\184\150\224\184\154\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 %.0f studs", math.abs(Y))
      return true
    end
    if u[10][4][u[10][7]](U, Q, u[5][4][u[5][7]](U, F.safe), u[3].BonusBoss.sweepArrive, "Sweeping") then
      u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\162\224\184\183\224\184\153 %s \224\184\163\224\184\173 (%.0f \224\184\167\224\184\180)", F.safeName or "?", 15 - (tick() - F.at))
    else
      u[7][4][u[7][7]]("bonus", "Sweeping: \224\184\167\224\184\180\224\185\136\224\184\135\224\185\132\224\184\155 %s", F.safeName or "?")
    end
    return true
  end
end, [14144] = function(u, U, U, U, Q)
  local F, A
  local Y, T, G, z, H, N, S, e, D, m, g, c, r, M, y, p, f, v, K, B, R, o, k, j, s, _, q, i, l, n, L, O, b, I, t, W = u[64], u[63], u[70], u[71], u[8], u[122], u[116], u[41], u[114], u[39], u[91], u[31], u[37], u.GM, u[67], u.B, u.yM, 1
  while true do
    if v <= 0 then
      K = Q[W]
      B = Q[Q[b]]
      R = Q[Q[t]]
      o = Q[Q[I]]
      k = Q[Q[L]]
      j = Q[Q[n]]
      s = Q[Q[i]]
      _ = Q[Q[l]]
      q = Q[Q[O]]
      v, i = 2, function(...)
        local a
        local C, P, X = Y(_), F, A
        T()
        local Y, T, _, J, x, V, w, Z, E, d, h = r, z, H, N, S, e, D, m, g, c, M
        local z, H, N, S, e = G(function(...)
          local G, D, m, g, c, r
          if X == 86 then
            while true do
              local M = K[P]
              if M >= 6 then
                if M < 9 then
                  if M >= 7 then
                    if M == 8 then
                      P = q[P]
                    else
                      r, m, G = k[P], j[P], q[P]
                      g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                      c, D = _(m, T(1, g) - 1), J(m, g)
                      local uu, Uu, Qu = q, P, u:YM(G)
                      uu[Uu] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Qu)) + (u:kM(2147483648, 118) + u:kM(2147483647, (V((x(Qu, 118)))))))
                      local Fu, Au, Yu, Tu = j, P, u:YM(c), u:YM(g)
                      Fu[Au] = u:YM((x(Yu, 121) + u:kM(4134118235, 4294967295)) + (u:kM(160849061, Tu) + u:kM(160849061, (V(Tu)))))
                      Qu, Uu, Fu, Yu = k, P, u:YM(r), u:YM(m)
                      Qu[Uu] = u:YM((x(Fu, 19) + u:kM(46951383, 4294967295)) + (u:kM(4248015913, Yu) + u:kM(4248015913, (V(Yu)))))
                      Qu, Tu, Yu, uu = K, P, u:YM(D), u:YM(G)
                      Qu[Tu] = u:YM((x(Yu, 9) + u:kM(1984344799, 4294967295)) + (u:kM(2310622497, uu) + u:kM(2310622497, (V(uu)))))
                      P -= 1
                    end
                  else
                    C[q[P]] = s[P]
                  end
                elseif M < 10 then
                  r, m, G = q[P], k[P], j[P]
                  g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                  c, D = _(m, T(1, g) - 1), J(m, g)
                  local s, uu, Uu = q, P, u:YM(r)
                  s[uu] = u:YM((u:kM(1481898998, Uu) + u:kM(1481898998, 42)) + (u:kM(1331169300, (w(Uu, 42))) + u:kM(1481898999, (x(Uu, 42)))))
                  s, Uu, uu = j, P, u:YM(G)
                  s[Uu] = u:YM((x(uu, 0) + u:kM(742618275, 4294967295)) + (u:kM(3552349021, uu) + u:kM(3552349021, (V(uu)))))
                  local Uu, Qu, Fu, Au = k, P, u:YM(c), u:YM(D)
                  Uu[Qu] = u:YM((x(Fu, 126) + u:kM(375456458, 4294967295)) + (u:kM(3919510838, Au) + u:kM(3919510838, (V(Au)))))
                  s, Fu, Qu, uu = K, P, u:YM(D), u:YM(r)
                  s[Fu] = u:YM((x(Qu, 94) + u:kM(578975530, 4294967295)) + (u:kM(3715991766, uu) + u:kM(3715991766, (V(uu)))))
                  P -= 1
                elseif M ~= 11 then
                  local s, uu, Uu = Q, j[P], k[P]
                  local Qu = s[s[2]]
                  s = Qu[4]
                  local Fu = x(s[uu], 27730616)
                  s[uu] = Fu
                  s, uu = Qu[7], Fu + 1
                  Fu = Z(s, uu)
                  local Au, Yu
                  if Fu < 128 then
                    Au, Yu = Fu, uu + 1
                  else
                    Qu = Z(s, uu + 1)
                    if Qu < 128 then
                      Au, Yu = ((Fu - 128) * 128) + Qu, uu + 2
                    else
                      local Tu = Z(s, uu + 2)
                      if Tu < 128 then
                        Au, Yu = ((Fu - 128) + ((Qu - 128) * 16384)) + (Tu * 128), uu + 3
                      else
                        local Gu = Z(s, uu + 3)
                        Au, Yu = (((((Fu - 128) * 128) + ((Qu - 128) * 2097152)) + (Tu - 128)) + ((Gu % 128) * 16384)) + ((Gu - (Gu % 128)) * 2097152), uu + 4
                      end
                    end
                  end
                  for uu = Yu, (Yu + Au) - 1, 1 do
                    E(s, uu, (x(Z(s, uu), Uu)))
                  end
                  j[P], k[P], q[P], K[P] = 33, 53, 200, 3
                else
                  r, m, G = k[P], q[P], j[P]
                  g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                  c, D = _(m, T(1, g) - 1), J(m, g)
                  local s, uu, Uu, Qu = q, P, u:YM(c), u:YM(G)
                  s[uu] = u:YM((u:kM(3909043586, 4294967295) + u:kM(4294967295, (V((x(Uu, 2)))))) + (u:kM(385923711, Qu) + u:kM(385923711, (V(Qu)))))
                  Uu, uu, Qu = j, P, u:YM(G)
                  Uu[uu] = u:YM((u:kM(113989799, 4294967295) + u:kM(4294967295, (V((x(Qu, 34)))))) + (u:kM(4180977498, Qu) + u:kM(4180977498, (V(Qu)))))
                  Uu, s, Qu, uu = k, P, u:YM(r), u:YM(D)
                  Uu[s] = u:YM((x(Qu, 0) + u:kM(2147483648, uu)) + (u:kM(2147483648, 0) + u:kM(2147483648, (x(uu, 0)))))
                  s, Uu, uu, Qu = K, P, u:YM(D), u:YM(m)
                  s[Uu] = u:YM((x(uu, 0) + u:kM(1279445062, 4294967295)) + (u:kM(3015522234, Qu) + u:kM(3015522234, (V(Qu)))))
                  P -= 1
                end
              elseif M >= 3 then
                if M >= 4 then
                  if M == 5 then
                    r = q[P] + 1
                    for s = 1, k[P], 1 do
                      m = _(x(j[P], s), 127)
                      q[r] = x(q[r], m)
                      j[r] = x(j[r], m)
                      k[r] = x(k[r], m)
                      K[r] = x(K[r], m)
                      r += 1
                    end
                    K[P] = 3
                  else
                    P = C[q[P]]
                  end
                end
              elseif M >= 1 then
                if M ~= 2 then
                  C[k[P]] = q[P]
                else
                  X = k[P]
                  P = j[P] + 1
                  break
                end
              else
                C[k[P]] = {}
              end
              P += 1
            end
          end
          if X == 154 then
            while true do
              local M = K[P]
              if M >= 6 then
                if M < 9 then
                  if M >= 7 then
                    if M == 8 then
                      P = C[j[P]]
                    else
                      X = k[P]
                      P = j[P] + 1
                      break
                    end
                  else
                    r, m, G = j[P], q[P], k[P]
                    g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                    c, D = _(m, T(1, g) - 1), J(m, g)
                    local s, uu, Uu, Qu = k, P, u:YM(G), u:YM(D)
                    s[uu] = u:YM((x(Uu, 21) + u:kM(999526641, 4294967295)) + (u:kM(3295440655, Qu) + u:kM(3295440655, (V(Qu)))))
                    Qu, uu, Uu = q, P, u:YM(c)
                    Qu[uu] = u:YM((x(Uu, 49) + u:kM(599757213, 4294967295)) + (u:kM(3695210083, Uu) + u:kM(3695210083, (V(Uu)))))
                    Uu, s, Qu, uu = j, P, u:YM(r), u:YM(G)
                    Uu[s] = u:YM((x(Qu, 16) + u:kM(241051175, 4294967295)) + (u:kM(4053916121, uu) + u:kM(4053916121, (V(uu)))))
                    s, uu, Qu, Uu = K, P, P, u:YM(D)
                    local Fu = u:YM(Qu)
                    s[uu] = u:YM((x(Uu, 59) + u:kM(505532286, 4294967295)) + (u:kM(3789435010, Fu) + u:kM(3789435010, (V(Fu)))))
                    P -= 1
                  end
                elseif M < 10 then
                  r, m, G = k[P], j[P], q[P]
                  g = C[r]
                  d(C, r + 1, r + m, G + 1, g)
                elseif M ~= 11 then
                  r, m, G = q[P], j[P], k[P]
                  g = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                  c, D = _(G, T(1, g) - 1), J(G, g)
                  local s, uu, Uu = k, P, u:YM(c)
                  s[uu] = u:YM((u:kM(1967507232, Uu) + u:kM(1967507232, 95)) + (u:kM(359952832, (w(Uu, 95))) + u:kM(1967507233, (x(Uu, 95)))))
                  local s, Qu, Fu, Au = q, P, u:YM(r), u:YM(G)
                  s[Qu] = u:YM((x(Fu, 46) + u:kM(336867629, 4294967295)) + (u:kM(3958099667, Au) + u:kM(3958099667, (V(Au)))))
                  Qu, s, uu = j, P, u:YM(m)
                  Qu[s] = u:YM((x(uu, 105) + u:kM(2357005017, 4294967295)) + (u:kM(1937962279, uu) + u:kM(1937962279, (V(uu)))))
                  Au, s, Uu = K, P, u:YM(D)
                  Au[s] = u:YM((u:kM(2734050918, Uu) + u:kM(2734050918, 55)) + (u:kM(3121832756, (w(Uu, 55))) + u:kM(2734050919, (x(Uu, 55)))))
                  P -= 1
                end
              elseif M < 3 then
                if M < 1 then
                  r, m, G = j[P], k[P], q[P]
                  g = ((r < 16384) and 7) or (((r < 2097152) and 14) or 21)
                  c, D = _(r, T(1, g) - 1), J(r, g)
                  local s, uu, Uu = k, P, u:YM(m)
                  s[uu] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Uu)) + (u:kM(2147483648, 113) + u:kM(2147483647, (V((x(Uu, 113)))))))
                  q[P] = u:YM((x(u:YM(G), 25) + u:kM(1880306392, 4294967295)) + (u:kM(2414660904, 25) + u:kM(2414660904, (V(25)))))
                  local s, Qu, Fu, Au = j, P, u:YM(c), u:YM(g)
                  s[Qu] = u:YM((x(Fu, 114) + u:kM(718916863, 4294967295)) + (u:kM(3576050433, Au) + u:kM(3576050433, (V(Au)))))
                  Fu, uu, Uu = K, P, u:YM(D)
                  Fu[uu] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, Uu)) + (u:kM(2147483648, 29) + u:kM(2147483647, (V((x(Uu, 29)))))))
                  P -= 1
                elseif M ~= 2 then
                  r = j[P] + 1
                  for s = 1, q[P], 1 do
                    m = _(x(k[P], s), 127)
                    k[r] = x(k[r], m)
                    q[r] = x(q[r], m)
                    j[r] = x(j[r], m)
                    K[r] = x(K[r], m)
                    r += 1
                  end
                  K[P] = 11
                else
                  C[k[P]] = j[P]
                end
              elseif M >= 4 then
                if M ~= 5 then
                  local M, s, uu = Q, q[P], k[P]
                  local Uu = M[M[2]]
                  M = Uu[4]
                  local Qu = x(M[s], 27730616)
                  M[s] = Qu
                  s, M = Uu[7], Qu + 1
                  Qu = Z(s, M)
                  local Fu, Au
                  if Qu < 128 then
                    Fu, Au = Qu, M + 1
                  else
                    Uu = Z(s, M + 1)
                    if Uu < 128 then
                      Fu, Au = ((Qu - 128) * 128) + Uu, M + 2
                    else
                      local Yu = Z(s, M + 2)
                      if Yu < 128 then
                        Fu, Au = ((Qu - 128) + ((Uu - 128) * 16384)) + (Yu * 128), M + 3
                      else
                        local Tu = Z(s, M + 3)
                        Fu, Au = (((((Qu - 128) * 128) + ((Uu - 128) * 2097152)) + (Yu - 128)) + ((Tu % 128) * 16384)) + ((Tu - (Tu % 128)) * 2097152), M + 4
                      end
                    end
                  end
                  for M = Au, (Au + Fu) - 1, 1 do
                    E(s, M, (x(Z(s, M), uu)))
                  end
                  q[P], k[P], j[P], K[P] = 74, 25, 153, 11
                else
                  P = k[P]
                end
              else
                C[j[P]] = o[P]
              end
              P += 1
            end
          end
          if X == 195 then
            while true do
              local M = K[P]
              if M < 5 then
                if M >= 2 then
                  if M >= 3 then
                    if M ~= 4 then
                      r, m, G = j[P], q[P], k[P]
                      g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                      c, D = _(m, T(1, g) - 1), J(m, g)
                      local s, uu, Uu, Qu = j, P, u:YM(r), u:YM(G)
                      s[uu] = u:YM((x(Uu, 19) + u:kM(214080461, 4294967295)) + (u:kM(4080886835, Qu) + u:kM(4080886835, (V(Qu)))))
                      Qu, s, uu = k, P, u:YM(G)
                      Qu[s] = u:YM((u:kM(242951127, uu) + u:kM(242951127, 44)) + (u:kM(3809065042, (_(44, uu))) + u:kM(4052016170, (x(uu, 44)))))
                      uu, s, Qu = q, P, u:YM(c)
                      uu[s] = u:YM((x(Qu, 62) + u:kM(3683577, 4294967295)) + (u:kM(4291283719, Qu) + u:kM(4291283719, (V(Qu)))))
                      Qu, s, uu = K, P, u:YM(D)
                      Qu[s] = u:YM((x(uu, 110) + u:kM(1163384276, 4294967295)) + (u:kM(3131583020, uu) + u:kM(3131583020, (V(uu)))))
                      P -= 1
                    else
                      C[k[P]] = q[P]
                    end
                  else
                    X = j[P]
                    P = q[P] + 1
                    break
                  end
                elseif not (M ~= 1) then
                  local s, uu, Uu = Q, q[P], j[P]
                  local Qu = s[s[2]]
                  s = Qu[4]
                  local Fu = x(s[uu], 27730616)
                  s[uu] = Fu
                  s, uu = Qu[7], Fu + 1
                  Qu = Z(s, uu)
                  local Au, Yu
                  if Qu < 128 then
                    Au, Yu = Qu, uu + 1
                  else
                    Fu = Z(s, uu + 1)
                    if Fu < 128 then
                      Au, Yu = ((Qu - 128) * 128) + Fu, uu + 2
                    else
                      local Tu = Z(s, uu + 2)
                      if Tu < 128 then
                        Au, Yu = ((Qu - 128) + ((Fu - 128) * 16384)) + (Tu * 128), uu + 3
                      else
                        local Gu = Z(s, uu + 3)
                        Au, Yu = (((((Qu - 128) * 128) + ((Fu - 128) * 2097152)) + (Tu - 128)) + ((Gu % 128) * 16384)) + ((Gu - (Gu % 128)) * 2097152), uu + 4
                      end
                    end
                  end
                  for uu = Yu, (Yu + Au) - 1, 1 do
                    E(s, uu, (x(Z(s, uu), Uu)))
                  end
                  q[P], j[P], k[P], K[P] = 66, 224, 179, 0
                end
              elseif M >= 8 then
                if M >= 9 then
                  if M == 10 then
                    C[q[P]] = B[P]
                  else
                    r, m, G = j[P], q[P], k[P]
                    g = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                    c, D = _(G, T(1, g) - 1), J(G, g)
                    local B, s, uu, Uu = j, P, P, u:YM(r)
                    local Qu = u:YM(uu)
                    B[s] = u:YM((x(Uu, 118) + u:kM(2864397511, 4294967295)) + (u:kM(1430569785, Qu) + u:kM(1430569785, (V(Qu)))))
                    B, Qu, s, Uu = k, P, u:YM(c), u:YM(g)
                    B[Qu] = u:YM((x(s, 62) + u:kM(86844053, 4294967295)) + (u:kM(4208123243, Uu) + u:kM(4208123243, (V(Uu)))))
                    B, Uu, uu = q, P, u:YM(m)
                    B[Uu] = u:YM((u:kM(2443762462, uu) + u:kM(2443762462, 4)) + (u:kM(3702409668, (_(4, uu))) + u:kM(1851204835, (x(uu, 4)))))
                    Uu, s, B, Qu = K, P, u:YM(D), u:YM(c)
                    Uu[s] = u:YM((x(B, 84) + u:kM(2147483648, B)) + (u:kM(2147483648, Qu) + u:kM(2147483648, (x(B, Qu)))))
                    P -= 1
                  end
                else
                  P = C[q[P]]
                end
              elseif M >= 6 then
                if M == 7 then
                  r, m, G = j[P], k[P], q[P]
                  g = ((r < 16384) and 7) or (((r < 2097152) and 14) or 21)
                  c, D = _(r, T(1, g) - 1), J(r, g)
                  local M, B, s, uu = j, P, u:YM(c), u:YM(g)
                  M[B] = u:YM((x(s, 73) + u:kM(151327731, 4294967295)) + (u:kM(4143639565, uu) + u:kM(4143639565, (V(uu)))))
                  k[P] = u:YM((x(u:YM(m), 62) + u:kM(2178108161, 4294967295)) + (u:kM(2116859135, 62) + u:kM(2116859135, (V(62)))))
                  B, M, s, uu = q, P, P, u:YM(G)
                  local Uu = u:YM(s)
                  B[M] = u:YM((x(uu, 113) + u:kM(1711403101, 4294967295)) + (u:kM(2583564195, Uu) + u:kM(2583564195, (V(Uu)))))
                  s, Uu, uu, M = K, P, P, u:YM(D)
                  B = u:YM(uu)
                  s[Uu] = u:YM((x(M, 119) + u:kM(17402021, 4294967295)) + (u:kM(4277565275, B) + u:kM(4277565275, (V(B)))))
                  P -= 1
                else
                  P = q[P]
                end
              else
                r = k[P] + 1
                for M = 1, j[P], 1 do
                  m = _(x(q[P], M), 127)
                  j[r] = x(j[r], m)
                  k[r] = x(k[r], m)
                  q[r] = x(q[r], m)
                  K[r] = x(K[r], m)
                  r += 1
                end
                K[P] = 0
              end
              P += 1
            end
          end
          if X == 170 then
            while true do
              local M = K[P]
              if M >= 6 then
                if M < 9 then
                  if not (M < 7) then
                    if M ~= 8 then
                      C[q[P]] = j[P]
                    else
                      r = U[j[P]]
                      r[4][r[7]] = C[q[P]]
                    end
                  end
                elseif M < 11 then
                  if M ~= 10 then
                    P = j[P]
                  else
                    local U, B, s = Q, j[P], q[P]
                    local X = U[U[2]]
                    U = X[4]
                    local uu = x(U[B], 27730616)
                    U[B] = uu
                    B, U = X[7], uu + 1
                    uu = Z(B, U)
                    local Uu, Qu
                    if uu < 128 then
                      Uu, Qu = uu, U + 1
                    else
                      X = Z(B, U + 1)
                      if X < 128 then
                        Uu, Qu = ((uu - 128) * 128) + X, U + 2
                      else
                        local Fu = Z(B, U + 2)
                        if Fu < 128 then
                          Uu, Qu = ((uu - 128) + ((X - 128) * 16384)) + (Fu * 128), U + 3
                        else
                          local Au = Z(B, U + 3)
                          Uu, Qu = (((((uu - 128) * 128) + ((X - 128) * 2097152)) + (Fu - 128)) + ((Au % 128) * 16384)) + ((Au - (Au % 128)) * 2097152), U + 4
                        end
                      end
                    end
                    for U = Qu, (Qu + Uu) - 1, 1 do
                      E(B, U, (x(Z(B, U), s)))
                    end
                    j[P], q[P], k[P], K[P] = 127, 122, 147, 6
                  end
                elseif M == 12 then
                  r, m, G = k[P], j[P], q[P]
                  g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                  c, D = _(m, T(1, g) - 1), J(m, g)
                  local U, B, s, X = j, P, u:YM(c), u:YM(G)
                  U[B] = u:YM((x(s, 36) + u:kM(1973379934, 4294967295)) + (u:kM(2321587362, X) + u:kM(2321587362, (V(X)))))
                  s, X, U = q, P, u:YM(G)
                  s[X] = u:YM((u:kM(1555005033, U) + u:kM(1555005033, 61)) + (u:kM(1184957230, (w(U, 61))) + u:kM(1555005034, (x(U, 61)))))
                  U, X, B, s = k, P, u:YM(r), u:YM(G)
                  U[X] = u:YM((x(B, 110) + u:kM(2147483648, B)) + (u:kM(2147483648, s) + u:kM(2147483648, (x(B, s)))))
                  s, B, U = K, P, u:YM(D)
                  s[B] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, U)) + (u:kM(2147483648, 61) + u:kM(2147483647, (V((x(U, 61)))))))
                  P -= 1
                else
                  r, m, G = j[P], k[P], q[P]
                  g = ((m < 16384) and 7) or (((m < 2097152) and 14) or 21)
                  c, D = _(m, T(1, g) - 1), J(m, g)
                  local U, B, s, X = j, P, u:YM(r), u:YM(g)
                  U[B] = u:YM((x(s, 43) + u:kM(151708414, 4294967295)) + (u:kM(4143258882, X) + u:kM(4143258882, (V(X)))))
                  q[P] = u:YM((x(u:YM(G), 46) + u:kM(315704963, 4294967295)) + (u:kM(3979262333, 46) + u:kM(3979262333, (V(46)))))
                  s, U, X = k, P, u:YM(c)
                  s[U] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, X)) + (u:kM(2147483648, 58) + u:kM(2147483647, (V((x(X, 58)))))))
                  s, U, B, X = K, P, u:YM(D), u:YM(g)
                  s[U] = u:YM((x(B, 100) + u:kM(941209415, 4294967295)) + (u:kM(3353757881, X) + u:kM(3353757881, (V(X)))))
                  P -= 1
                end
              elseif M < 3 then
                if M < 1 then
                  if a then
                    for U in Y, a, nil do
                      if a then
                        local B = a[U]
                        if B then
                          B[4] = B
                          B[6] = C[U]
                          B[7] = 6
                          a[U] = nil
                        end
                      end
                    end
                  end
                  return h, h
                elseif M ~= 2 then
                  C[j[P]] = o[P]
                else
                  r, m, G = k[P], j[P], q[P]
                  g = ((G < 16384) and 7) or (((G < 2097152) and 14) or 21)
                  c, D = _(G, T(1, g) - 1), J(G, g)
                  local U, T, B, o = j, P, u:YM(m), u:YM(g)
                  U[T] = u:YM((x(B, 40) + u:kM(303923855, 4294967295)) + (u:kM(3991043441, o) + u:kM(3991043441, (V(o)))))
                  T, o, B = q, P, u:YM(c)
                  T[o] = u:YM((u:kM(2147483649, 4294967295) + u:kM(2147483648, B)) + (u:kM(2147483648, 24) + u:kM(2147483647, (V((x(B, 24)))))))
                  k[P] = u:YM((x(u:YM(r), 22) + u:kM(3991418261, 4294967295)) + (u:kM(303549035, 22) + u:kM(303549035, (V(22)))))
                  K[P] = u:YM((x(u:YM(D), 24) + u:kM(255303640, 4294967295)) + (u:kM(4039663656, 24) + u:kM(4039663656, (V(24)))))
                  P -= 1
                end
              elseif M < 4 then
                P = C[q[P]]
              elseif M ~= 5 then
                r, m, G = k[P], j[P], q[P]
                g = C[r]
                d(C, r + 1, r + m, G + 1, g)
              else
                r = j[P] + 1
                for U = 1, q[P], 1 do
                  m = _(x(k[P], U), 127)
                  j[r] = x(j[r], m)
                  q[r] = x(q[r], m)
                  k[r] = x(k[r], m)
                  K[r] = x(K[r], m)
                  r += 1
                end
                K[P] = 6
              end
              P += 1
            end
          end
        end, ...)
        if z then
          if H then
            if N then
              return C[S](y(e, 1, e[p]))
            else
              return C[S](y(C, S + 1, e))
            end
          elseif S then
            if N then
              return y(S, 1, S[p])
            else
              return y(C, S, e)
            end
          end
        else
          local U, T = a, C
          if U then
            for G in Y, U, nil do
              if U then
                local Y = U[G]
                if Y then
                  Y[4] = Y
                  Y[6] = T[G]
                  Y[7] = 6
                  U[G] = nil
                end
              end
            end
          end
          f(u, H, P, R)
        end
      end
    elseif v <= 1 then
      F = Q[Q[5]]
      A = Q[Q[6]]
      local u = Q[Q[16]]
      v, i, l, n, L, O, b, I, t, W = 0, 9, 13, 8, 11, 12, 14, 15, 7, Q[10]
    else
      return i
    end
  end
end, [23] = buffer.writei32, YM = function(u, u)
  return u % 4294967296
end, [125] = string.gsub, [1276] = function(u, u, u, u, U, U, U)
  return function(U)
    for U, U in ipairs(u[1]) do
      if U.conn then
        U.conn:Disconnect()
      end
    end
    table.clear(u[1])
  end
end, [1935] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q, F = U:WaitForChild("Humanoid", 5), U:WaitForChild("HumanoidRootPart", 5)
    if not Q or not F then
      return
    end
    warn("Hook character")
    Q.Died:Connect(function()
      local U = {pos = F.Position, at = tick(), dungeon = (self and nil) or nil, target = (u[1].currentTarget and u[1].currentTarget.Name) or nil, state = u[1].state, hitbox = #u[2], dungeon = u[3]:GetdungeonName()}
      table.insert(u[4].DeathSpots, U)
      while #u[4].DeathSpots > u[4].MAX_DEATHS do
        table.remove(u[4].DeathSpots, 1)
      end
      u[5][4][u[5][7]]("target", "\224\184\149\224\184\178\224\184\162\224\184\151\224\184\181\224\185\136 (%.0f, %.0f, %.0f) | state=%s | \224\185\128\224\184\155\224\185\137\224\184\178 %s | hitbox %d", U.pos.X, U.pos.Y, U.pos.Z, U.state, tostring(U.target), U.hitbox)
    end)
  end
end, [50] = table.insert, J = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 72 then
    if Y <= 71 then
      local H, N = u[64](F), u[64](F)
      U[U[9]] = H
      U[U[8]] = N
      N = 1 + 0
      local U, S = {N, T, 1 - N, nil, F + 0}, G[1]
      return 1, 67, U, G[2], S, H, A, Q
    else
      return 2
    end
  elseif Y <= 73 then
    local U = u[39](z, A + 2)
    local u, z = (not (128 > U) and 243) or 180, G[1]
    return 1, u, T, G[2], z, F, A, U
  elseif Y <= 74 then
    local u, U = A + 1, G[1]
    return 1, 83, T, G[2], U, F, u, Q
  else
    local u, U = A + 1, G[1]
    return 1, 257, T, G[2], U, F, u, Q
  end
end, [3113] = function(u, u, u, u)
  return function(U, Q, F)
    F = F or u[1].rayParams
    local A = U
    local Y = Q
    local T = 0
    for G = 1, u[2].maxSolidHops, 1 do
      U = workspace:Raycast(A, Y, F)
      if not U then
        return nil, nil
      end
      T += U.Distance
      if U.Instance.CanCollide then
        return U, T
      end
      G, Q = Y.Unit, Y.Magnitude - (U.Distance + 0.05)
      if Q <= 0 then
        return nil, nil
      end
      A, Y, T = U.Position + (G * 0.05), G * Q, T + 0.05
    end
    return nil, nil
  end
end, [10780] = function(u, u, u, u)
  return function(U, Q)
    local F = u[1].bb and u[1].bb.memory
    if (not F or not F.mid) or not F.model.Parent then
      return false
    end
    local A = Q - F.at
    if (A < 5.5) or (A > 11.2) then
      return false
    end
    for Y = (F.doneCache or 0) + 1, 4, 1 do
      Q = u[2].BonusBoss.memHitT[Y]
      if (A >= (Q - 0.25)) and (A <= (Q + 0.4)) then
        local u = F.seq[Y] or (F.guess and F.guess[Y])
        if u then
          local Q = ((u == "L") and F.leftDir) or -F.leftDir
          if (((U.X - F.mid.X) * Q.X) + ((U.Z - F.mid.Z) * Q.Z)) < 5.5 then
            return true
          end
        end
      end
    end
    return false
  end
end, [6952] = function(u, u, u, u, U, U)
  return function(U)
    local Q = u[1].walkPathPool[U]
    if Q and Q.Parent then
      return Q
    end
    Q = Instance.new("Part")
    Q.Name = "_walkPath"
    Q.Shape = Enum.PartType.Ball
    Q.Size = Vector3.new(1, 1, 1)
    Q.Material = Enum.Material.Neon
    Q.Anchored = true
    Q.CanCollide = false
    Q.CanQuery = false
    Q.CanTouch = false
    Q.Parent = workspace
    u[1].walkPathPool[U] = Q
    return Q
  end
end, Zq = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if N <= 248 then
    local e, D, m, g = u[39](G, H + 3), 128 * (T - 128), 2097152 * (Q - 128), z - 128
    local z = (e % 128) * 16384
    local c, r, M = (((e - (e % 128)) * 2097152) + (g + m)) + (z + D), H + 4, S[1]
    return 103, Y, S[2], M, r, F, c, U
  elseif N <= 249 then
    A[T] = Q
    local Q, z = u[64](F), u[64](F)
    A[A[8]] = Q
    A[A[14]] = z
    z = 1 + 0
    local A, N = {1 - z, Y, z, F + 0, nil}, S[1]
    return 60, A, S[2], N, H, Q, T, U
  else
    local U = u[39](G, H + 2)
    local u, Q = (not not (128 <= U) and 140) or 35, S[1]
    return u, Y, S[2], Q, H, F, T, U
  end
end, [74] = coroutine.status, [1386] = function(u, u, u, u)
  return function(U)
    tick()
    local U = 0
    for Q, F in ipairs(u[1]) do
      if F.ownerName then
        U += 1
        Q = F.ownerHum
        print(("[OWNER] %-22s <- %s | %s"):format((F.part and F.part.Name) or "?", F.ownerName, (not Q and "\224\184\171\224\184\178\224\184\161\224\184\173\224\184\153\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 (\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153\224\184\155\224\184\129\224\184\149\224\184\180)") or (((Q.Parent and (Q.Health > 0)) and (("\224\184\161\224\184\173\224\184\153\224\184\162\224\184\177\224\184\135\224\184\173\224\184\162\224\184\185\224\185\136 HP %.0f"):format(Q.Health))) or "\224\184\161\224\184\173\224\184\153\224\184\149\224\184\178\224\184\162\224\185\129\224\184\165\224\185\137\224\184\167 -> \224\184\136\224\184\176\224\184\150\224\184\185\224\184\129\224\184\165\224\184\154")))
      end
    end
    print(("hitbox \224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148 %d | \224\184\156\224\184\185\224\184\129\224\184\129\224\184\177\224\184\154\224\184\161\224\184\173\224\184\153 %d"):format(#u[1], U))
  end
end, X = function(u, U, Q, F, A, Y, T, G)
  if U <= 17 then
    local z, H = G + 1, Y[1]
    return 162, Y[2], H, z, Q
  elseif U <= 18 then
    local U, z, H, N = u[39](A, 3 + G), 128 * (Q - 128), (F - 128) * 2097152, T - 128
    local S = 16384 * (U % 128)
    local e, D, m = ((2097152 * (U - (U % 128))) + S) + ((z + H) + N), 4 + G, Y[1]
    return 304, Y[2], m, D, e
  else
    local U, z, H, N = u[39](A, G + 3), (Q - 128) * 128, 2097152 * (F - 128), T - 128
    local u = (U % 128) * 16384
    local Q, F, A = (((2097152 * (U - (U % 128))) + N) + u) + (z + H), G + 4, Y[1]
    return 262, Y[2], A, F, Q
  end
end, Oj = function(u, U, Q, F, A, Y, T)
  if F <= 182 then
    local F, G = A - 128, (Q - 128) * 16384
    local z, H = (128 * Y) + (F + G), T + 3
    return 168, z
  else
    local F, G, z, H = u[39](Y, T + 3), 128 * (A - 128), (Q - 128) * 2097152, U - 128
    local u, U = 16384 * (F % 128), (F - (F % 128)) * 2097152
    local Q, F = u + (((H + z) + U) + G), T + 4
    return 168, Q
  end
end, Iq = function(u, U, Q, F, A, Y, T, G, z, H)
  if Q <= 314 then
    if Q <= 313 then
      local N, S, e = F[2], F[3], F[4]
      local D, m = N + S, S <= 0
      local N, S, g = not m, D >= e, D <= e
      e = (m and S) or (N and g)
      F[2] = D
      if e then
        g = U[1]
        return 168, U[2], g, G, D, Y
      else
        N = U[1]
        return 9, U[2], N, G, A, Y
      end
    else
      local F = u[39](z, 2 + G)
      local u, z = (not (F >= 128) and 98) or 327, U[1]
      return u, U[2], z, G, A, F
    end
  elseif Q <= 315 then
    local u, F = ((1 == T) and 308) or 275, U[1]
    return u, U[2], F, G, A, Y
  elseif Q <= 316 then
    local u, Q = G + 1, U[1]
    return 69, U[2], Q, u, A, Y
  else
    local u, Q, F = ((A - 128) * 128) + H, 2 + G, U[1]
    return 47, U[2], F, Q, u, Y
  end
end, i = {}, [9485] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = u[1].bb.preTarget
    if not A then
      return false
    end
    local Y, T = u[2].BonusBoss.preTarget, tick() - A.at
    if T > (Y.total + 0.4) then
      u[1].bb.preTarget = nil
      u[1].bb.dump = nil
      return false
    end
    if not u[1].bb.dump then
      local G, z, H = u[2].BonusBoss.longLine.center, {}, {-8, -28.5, 151.5, 172}
      for N, S in ipairs(H) do
        N = math.rad(S)
        z[#z + 1] = G + (Vector3.new(math.cos(N), 0, math.sin(N)) * 60)
      end
      H, A = u[3][4][u[3][7]](Q), u[2].BonusBoss.sweepMid
      local N, S = Vector3.new(-A.axis.Z, 0, A.axis.X), Vector3.new(927, 0, -8)
      local e, D, m
      for g = -84, 84, 6 do
        for c = -84, 84, 6 do
          local r = G + Vector3.new(g, 0, c)
          local G, g = (r - A.center):Dot(A.axis), (r - A.center):Dot(N)
          if ((((math.abs(g) <= 20) and (math.abs(G) >= 25)) and (math.abs(G) <= 48)) and ((r - S).Magnitude >= 40)) and ((r - u[3][4][u[3][7]](F)).Magnitude >= 40) then
            local G, N, S = true
            for g, M in ipairs(z) do
              c = (M - r).Magnitude
              if c < 30 then
                G = false
                break
              end
              local z = c + (((g <= 2) and 0) or 40)
              if not N or (z < S) then
                N, S = M, z
              end
            end
            if G then
              local G, z = Vector3.new(r.X, Q.Y, r.Z), (r - H).Magnitude + (S * 0.5)
              if ((not e or (z < D)) and (U:LeashOK(G))) and not U:IsBlocked(G) then
                e, D, m = G, z, N
              end
            end
          end
        end
      end
      e = e and (u[4][4][u[4][7]](U, e, Q.Y))
      if e then
        u[1].bb.dump, u[1].bb.station = e, m
        u[5][4][u[5][7]]("state", "bbstation", 1, "PreTarget: \224\184\151\224\184\180\224\185\137\224\184\135\224\185\129\224\184\173\224\185\136\224\184\135 (%.0f,%.0f) \226\134\146 \224\184\170\224\184\150\224\184\178\224\184\153\224\184\181 (%.0f,%.0f)", e.X, e.Z, m.X, m.Z)
      end
    end
    if not u[1].bb.dump then
      A = u[3][4][u[3][7]](Q - F)
      A = (if A.Magnitude < 1 then (Vector3.new(1, 0, 0)) else A).Unit
      local G, z, H, N = ipairs, {Y.dumpDist, Y.dumpDist - 10, Y.dumpDist + 10}
      for S, e in G(z) do
        for G = 0, 345, 15 do
          S = math.rad(G)
          G = u[4][4][u[4][7]](U, F + (Vector3.new(math.cos(S), 0, math.sin(S)) * e), Q.Y)
          if U:LeashOK(G) and not U:IsBlocked(G) then
            local z = u[3][4][u[3][7]](G - Q).Magnitude + ((u[2].bbSweepMid(G) and 0) or 60)
            if not H or (z < N) then
              H, N = G, z
            end
          end
        end
      end
      u[1].bb.dump = H or (u[4][4][u[4][7]](U, u[6][4][u[6][7]](F + (A * Y.dumpDist)), Q.Y))
    end
    local F = u[1].bb.dump
    local A = Y.total - T
    if A > ((u[3][4][u[3][7]](F - Q).Magnitude / u[7][4][u[7][7]](U)) + Y.margin) then
      return false
    end
    if u[8][4][u[8][7]](U, Q, F, 3, "PreTarget") then
      u[9][4][u[9][7]]("bonus", "PreTarget: \224\184\162\224\184\183\224\184\153\224\184\163\224\184\173\224\185\129\224\184\173\224\185\136\224\184\135\224\184\149\224\184\129 (%.1f \224\184\167\224\184\180)", A)
    else
      u[9][4][u[9][7]]("bonus", "PreTarget: \224\185\132\224\184\155\224\184\151\224\184\180\224\185\137\224\184\135\224\185\129\224\184\173\224\185\136\224\184\135 (%.1f \224\184\167\224\184\180)", A)
    end
    return true
  end
end, [7226] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    u[1].memH = 1
    local F, A = pcall(u[2].bbVolleyMove0, U, Q)
    u[1].memH = nil
    if not F then
      error(A, 0)
    end
    return A
  end
end, [47] = buffer.tostring, [8237] = function(u, u, u, u, U, U, U)
  return function(U, U)
    local Q = tick()
    for F, A in ipairs(u[1]) do
      local Y = A.part
      if not u[2][4][u[2][7]](A, Q) then
        local Q = (Y.Parent and Y.Parent.Name) or Y.Name
        if (u[3].BigEscape[Q] or u[3].BigEscape[Y.Name]) and not (((Q == "firstBossJumpSlam") and u[3].Mid) and u[3].Mid.enabled) then
          F = u[4][4][u[4][7]](A, Y)
          if u[5][4][u[5][7]](A, Y.CFrame, F, U) then
            return A, Q, math.max(F.X, F.Z) / 2
          end
        end
      end
    end
    return nil
  end
end, Ej = function(u, U, Q, F, A, Y, T, G)
  if F <= 209 then
    local z = u[39](A, 1)
    return ((128 > z) and 165) or 159, z, Q, T
  elseif F <= 210 then
    local u = T - 128
    local F = (((Y - 128) * 16384) + (G * 128)) + u
    return 118, U, 3 + Q, F
  else
    return 164, U - 4294967296, Q, T
  end
end, [14023] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A = u[1].bb.lastMemAt
    local Y = A and (tick() - A)
    if (not Y or (Y < 12.5)) or (Y > 25.5) then
      return false
    end
    A = u[2][4][u[2][7]](u[3].BonusBoss.longLine.center - F)
    A = ((A.Magnitude > 1) and A.Unit) or (Vector3.new(-1, 0, 0))
    local T = u[4][4][u[4][7]](U, Vector3.new(F.X + (A.X * 22), Q.Y, F.Z + (A.Z * 22)), Q.Y)
    if U:IsBlocked(T) then
      return false
    end
    if u[5][4][u[5][7]](U, Q, T, 4, "GoodWait") then
      u[6][4][u[6][7]]("bonus", "Good orb: \224\184\163\224\184\173\224\185\131\224\184\129\224\184\165\224\185\137\224\184\154\224\184\173\224\184\170 (\224\184\138\224\185\136\224\184\167\224\184\135 Good %.1f \224\184\167\224\184\180)", Y - 13.6)
    else
      u[6][4][u[6][7]]("bonus", "Good orb: \224\185\132\224\184\155\224\184\163\224\184\173\224\185\131\224\184\129\224\184\165\224\185\137\224\184\154\224\184\173\224\184\170 %.0f studs", u[2][4][u[2][7]](T - Q).Magnitude)
    end
    return true
  end
end, [2387] = function(u, u, u)
  return function(u, U)
    local Q, F = math.cos(U), math.sin(U)
    return Vector3.new((u.X * Q) - (u.Z * F), 0, (u.X * F) + (u.Z * Q))
  end
end, [18] = coroutine.resume, [10933] = function(u, u, u, u, U)
  return function(U)
    u[1].ROUTE_POINTS = {}
    u[1].ROUTE_LINKS = {}
    if u[2] == "Desert Temple" then
      u[1].ROUTE_POINTS, u[1].ROUTE_LINKS = u[3]:GetDesertTemplePath()
    elseif u[2] == "Winter Outpost" then
      u[1].ROUTE_POINTS = {{66, 49, 130}, {9, 48, 77}, {-6, 49, 23}, {32, 50, -48}, {53, 49, -109}, {25, 49, -174}, {52, 49, -237}, {44, 52, -313}, {45, 49, -378}, {33, 49, -421}, {40, 49, -480}, {43, 53, -547}, {44, 53, -598}, {49, 54, -673}, {54, 57, -747}, {61, 57, -808}, {52, 57, -876}, {45, 57, -956}, {44, 53, -1030}, {46, 53, -1100}, {43, 59, -1166}, {38, 54, -1231}, {44, 54, -1310}, {43, 59, -1368}, {41, 55, -1431}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24}}
      warn("Winter Outpost.")
    elseif u[2] == "Pirate Island" then
      u[1].ROUTE_POINTS = {{-145, 240, 439}, {-146, 241, 383}, {-137, 241, 304}, {-128, 241, 226}, {-99, 241, 165}, {-107, 269, 72}, {-109, 273, 3}, {-113, 273, -76}, {-105, 273, -154}, {-108, 273, -242}, {-107, 269, -268}, {-106, 262, -288}, {-105, 245, -330}, {-105, 245, -369}, {-102, 244, -403}, {-102, 249, -415}, {-101, 249, -432}, {-101, 245, -467}, {-105, 243, -503}, {-104, 239, -553}, {-104, 237, -610}, {-58, 237, -646}, {-17, 237, -667}, {-4, 240, -716}, {-1, 241, -773}, {-17, 240, -828}, {-28, 239, -863}, {-79, 237, -866}, {-124, 237, -866}, {-184, 237, -867}, {-238, 237, -866}, {-278, 237, -866}, {-301, 241, -843}, {-336, 262, -793}, {-377, 265, -781}, {-437, 262, -800}, {-466, 263, -824}, {-476, 260, -879}, {-479, 260, -947}, {-481, 261, -1010}, {-483, 262, -1046}, {-483, 270, -1064}, {-482, 273, -1087}, {-481, 272, -1109}, {-480, 263, -1131}, {-481, 261, -1172}, {-482, 261, -1242}, {-494, 260, -1298}, {-533, 261, -1361}, {-568, 264, -1402}, {-606, 273, -1438}, {-635, 280, -1467}, {-669, 289, -1498}, {-687, 290, -1509}, {-718, 290, -1480}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14, 15}, [14] = {13, 15, 16}, [15] = {13, 14, 16}, [16] = {14, 15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41, 42}, [41] = {40, 42}, [42] = {40, 41, 43}, [43] = {42, 44}, [44] = {43, 45, 46}, [45] = {44, 46}, [46] = {44, 45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54}}
      warn("Pirate Island.")
    elseif u[2] == "King's Castle" then
      u[1].ROUTE_POINTS = {{-188, 5, 973}, {-191, 5, 921}, {-185, 5, 867}, {-168, 5, 809}, {-138, 5, 754}, {-109, 5, 701}, {-76, 5, 651}, {-40, 5, 605}, {-17, 5, 549}, {-13, 5, 471}, {-13, 5, 404}, {-12, 5, 340}, {-11, 5, 285}, {-11, 5, 209}, {-11, 5, 158}, {-11, 5, 105}, {-10, 5, 68}, {-10, 5, 25}, {-10, 5, -29}, {-11, 5, -76}, {-11, 6, -138}, {-11, 6, -173}, {-66, 5, -174}, {-100, 6, -174}, {-127, 6, -174}, {-127, 6, -223}, {-127, 6, -257}, {-126, 6, -287}, {-130, 6, -246}, {-131, 6, -202}, {-112, 6, -170}, {-41, 5, -172}, {18, 5, -170}, {18, 5, -205}, {28, 5, -206}, {29, 5, -237}, {29, 6, -272}, {29, 6, -311}, {29, 5, -348}, {30, 5, -390}, {29, 6, -442}, {32, 7, -485}, {33, 7, -529}, {32, 7, -574}, {33, 7, -617}, {-10, 7, -617}, {-63, 7, -616}, {-108, 7, -616}, {-155, 7, -616}, {-219, 7, -616}, {-238, 6, -616}, {-270, -8, -617}, {-305, -8, -617}, {-340, -8, -616}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22, 32, 33, 34, 35}, [22] = {21, 23, 32, 33}, [23] = {22, 24, 25, 31, 32}, [24] = {23, 25, 31, 32}, [25] = {23, 24, 26, 29, 30, 31}, [26] = {25, 27, 28, 29, 30}, [27] = {26, 28, 29, 30}, [28] = {26, 27, 29}, [29] = {25, 26, 27, 28, 30}, [30] = {25, 26, 27, 29, 31}, [31] = {23, 24, 25, 30, 32}, [32] = {21, 22, 23, 24, 31, 33}, [33] = {21, 22, 32, 34, 36}, [34] = {21, 33, 35, 36}, [35] = {21, 34, 36, 37}, [36] = {33, 34, 35, 37, 38}, [37] = {35, 36, 38, 39}, [38] = {36, 37, 39, 40}, [39] = {37, 38, 40}, [40] = {38, 39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52, 53}, [52] = {51, 53, 54}, [53] = {51, 52, 54}, [54] = {52, 53}}
      warn("King's Castle")
    elseif u[2] == "The Underworld" then
      u[1].ROUTE_POINTS = {{480, 88, 500}, {480, 88, 463}, {480, 81, 443}, {480, 70, 418}, {480, 69, 362}, {480, 69, 309}, {480, 68, 250}, {481, 68, 182}, {480, 68, 117}, {479, 69, 51}, {470, 68, -35}, {535, 68, -54}, {610, 68, -64}, {661, 68, -69}, {703, 68, -72}, {748, 67, -76}, {799, 67, -80}, {848, 68, -85}, {909, 68, -91}, {987, 68, -101}, {1061, 68, -109}, {1124, 67, -115}, {1210, 67, -122}, {1303, 68, -130}, {1380, 68, -138}, {1446, 68, -144}, {1499, 67, -148}, {1563, 67, -154}, {1632, 67, -159}, {1707, 67, -164}, {1735, 63, -165}, {1794, 61, -166}, {1869, 61, -176}, {1945, 61, -175}, {2031, 60, -176}, {2103, 60, -176}, {2213, 60, -175}, {2293, 60, -174}, {2371, 60, -174}, {2444, 60, -176}, {2503, 60, -176}, {2564, 60, -175}, {2613, 60, -176}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42}}
    elseif u[2] == "Samurai Palace" then
      u[1].ROUTE_POINTS = {{-114, 5, -147}, {-81, 5, -115}, {-40, 5, -75}, {-11, 5, -46}, {32, 5, -23}, {32, 9, 29}, {33, 16, 57}, {33, 17, 99}, {27, 17, 140}, {28, 17, 182}, {-37, 17, 215}, {-37, 17, 272}, {-7, 17, 273}, {-3, 17, 299}, {22, 18, 297}, {42, 39, 297}, {74, 71, 296}, {88, 73, 284}, {69, 73, 247}, {45, 73, 211}, {-13, 73, 230}, {-59, 70, 232}, {-123, 71, 233}, {-194, 70, 234}, {-238, 69, 261}, {-283, 69, 306}, {-323, 69, 328}, {-290, 70, 401}, {-256, 70, 466}, {-222, 69, 527}, {-151, 69, 566}, {-77, 67, 581}, {18, 67, 598}, {79, 69, 600}, {145, 70, 603}, {205, 69, 618}, {191, 69, 675}, {179, 69, 735}, {165, 69, 801}, {128, 69, 899}, {88, 69, 944}, {10, 69, 972}, {-48, 69, 987}, {-115, 73, 997}, {-186, 71, 996}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15, 16}, [15] = {14, 16, 17}, [16] = {14, 15, 17}, [17] = {15, 16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44}}
      warn("Samurai Palace.")
    elseif u[2] == "The Canals" then
      u[1].ROUTE_POINTS = {{-163, 15, 88}, {-173, 15, 89}, {-182, 15, 88}, {-190, 15, 88}, {-199, 15, 88}, {-207, 15, 89}, {-216, 15, 89}, {-223, 18, 89}, {-229, 22, 89}, {-236, 23, 89}, {-240, 23, 83}, {-245, 23, 77}, {-248, 23, 71}, {-250, 23, 64}, {-251, 23, 56}, {-252, 23, 50}, {-255, 23, 40}, {-257, 23, 31}, {-259, 23, 17}, {-261, 23, 12}, {-262, 23, 0}, {-264, 23, -9}, {-265, 23, -18}, {-267, 23, -28}, {-267, 23, -37}, {-268, 23, -46}, {-271, 23, -54}, {-266, 23, -59}, {-260, 23, -64}, {-255, 26, -68}, {-250, 28, -72}, {-245, 30, -77}, {-240, 31, -81}, {-234, 30, -86}, {-229, 28, -90}, {-224, 24, -95}, {-219, 20, -100}, {-214, 17, -105}, {-209, 15, -109}, {-205, 15, -114}, {-200, 15, -119}, {-191, 15, -126}, {-184, 15, -134}, {-175, 15, -142}, {-166, 15, -148}, {-154, 15, -146}, {-148, 15, -147}, {-139, 15, -144}, {-132, 15, -145}, {-126, 15, -146}, {-118, 15, -144}, {-112, 15, -145}, {-107, 15, -143}, {-102, 15, -144}, {-99, 15, -137}, {-100, 15, -131}, {-100, 15, -124}, {-99, 15, -117}, {-99, 15, -111}, {-99, 15, -104}, {-99, 15, -98}, {-98, 15, -90}, {-98, 15, -83}, {-98, 15, -73}, {-98, 15, -69}, {-98, 15, -62}, {-98, 15, -54}, {-98, 15, -48}, {-99, 15, -41}, {-99, 15, -35}, {-99, 15, -27}, {-99, 15, -18}, {-98, 15, -11}, {-99, 15, -4}, {-99, 15, 3}, {-98, 15, 10}, {-90, 15, 12}, {-81, 15, 11}, {-72, 15, 12}, {-65, 15, 12}, {-59, 15, 12}, {-51, 15, 11}, {-36, 15, 10}, {-26, 15, 9}, {-18, 15, 9}, {-8, 15, 9}, {1, 15, 8}, {11, 15, 9}, {20, 15, 9}, {28, 15, 8}, {39, 15, 8}, {50, 15, 8}, {60, 15, 8}, {69, 15, 7}, {77, 15, 7}, {86, 15, 7}, {94, 15, 6}, {100, 15, 6}, {111, 15, 6}, {120, 15, 4}, {125, 15, 0}, {129, 15, -3}, {134, 15, -6}, {136, 15, -15}, {135, 15, -22}, {136, 15, -29}, {135, 15, -40}, {135, 15, -50}, {135, 17, -56}, {134, 21, -63}, {135, 24, -69}, {135, 27, -76}, {135, 31, -83}, {136, 33, -89}, {136, 36, -94}, {136, 39, -100}, {137, 39, -108}, {137, 39, -115}, {137, 39, -121}, {145, 39, -122}, {151, 39, -122}, {159, 39, -122}, {167, 39, -122}, {174, 39, -122}, {181, 39, -122}, {189, 39, -122}, {196, 39, -122}, {203, 39, -122}, {210, 39, -122}, {217, 39, -121}, {224, 39, -121}, {231, 39, -121}, {238, 39, -121}, {245, 39, -121}, {252, 39, -121}, {259, 39, -121}, {265, 39, -121}, {273, 39, -121}, {280, 39, -121}, {288, 39, -121}, {295, 39, -120}, {302, 39, -120}, {309, 39, -119}, {309, 39, -114}, {309, 39, -107}, {310, 39, -101}, {310, 39, -95}, {310, 39, -89}, {310, 40, -83}, {310, 43, -79}, {311, 45, -73}, {311, 47, -67}, {311, 48, -61}, {311, 47, -55}, {310, 47, -49}, {310, 44, -42}, {310, 41, -36}, {310, 38, -31}, {310, 38, -25}, {310, 38, -18}, {311, 38, -8}, {312, 38, -2}, {309, 38, 3}, {310, 38, 9}, {310, 38, 15}, {311, 38, 18}, {306, 38, 18}, {299, 37, 18}, {293, 36, 19}, {286, 36, 19}, {281, 34, 18}, {276, 29, 18}, {272, 29, 18}, {268, 29, 17}, {263, 28, 17}, {257, 23, 18}, {253, 22, 18}, {248, 21, 18}, {243, 16, 18}, {238, 15, 19}, {234, 15, 19}, {229, 15, 19}, {224, 15, 19}, {221, 15, 25}, {217, 15, 30}, {213, 15, 35}, {208, 15, 40}, {204, 15, 45}, {200, 15, 51}, {195, 15, 56}, {191, 15, 61}, {187, 15, 66}, {181, 15, 72}, {176, 15, 77}, {171, 15, 82}, {167, 15, 86}, {160, 15, 89}, {154, 15, 89}, {148, 15, 89}, {141, 15, 89}, {135, 15, 89}, {129, 15, 89}, {124, 15, 89}, {118, 15, 89}, {112, 15, 90}, {106, 15, 89}, {101, 15, 89}, {94, 15, 89}, {88, 15, 88}, {80, 15, 88}, {72, 15, 86}, {65, 15, 86}, {55, 15, 86}, {46, 15, 87}, {38, 15, 87}, {30, 15, 87}, {25, 15, 87}, {17, 15, 87}, {13, 15, 87}, {9, 15, 87}, {1, 15, 87}, {-6, 15, 88}, {-14, 15, 88}, {-22, 15, 88}, {-30, 15, 89}, {-39, 15, 89}, {-47, 15, 88}, {-54, 15, 88}, {-61, 15, 88}, {-68, 15, 88}, {-75, 15, 88}, {-80, 15, 87}, {-92, 15, 89}, {-96, 15, 89}, {-101, 15, 89}, {-101, 15, 96}, {-100, 15, 105}, {-100, 15, 116}, {-101, 15, 126}, {-100, 19, 135}, {-99, 23, 142}, {-99, 23, 148}, {-99, 23, 155}, {-100, 23, 162}, {-99, 23, 168}, {-99, 23, 174}, {-99, 23, 180}, {-99, 23, 186}, {-99, 23, 192}, {-99, 23, 197}, {-99, 23, 203}, {-99, 23, 208}, {-100, 23, 215}, {-109, 23, 216}, {-115, 23, 216}, {-120, 21, 216}, {-126, 18, 216}, {-130, 15, 216}, {-134, 15, 216}, {-139, 15, 217}, {-142, 15, 217}, {-142, 15, 221}, {-142, 15, 227}, {-142, 15, 232}, {-142, 15, 236}, {-141, 15, 241}, {-141, 15, 246}, {-142, 15, 252}, {-142, 15, 257}, {-141, 15, 262}, {-142, 15, 265}, {-142, 15, 267}, {-147, 16, 267}, {-154, 15, 267}, {-160, 15, 268}, {-166, 15, 267}, {-172, 15, 268}, {-179, 15, 267}, {-185, 15, 267}, {-192, 15, 268}, {-201, 15, 267}, {-208, 15, 267}, {-216, 15, 267}, {-222, 15, 268}, {-229, 15, 267}, {-237, 15, 267}, {-246, 15, 268}, {-254, 15, 267}, {-261, 15, 267}, {-267, 15, 266}, {-273, 15, 267}, {-277, 15, 268}, {-282, 15, 267}, {-286, 15, 267}, {-291, 15, 267}, {-296, 15, 266}}
      u[1].ROUTE_LINKS = {[1] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, [2] = {1, 3, 4, 5, 6, 7, 8, 9, 10}, [3] = {1, 2, 4, 5, 6, 7, 8, 9, 10}, [4] = {1, 2, 3, 5, 6, 7, 8, 9}, [5] = {1, 2, 3, 4, 6, 7, 8, 9}, [6] = {1, 2, 3, 4, 5, 7, 8, 9}, [7] = {1, 2, 3, 4, 5, 6, 8, 9}, [8] = {1, 2, 3, 4, 5, 6, 7, 9}, [9] = {1, 2, 3, 4, 5, 6, 7, 8, 10}, [10] = {1, 2, 3, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19}, [11] = {1, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20}, [12] = {10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 21}, [13] = {10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21}, [14] = {10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 21, 22}, [15] = {10, 11, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23}, [16] = {10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24}, [17] = {10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23, 24, 25}, [18] = {10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26}, [19] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28}, [20] = {11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29}, [21] = {12, 13, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 28, 29}, [22] = {14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30}, [23] = {15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31}, [24] = {16, 17, 18, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 32}, [25] = {17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28, 29, 30, 31, 32}, [26] = {18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31, 32, 33}, [27] = {19, 20, 21, 22, 23, 24, 25, 26, 28, 29, 30, 31, 32, 33}, [28] = {19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32}, [29] = {20, 21, 22, 23, 24, 25, 26, 27, 28, 30, 31}, [30] = {22, 23, 24, 25, 26, 27, 28, 29, 31}, [31] = {23, 25, 26, 27, 28, 29, 30, 32, 33}, [32] = {24, 25, 26, 27, 28, 31, 33, 34}, [33] = {26, 27, 31, 32, 34, 35, 43}, [34] = {32, 33, 35, 36, 39, 40, 41, 42, 43}, [35] = {33, 34, 36, 37, 38, 39, 40, 41, 42, 43, 44}, [36] = {34, 35, 37, 38, 39, 40, 41, 42, 43, 44, 45}, [37] = {35, 36, 38, 39, 40, 41, 42, 43, 44, 45, 46}, [38] = {35, 36, 37, 39, 40, 41, 42, 43, 44, 45, 46, 47}, [39] = {34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47, 48}, [40] = {34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49}, [41] = {34, 35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50}, [42] = {34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51}, [43] = {33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53}, [44] = {35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58}, [45] = {36, 37, 38, 39, 40, 41, 42, 43, 44, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59}, [46] = {37, 38, 39, 40, 41, 42, 43, 44, 45, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62}, [47] = {38, 39, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62}, [48] = {39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63}, [49] = {40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64}, [50] = {41, 42, 43, 44, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64}, [51] = {42, 43, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65}, [52] = {43, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65}, [53] = {43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65}, [54] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65}, [55] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66}, [56] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67}, [57] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68}, [58] = {44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69}, [59] = {45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70}, [60] = {46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71}, [61] = {46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72}, [62] = {46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73}, [63] = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74}, [64] = {49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75}, [65] = {51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76}, [66] = {55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77}, [67] = {56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77}, [68] = {57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80}, [69] = {58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81}, [70] = {59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81}, [71] = {60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81}, [72] = {61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82}, [73] = {62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83}, [74] = {63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84}, [75] = {64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 76, 77, 78, 79, 80, 81, 82, 83, 84}, [76] = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 81, 82, 83, 84}, [77] = {66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 78, 79, 80, 81, 82, 83, 84, 85}, [78] = {68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 79, 80, 81, 82, 83, 84, 85, 86}, [79] = {68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 80, 81, 82, 83, 84, 85, 86, 87}, [80] = {68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 81, 82, 83, 84, 85, 86, 87, 88}, [81] = {69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 84, 85, 86, 87, 88, 89}, [82] = {72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 83, 84, 85, 86, 87, 88, 89}, [83] = {73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 84, 85, 86, 87, 88, 89, 90, 91}, [84] = {74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 85, 86, 87, 88, 89, 90, 91, 92}, [85] = {77, 78, 79, 80, 81, 82, 83, 84, 86, 87, 88, 89, 90, 91, 92, 93}, [86] = {78, 79, 80, 81, 82, 83, 84, 85, 87, 88, 89, 90, 91, 92, 93, 94}, [87] = {79, 80, 81, 82, 83, 84, 85, 86, 88, 89, 90, 91, 92, 93, 94, 95}, [88] = {80, 81, 82, 83, 84, 85, 86, 87, 89, 90, 91, 92, 93, 94, 95, 96}, [89] = {81, 82, 83, 84, 85, 86, 87, 88, 90, 91, 92, 93, 94, 95, 96, 97}, [90] = {83, 84, 85, 86, 87, 88, 89, 91, 92, 93, 94, 95, 96, 97, 98}, [91] = {83, 84, 85, 86, 87, 88, 89, 90, 92, 93, 94, 95, 96, 97, 98, 99}, [92] = {84, 85, 86, 87, 88, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102}, [93] = {85, 86, 87, 88, 89, 90, 91, 92, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104}, [94] = {86, 87, 88, 89, 90, 91, 92, 93, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104}, [95] = {87, 88, 89, 90, 91, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103, 104}, [96] = {88, 89, 90, 91, 92, 93, 94, 95, 97, 98, 99, 100, 101, 102, 103, 104}, [97] = {89, 90, 91, 92, 93, 94, 95, 96, 98, 99, 100, 101, 102, 103, 104, 105}, [98] = {90, 91, 92, 93, 94, 95, 96, 97, 99, 100, 101, 102, 103, 104, 105}, [99] = {91, 92, 93, 94, 95, 96, 97, 98, 100, 101, 102, 103, 104, 105, 106}, [100] = {92, 93, 94, 95, 96, 97, 98, 99, 101, 102, 103, 104, 105, 106, 107, 108, 110, 111}, [101] = {92, 93, 94, 95, 96, 97, 98, 99, 100, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112}, [102] = {92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112}, [103] = {93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113}, [104] = {93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114}, [105] = {97, 98, 99, 100, 101, 102, 103, 104, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115}, [106] = {99, 100, 101, 102, 103, 104, 105, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116}, [107] = {100, 101, 102, 103, 104, 105, 106, 108, 109, 110, 111, 112, 113, 114, 115, 116}, [108] = {100, 101, 102, 103, 104, 105, 106, 107, 109, 110, 111, 112, 113, 114, 115, 116}, [109] = {101, 102, 103, 104, 105, 106, 107, 108, 110, 111, 112, 113, 114, 115}, [110] = {100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 111, 112, 113, 114, 115}, [111] = {100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112, 113, 114, 115}, [112] = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 113, 114, 115}, [113] = {103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 114, 115, 116}, [114] = {104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 115, 116}, [115] = {105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 116}, [116] = {106, 107, 108, 113, 114, 115, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129}, [117] = {116, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129}, [118] = {116, 117, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129}, [119] = {116, 117, 118, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129}, [120] = {116, 117, 118, 119, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131}, [121] = {116, 117, 118, 119, 120, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131}, [122] = {116, 117, 118, 119, 120, 121, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133}, [123] = {116, 117, 118, 119, 120, 121, 122, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134}, [124] = {116, 117, 118, 119, 120, 121, 122, 123, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135}, [125] = {116, 117, 118, 119, 120, 121, 122, 123, 124, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136}, [126] = {116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137}, [127] = {116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138}, [128] = {116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139}, [129] = {116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140}, [130] = {120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141}, [131] = {120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142}, [132] = {122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145}, [133] = {122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148}, [134] = {123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149}, [135] = {124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150}, [136] = {125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149}, [137] = {126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149}, [138] = {127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150}, [139] = {128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150}, [140] = {129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152}, [141] = {130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153}, [142] = {131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153}, [143] = {132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154}, [144] = {132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 145, 146, 147, 148, 149, 150, 151, 152, 153}, [145] = {132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 146, 147, 148, 149, 150, 151, 152, 153}, [146] = {133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 147, 148, 149, 150, 151, 152, 153}, [147] = {133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 148, 149, 150, 151, 152}, [148] = {133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 149, 150, 151, 152}, [149] = {134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 150}, [150] = {135, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 151, 152}, [151] = {140, 141, 142, 143, 144, 145, 146, 147, 148, 150, 152, 153}, [152] = {140, 141, 142, 143, 144, 145, 146, 147, 148, 150, 151, 153, 154}, [153] = {141, 142, 143, 144, 145, 146, 151, 152, 154, 155, 163, 164, 165, 167}, [154] = {143, 152, 153, 155, 156, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [155] = {153, 154, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [156] = {154, 155, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [157] = {155, 156, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [158] = {155, 156, 157, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [159] = {155, 156, 157, 158, 160, 161, 162, 163, 164, 165, 166, 167, 168}, [160] = {154, 155, 156, 157, 158, 159, 161, 162, 163, 164, 165, 166, 167, 168}, [161] = {154, 155, 156, 157, 158, 159, 160, 162, 163, 164, 165, 166, 167, 168, 170}, [162] = {154, 155, 156, 157, 158, 159, 160, 161, 163, 164, 165, 166, 167, 168, 170}, [163] = {153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 164, 165, 166, 167, 168, 170}, [164] = {153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 165, 166, 167, 168, 170}, [165] = {153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 166, 167, 168, 170}, [166] = {154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 167, 168, 170}, [167] = {153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 168, 169, 170}, [168] = {154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 169, 170}, [169] = {167, 168, 170}, [170] = {161, 162, 163, 164, 165, 166, 167, 168, 169, 171}, [171] = {170, 172, 173, 174, 175, 183, 184, 185, 186}, [172] = {171, 173, 174}, [173] = {171, 172, 174}, [174] = {171, 172, 173, 175}, [175] = {171, 174, 176, 177, 178, 181, 182, 183, 184, 185, 186}, [176] = {175, 177, 187}, [177] = {175, 176, 178, 183, 184, 185, 186, 187, 188}, [178] = {175, 177, 179, 180, 181, 182, 183, 184, 185}, [179] = {178, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191}, [180] = {178, 179, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193}, [181] = {175, 178, 179, 180, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193}, [182] = {175, 178, 179, 180, 181, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194}, [183] = {171, 175, 177, 178, 179, 180, 181, 182, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194}, [184] = {171, 175, 177, 178, 179, 180, 181, 182, 183, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195}, [185] = {171, 175, 177, 178, 179, 180, 181, 182, 183, 184, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196}, [186] = {171, 175, 177, 179, 180, 181, 182, 183, 184, 185, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197}, [187] = {176, 177, 179, 180, 181, 182, 183, 184, 185, 186, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198}, [188] = {177, 179, 180, 181, 182, 183, 184, 185, 186, 187, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198}, [189] = {179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 190, 191, 192, 193, 194, 195, 196, 197, 198}, [190] = {179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 191, 192, 193, 194, 195, 196, 197, 198}, [191] = {179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 192, 193, 194, 195, 196, 197, 198}, [192] = {180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 193, 194, 195, 196, 197, 198, 199}, [193] = {180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 194, 195, 196, 197, 198, 199, 200}, [194] = {182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205}, [195] = {184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208}, [196] = {185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209}, [197] = {186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210}, [198] = {187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210}, [199] = {192, 193, 194, 195, 196, 197, 198, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211}, [200] = {193, 194, 195, 196, 197, 198, 199, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212}, [201] = {194, 195, 196, 197, 198, 199, 200, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212}, [202] = {194, 195, 196, 197, 198, 199, 200, 201, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213}, [203] = {194, 195, 196, 197, 198, 199, 200, 201, 202, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214}, [204] = {194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215}, [205] = {194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215}, [206] = {195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216}, [207] = {195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217}, [208] = {195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218}, [209] = {196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220}, [210] = {197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221}, [211] = {199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222}, [212] = {200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223}, [213] = {202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224}, [214] = {203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225}, [215] = {204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226}, [216] = {206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227}, [217] = {207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228}, [218] = {208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229}, [219] = {209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229}, [220] = {209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230}, [221] = {210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231}, [222] = {211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232}, [223] = {212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233}, [224] = {213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236}, [225] = {214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236}, [226] = {215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236}, [227] = {216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 228, 229, 230, 231, 232, 233, 234, 235, 236}, [228] = {217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 229, 230, 231, 232, 233, 234, 235, 236, 237}, [229] = {218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 230, 231, 232, 233, 234, 235, 236, 237}, [230] = {220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 231, 232, 233, 234, 235, 236, 237}, [231] = {221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 232, 233, 234, 235, 236, 237, 238}, [232] = {222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 233, 234, 235, 236, 237, 238, 239, 241}, [233] = {223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 234, 235, 236, 237, 238, 239, 240, 241}, [234] = {224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 235, 236, 237, 238, 239, 240, 241}, [235] = {224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 236, 237, 238, 239, 240, 241}, [236] = {224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 237, 238, 239, 240, 241}, [237] = {228, 229, 230, 231, 232, 233, 234, 235, 236, 238, 239, 240, 241}, [238] = {231, 232, 233, 234, 235, 236, 237, 239, 240, 241}, [239] = {232, 233, 234, 235, 236, 237, 238, 240}, [240] = {233, 234, 235, 236, 237, 238, 239, 241}, [241] = {232, 233, 234, 235, 236, 237, 238, 240, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254}, [242] = {241, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254}, [243] = {241, 242, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254}, [244] = {241, 242, 243, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254}, [245] = {241, 242, 243, 244, 246, 247, 248, 249, 250, 251, 252, 253, 254}, [246] = {241, 242, 243, 244, 245, 247, 248, 249, 250, 251, 252, 253, 254, 255}, [247] = {241, 242, 243, 244, 245, 246, 248, 249, 250, 251, 252, 253, 254, 255}, [248] = {241, 242, 243, 244, 245, 246, 247, 249, 250, 251, 252, 253, 254, 255}, [249] = {241, 242, 243, 244, 245, 246, 247, 248, 250, 251, 252, 253, 254, 255}, [250] = {241, 242, 243, 244, 245, 246, 247, 248, 249, 251, 252, 253, 254, 255}, [251] = {241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 252, 253, 254, 255}, [252] = {241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 253, 254, 255}, [253] = {241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 254, 255}, [254] = {241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 255}, [255] = {246, 247, 248, 249, 250, 251, 252, 253, 254, 256, 260, 261}, [256] = {255, 257}, [257] = {256, 258, 259, 260, 261}, [258] = {257, 259, 260, 261}, [259] = {257, 258, 260, 261}, [260] = {255, 257, 258, 259, 261, 262}, [261] = {255, 257, 258, 259, 260, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273}, [262] = {260, 261, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273}, [263] = {261, 262, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275}, [264] = {261, 262, 263, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279}, [265] = {261, 262, 263, 264, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282}, [266] = {261, 262, 263, 264, 265, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282}, [267] = {261, 262, 263, 264, 265, 266, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282}, [268] = {261, 262, 263, 264, 265, 266, 267, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283}, [269] = {261, 262, 263, 264, 265, 266, 267, 268, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283}, [270] = {261, 262, 263, 264, 265, 266, 267, 268, 269, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283}, [271] = {261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283}, [272] = {261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283}, [273] = {261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284}, [274] = {263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285}, [275] = {263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286}, [276] = {264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286}, [277] = {264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287}, [278] = {264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288}, [279] = {264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289}, [280] = {265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290}, [281] = {265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292}, [282] = {265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294}, [283] = {268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295}, [284] = {273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296}, [285] = {274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296}, [286] = {275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296}, [287] = {277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 288, 289, 290, 291, 292, 293, 294, 295, 296}, [288] = {278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 289, 290, 291, 292, 293, 294, 295, 296}, [289] = {279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 290, 291, 292, 293, 294, 295, 296}, [290] = {280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 291, 292, 293, 294, 295, 296}, [291] = {281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 292, 293, 294, 295, 296}, [292] = {281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 293, 294, 295, 296}, [293] = {282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 294, 295, 296}, [294] = {282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 295, 296}, [295] = {283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 296}, [296] = {284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295}}
    elseif u[2] == "Ghastly Harbor" then
      u[1].ROUTE_POINTS = {{336, 169, 189}, {333, 168, 184}, {328, 169, 176}, {325, 169, 171}, {320, 169, 162}, {316, 169, 154}, {316, 168, 149}, {316, 169, 141}, {315, 169, 134}, {315, 169, 128}, {314, 172, 122}, {316, 175, 116}, {315, 175, 106}, {317, 175, 96}, {317, 175, 87}, {317, 175, 77}, {317, 174, 68}, {318, 175, 56}, {318, 175, 47}, {319, 176, 38}, {319, 177, 28}, {319, 179, 16}, {318, 181, 7}, {318, 183, -3}, {318, 186, -13}, {319, 188, -20}, {319, 190, -27}, {319, 193, -35}, {319, 195, -42}, {319, 198, -48}, {319, 201, -55}, {319, 203, -61}, {319, 206, -67}, {319, 209, -73}, {319, 211, -81}, {316, 211, -92}, {312, 212, -98}, {308, 216, -105}, {305, 217, -112}, {301, 217, -123}, {294, 217, -121}, {287, 217, -119}, {282, 217, -122}, {280, 217, -130}, {278, 217, -136}, {275, 217, -144}, {273, 213, -150}, {278, 210, -163}, {277, 210, -169}, {276, 210, -177}, {276, 210, -185}, {277, 210, -191}, {278, 208, -196}, {279, 205, -203}, {282, 204, -209}, {287, 203, -214}, {293, 204, -224}, {297, 208, -229}, {305, 210, -239}, {301, 210, -245}, {296, 210, -249}, {292, 210, -243}, {287, 208, -236}, {282, 203, -230}, {278, 204, -223}, {273, 203, -215}, {269, 204, -211}, {266, 204, -205}, {264, 207, -198}, {262, 209, -194}, {261, 210, -185}, {258, 210, -178}, {251, 210, -174}, {246, 206, -173}, {240, 202, -173}, {234, 198, -174}, {226, 193, -173}, {221, 190, -173}, {214, 187, -173}, {208, 184, -173}, {201, 181, -173}, {195, 178, -174}, {189, 175, -173}, {183, 172, -173}, {176, 170, -174}, {171, 168, -173}, {164, 165, -174}, {157, 163, -173}, {151, 161, -174}, {145, 160, -173}, {138, 158, -174}, {132, 156, -173}, {126, 155, -173}, {120, 154, -174}, {113, 152, -174}, {106, 151, -174}, {100, 150, -174}, {93, 149, -174}, {85, 149, -174}, {79, 149, -175}, {73, 149, -176}, {68, 149, -180}, {69, 149, -187}, {69, 149, -192}, {67, 147, -198}, {65, 144, -203}, {63, 142, -209}, {59, 142, -214}, {55, 140, -217}, {52, 137, -221}, {48, 136, -225}, {43, 136, -227}, {38, 136, -229}, {31, 136, -230}, {24, 135, -230}, {24, 135, -224}, {20, 135, -218}, {16, 135, -213}, {12, 134, -208}, {9, 130, -204}, {5, 128, -199}, {1, 124, -195}, {-2, 120, -190}, {-6, 117, -185}, {-9, 114, -179}, {-9, 113, -174}, {-8, 110, -168}, {-6, 107, -162}, {-3, 106, -156}, {3, 103, -155}, {8, 101, -154}, {15, 99, -155}, {20, 96, -157}, {23, 94, -161}, {26, 91, -164}, {30, 87, -169}, {34, 84, -176}, {38, 81, -183}, {43, 77, -190}, {47, 74, -197}, {50, 72, -203}, {53, 70, -208}, {58, 68, -215}, {61, 66, -220}, {65, 65, -227}, {68, 61, -232}, {72, 61, -237}, {80, 61, -246}, {87, 61, -252}, {93, 61, -257}, {99, 61, -261}, {106, 61, -265}, {112, 61, -271}, {120, 61, -275}, {127, 63, -281}, {132, 62, -286}, {135, 61, -292}, {142, 59, -299}, {150, 59, -306}, {144, 59, -315}, {131, 59, -308}, {125, 62, -296}, {118, 63, -290}, {112, 61, -284}, {106, 61, -280}, {98, 61, -285}, {92, 61, -289}, {83, 61, -292}, {78, 61, -293}, {73, 61, -296}, {65, 61, -296}, {62, 61, -299}, {64, 61, -309}, {66, 62, -321}, {66, 61, -329}, {68, 59, -341}, {70, 59, -350}, {72, 59, -360}, {75, 59, -374}, {77, 59, -388}, {78, 59, -399}, {81, 59, -410}, {84, 59, -422}, {86, 59, -432}, {88, 59, -443}, {91, 59, -456}, {93, 59, -467}, {96, 59, -480}, {100, 59, -496}, {93, 59, -499}, {84, 59, -500}, {83, 59, -493}, {81, 59, -486}, {80, 59, -480}, {79, 59, -473}, {76, 59, -463}, {73, 59, -451}, {71, 59, -441}, {70, 59, -430}, {68, 59, -420}, {66, 59, -410}, {64, 59, -400}, {62, 59, -389}, {60, 59, -380}, {59, 59, -371}, {56, 59, -360}, {54, 59, -350}, {52, 59, -340}, {51, 60, -332}, {49, 62, -324}, {47, 63, -317}, {45, 61, -308}, {36, 61, -308}, {28, 61, -309}, {21, 61, -310}, {14, 61, -310}, {6, 61, -310}, {-5, 61, -310}, {-13, 61, -309}, {-13, 63, -318}, {-13, 62, -326}, {-15, 60, -335}, {-16, 59, -344}, {-17, 59, -354}, {-19, 59, -366}, {-27, 59, -366}, {-34, 59, -365}, {-33, 59, -357}, {-32, 59, -349}, {-31, 59, -341}, {-30, 60, -333}, {-29, 62, -325}, {-28, 63, -317}, {-27, 61, -310}, {-26, 61, -302}, {-25, 61, -298}, {-25, 61, -294}, {-30, 61, -293}, {-38, 61, -292}, {-44, 61, -292}, {-51, 61, -291}, {-61, 61, -290}, {-68, 61, -292}, {-75, 61, -292}, {-82, 61, -291}, {-93, 61, -291}, {-105, 61, -285}, {-110, 61, -279}, {-117, 61, -270}, {-125, 61, -261}, {-134, 61, -254}, {-141, 61, -246}, {-149, 61, -240}, {-157, 61, -234}, {-164, 61, -228}, {-171, 61, -222}, {-179, 61, -217}, {-185, 61, -211}, {-193, 61, -206}, {-200, 61, -200}, {-205, 61, -194}, {-204, 61, -187}, {-199, 61, -181}, {-207, 61, -176}, {-212, 63, -174}, {-220, 60, -171}, {-235, 57, -164}, {-243, 56, -162}, {-254, 57, -160}, {-262, 56, -157}, {-271, 57, -156}, {-279, 57, -153}, {-288, 56, -151}, {-298, 57, -148}, {-309, 56, -144}, {-319, 57, -143}, {-316, 57, -134}, {-313, 57, -127}, {-308, 56, -129}, {-302, 56, -131}, {-296, 57, -133}, {-290, 57, -135}, {-285, 56, -136}, {-277, 57, -138}, {-271, 57, -140}, {-258, 56, -144}, {-250, 57, -146}, {-240, 56, -148}, {-230, 57, -150}, {-219, 58, -153}, {-211, 62, -155}, {-202, 62, -157}, {-194, 61, -158}, {-181, 61, -154}, {-177, 61, -149}, {-167, 61, -138}, {-160, 61, -129}, {-153, 61, -121}, {-146, 61, -113}, {-140, 61, -105}, {-134, 61, -98}, {-128, 61, -91}, {-122, 61, -84}, {-110, 61, -70}, {-106, 61, -63}, {-97, 61, -48}, {-96, 61, -38}, {-94, 61, -31}, {-91, 61, -21}, {-89, 61, -14}, {-87, 61, -9}, {-86, 61, -3}, {-103, 61, 1}, {-112, 60, 3}, {-120, 58, 6}, {-129, 58, 8}, {-146, 58, 13}, {-157, 58, 17}, {-155, 58, 24}, {-152, 58, 32}, {-145, 58, 31}, {-136, 58, 28}, {-129, 58, 27}, {-120, 58, 22}, {-112, 58, 21}, {-104, 61, 18}, {-99, 61, 16}, {-94, 63, 14}, {-87, 61, 12}, {-82, 61, 9}, {-74, 61, 6}, {-72, 61, 15}, {-70, 61, 26}, {-67, 61, 42}, {-65, 61, 53}, {-63, 61, 65}, {-61, 61, 75}, {-59, 61, 86}, {-58, 61, 97}, {-56, 61, 109}, {-55, 61, 120}, {-55, 61, 131}, {-56, 61, 141}, {-57, 61, 152}, {-59, 61, 158}, {-61, 61, 165}, {-62, 61, 172}, {-63, 61, 179}, {-71, 65, 185}, {-76, 63, 189}, {-81, 61, 193}, {-86, 60, 197}, {-91, 59, 201}, {-96, 57, 205}, {-100, 56, 210}, {-105, 54, 214}, {-110, 53, 218}, {-115, 51, 222}, {-120, 50, 227}, {-124, 48, 231}, {-129, 50, 235}, {-134, 48, 240}, {-139, 48, 245}, {-142, 50, 252}, {-139, 51, 259}, {-131, 52, 262}, {-123, 54, 265}, {-116, 56, 269}, {-109, 58, 272}, {-102, 60, 275}, {-98, 62, 278}, {-95, 65, 284}, {-92, 67, 290}, {-89, 69, 294}, {-87, 72, 302}, {-92, 74, 311}, {-94, 77, 315}, {-98, 80, 318}, {-104, 82, 321}, {-111, 85, 327}, {-118, 87, 328}, {-126, 89, 330}, {-134, 91, 333}, {-142, 93, 335}, {-150, 93, 337}, {-158, 93, 340}, {-164, 93, 347}, {-169, 93, 354}, {-175, 94, 362}, {-179, 97, 368}, {-183, 102, 376}, {-187, 107, 384}, {-191, 110, 391}, {-196, 113, 399}, {-198, 115, 406}, {-199, 118, 414}, {-200, 121, 421}, {-201, 123, 427}, {-200, 126, 435}, {-200, 128, 441}, {-200, 129, 448}, {-198, 131, 454}, {-195, 133, 462}, {-194, 135, 471}, {-191, 136, 478}, {-188, 137, 485}, {-185, 138, 491}, {-180, 139, 500}, {-176, 139, 505}, {-171, 139, 508}, {-164, 139, 512}, {-157, 140, 515}, {-149, 140, 519}, {-143, 141, 522}, {-134, 141, 527}, {-127, 141, 526}, {-117, 141, 526}, {-109, 141, 526}, {-103, 141, 526}, {-94, 141, 525}, {-87, 141, 522}, {-79, 141, 510}, {-79, 141, 504}, {-78, 141, 492}, {-77, 141, 482}, {-76, 141, 474}, {-76, 141, 467}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157, 159}, [159] = {158, 160}, [160] = {159, 161}, [161] = {160, 162}, [162] = {161, 163}, [163] = {162, 164}, [164] = {163, 165}, [165] = {164, 166}, [166] = {165, 167}, [167] = {166, 168}, [168] = {167, 169}, [169] = {168, 170}, [170] = {169, 171}, [171] = {170, 172}, [172] = {171, 173}, [173] = {172, 174}, [174] = {173, 175}, [175] = {174, 176}, [176] = {175, 177}, [177] = {176, 178}, [178] = {177, 179}, [179] = {178, 180}, [180] = {179, 181}, [181] = {180, 182}, [182] = {181, 183}, [183] = {182, 184}, [184] = {183, 185}, [185] = {184, 186}, [186] = {185, 187}, [187] = {186, 188}, [188] = {187, 189}, [189] = {188, 190}, [190] = {189, 191}, [191] = {190, 192}, [192] = {191, 193}, [193] = {192, 194}, [194] = {193, 195}, [195] = {194, 196}, [196] = {195, 197}, [197] = {196, 198}, [198] = {197, 199}, [199] = {198, 200}, [200] = {199, 201}, [201] = {200, 202}, [202] = {201, 203}, [203] = {202, 204}, [204] = {203, 205}, [205] = {204, 206}, [206] = {205, 207}, [207] = {206, 208}, [208] = {207, 209}, [209] = {208, 210}, [210] = {209, 211}, [211] = {210, 212}, [212] = {211, 213}, [213] = {212, 214}, [214] = {213, 215}, [215] = {214, 216}, [216] = {215, 217}, [217] = {216, 218}, [218] = {217, 219}, [219] = {218, 220}, [220] = {219, 221}, [221] = {220, 222}, [222] = {221, 223}, [223] = {222, 224}, [224] = {223, 225}, [225] = {224, 226}, [226] = {225, 227}, [227] = {226, 228}, [228] = {227, 229}, [229] = {228, 230}, [230] = {229, 231}, [231] = {230, 232}, [232] = {231, 233}, [233] = {232, 234}, [234] = {233, 235}, [235] = {234, 236}, [236] = {235, 237}, [237] = {236, 238}, [238] = {237, 239}, [239] = {238, 240}, [240] = {239, 241}, [241] = {240, 242}, [242] = {241, 243}, [243] = {242, 244}, [244] = {243, 245}, [245] = {244, 246}, [246] = {245, 247}, [247] = {246, 248}, [248] = {247, 249}, [249] = {248, 250}, [250] = {249, 251}, [251] = {250, 252}, [252] = {251, 253}, [253] = {252, 254}, [254] = {253, 255}, [255] = {254, 256}, [256] = {255, 257}, [257] = {256, 258}, [258] = {257, 259}, [259] = {258, 260}, [260] = {259, 261}, [261] = {260, 262}, [262] = {261, 263}, [263] = {262, 264}, [264] = {263, 265}, [265] = {264, 266}, [266] = {265, 267}, [267] = {266, 268}, [268] = {267, 269}, [269] = {268, 270}, [270] = {269, 271}, [271] = {270, 272}, [272] = {271, 273}, [273] = {272, 274}, [274] = {273, 275}, [275] = {274, 276}, [276] = {275, 277}, [277] = {276, 278}, [278] = {277, 279}, [279] = {278, 280}, [280] = {279, 281}, [281] = {280, 282}, [282] = {281, 283}, [283] = {282, 284}, [284] = {283, 285}, [285] = {284, 286}, [286] = {285, 287}, [287] = {286, 288}, [288] = {287, 289}, [289] = {288, 290}, [290] = {289, 291}, [291] = {290, 292}, [292] = {291, 293}, [293] = {292, 294}, [294] = {293, 295}, [295] = {294, 296}, [296] = {295, 297}, [297] = {296, 298}, [298] = {297, 299}, [299] = {298, 300}, [300] = {299, 301}, [301] = {300, 302}, [302] = {301, 303}, [303] = {302, 304}, [304] = {303, 305}, [305] = {304, 306}, [306] = {305, 307}, [307] = {306, 308}, [308] = {307, 309}, [309] = {308, 310}, [310] = {309, 311}, [311] = {310, 312}, [312] = {311, 313}, [313] = {312, 314}, [314] = {313, 315}, [315] = {314, 316}, [316] = {315, 317}, [317] = {316, 318}, [318] = {317, 319}, [319] = {318, 320}, [320] = {319, 321}, [321] = {320, 322}, [322] = {321, 323}, [323] = {322, 324}, [324] = {323, 325}, [325] = {324, 326}, [326] = {325, 327}, [327] = {326, 328}, [328] = {327, 329}, [329] = {328, 330}, [330] = {329, 331}, [331] = {330, 332}, [332] = {331, 333}, [333] = {332, 334}, [334] = {333, 335}, [335] = {334, 336}, [336] = {335, 337}, [337] = {336, 338}, [338] = {337, 339}, [339] = {338, 340}, [340] = {339, 341}, [341] = {340, 342}, [342] = {341, 343}, [343] = {342, 344}, [344] = {343, 345}, [345] = {344, 346}, [346] = {345, 347}, [347] = {346, 348}, [348] = {347, 349}, [349] = {348, 350}, [350] = {349, 351}, [351] = {350, 352}, [352] = {351, 353}, [353] = {352, 354}, [354] = {353, 355}, [355] = {354, 356}, [356] = {355, 357}, [357] = {356, 358}, [358] = {357, 359}, [359] = {358, 360}, [360] = {359, 361}, [361] = {360, 362}, [362] = {361, 363}, [363] = {362, 364}, [364] = {363, 365}, [365] = {364, 366}, [366] = {365, 367}, [367] = {366, 368}, [368] = {367, 369}, [369] = {368, 370}, [370] = {369, 371}, [371] = {370, 372}, [372] = {371, 373}, [373] = {372, 374}, [374] = {373, 375}, [375] = {374, 376}, [376] = {375, 377}, [377] = {376, 378}, [378] = {377, 379}, [379] = {378, 380}, [380] = {379, 381}, [381] = {380, 382}, [382] = {381, 383}, [383] = {382, 384}, [384] = {383, 385}, [385] = {384, 386}, [386] = {385, 387}, [387] = {386, 388}, [388] = {387, 389}, [389] = {388, 390}, [390] = {389, 391}, [391] = {390, 392}, [392] = {391, 393}, [393] = {392, 394}, [394] = {393, 395}, [395] = {394, 396}, [396] = {395, 397}, [397] = {396, 398}, [398] = {397, 399}, [399] = {398, 400}, [400] = {399, 401}, [401] = {400, 402}, [402] = {401, 403}, [403] = {402, 404}, [404] = {403, 405}, [405] = {404, 406}, [406] = {405, 407}, [407] = {406, 408}, [408] = {407, 409}, [409] = {408, 410}, [410] = {409, 411}, [411] = {410, 412}, [412] = {411, 413}, [413] = {412, 414}, [414] = {413, 415}, [415] = {414, 416}, [416] = {415, 417}, [417] = {416, 418}, [418] = {417, 419}, [419] = {418, 420}, [420] = {419, 421}, [421] = {420, 422}, [422] = {421, 423}, [423] = {422, 424}, [424] = {423, 425}, [425] = {424, 426}, [426] = {425, 427}, [427] = {426}}
    elseif u[2] == "Steampunk Sewers" then
      u[1].ROUTE_POINTS = {{43, 4, 17}, {43, 4, 4}, {44, 4, -8}, {43, 4, -19}, {43, 4, -30}, {42, 4, -40}, {43, 4, -53}, {43, 4, -63}, {43, 4, -75}, {43, 4, -86}, {43, 4, -96}, {43, 2, -105}, {44, -5, -114}, {44, -4, -126}, {44, -4, -135}, {42, -4, -156}, {56, -4, -158}, {71, -4, -161}, {84, -4, -163}, {97, -5, -164}, {110, -4, -167}, {119, -5, -169}, {133, -4, -169}, {156, -4, -163}, {162, -4, -174}, {169, -4, -182}, {172, -4, -199}, {173, -5, -215}, {172, -5, -228}, {172, -5, -248}, {173, -4, -265}, {175, -4, -284}, {174, -4, -295}, {172, -4, -308}, {171, -4, -330}, {172, -4, -341}, {171, -4, -361}, {172, -6, -370}, {173, -5, -385}, {174, -4, -397}, {174, -4, -407}, {176, -4, -425}, {186, -4, -430}, {197, -4, -429}, {208, -4, -429}, {219, -4, -429}, {229, -5, -428}, {238, -1, -428}, {246, 4, -428}, {255, 4, -427}, {264, -1, -427}, {275, 0, -427}, {283, 0, -426}, {286, 0, -426}, {296, 0, -426}, {308, 0, -426}, {318, 0, -427}, {329, 0, -426}, {339, 0, -426}, {349, 0, -427}, {358, 0, -426}, {367, 0, -427}, {381, 0, -426}, {388, 0, -426}, {399, 0, -427}, {410, 0, -428}, {416, 0, -429}, {424, 0, -429}, {432, 0, -429}, {443, 0, -428}, {457, 0, -428}, {469, -1, -428}, {481, 0, -429}, {493, 0, -429}, {505, 0, -429}, {516, 0, -429}, {527, 0, -429}, {537, -1, -429}, {544, -3, -429}, {555, -6, -429}, {567, -9, -429}, {577, -12, -429}, {588, -15, -429}, {599, -18, -430}, {608, -20, -430}, {619, -23, -430}, {641, -29, -429}, {653, -30, -429}, {664, -30, -430}, {677, -30, -429}, {689, -30, -429}, {699, -30, -429}, {709, -30, -428}, {716, -30, -429}, {724, -30, -429}, {733, -30, -429}, {744, -30, -429}, {754, -30, -428}, {767, -30, -428}, {780, -30, -430}, {789, -30, -430}, {805, -30, -417}, {810, -30, -401}, {817, -30, -397}, {830, -30, -397}, {842, -30, -396}, {858, -30, -396}, {877, -30, -395}, {889, -30, -395}, {900, -30, -395}, {909, -30, -394}, {917, -30, -394}, {925, -30, -394}, {929, -30, -396}, {930, -30, -404}, {930, -25, -412}, {930, -15, -422}, {930, -6, -431}, {930, -1, -436}, {930, 7, -444}, {930, 8, -450}, {930, 8, -457}, {937, 8, -458}, {946, 8, -457}, {955, 8, -456}, {956, 8, -448}, {955, 8, -439}, {955, 8, -433}, {959, 8, -430}, {971, 8, -431}, {987, 8, -431}, {998, 9, -431}, {1009, 9, -430}, {1018, 9, -431}, {1027, 17, -431}, {1034, 19, -430}, {1045, 19, -430}, {1055, 19, -431}, {1065, 19, -430}, {1073, 19, -430}, {1084, 19, -429}, {1093, 18, -429}, {1102, 9, -428}, {1112, 9, -428}, {1120, 9, -428}, {1130, 9, -428}, {1138, 9, -430}, {1149, 9, -429}, {1181, 9, -431}, {1201, 9, -433}, {1212, 9, -432}, {1227, 9, -433}, {1240, 9, -433}, {1263, 7, -430}, {1277, 3, -432}, {1290, 0, -431}, {1301, -3, -431}, {1313, -6, -433}, {1324, -9, -432}, {1342, -14, -430}, {1358, -18, -430}, {1384, -23, -431}, {1396, -23, -432}, {1406, -23, -432}, {1416, -23, -433}, {1424, -26, -432}, {1431, -33, -432}, {1440, -36, -432}, {1448, -36, -433}, {1455, -36, -434}, {1467, -37, -433}, {1475, -37, -432}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157, 159}, [159] = {158, 160}, [160] = {159, 161}, [161] = {160, 162}, [162] = {161, 163}, [163] = {162, 164}, [164] = {163, 165}, [165] = {164, 166}, [166] = {165, 167}, [167] = {166, 168}, [168] = {167, 169}, [169] = {168, 170}, [170] = {169, 171}, [171] = {170, 172}, [172] = {171}}
      u[4]:CreateInstance("Part", {Size = Vector3.new(24.2, 39.856, 40.313), CanCollide = true, Parent = workspace, Shape = "Wedge", Transparency = 1, Anchored = true, CFrame = CFrame.new(929.054, -14.027, -423.99) * CFrame.fromOrientation(0, -3.1275427531112387, -0.09665633397544597)})
      warn("Steampunk Sewers.")
    elseif u[2] == "Orbital Outpost" then
      u[1].ROUTE_POINTS = {{-58, 9, 157}, {-46, 9, 156}, {-35, 9, 156}, {-27, 9, 157}, {-14, 9, 157}, {-4, 9, 158}, {8, 9, 158}, {19, 9, 158}, {31, 9, 157}, {43, 9, 157}, {50, 9, 148}, {53, 9, 140}, {57, 10, 126}, {65, 10, 121}, {77, 11, 119}, {88, 12, 119}, {99, 14, 119}, {110, 15, 118}, {121, 15, 117}, {130, 15, 117}, {138, 16, 116}, {146, 19, 115}, {153, 19, 114}, {154, 19, 108}, {154, 19, 100}, {157, 19, 93}, {161, 19, 84}, {167, 19, 75}, {174, 19, 67}, {181, 19, 59}, {188, 19, 56}, {197, 19, 51}, {206, 19, 48}, {214, 19, 45}, {224, 19, 45}, {233, 19, 44}, {240, 19, 44}, {252, 19, 46}, {258, 19, 46}, {265, 19, 47}, {268, 19, 41}, {269, 19, 29}, {270, 19, 17}, {269, 20, 6}, {270, 20, -4}, {270, 20, -15}, {269, 20, -25}, {268, 20, -36}, {269, 20, -46}, {268, 20, -58}, {269, 20, -68}, {270, 20, -80}, {273, 20, -94}, {281, 20, -98}, {289, 20, -103}, {298, 20, -109}, {303, 20, -116}, {306, 20, -126}, {307, 20, -139}, {310, 20, -153}, {311, 20, -164}, {312, 20, -183}, {314, 20, -210}, {314, 20, -224}, {311, 20, -242}, {301, 20, -245}, {293, 20, -248}, {284, 16, -250}, {274, 16, -254}, {266, 16, -256}, {259, 16, -273}, {260, 16, -279}, {259, 16, -291}, {259, 16, -302}, {259, 16, -314}, {260, 16, -325}, {261, 16, -335}, {271, 16, -344}, {279, 16, -345}, {294, 16, -346}, {302, 16, -347}, {308, 16, -348}, {311, 16, -354}, {311, 16, -360}, {312, 16, -367}, {311, 16, -374}, {311, 16, -390}, {310, 16, -399}, {310, 16, -408}, {309, 17, -421}, {309, 17, -438}, {306, 17, -450}, {296, 17, -457}, {285, 17, -459}, {266, 17, -457}, {256, 17, -458}, {245, 16, -457}, {230, 18, -456}, {217, 21, -455}, {205, 21, -456}, {197, 21, -455}, {189, 18, -457}, {178, 18, -458}, {167, 18, -458}, {152, 18, -457}, {134, 18, -455}, {122, 18, -454}, {109, 18, -454}, {91, 18, -452}, {89, 18, -435}, {89, 18, -424}, {90, 18, -414}, {91, 18, -398}, {95, 18, -388}, {105, 18, -389}, {119, 18, -386}, {128, 18, -384}, {129, 18, -377}, {128, 18, -370}, {128, 18, -362}, {129, 19, -355}, {128, 19, -348}, {128, 19, -335}, {128, 19, -329}, {128, 19, -320}, {119, 19, -319}, {109, 19, -319}, {99, 19, -318}, {89, 14, -319}, {80, 5, -319}, {71, 5, -320}, {63, 5, -320}, {55, 5, -321}, {46, 5, -324}, {46, 5, -331}, {40, 5, -332}, {33, 5, -332}, {19, 5, -336}, {13, 5, -335}, {5, 5, -334}, {3, 5, -325}, {5, 9, -316}, {4, 17, -308}, {4, 21, -301}, {4, 21, -291}, {5, 21, -283}, {-10, 21, -279}, {-20, 21, -279}, {-30, 21, -279}, {-44, 21, -279}, {-46, 21, -269}, {-46, 21, -260}, {-46, 21, -240}, {-46, 21, -226}, {-45, 21, -212}, {-45, 21, -200}, {-44, 21, -188}, {-38, 21, -178}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157}}
    elseif u[2] == "Volcanic Chambers" then
      u[1].ROUTE_POINTS = {{264, 4, 699}, {252, 4, 699}, {239, 4, 700}, {227, 4, 700}, {217, 4, 700}, {198, 4, 701}, {182, 4, 700}, {167, 4, 700}, {153, 4, 700}, {141, 4, 699}, {127, 4, 699}, {112, 4, 699}, {98, 4, 699}, {73, 4, 699}, {59, 4, 699}, {47, 4, 699}, {35, 4, 699}, {26, 4, 699}, {16, 4, 699}, {4, 4, 700}, {-3, 6, 700}, {-11, 6, 699}, {-20, 8, 699}, {-33, 9, 699}, {-43, 9, 699}, {-55, 9, 699}, {-70, 7, 699}, {-85, 6, 699}, {-98, 6, 699}, {-111, 5, 700}, {-125, 5, 700}, {-140, 4, 700}, {-153, 4, 700}, {-166, 4, 700}, {-175, 3, 700}, {-193, 4, 700}, {-211, 4, 700}, {-225, 5, 700}, {-240, 5, 700}, {-252, 6, 700}, {-267, 6, 700}, {-278, 6, 702}, {-292, 7, 702}, {-303, 8, 702}, {-317, 9, 702}, {-327, 9, 702}, {-337, 8, 702}, {-346, 6, 702}, {-354, 6, 702}, {-364, 4, 702}, {-373, 5, 702}, {-387, 4, 702}, {-399, 4, 701}, {-406, 4, 701}, {-412, 5, 701}, {-422, 5, 700}, {-434, 5, 700}, {-445, 4, 699}, {-456, 4, 699}, {-465, 4, 699}, {-476, 4, 699}, {-487, 4, 699}, {-498, 4, 699}, {-510, 4, 699}, {-521, 4, 700}, {-530, 4, 700}, {-542, 4, 700}, {-558, 4, 700}, {-573, 4, 700}, {-582, 4, 700}, {-590, 4, 700}, {-602, 4, 700}, {-613, 4, 700}, {-624, 4, 701}, {-638, 4, 701}, {-647, 4, 700}, {-658, 4, 700}, {-668, 4, 700}, {-679, 4, 700}, {-692, 4, 700}, {-714, 4, 700}, {-725, 4, 700}, {-737, 4, 701}, {-744, 4, 701}, {-756, 4, 701}, {-769, 4, 701}, {-781, 4, 701}, {-793, 4, 701}, {-802, 4, 699}, {-813, 4, 699}, {-826, 4, 699}, {-840, 4, 699}, {-852, 4, 699}, {-864, 4, 699}, {-874, 4, 700}, {-887, 4, 700}, {-897, 4, 700}, {-906, 4, 700}, {-918, 4, 700}, {-933, 4, 700}, {-947, 4, 700}, {-959, 4, 700}, {-969, 4, 701}, {-980, 4, 699}, {-992, 4, 699}, {-1004, 4, 700}, {-1017, 4, 700}, {-1027, 4, 700}, {-1041, 4, 700}, {-1057, 4, 700}, {-1075, 4, 700}, {-1088, 4, 700}, {-1100, 4, 700}, {-1111, 6, 701}, {-1123, 8, 701}, {-1135, 11, 701}, {-1147, 13, 701}, {-1158, 15, 701}, {-1170, 15, 701}, {-1179, 15, 701}, {-1196, 15, 701}, {-1208, 15, 701}, {-1220, 15, 700}, {-1233, 15, 699}, {-1247, 15, 699}, {-1260, 15, 698}, {-1272, 15, 697}, {-1285, 15, 697}, {-1297, 15, 696}, {-1308, 13, 695}, {-1319, 12, 695}, {-1341, 9, 704}, {-1352, 7, 710}, {-1362, 6, 717}, {-1372, 5, 723}, {-1382, 3, 729}, {-1393, 1, 734}, {-1402, -1, 731}, {-1414, -2, 728}, {-1424, -4, 727}, {-1432, -5, 721}, {-1447, -7, 710}, {-1453, -9, 702}, {-1462, -10, 692}, {-1469, -11, 683}, {-1478, -12, 674}, {-1488, -14, 668}, {-1495, -15, 667}, {-1505, -16, 666}, {-1510, -17, 669}, {-1517, -17, 674}, {-1522, -17, 678}, {-1528, -18, 684}, {-1534, -19, 689}, {-1539, -19, 694}, {-1546, -20, 693}, {-1563, -20, 695}, {-1570, -20, 690}, {-1579, -20, 681}, {-1587, -20, 675}, {-1595, -20, 668}, {-1598, -21, 662}, {-1603, -20, 651}, {-1605, -18, 643}, {-1611, -16, 636}, {-1619, -14, 630}, {-1627, -11, 627}, {-1635, -10, 623}, {-1646, -9, 620}, {-1657, -9, 618}, {-1672, -9, 614}, {-1683, -9, 611}, {-1697, -9, 612}, {-1703, -9, 611}, {-1710, -8, 612}, {-1718, -6, 614}, {-1725, -4, 615}, {-1731, -3, 616}, {-1735, -1, 617}, {-1741, 1, 624}, {-1744, 2, 630}, {-1749, 5, 641}, {-1751, 7, 650}, {-1750, 9, 658}, {-1747, 11, 666}, {-1744, 13, 675}, {-1739, 15, 682}, {-1737, 15, 690}, {-1744, 15, 693}, {-1751, 13, 695}, {-1760, 13, 696}, {-1772, 13, 696}, {-1786, 13, 695}, {-1796, 13, 695}, {-1807, 13, 696}, {-1818, 13, 696}, {-1830, 13, 696}, {-1841, 13, 696}, {-1852, 13, 696}, {-1863, 13, 696}, {-1874, 13, 696}, {-1884, 13, 696}, {-1895, 13, 696}, {-1908, 13, 696}, {-1920, 13, 696}, {-1929, 13, 696}, {-1948, 13, 697}, {-1967, 13, 697}, {-1980, 13, 697}, {-1994, 13, 697}, {-2008, 13, 696}, {-2022, 13, 696}, {-2036, 13, 696}, {-2049, 13, 696}, {-2058, 13, 696}, {-2071, 13, 696}, {-2087, 13, 696}, {-2102, 13, 697}, {-2113, 13, 697}, {-2125, 13, 697}, {-2137, 13, 697}, {-2149, 13, 697}, {-2161, 13, 697}, {-2173, 13, 697}, {-2184, 13, 697}, {-2197, 13, 697}, {-2209, 13, 697}, {-2239, 13, 698}, {-2249, 14, 697}, {-2263, 13, 697}, {-2276, 13, 697}, {-2286, 13, 697}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157, 159}, [159] = {158, 160}, [160] = {159, 161}, [161] = {160, 162}, [162] = {161, 163}, [163] = {162, 164}, [164] = {163, 165}, [165] = {164, 166}, [166] = {165, 167}, [167] = {166, 168}, [168] = {167, 169}, [169] = {168, 170}, [170] = {169, 171}, [171] = {170, 172}, [172] = {171, 173}, [173] = {172, 174}, [174] = {173, 175}, [175] = {174, 176}, [176] = {175, 177}, [177] = {176, 178}, [178] = {177, 179}, [179] = {178, 180}, [180] = {179, 181}, [181] = {180, 182}, [182] = {181, 183}, [183] = {182, 184}, [184] = {183, 185}, [185] = {184, 186}, [186] = {185, 187}, [187] = {186, 188}, [188] = {187, 189}, [189] = {188, 190}, [190] = {189, 191}, [191] = {190, 192}, [192] = {191, 193}, [193] = {192, 194}, [194] = {193, 195}, [195] = {194, 196}, [196] = {195, 197}, [197] = {196, 198}, [198] = {197, 199}, [199] = {198, 200}, [200] = {199, 201}, [201] = {200, 202}, [202] = {201, 203}, [203] = {202, 204}, [204] = {203, 205}, [205] = {204, 206}, [206] = {205, 207}, [207] = {206, 208}, [208] = {207, 209}, [209] = {208, 210}, [210] = {209, 211}, [211] = {210, 212}, [212] = {211, 213}, [213] = {212, 214}, [214] = {213, 215}, [215] = {214, 216}, [216] = {215, 217}, [217] = {216, 218}, [218] = {217, 219}, [219] = {218, 220}, [220] = {219, 221}, [221] = {220, 222}, [222] = {221, 223}, [223] = {222, 224}, [224] = {223, 225}, [225] = {224, 226}, [226] = {225, 227}, [227] = {226, 228}, [228] = {227, 229}, [229] = {228, 230}, [230] = {229, 231}, [231] = {230, 232}, [232] = {231}}
    elseif u[2] == "Aquatic Temple" then
      u[1].ROUTE_POINTS = {{-648, 36, 2326}, {-657, 36, 2325}, {-669, 35, 2325}, {-682, 36, 2326}, {-694, 35, 2325}, {-706, 35, 2325}, {-718, 36, 2325}, {-728, 35, 2325}, {-739, 36, 2325}, {-750, 35, 2325}, {-759, 36, 2325}, {-770, 36, 2325}, {-781, 35, 2325}, {-789, 36, 2325}, {-797, 36, 2325}, {-805, 35, 2325}, {-813, 35, 2325}, {-829, 36, 2324}, {-838, 35, 2324}, {-855, 35, 2325}, {-865, 35, 2326}, {-874, 36, 2326}, {-884, 35, 2325}, {-894, 35, 2325}, {-903, 36, 2325}, {-913, 35, 2325}, {-922, 36, 2325}, {-932, 36, 2325}, {-942, 35, 2325}, {-952, 36, 2325}, {-963, 35, 2325}, {-973, 35, 2325}, {-983, 35, 2325}, {-992, 35, 2325}, {-998, 35, 2325}, {-1005, 35, 2325}, {-1018, 35, 2324}, {-1028, 35, 2324}, {-1037, 35, 2324}, {-1048, 35, 2324}, {-1057, 35, 2324}, {-1067, 35, 2324}, {-1081, 35, 2324}, {-1091, 35, 2325}, {-1099, 35, 2325}, {-1110, 35, 2325}, {-1120, 35, 2325}, {-1130, 36, 2325}, {-1140, 35, 2325}, {-1151, 36, 2325}, {-1159, 35, 2324}, {-1168, 36, 2324}, {-1178, 36, 2324}, {-1183, 35, 2324}, {-1193, 35, 2324}, {-1200, 35, 2324}, {-1208, 36, 2323}, {-1216, 35, 2323}, {-1224, 35, 2323}, {-1231, 35, 2323}, {-1236, 35, 2323}, {-1238, 35, 2318}, {-1238, 35, 2312}, {-1238, 34, 2307}, {-1238, 32, 2301}, {-1237, 30, 2296}, {-1239, 29, 2289}, {-1240, 27, 2283}, {-1241, 24, 2274}, {-1243, 21, 2266}, {-1244, 18, 2257}, {-1245, 15, 2249}, {-1245, 12, 2241}, {-1247, 10, 2233}, {-1248, 7, 2223}, {-1248, 4, 2214}, {-1249, 1, 2206}, {-1250, -1, 2197}, {-1252, -4, 2190}, {-1253, -7, 2183}, {-1254, -9, 2174}, {-1255, -12, 2166}, {-1257, -15, 2158}, {-1258, -18, 2150}, {-1259, -19, 2145}, {-1260, -21, 2139}, {-1261, -23, 2132}, {-1261, -23, 2127}, {-1261, -23, 2122}, {-1268, -23, 2124}, {-1274, -23, 2123}, {-1279, -23, 2124}, {-1285, -23, 2123}, {-1290, -23, 2123}, {-1295, -23, 2122}, {-1301, -23, 2123}, {-1314, -23, 2126}, {-1318, -23, 2126}, {-1320, -23, 2141}, {-1319, -24, 2151}, {-1320, -24, 2160}, {-1320, -24, 2169}, {-1319, -23, 2185}, {-1319, -24, 2192}, {-1318, -24, 2204}, {-1318, -24, 2214}, {-1317, -24, 2225}, {-1316, -24, 2236}, {-1315, -22, 2244}, {-1313, -22, 2259}, {-1310, -21, 2271}, {-1309, -21, 2282}, {-1308, -21, 2292}, {-1307, -20, 2303}, {-1305, -20, 2311}, {-1304, -19, 2322}, {-1303, -18, 2333}, {-1302, -18, 2345}, {-1301, -17, 2356}, {-1300, -17, 2367}, {-1299, -16, 2377}, {-1299, -16, 2389}, {-1297, -15, 2407}, {-1296, -14, 2416}, {-1295, -14, 2425}, {-1294, -13, 2436}, {-1294, -13, 2445}, {-1295, -13, 2464}, {-1295, -13, 2472}, {-1295, -13, 2485}, {-1295, -13, 2493}, {-1305, -13, 2496}, {-1317, -13, 2497}, {-1328, -11, 2497}, {-1338, -10, 2497}, {-1349, -7, 2498}, {-1360, -4, 2500}, {-1369, -2, 2500}, {-1378, 0, 2500}, {-1388, 2, 2500}, {-1400, 5, 2500}, {-1410, 5, 2500}, {-1419, 5, 2500}, {-1438, 5, 2496}, {-1446, 5, 2496}, {-1455, 5, 2495}, {-1458, 5, 2487}, {-1457, 5, 2475}, {-1455, 5, 2461}, {-1454, 5, 2448}, {-1452, 7, 2436}, {-1451, 10, 2428}, {-1448, 11, 2421}, {-1447, 12, 2413}, {-1445, 15, 2404}, {-1443, 17, 2397}, {-1442, 18, 2387}, {-1438, 21, 2380}, {-1437, 23, 2371}, {-1436, 24, 2362}, {-1443, 26, 2357}, {-1452, 25, 2356}, {-1461, 24, 2355}, {-1466, 25, 2348}, {-1474, 27, 2347}, {-1484, 29, 2344}, {-1489, 29, 2338}, {-1498, 31, 2336}, {-1503, 32, 2333}, {-1510, 32, 2328}, {-1519, 35, 2327}, {-1527, 36, 2326}, {-1534, 36, 2325}, {-1542, 35, 2326}, {-1548, 36, 2326}, {-1555, 36, 2326}, {-1561, 35, 2326}, {-1574, 36, 2325}, {-1583, 36, 2325}, {-1593, 35, 2326}, {-1603, 35, 2326}, {-1618, 35, 2326}, {-1630, 36, 2326}, {-1641, 36, 2327}, {-1653, 35, 2326}, {-1663, 36, 2327}, {-1674, 35, 2327}, {-1685, 36, 2327}, {-1695, 36, 2327}, {-1711, 36, 2327}, {-1720, 35, 2327}, {-1731, 36, 2325}, {-1742, 35, 2326}, {-1754, 35, 2326}, {-1766, 35, 2326}, {-1775, 35, 2327}, {-1791, 35, 2327}, {-1802, 35, 2327}, {-1815, 35, 2328}, {-1825, 35, 2326}, {-1836, 35, 2326}, {-1845, 35, 2326}, {-1854, 36, 2326}, {-1854, 36, 2318}, {-1855, 35, 2308}, {-1855, 38, 2300}, {-1855, 41, 2292}, {-1855, 44, 2284}, {-1855, 48, 2276}, {-1856, 51, 2267}, {-1856, 52, 2258}, {-1856, 52, 2250}, {-1856, 52, 2242}, {-1865, 52, 2237}, {-1882, 53, 2239}, {-1892, 55, 2239}, {-1901, 58, 2239}, {-1912, 59, 2239}, {-1922, 62, 2240}, {-1931, 64, 2238}, {-1942, 67, 2239}, {-1953, 69, 2239}, {-1964, 72, 2239}, {-1974, 74, 2238}, {-1984, 76, 2238}, {-1993, 78, 2239}, {-2003, 80, 2239}, {-2010, 81, 2239}, {-2018, 81, 2239}, {-2024, 81, 2239}, {-2032, 81, 2241}, {-2032, 81, 2250}, {-2033, 81, 2260}, {-2032, 83, 2270}, {-2033, 85, 2279}, {-2033, 87, 2289}, {-2033, 90, 2300}, {-2033, 92, 2310}, {-2032, 95, 2320}, {-2032, 97, 2330}, {-2032, 99, 2340}, {-2032, 102, 2351}, {-2031, 104, 2361}, {-2031, 106, 2371}, {-2031, 108, 2378}, {-2031, 109, 2384}, {-2031, 110, 2391}, {-2031, 110, 2401}, {-2031, 110, 2407}, {-2018, 110, 2411}, {-2010, 110, 2410}, {-2000, 113, 2409}, {-1990, 115, 2409}, {-1982, 116, 2409}, {-1972, 119, 2410}, {-1963, 121, 2410}, {-1953, 123, 2408}, {-1945, 126, 2409}, {-1936, 127, 2409}, {-1927, 129, 2409}, {-1916, 132, 2410}, {-1909, 133, 2409}, {-1891, 138, 2409}, {-1884, 139, 2408}, {-1874, 139, 2408}, {-1868, 139, 2406}, {-1861, 139, 2394}, {-1861, 139, 2384}, {-1862, 139, 2376}, {-1861, 139, 2359}, {-1861, 139, 2350}, {-1861, 139, 2340}, {-1863, 139, 2331}, {-1865, 139, 2322}, {-1871, 139, 2322}, {-1880, 142, 2322}, {-1893, 142, 2322}, {-1909, 142, 2323}, {-1929, 142, 2323}, {-1941, 142, 2324}, {-1957, 142, 2324}, {-1971, 142, 2325}, {-1988, 142, 2325}, {-2004, 142, 2325}, {-2016, 142, 2325}, {-2029, 142, 2326}, {-2043, 142, 2326}, {-2056, 141, 2326}, {-2070, 142, 2327}, {-2083, 141, 2327}, {-2096, 142, 2326}, {-2108, 141, 2326}, {-2122, 142, 2326}, {-2134, 142, 2327}, {-2153, 142, 2325}, {-2168, 141, 2326}, {-2190, 141, 2325}, {-2205, 142, 2325}, {-2216, 141, 2326}, {-2230, 142, 2326}, {-2244, 141, 2326}, {-2257, 142, 2327}, {-2265, 141, 2327}, {-2280, 142, 2327}, {-2294, 141, 2328}, {-2304, 142, 2327}, {-2317, 146, 2327}, {-2329, 149, 2328}, {-2339, 151, 2326}, {-2352, 154, 2327}, {-2364, 157, 2327}, {-2375, 160, 2327}, {-2385, 162, 2325}, {-2400, 166, 2325}, {-2410, 169, 2326}, {-2435, 175, 2326}, {-2448, 178, 2327}, {-2464, 182, 2327}, {-2475, 185, 2326}, {-2489, 188, 2327}, {-2502, 192, 2327}, {-2514, 195, 2328}, {-2526, 198, 2328}, {-2537, 199, 2328}, {-2548, 199, 2329}, {-2558, 199, 2329}, {-2574, 199, 2326}, {-2585, 199, 2329}, {-2597, 199, 2329}, {-2608, 199, 2329}, {-2621, 199, 2330}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157, 159}, [159] = {158, 160}, [160] = {159, 161}, [161] = {160, 162}, [162] = {161, 163}, [163] = {162, 164}, [164] = {163, 165}, [165] = {164, 166}, [166] = {165, 167}, [167] = {166, 168}, [168] = {167, 169}, [169] = {168, 170}, [170] = {169, 171}, [171] = {170, 172}, [172] = {171, 173}, [173] = {172, 174}, [174] = {173, 175}, [175] = {174, 176}, [176] = {175, 177}, [177] = {176, 178}, [178] = {177, 179}, [179] = {178, 180}, [180] = {179, 181}, [181] = {180, 182}, [182] = {181, 183}, [183] = {182, 184}, [184] = {183, 185}, [185] = {184, 186}, [186] = {185, 187}, [187] = {186, 188}, [188] = {187, 189}, [189] = {188, 190}, [190] = {189, 191}, [191] = {190, 192}, [192] = {191, 193}, [193] = {192, 194}, [194] = {193, 195}, [195] = {194, 196}, [196] = {195, 197}, [197] = {196, 198}, [198] = {197, 199}, [199] = {198, 200}, [200] = {199, 201}, [201] = {200, 202}, [202] = {201, 203}, [203] = {202, 204}, [204] = {203, 205}, [205] = {204, 206}, [206] = {205, 207}, [207] = {206, 208}, [208] = {207, 209}, [209] = {208, 210}, [210] = {209, 211}, [211] = {210, 212}, [212] = {211, 213}, [213] = {212, 214}, [214] = {213, 215}, [215] = {214, 216}, [216] = {215, 217}, [217] = {216, 218}, [218] = {217, 219}, [219] = {218, 220}, [220] = {219, 221}, [221] = {220, 222}, [222] = {221, 223}, [223] = {222, 224}, [224] = {223, 225}, [225] = {224, 226}, [226] = {225, 227}, [227] = {226, 228}, [228] = {227, 229}, [229] = {228, 230}, [230] = {229, 231}, [231] = {230, 232}, [232] = {231, 233}, [233] = {232, 234}, [234] = {233, 235}, [235] = {234, 236}, [236] = {235, 237}, [237] = {236, 238}, [238] = {237, 239}, [239] = {238, 240}, [240] = {239, 241}, [241] = {240, 242}, [242] = {241, 243}, [243] = {242, 244}, [244] = {243, 245}, [245] = {244, 246}, [246] = {245, 247}, [247] = {246, 248}, [248] = {247, 249}, [249] = {248, 250}, [250] = {249, 251}, [251] = {250, 252}, [252] = {251, 253}, [253] = {252, 254}, [254] = {253, 255}, [255] = {254, 256}, [256] = {255, 257}, [257] = {256, 258}, [258] = {257, 259}, [259] = {258, 260}, [260] = {259, 261}, [261] = {260, 262}, [262] = {261, 263}, [263] = {262, 264}, [264] = {263, 265}, [265] = {264, 266}, [266] = {265, 267}, [267] = {266, 268}, [268] = {267, 269}, [269] = {268, 270}, [270] = {269, 271}, [271] = {270, 272}, [272] = {271, 273}, [273] = {272, 274}, [274] = {273, 275}, [275] = {274, 276}, [276] = {275, 277}, [277] = {276, 278}, [278] = {277, 279}, [279] = {278, 280}, [280] = {279, 281}, [281] = {280, 282}, [282] = {281, 283}, [283] = {282, 284}, [284] = {283, 285}, [285] = {284, 286}, [286] = {285, 287}, [287] = {286, 288}, [288] = {287, 289}, [289] = {288, 290}, [290] = {289, 291}, [291] = {290, 292}, [292] = {291, 293}, [293] = {292, 294}, [294] = {293, 295}, [295] = {294, 296}, [296] = {295, 297}, [297] = {296, 298}, [298] = {297, 299}, [299] = {298, 300}, [300] = {299, 301}, [301] = {300, 302}, [302] = {301, 303}, [303] = {302, 304}, [304] = {303, 305}, [305] = {304, 306}, [306] = {305, 307}, [307] = {306, 308}, [308] = {307, 309}, [309] = {308, 310}, [310] = {309, 311}, [311] = {310, 312}, [312] = {311, 313}, [313] = {312, 314}, [314] = {313, 315}, [315] = {314, 316}, [316] = {315, 317}, [317] = {316, 318}, [318] = {317, 319}, [319] = {318, 320}, [320] = {319, 321}, [321] = {320, 322}, [322] = {321, 323}, [323] = {322, 324}, [324] = {323, 325}, [325] = {324, 326}, [326] = {325, 327}, [327] = {326, 328}, [328] = {327, 329}, [329] = {328, 330}, [330] = {329, 331}, [331] = {330}}
    elseif u[2] == "Enchanted Forest" then
      u[1].ROUTE_POINTS = {{111, 8, -48}, {91, 7, -49}, {68, 5, -48}, {52, 5, -47}, {38, 5, -46}, {23, 5, -46}, {5, 4, -46}, {-10, 5, -46}, {-27, 5, -46}, {-41, 5, -47}, {-53, 5, -46}, {-68, 5, -47}, {-81, 5, -47}, {-95, 5, -47}, {-108, 5, -47}, {-123, 5, -47}, {-137, 5, -47}, {-152, 5, -47}, {-167, 5, -48}, {-181, 5, -48}, {-192, 5, -48}, {-207, 5, -48}, {-217, 4, -48}, {-229, 4, -48}, {-239, 5, -48}, {-250, 5, -49}, {-262, 3, -49}, {-274, -2, -49}, {-287, -7, -49}, {-301, -10, -49}, {-314, -16, -49}, {-326, -19, -49}, {-339, -24, -50}, {-349, -23, -50}, {-363, -24, -50}, {-372, -24, -50}, {-384, -24, -53}, {-393, -24, -57}, {-401, -24, -60}, {-410, -24, -64}, {-418, -24, -67}, {-426, -24, -71}, {-436, -25, -54}, {-441, -24, -48}, {-448, -24, -38}, {-453, -24, -31}, {-459, -24, -22}, {-467, -24, -9}, {-473, -24, -1}, {-479, -24, 7}, {-487, -25, 18}, {-493, -24, 28}, {-499, -24, 37}, {-508, -25, 50}, {-517, -25, 63}, {-523, -24, 72}, {-530, -25, 81}, {-538, -25, 93}, {-544, -24, 103}, {-551, -24, 116}, {-558, -24, 124}, {-567, -25, 136}, {-575, -24, 150}, {-581, -24, 158}, {-587, -25, 167}, {-592, -24, 177}, {-599, -24, 185}, {-604, -24, 195}, {-610, -24, 205}, {-616, -24, 215}, {-622, -25, 226}, {-628, -24, 236}, {-642, -24, 240}, {-654, -24, 243}, {-670, -24, 244}, {-680, -24, 243}, {-687, -24, 241}, {-703, -24, 241}, {-714, -24, 244}, {-725, -24, 244}, {-743, -24, 249}, {-749, -24, 250}, {-763, -24, 256}, {-774, -24, 260}, {-784, -24, 265}, {-794, -24, 271}, {-801, -24, 278}, {-806, -24, 286}, {-814, -24, 295}, {-821, -24, 306}, {-826, -24, 315}, {-836, -24, 324}, {-843, -24, 332}, {-849, -24, 345}, {-852, -24, 358}, {-853, -24, 369}, {-852, -24, 381}, {-851, -24, 393}, {-847, -24, 402}, {-842, -24, 410}, {-835, -24, 418}, {-830, -25, 426}, {-824, -24, 433}, {-820, -24, 439}, {-809, -24, 451}, {-803, -24, 456}, {-791, -24, 460}, {-776, -24, 465}, {-762, -24, 469}, {-740, -24, 473}, {-717, -24, 475}, {-687, -24, 473}, {-672, -24, 470}, {-670, -25, 481}, {-669, -24, 491}, {-677, -24, 492}, {-686, -24, 492}, {-696, -24, 492}, {-706, -24, 493}, {-713, -24, 493}, {-725, -25, 493}, {-735, -25, 493}, {-744, -24, 492}, {-754, -24, 492}, {-764, -24, 491}, {-774, -25, 491}, {-783, -24, 491}, {-797, -24, 487}, {-803, -25, 485}, {-811, -24, 489}, {-814, -24, 496}, {-819, -25, 505}, {-824, -24, 515}, {-830, -24, 525}, {-835, -24, 534}, {-839, -24, 541}, {-845, -25, 549}, {-851, -25, 559}, {-857, -25, 568}, {-862, -24, 578}, {-870, -24, 586}, {-876, -25, 594}, {-883, -24, 600}, {-890, -24, 606}, {-896, -24, 611}, {-905, -24, 616}, {-913, -24, 620}, {-924, -24, 625}, {-934, -24, 630}, {-945, -24, 634}, {-956, -24, 638}, {-967, -24, 640}, {-978, -24, 641}, {-990, -24, 642}, {-1009, -24, 642}, {-1021, -24, 643}, {-1034, -24, 643}, {-1045, -24, 644}, {-1055, -21, 644}, {-1066, -17, 643}, {-1077, -13, 644}, {-1087, -9, 644}, {-1098, -5, 645}, {-1108, -2, 645}, {-1118, 2, 645}, {-1130, 3, 646}, {-1154, 3, 647}, {-1165, 3, 647}, {-1176, 5, 648}, {-1187, 5, 648}, {-1198, 5, 649}, {-1212, 5, 649}, {-1224, 5, 650}, {-1239, 5, 651}}
      u[1].ROUTE_LINKS = {[1] = {2}, [2] = {1, 3}, [3] = {2, 4}, [4] = {3, 5}, [5] = {4, 6}, [6] = {5, 7}, [7] = {6, 8}, [8] = {7, 9}, [9] = {8, 10}, [10] = {9, 11}, [11] = {10, 12}, [12] = {11, 13}, [13] = {12, 14}, [14] = {13, 15}, [15] = {14, 16}, [16] = {15, 17}, [17] = {16, 18}, [18] = {17, 19}, [19] = {18, 20}, [20] = {19, 21}, [21] = {20, 22}, [22] = {21, 23}, [23] = {22, 24}, [24] = {23, 25}, [25] = {24, 26}, [26] = {25, 27}, [27] = {26, 28}, [28] = {27, 29}, [29] = {28, 30}, [30] = {29, 31}, [31] = {30, 32}, [32] = {31, 33}, [33] = {32, 34}, [34] = {33, 35}, [35] = {34, 36}, [36] = {35, 37}, [37] = {36, 38}, [38] = {37, 39}, [39] = {38, 40}, [40] = {39, 41}, [41] = {40, 42}, [42] = {41, 43}, [43] = {42, 44}, [44] = {43, 45}, [45] = {44, 46}, [46] = {45, 47}, [47] = {46, 48}, [48] = {47, 49}, [49] = {48, 50}, [50] = {49, 51}, [51] = {50, 52}, [52] = {51, 53}, [53] = {52, 54}, [54] = {53, 55}, [55] = {54, 56}, [56] = {55, 57}, [57] = {56, 58}, [58] = {57, 59}, [59] = {58, 60}, [60] = {59, 61}, [61] = {60, 62}, [62] = {61, 63}, [63] = {62, 64}, [64] = {63, 65}, [65] = {64, 66}, [66] = {65, 67}, [67] = {66, 68}, [68] = {67, 69}, [69] = {68, 70}, [70] = {69, 71}, [71] = {70, 72}, [72] = {71, 73}, [73] = {72, 74}, [74] = {73, 75}, [75] = {74, 76}, [76] = {75, 77}, [77] = {76, 78}, [78] = {77, 79}, [79] = {78, 80}, [80] = {79, 81}, [81] = {80, 82}, [82] = {81, 83}, [83] = {82, 84}, [84] = {83, 85}, [85] = {84, 86}, [86] = {85, 87}, [87] = {86, 88}, [88] = {87, 89}, [89] = {88, 90}, [90] = {89, 91}, [91] = {90, 92}, [92] = {91, 93}, [93] = {92, 94}, [94] = {93, 95}, [95] = {94, 96}, [96] = {95, 97}, [97] = {96, 98}, [98] = {97, 99}, [99] = {98, 100}, [100] = {99, 101}, [101] = {100, 102}, [102] = {101, 103}, [103] = {102, 104}, [104] = {103, 105}, [105] = {104, 106}, [106] = {105, 107}, [107] = {106, 108}, [108] = {107, 109}, [109] = {108, 110}, [110] = {109, 111}, [111] = {110, 112}, [112] = {111, 113}, [113] = {112, 114}, [114] = {113, 115}, [115] = {114, 116}, [116] = {115, 117}, [117] = {116, 118}, [118] = {117, 119}, [119] = {118, 120}, [120] = {119, 121}, [121] = {120, 122}, [122] = {121, 123}, [123] = {122, 124}, [124] = {123, 125}, [125] = {124, 126}, [126] = {125, 127}, [127] = {126, 128}, [128] = {127, 129}, [129] = {128, 130}, [130] = {129, 131}, [131] = {130, 132}, [132] = {131, 133}, [133] = {132, 134}, [134] = {133, 135}, [135] = {134, 136}, [136] = {135, 137}, [137] = {136, 138}, [138] = {137, 139}, [139] = {138, 140}, [140] = {139, 141}, [141] = {140, 142}, [142] = {141, 143}, [143] = {142, 144}, [144] = {143, 145}, [145] = {144, 146}, [146] = {145, 147}, [147] = {146, 148}, [148] = {147, 149}, [149] = {148, 150}, [150] = {149, 151}, [151] = {150, 152}, [152] = {151, 153}, [153] = {152, 154}, [154] = {153, 155}, [155] = {154, 156}, [156] = {155, 157}, [157] = {156, 158}, [158] = {157, 159}, [159] = {158, 160}, [160] = {159, 161}, [161] = {160, 162}, [162] = {161, 163}, [163] = {162, 164}, [164] = {163, 165}, [165] = {164, 166}, [166] = {165, 167}, [167] = {166, 168}, [168] = {167, 169}, [169] = {168, 170}, [170] = {169, 171}, [171] = {170, 172}, [172] = {171, 173}, [173] = {172, 174}, [174] = {173}}
    elseif u[2] == "Northern Lands" then
      local Q = workspace:WaitForChild("Map")
      repeat
        task.wait()
      until not u[5]:FindFirstChild(u[2])
      repeat
        task.wait()
      until Q:WaitForChild("Invisible platform")
      u[1].ROUTE_POINTS = {{-705, 19, 247}, {-698, 19, 263}, {-685, 19, 286}, {-677, 19, 303}, {-668, 19, 318}, {-660, 19, 333}, {-650, 19, 349}, {-642, 19, 363}, {-635, 19, 376}, {-627, 19, 389}, {-617, 19, 406}, {-600, 19, 402}, {-587, 19, 397}, {-573, 19, 392}, {-558, 19, 388}, {-545, 19, 385}, {-529, 19, 382}, {-516, 19, 381}, {-503, 19, 375}, {-490, 19, 371}, {-468, 19, 390}, {-456, 19, 386}, {-441, 19, 381}, {-430, 19, 378}, {-418, 19, 374}, {-402, 19, 367}, {-386, 19, 362}, {-367, 19, 355}, {-355, 19, 351}, {-339, 19, 345}, {-327, 19, 340}, {-313, 19, 335}, {-298, 19, 331}, {-282, 19, 325}, {-268, 19, 321}, {-255, 19, 319}, {-243, 19, 314}, {-229, 19, 311}, {-220, 19, 307}, {-209, 19, 303}, {-209, 19, 303}, {-206, 19, 315}, {-201, 19, 327}, {-197, 19, 339}, {-196, 19, 345}, {-181, 19, 342}, {-168, 19, 338}, {-155, 19, 334}, {-144, 19, 331}, {-121, 19, 321}, {-106, 19, 315}, {-94, 19, 310}, {-80, 19, 304}, {-69, 19, 299}, {-59, 19, 295}, {-51, 19, 291}, {-37, 19, 285}, {-25, 19, 280}, {-31, 19, 267}, {-33, 19, 248}, {-17, 19, 239}, {2, 19, 233}, {20, 19, 227}, {46, 19, 240}, {58, 19, 247}, {77, 19, 244}, {99, 19, 240}, {120, 19, 238}, {142, 19, 233}, {170, 19, 230}, {190, 19, 224}, {214, 19, 220}, {236, 19, 216}, {259, 19, 210}, {274, 19, 206}, {288, 19, 202}, {331, -58, 184}, {344, -58, 214}, {356, -58, 248}, {380, -58, 243}, {398, -58, 237}, {417, -58, 232}, {453, -58, 226}, {469, -58, 216}, {482, -58, 202}, {510, -58, 177}, {498, -58, 156}, {485, -58, 139}, {471, -58, 124}, {604, 17, 93}, {617, 17, 95}, {633, 17, 85}, {643, 17, 81}, {660, 23, 77}, {679, 24, 71}, {692, 23, 65}, {705, 23, 61}, {725, 21, 51}, {743, 24, 47}, {751, 24, 40}, {764, 24, 36}, {769, 24, 33}, {774, 24, 28}, {779, 24, 28}, {784, 24, 30}, {792, 24, 31}, {796, 17, 34}, {803, 17, 32}, {807, 17, 33}, {809, 19, 26}, {831, 25, 23}, {847, 32, 17}, {863, 40, 11}, {879, 47, 5}, {896, 55, -2}, {912, 62, -7}, {926, 68, -11}, {943, 70, -17}}
      u[1].ROUTE_LINKS = {[1] = {2, 3, 4}, [2] = {1, 3, 4, 5, 6}, [3] = {1, 2, 4, 5, 6, 7}, [4] = {1, 2, 3, 5, 6, 7, 8}, [5] = {2, 3, 4, 6, 7, 8, 9}, [6] = {2, 3, 4, 5, 7, 8, 9, 10}, [7] = {3, 4, 5, 6, 8, 9, 10, 11, 12, 13}, [8] = {4, 5, 6, 7, 9, 10, 11, 12, 13, 14}, [9] = {5, 6, 7, 8, 10, 11, 12, 13, 14, 15}, [10] = {6, 7, 8, 9, 11, 12, 13, 14, 15}, [11] = {7, 8, 9, 10, 12, 13, 14, 15, 16}, [12] = {7, 8, 9, 10, 11, 13, 14, 15, 16, 17}, [13] = {7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18}, [14] = {8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19}, [15] = {9, 10, 11, 12, 13, 14, 16, 17, 18, 19, 20}, [16] = {11, 12, 13, 14, 15, 17, 18, 19, 20, 21}, [17] = {12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23}, [18] = {13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24}, [19] = {14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25}, [20] = {15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26}, [21] = {16, 17, 18, 19, 20, 22, 23, 24, 25, 26}, [22] = {17, 18, 19, 20, 21, 23, 24, 25, 26, 27}, [23] = {17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28}, [24] = {18, 19, 20, 21, 22, 23, 25, 26, 27, 28}, [25] = {19, 20, 21, 22, 23, 24, 26, 27, 28, 29}, [26] = {20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 31}, [27] = {22, 23, 24, 25, 26, 28, 29, 30, 31, 32}, [28] = {23, 24, 25, 26, 27, 29, 30, 31, 32, 33}, [29] = {25, 26, 27, 28, 30, 31, 32, 33}, [30] = {26, 27, 28, 29, 31, 32, 33, 34}, [31] = {26, 27, 28, 29, 30, 32, 33, 34, 35}, [32] = {27, 28, 29, 30, 31, 33, 34, 35, 36, 37}, [33] = {28, 29, 30, 31, 32, 34, 35, 36, 37, 38}, [34] = {30, 31, 32, 33, 35, 36, 37, 38, 39, 40}, [35] = {31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 42, 43}, [36] = {32, 33, 34, 35, 37, 38, 39, 40, 41, 42, 43, 44, 45}, [37] = {32, 33, 34, 35, 36, 38, 39, 40, 41, 42, 43, 44, 45}, [38] = {33, 34, 35, 36, 37, 39, 40, 41, 42, 43, 44, 45, 46}, [39] = {34, 35, 36, 37, 38, 40, 41, 42, 43, 44, 45, 46, 47}, [40] = {34, 35, 36, 37, 38, 39, 41, 42, 43, 44, 45, 46, 47, 48, 49}, [41] = {35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49}, [42] = {35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47, 48, 49}, [43] = {35, 36, 37, 38, 39, 40, 41, 42, 44, 45, 46, 47, 48, 49}, [44] = {36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 49, 50}, [45] = {36, 37, 38, 39, 40, 41, 42, 43, 44, 46, 47, 48, 49, 50}, [46] = {38, 39, 40, 41, 42, 43, 44, 45, 47, 48, 49, 50}, [47] = {39, 40, 41, 42, 43, 44, 45, 46, 48, 49, 50, 51, 52}, [48] = {40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52}, [49] = {40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 51, 52, 53}, [50] = {44, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55, 56}, [51] = {47, 48, 49, 50, 52, 53, 54, 55, 56, 57}, [52] = {47, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59}, [53] = {49, 50, 51, 52, 54, 55, 56, 57, 58, 59, 60}, [54] = {50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61}, [55] = {50, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61}, [56] = {50, 51, 52, 53, 54, 55, 57, 58, 59, 60, 61, 62}, [57] = {51, 52, 53, 54, 55, 56, 58, 59, 60, 61, 62}, [58] = {52, 53, 54, 55, 56, 57, 59, 60, 61, 62, 63}, [59] = {52, 53, 54, 55, 56, 57, 58, 60, 61, 62, 63}, [60] = {53, 54, 55, 56, 57, 58, 59, 61, 62, 63, 64}, [61] = {54, 55, 56, 57, 58, 59, 60, 62, 63, 64, 65}, [62] = {56, 57, 58, 59, 60, 61, 63, 64, 65, 66}, [63] = {58, 59, 60, 61, 62, 64, 65, 66}, [64] = {60, 61, 62, 63, 65, 66, 67, 68}, [65] = {61, 62, 63, 64, 66, 67, 68}, [66] = {62, 63, 64, 65, 67, 68, 69}, [67] = {64, 65, 66, 68, 69, 70}, [68] = {64, 65, 66, 67, 69, 70, 71}, [69] = {66, 67, 68, 70, 71, 72}, [70] = {67, 68, 69, 71, 72, 73}, [71] = {68, 69, 70, 72, 73, 74}, [72] = {69, 70, 71, 73, 74, 75, 76}, [73] = {70, 71, 72, 74, 75, 76}, [74] = {71, 72, 73, 75, 76}, [75] = {72, 73, 74, 76}, [76] = {72, 73, 74, 75, 77}, [77] = {76, 78, 79, 80}, [78] = {77, 79, 80, 81, 82}, [79] = {77, 78, 80, 81, 82}, [80] = {77, 78, 79, 81, 82, 83}, [81] = {78, 79, 80, 82, 83, 84}, [82] = {78, 79, 80, 81, 83, 84, 85}, [83] = {80, 81, 82, 84, 85, 86}, [84] = {81, 82, 83, 85, 86, 87, 88}, [85] = {82, 83, 84, 86, 87, 88, 89}, [86] = {83, 84, 85, 87, 88, 89}, [87] = {84, 85, 86, 88, 89}, [88] = {84, 85, 86, 87, 89}, [89] = {85, 86, 87, 88, 90}, [90] = {89, 91, 92, 93, 94}, [91] = {90, 92, 93, 94}, [92] = {90, 91, 93, 94}, [93] = {90, 91, 92, 94}, [94] = {90, 91, 92, 93, 95}, [95] = {94, 96, 97, 98}, [96] = {95, 97, 98, 99}, [97] = {95, 96, 98, 99, 100, 101, 102}, [98] = {95, 96, 97, 99}, [99] = {96, 97, 98, 100, 101, 102, 103}, [100] = {97, 99, 101, 102, 103}, [101] = {97, 99, 100, 102, 103, 104, 105}, [102] = {97, 99, 100, 101, 103, 104, 105, 106}, [103] = {99, 100, 101, 102, 104, 105, 106}, [104] = {101, 102, 103, 105, 106}, [105] = {101, 102, 103, 104, 106}, [106] = {102, 103, 104, 105, 107, 111}, [107] = {106, 108, 109, 110, 111, 112}, [108] = {107, 109, 110, 111, 112}, [109] = {107, 108, 110, 111, 112, 113}, [110] = {107, 108, 109, 111, 112, 113, 114}, [111] = {106, 107, 108, 109, 110, 112, 113, 114, 115}, [112] = {107, 108, 109, 110, 111, 113, 114, 115, 116}, [113] = {109, 110, 111, 112, 114, 115, 116, 117}, [114] = {110, 111, 112, 113, 115, 116, 117}, [115] = {111, 112, 113, 114, 116, 117}, [116] = {112, 113, 114, 115, 117}, [117] = {113, 114, 115, 116, 118}, [118] = {117}}
      Q = workspace.Map["Invisible platform"].Size
      workspace.Map["Invisible platform"].Size = Vector3.new(2000, 1, 2000)
      workspace.Map["Invisible platform"].CFrame = CFrame.new(-709.25061, 15.5, 217.546158, 1, 0, 0, 0, 1, 0, 0, 0, 1)
      local Q, F = {Part2 = {Size = Vector3.new(4, 100.47, 264.638), CFrame = CFrame.new(-365.631, 42.283, 367.488) * CFrame.Angles(0, 1.8797021511053729, 0)}, Part3 = {Size = Vector3.new(4, 100.47, 264.638), CFrame = CFrame.new(-342.06, 42.283, 441.352) * CFrame.Angles(0, 1.8797021511053729, 0)}, Part4 = {Size = Vector3.new(4, 100.47, 84.439), CFrame = CFrame.new(-478.629, 42.283, 441.144) * CFrame.Angles(0, 0.3089058243104764, 0)}, ["Wall 1"] = {Size = Vector3.new(89.848, 101, 2), CFrame = CFrame.new(1091.336, 110.878, 31.373) * CFrame.Angles(0, 0.7929728923511037, 0)}, ["Wall 2"] = {Size = Vector3.new(89.848, 99, 2), CFrame = CFrame.new(1020.99, 110.278, 55.414) * CFrame.Angles(0, -0.19036306151502153, 0)}, ["Wall 3"] = {Size = Vector3.new(89.848, 99, 2), CFrame = CFrame.new(1131.825, 110.278, -43.521) * CFrame.Angles(0, 1.419231934551709, 0)}, ["Wall 4"] = {Size = Vector3.new(89.848, 99, 2), CFrame = CFrame.new(966.553, 110.278, -116.419) * CFrame.Angles(0, 0.7414333195397111, 0)}, ["Wall 5"] = {Size = Vector3.new(89.848, 99, 2), CFrame = CFrame.new(1039.88, 110.278, -138.605) * CFrame.Angles(0, -0.04729842272904633, 0)}, ["Wall 6"] = {Size = Vector3.new(89.848, 99, 2), CFrame = CFrame.new(1105.574, 110.278, -103.021) * CFrame.Angles(0, -0.8676206244589011, 0)}, ["Wall 7"] = {Size = Vector3.new(61.683, 99, 2), CFrame = CFrame.new(967.887, 110.278, 32.161) * CFrame.Angles(0, -0.8676206244589011, 0)}, ["Wall 8"] = {Size = Vector3.new(61.683, 99, 2), CFrame = CFrame.new(932.999, 110.278, -65.003) * CFrame.Angles(0, -1.7579479824862485, 0)}, ["Wall 9"] = {Size = Vector3.new(61.683, 7, 64.8), CFrame = CFrame.new(1056.884, 62.181, 39.9) * CFrame.Angles(0, -1.7579479824862485, 0)}}, workspace:FindFirstChild("ReaperXBlockFolder") or (Instance.new("Folder", workspace))
      F.Name = "ReaperXBlockFolder"
      F:ClearAllChildren()
      for A, Y in next, Q, nil do
        A = Instance.new("Part", F)
        A.Size = Y.Size
        A.CFrame = Y.CFrame
        A.Transparency = 1
        A.Anchored = true
        A.Color = Color3.fromRGB(255, 0, 0)
      end
      u[4]:MakeNothernStair()
      u[4].MakeBarrierEnd = function(Q)
        local Q, F = {Part1 = {Shape = Enum.PartType.Block, Size = Vector3.new(130.269, 45.847, 47.053), CFrame = CFrame.new(307.455, -38.527, -46.93) * CFrame.fromOrientation(0, 1.7358695674485203, 0)}, Part2 = {Shape = Enum.PartType.Block, Size = Vector3.new(113.058, 45.847, 47.053), CFrame = CFrame.new(365.283, -41.915, -91.169) * CFrame.fromOrientation(0, 2.5680949146769763, 0)}, Part3 = {Shape = Enum.PartType.Block, Size = Vector3.new(19.535, 45.847, 47.562), CFrame = CFrame.new(386.362, -41.915, -71.172) * CFrame.fromOrientation(0, 2.5680949146769763, 0)}, Part4 = {Shape = Enum.PartType.Block, Size = Vector3.new(25.428, 10.064, 19.733), CFrame = CFrame.new(396.404, -66.725, -48.121) * CFrame.fromOrientation(0, 2.5680949146769763, 0)}, Part5 = {Shape = Enum.PartType.Block, Size = Vector3.new(16.215, 45.847, 32.034), CFrame = CFrame.new(416.856, -41.915, -63.432) * CFrame.fromOrientation(0, 2.2755777320427266, 0)}, Part6 = {Shape = Enum.PartType.Block, Size = Vector3.new(16.215, 45.847, 30.412), CFrame = CFrame.new(442.743, -41.915, -65.394) * CFrame.fromOrientation(0, 0.31297244146762315, 0)}, Part7 = {Shape = Enum.PartType.Block, Size = Vector3.new(16.215, 45.847, 30.412), CFrame = CFrame.new(446.73, -41.915, -59.42) * CFrame.fromOrientation(0, 0.03640756819660171, 0)}, Part8 = {Shape = Enum.PartType.Block, Size = Vector3.new(16.215, 45.847, 17.94), CFrame = CFrame.new(451.295, -41.915, -44.818) * CFrame.fromOrientation(0, 0.8795935831275823, 0)}}, workspace:FindFirstChild("ReaperXBarrierPartFolder") or (Instance.new("Folder", workspace))
        F.Name = "ReaperXBarrierPartFolder"
        F:ClearAllChildren()
        for A, Y in next, Q, nil do
          A = Instance.new("Part", F)
          A.Size = Y.Size
          A.Shape = Y.Shape or Enum.PartType.Block
          A.CFrame = Y.CFrame
          A.Transparency = 1
          A.Anchored = true
          A.Color = Color3.fromRGB(255, 0, 0)
        end
      end
      u[4]:MakeBarrierEnd()
      u[4].CreateBridgePart = function(Q)
        local F, A = {Part1 = {Shape = Enum.PartType.Block, Size = Vector3.new(63.578, 1.759, 44.56), CFrame = CFrame.new(346.966, 15.487, 182.396) * CFrame.fromOrientation(0, 0.3165503664342116, -0.09665633397544597)}, Part2 = {Shape = Enum.PartType.Block, Size = Vector3.new(64.074, 1, 13.914), CFrame = CFrame.new(-587.047, 33.168, 358.809) * CFrame.fromOrientation(0, 0.6090675490684612, -0.8883027760950339)}, Part3 = {Shape = Enum.PartType.Block, Size = Vector3.new(11.855, 1, 10.882), CFrame = CFrame.new(-607.497, 58.104, 372.61) * CFrame.fromOrientation(-0.09990264638415543, -0.8804837010460994, 0)}, Part4 = {Shape = Enum.PartType.Block, Size = Vector3.new(11.855, 1, 10.882), CFrame = CFrame.new(-611.501, 61.572, 367.216) * CFrame.fromOrientation(-0.09990264638415543, -0.8804837010460994, 1.5878831001719211)}, Part5 = {Shape = Enum.PartType.Block, Size = Vector3.new(11.855, 1, 14.334), CFrame = CFrame.new(-612.881, 62.3, 375.478) * CFrame.fromOrientation(-0.009232791743050004, 0.7690444283062615, 1.4698639361520645)}, Part6 = {Shape = Enum.PartType.Block, Size = Vector3.new(45.6, 1, 78.8), CFrame = CFrame.new(340.089, 16.844, 186.811) * CFrame.fromOrientation(-0.06319837221471468, -1.2331274764115538, 0.011449359893082803)}, ["Over Snow"] = {Shape = Enum.PartType.Block, Size = Vector3.new(403.954, 3.748, 74.433), CFrame = CFrame.new(775.523, 11.783, 39.546) * CFrame.fromOrientation(0, 0.3165503664342116, 0)}}, workspace:FindFirstChild("ReaperXBridgePart") or (Instance.new("Folder", workspace))
        A.Name = "ReaperXBridgePart"
        A:ClearAllChildren()
        for Y, Y in next, F, nil do
          Q = Instance.new("Part", A)
          Q.Size = Y.Size
          Q.Shape = Y.Shape or Enum.PartType.Block
          Q.CFrame = Y.CFrame
          Q.CanQuery = true
          Q.Transparency = 1
          Q.CanCollide = true
          Q.Anchored = true
          Q.Color = Color3.fromRGB(255, 0, 0)
        end
      end
      u[4]:CreateBridgePart()
      local function Q()
        workspace.Terrain:Clear()
        local F = Vector3.new(-725, 21, 218)
        for A, A in pairs(workspace.Map:GetChildren()) do
          if (((A.Name == "Meshes/Ice shard") or (A.Name == "borders")) or (A.Name == "Stone")) or (A.Name == "stairRamps") then
            A:Destroy()
          end
          if ((A:FindFirstChild("Steps") or (A:FindFirstChild("Meshes/Stair_Circle"))) or (A:FindFirstChild("Waterfall wall"))) or (A:FindFirstChild("Meshes/Ruined Pillar2_Circle.002")) then
            A:Destroy()
          end
          if A:FindFirstChild("Model") and (A.Model:FindFirstChild("Meshes/Snow") or (A.Model:FindFirstChild("Meshes/Door_Circle.003"))) then
            A:Destroy()
          end
          if A.Name ~= "Invisible platform" then
            if A:IsA("BasePart") then
              if A.Position.Y < -60 then
                continue
              end
              if (A.Position - F).Magnitude > 1000 then
                continue
              end
            end
            if A:IsA("Model") and ((A:GetModelCFrame().Position - F).Magnitude > 1000) then
              continue
            end
            A:Destroy()
          end
        end
      end
      pcall(Q)
      task.spawn(function()
        while task.wait(2) do
          if u[1].genv.__dwToken ~= u[6].token then
            break
          end
          pcall(Q)
        end
      end)
    end
    u[7][4][u[7][7]]("route", "\224\184\148\224\185\136\224\184\178\224\184\153: %s | \224\184\161\224\184\181\224\184\136\224\184\184\224\184\148 %d", tostring(u[2]), #u[1].ROUTE_POINTS)
    U:BuildRouteGraph()
  end
end, V = function(u, U, Q, F, A, Y, T, G)
  if Q <= 79 then
    local z = u[39](Y, 2 + F)
    local H, N = (not (z >= 128) and 274) or 318, T[1]
    return H, T[2], N, F, G, z
  elseif Q <= 80 then
    local Q, z = F + 1, T[1]
    return 309, T[2], z, Q, G, A
  else
    local Q, z, H, N = u[39](Y, 3 + F), 128 * (G - 128), 2097152 * (A - 128), U - 128
    local u = (Q % 128) * 16384
    local U, Y, G = ((2097152 * (Q - (Q % 128))) + z) + (N + (H + u)), F + 4, T[1]
    return 70, T[2], G, Y, U, A
  end
end, [4632] = function(u, u, u, u, U, U)
  return function(U)
    return u[1].tgStaticBlocked(U, u[1].volIgnore, u[1].volIgnoreP)
  end
end, [106] = function(u, u, u, u, U)
  return function(U)
    if u[1].genv.__dwToken ~= u[2].token then
      return false
    end
    if u[2].walkFarmStopped then
      return false
    end
    if not u[3][4][u[3][7]] or not u[3][4][u[3][7]].Loading then
      return false
    end
    if (u[4].IsBossKey() or not workspace:FindFirstChild("dungeon")) and (u[5].PlaceId ~= 77649408247578) then
      return (u[3][4][u[3][7]]:GetFlag("Auto Farm Boss Raids") and true) or false
    elseif u[2].isDungeonPlace then
      return (u[3][4][u[3][7]]:GetFlag("Auto Farm Dungeon") and true) or false
    end
    return false
  end
end, nM = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if Y <= 77 then
    local Y, S = Q - 128, (z - 128) * 16384
    local e, D = ((128 * T) + S) + Y, A + 3
    return 113, N, A, H, e, z, G, F, U
  else
    local U, F, Y, G, z, H = 1 + A, 61, 233, (121 + N) % 256, u[16](12), 0
    local A = (Y + (F * G)) % 256
    u[91](z, H, (u[116](A, 121, (u[39](Q, U + H)))))
    return 194, U, 121, F, T, Y, z, 1, ((F * A) + Y) % 256
  end
end, Uq = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 231 then
    if G <= 230 then
      local N = u[39](Q, z + 1)
      local S, e = (not (128 > N) and 161) or 220, Y[1]
      return S, Y[2], e, H, z, N, T
    else
      local N = u[39](Q, 1 + z)
      local u, Q = (not not (128 <= N) and 258) or 192, Y[1]
      return u, Y[2], Q, H, z, U, N
    end
  elseif G <= 232 then
    local u, Q = H + 1, Y[1]
    return 109, Y[2], Q, u, z, U, T
  elseif G <= 233 then
    local u, Q = 1 + z, Y[1]
    return 59, Y[2], Q, H, u, U, T
  else
    local u, Q, G = T - 128, 16384 * (A - 128), 128 * F
    local F, A, T = (Q + u) + G, z + 3, Y[1]
    return 269, Y[2], T, H, A, U, F
  end
end, dM = function(u, U, Q, F, A, Y, T)
  if T <= 116 then
    if T <= 115 then
      local G = u[39](Y, 1 + A)
      return (not (G < 128) and 24) or 28, U, G, Y, F
    else
      return ((172 > F) and 121) or 187, U, Q, Y, F
    end
  elseif T <= 117 then
    local T = u[39](Y, 1 + A)
    return (not not (T >= 128) and 5) or 106, U, T, Y, F
  else
    local A = Y + F
    local Y = u[39](U, A)
    if not not (128 <= Y) then
      return 202, U, Q, A, Y
    else
      return 223, A, Q, Y, F
    end
  end
end, [120] = function(u, u, u, u, U, U, U)
  return function()
    u[1].walkFarmStopped = true
    pcall(function()
      u[2]:StopWalking()
    end)
    pcall(function()
      u[2]:EnableControls()
    end)
  end
end, Uj = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 191 then
    if Y <= 190 then
      return 0, G(A, Q, T), T, Q, U
    else
      local H, N, S = z[5], z[3], z[4]
      local e, D = H + N, N <= 0
      local N, m, g = not D, e >= S, e <= S
      H = (D and m) or (N and g)
      z[5] = e
      if H then
        return 16, A, e, Q, U
      else
        return 123, A, T, Q, U
      end
    end
  elseif Y <= 192 then
    local Y = u[39](F, G + 1)
    return (not (Y >= 128) and 176) or 232, A, T, Q, Y
  else
    local F = u[39](Q, G)
    if not (128 <= F) then
      return 227, A, T, F, U
    else
      return 48, A, T, Q, F
    end
  end
end, [14095] = function(u, u, u, u, U)
  return function(U, Q, F, A)
    local Y = u[1].mid.beams
    Y[#Y + 1] = {u = Vector3.new(math.cos(U), 0, math.sin(U)), tA = Q + ((A and 0.85) or u[2].Mid.beamA), tB = Q + ((A and 1.25) or u[2].Mid.beamB), pred = F}
  end
end, [8113] = function(u, u, u, u, U)
  return function(U, U, Q)
    local Q = U:FindFirstChild("aggroRange")
    if Q then
      if u[1]:DistanceFromCharacter(U.HumanoidRootPart.Position) <= (Q.Value + 30) then
        if not u[2].AggroCheckIgnore[U.Name] then
          return true
        end
      end
    end
    return false
  end
end, [2327] = function(u, u, u, u, U, U)
  return function()
    local U = 0
    while true do
      if not u[1][4][u[1][7]] then
        local Q = u[2]:GetRoot(u[3].Character)
        if Q and (Q:FindFirstChild("Deity-NoClip")) then
          u[4]:AddItem(Q["Deity-NoClip"], 0.1)
        end
        break
      end
      local Q, Q = pcall(function()
        if not u[1][4][u[1][7]].Loading then
          return
        end
        local F = u[2]:GetRoot(u[3].Character)
        if not F then
          return
        end
        if u[2]:ShouldNoClip() and not F:FindFirstChild("Deity-NoClip") then
          local A = Instance.new("BodyVelocity")
          A.Parent = F
          A.Name = "Deity-NoClip"
          A.MaxForce = Vector3.new(100000, 100000, 100000)
          A.Velocity = Vector3.new(0, 0, 0)
          for A, A in pairs(u[3].Character:GetDescendants()) do
            if A:IsA("BasePart") and (A.CanCollide == true) then
              A.CanCollide = false
            end
          end
        elseif not u[2]:ShouldNoClip() and (F:FindFirstChild("Deity-NoClip")) then
          u[4]:AddItem(F["Deity-NoClip"], 0.1)
        end
        F = tick()
        if sethiddenproperty and (F >= U) then
          U = F + 1
          _sethiddenproperty(u[3], "SimulationRadius", math.huge)
        end
      end)
      if Q and u[5] then
        warn("[Secondary Thread] Caught Error: ", Q)
      end
      u[6].Stepped:Wait()
    end
  end
end, [11119] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A, Y = U:GetRoot(), Q and (select(1, U:GetTargetGroundPos(Q, false)))
    if not A or not Y then
      return false
    end
    if Vector3.new(Y.X - A.Position.X, 0, Y.Z - A.Position.Z).Magnitude > ((U.lastAttackDist or 30) + (F or 10)) then
      return false
    end
    if not u[1].attackWhileClimb and (U:NeedClimb(Q)) then
      if math.abs(Y.Y - A.Position.Y) > u[1].sameFloorTolerance then
        return false
      end
    end
    return true
  end
end, [7500] = function(u, U, U, U, Q, Q, Q)
  return function(Q, F)
    local A = Q[13]
    for A = 1, F, 2 do
      for F = 1, 32, 4 do
        local A, Y, T, G = u:BM(U[1], F), u:BM(U[1], F + 1), u:BM(U[1], F + 2), u:BM(U[1], F + 3)
        local U, z, H, N = Q[A], Q[Y], Q[T], Q[G]
        U = (U + z) % 4294967296
        F = u[116](N, U)
        N = u[114](u[71](F, 16), (u[122](F, 16))) % 4294967296
        H = (H + N) % 4294967296
        F = u[116](z, H)
        z = u[114](u[71](F, 12), (u[122](F, 20))) % 4294967296
        U = u[8](U + z, 4294967295)
        F = u[116](N, U)
        N = u[114](u[71](F, 8), (u[122](F, 24))) % 4294967296
        H = (H + N) % 4294967296
        F = u[116](z, H)
        z = u[114](u[71](F, 7), (u[122](F, 25))) % 4294967296
        Q[A] = U
        Q[Y] = z
        Q[T] = H
        Q[G] = N
      end
    end
  end
end, [62] = function(u)
  return function(u, u)
    return (((u and u.Parent) and (u:FindFirstChildOfClass("Humanoid"))) and (u:FindFirstChild("HumanoidRootPart"))) and (u:FindFirstChildOfClass("Humanoid").Health > 0)
  end
end, nq = function(u, U, Q, F, A, Y, T, G, z, H)
  if z <= 309 then
    if z <= 308 then
      local N = u[39](F, A)
      local S, e = ((128 > N) and 221) or 230, G[1]
      return S, G[2], e, Y, A, 12, N, Q
    else
      T[U] = Q
      local T = u[39](F, A)
      local N, S = ((128 > T) and 34) or 64, G[1]
      return N, G[2], S, Y, A, H, 7, T
    end
  elseif z <= 310 then
    local T, N, S, e = u[39](F, 3), 128 * (Y - 128), (A - 128) * 2097152, H - 128
    local D = (T % 128) * 16384
    local m, g = (((2097152 * (T - (T % 128))) + (e + D)) + S) + N, G[1]
    return 315, G[2], g, m, 4, H, U, Q
  elseif z <= 311 then
    local T, z = A + 1, G[1]
    return 13, G[2], z, Y, T, H, U, Q
  else
    local Q = u[39](F, 1 + A)
    local u, F = (not not (Q >= 128) and 189) or 125, G[1]
    return u, G[2], F, Y, A, H, U, Q
  end
end, [26] = function(u, u, u, u)
  return function(u, u)
    return u and (u:FindFirstChildOfClass("Humanoid"))
  end
end, [6015] = function(u, u)
  return function(u, U)
    local Q = u:GetChar():FindFirstChild("HumanoidRootPart")
    if U and not Q:FindFirstChild("ReaperX_Velocity") then
      u:CreateInstance("BodyVelocity", {Name = "ReaperX_Velocity", MaxForce = Vector3.new(math.huge, math.huge, math.huge), Velocity = Vector3.new(0, 0, 0), Parent = Q})
    end
    if not U and (Q:FindFirstChild("ReaperX_Velocity")) then
      Q:FindFirstChild("ReaperX_Velocity"):Destroy()
    end
  end
end, [21] = function(u, u, u)
  return function(u, U)
    return u:HasForceField(U) or (u:IsNoDodge(U))
  end
end, L = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if U <= 108 then
    if U <= 107 then
      local e, D = 1 + T, Y[1]
      return 202, Q, Y[2], D, A, H, e, G, F, N, z
    else
      N[S] = z - (z % 1)
      local S = Y[1]
      return 124, Q, Y[2], S, A, H, T, G, F, N, z
    end
  elseif U <= 109 then
    local S, e, D, m = (252 + A) % 256, u[16](H), H - 1, 1 + 0
    local g, c = {0 - m, Q, nil, D + 0, m}, Y[1]
    return 164, g, Y[2], c, S, 252, 61, 233, e, N, z
  elseif U <= 110 then
    local U, S, e = Q[3], Q[4], Q[5]
    local D, m = U + S, S <= 0
    local U, g, c = not m, D >= e, D <= e
    e = (m and g) or (U and c)
    Q[3] = D
    if e then
      g = Y[1]
      return 321, Q, Y[2], g, A, H, T, G, F, D, z
    else
      S = Y[1]
      return 194, Q, Y[2], S, A, H, T, G, F, N, z
    end
  else
    local U = u[39](F, T + 1)
    local u, z = (not (U < 128) and 42) or 55, Y[1]
    return u, Q, Y[2], z, A, H, T, G, F, N, U
  end
end, [112] = function(u, u, u, u, U, U)
  return function(U, Q)
    if not u[1].forceFieldPause then
      return false
    end
    local F = U:GetChar()
    if not F then
      return false
    end
    local A = F:FindFirstChildOfClass("ForceField")
    local Y = u[2].ffTrack
    if A ~= Y.inst then
      F = tick()
      if (Y.inst and not A) and (Y.t0 > 0) then
        local T = F - Y.t0
        if (T > 1) and (T < 30) then
          Y.dur = T
          u[3][4][u[3][7]]("state", "ffdur", 0, "ForceField \224\184\171\224\184\161\224\184\148 \224\184\173\224\184\162\224\184\185\224\185\136 %.2f \224\184\167\224\184\180 \226\134\146 \224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178\224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\171\224\184\165\224\184\154\224\184\151\224\184\181\224\185\136 %.1f \224\184\167\224\184\180", T, math.max(0, T - u[4].ffEarly))
        end
      end
      Y.inst, Y.t0 = A, (A and F) or 0
    end
    if not A then
      return false
    end
    if (tick() - Y.t0) >= (Y.dur - u[4].ffEarly) then
      return false
    end
    A = Q or (U.moveState and U.moveState.currentTarget)
    if A and u[4].ForceFieldSkip[A.Name] then
      return false
    end
    return true
  end
end, [8900] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    if #u[1] == 0 then
      return nil
    end
    local F = {}
    for A, A in ipairs(u[1]) do
      local Y, T = Vector3.new(A.pos.X - Q.X, 0, A.pos.Z - Q.Z).Magnitude, math.abs(A.pos.Y - Q.Y)
      if (Y <= u[2].routeWaitRange) and (T <= u[2].routeNodeMaxDrop) then
        table.insert(F, {pos = A.pos, score = Y + (T * u[2].routeElevWeight)})
      end
    end
    if #F == 0 then
      return nil
    end
    table.sort(F, function(A, Y)
      return A.score < Y.score
    end)
    for A = 1, math.min(#F, u[2].routeLOSChecks), 1 do
      if not U:HasWallBetween(Q, F[A].pos) then
        return F[A].pos
      end
    end
    return nil
  end
end, [20] = setfenv, [6766] = function(u, u, u, u, U, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    U:RefreshRayFilter()
    for F = 1, 8, 1 do
      local A = ((F / 8) * 3.141592653589793) * 2
      F = Vector3.new(math.cos(A), 0, math.sin(A))
      local Y = U:GetClearDistance(Q.Position, F, 40, false)
      local U = u[1][4][u[1][7]](Q.Position + Vector3.new(0, u[2].rayHeights[1], 0), F * 40)
      print(("[WALL] %3d\194\176 \224\185\132\224\184\155\224\185\132\224\184\148\224\185\137 %.0f | %s"):format(math.floor(math.deg(A)), Y, (U and (U.Instance:GetFullName())) or "\224\185\130\224\184\165\224\185\136\224\184\135"))
    end
  end
end, n = function(u, U, Q, F, A, Y, T, G, z)
  if z <= 94 then
    local H, N, S, e = u[39](F, G + 3), 128 * (T - 128), 2097152 * (Y - 128), Q - 128
    local Q, D = (H % 128) * 16384, 2097152 * (H - (H % 128))
    local H, m, g = (S + (e + (N + Q))) + D, G + 4, U[1]
    return 51, U[2], g, m, A, H
  elseif z <= 95 then
    local Q, z, H = Y + ((T - 128) * 128), G + 2, U[1]
    return 23, U[2], H, z, A, Q
  else
    local Q, z, H, N = u[39](F, G + 3), (A - 128) * 128, 2097152 * (T - 128), Y - 128
    local u, F = 16384 * (Q % 128), (Q - (Q % 128)) * 2097152
    local Q, A, Y = z + ((H + u) + (F + N)), 4 + G, U[1]
    return 82, U[2], Y, A, Q, T
  end
end, [12504] = function(u, u, u, u, U)
  return function(U, Q, F, A)
    local Y = U:GetRoot()
    if not Y then
      return nil
    end
    local T = Vector3.new(F.X - Q.X, 0, F.Z - Q.Z)
    if T.Magnitude < 1 then
      return nil
    end
    local G = T.Unit
    local G, z, H, N = u[1].OrbMechanic, T.Magnitude, math.huge
    for u = 0, 11, 1 do
      T = math.rad(u * 30)
      u = Vector3.new(math.cos(T), 0, math.sin(T))
      local T = U:GetClearDistance(Q, u, G.slideMax + 4, true)
      for S = G.slideStep, math.min(G.slideMax, T), G.slideStep do
        local T = Q + (u * S)
        if not U:IsBlocked(T) then
          if not U:PathHasHitbox(T, F, 45, true) then
            local u = Vector3.new(F.X - T.X, 0, F.Z - T.Z).Magnitude
            local G = S + (math.max(u - z, 0) * 0.6)
            G = if A then G - ((T - A).Magnitude * 0.3) else G
            if G < H then
              H, N = G, T
            end
            break
          end
        end
      end
    end
    if not N then
      return nil
    end
    F = U:GetGroundY(N.X, N.Z, Q.Y)
    return Vector3.new(N.X, (F or Q.Y) + (Y.Size.Y / 2), N.Z)
  end
end, [1410] = function(u, u, u, u, U, U)
  return function(U)
    u[1].ringDebugLive = false
    if u[1].ringDebug then
      u[1].ringDebug:Destroy()
      u[1].ringDebug = nil
    end
  end
end, [5037] = function(u, u, u, u)
  return function(U, U, Q, F)
    if not u[1].dodgePathLive then
      return
    end
    local A, Y = u[1].dodgePathLast[F or "dodge"], tick()
    if (A and ((Y - A.at) < 1)) and ((A.pos - Q).Magnitude < 3) then
      return
    end
    u[1].dodgePathLast[F or "dodge"] = {pos = Q, at = Y}
    Y, A = ((F == "retreat") and (Color3.fromRGB(255, 140, 0))) or (Color3.fromRGB(0, 255, 80)), (Q - U).Magnitude
    if A < 0.5 then
      return
    end
    local F = Instance.new("Part")
    F.Name = "_dodgePath"
    F.Size = Vector3.new(0.4, 0.4, A)
    F.CFrame = CFrame.lookAt(U, Q) * CFrame.new(0, 0, -A / 2)
    F.Color = Y
    F.Material = Enum.Material.Neon
    F.Anchored = true
    F.CanCollide = false
    F.CanQuery = false
    F.CanTouch = false
    F.Parent = workspace
    local U = Instance.new("Part")
    U.Name = "_dodgePath"
    U.Shape = Enum.PartType.Ball
    U.Size = Vector3.new(2, 2, 2)
    U.Position = Q
    U.Color = Y
    U.Material = Enum.Material.Neon
    U.Anchored = true
    U.CanCollide = false
    U.CanQuery = false
    U.CanTouch = false
    U.Parent = workspace
    table.insert(u[1].dodgePaths, F)
    table.insert(u[1].dodgePaths, U)
    task.delay(u[2].dodgePathLife or 3, function()
      F:Destroy()
      U:Destroy()
    end)
  end
end, [13113] = function(u, u, u, u)
  return function(u)
    if u == "Odin Reincarnation" then
      return workspace:FindFirstChild(u)
    end
    local U = workspace:FindFirstChild("dungeon")
    if not U then
      return nil
    end
    for Q, F in ipairs(U:GetChildren()) do
      Q = F:FindFirstChild("enemyFolder")
      F = Q and (Q:FindFirstChild(u))
      if F then
        return F
      end
    end
    return nil
  end
end, Oq = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if T <= 216 then
    if T <= 215 then
      local S, e = u[39](G, Q + 3), 128 * (A - 128)
      local D, m, g = ((H - 128) * 2097152) + (((z - 128) + (((S % 128) * 16384) + ((S - (S % 128)) * 2097152))) + e), 4 + Q, U[1]
      return 127, N, U[2], g, m, F, D
    else
      local z = {}
      Y[Y[7]] = z
      local Y, S, e = u[24](G, Q), 4 + Q, 1 + 0
      local u = 1 - e
      local G, D = {nil, Y + 0, u, N, e}, U[1]
      return 210, G, U[2], D, S, 1, z
    end
  elseif T <= 217 then
    local u, Y, G = H + ((A - 128) * 128), 2 + Q, U[1]
    return 299, N, U[2], G, Y, F, u
  elseif T <= 218 then
    local u, Y, T = ((A - 128) * 128) + H, 2 + Q, U[1]
    return 83, N, U[2], T, Y, F, u
  else
    local u, Y, T = A + (128 * (F - 128)), 2 + Q, U[1]
    return 69, N, U[2], T, Y, u, A
  end
end, Yq = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 199 then
    local H, N, S, e = u[39](U, z + 3), (F - 128) * 128, (T - 128) * 2097152, Q - 128
    local D = 16384 * (H % 128)
    local m, g, c = ((2097152 * (H - (H % 128))) + S) + ((N + D) + e), 4 + z, A[1]
    return 32, A[2], c, g, m, T
  elseif Y <= 200 then
    local Y, H, N, S = u[39](U, 3 + z), (T - 128) * 128, 2097152 * (Q - 128), G - 128
    local u, U, Q = ((((Y % 128) * 16384) + ((2097152 * (Y - (Y % 128))) + S)) + H) + N, 4 + z, A[1]
    return 269, A[2], Q, U, F, u
  else
    local u, U = 1 + z, A[1]
    return 196, A[2], U, u, F, T
  end
end, [2847] = function(u, u, u, u)
  return function(U)
    return u[1].tgStaticBlocked(U, u[1].odzIgnore, u[1].odzIgnoreP)
  end
end, Fq = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D, m)
  if G <= 243 then
    local g, c, r, M = u[39](Y, 3 + D), (A - 128) * 128, (z - 128) * 2097152, F - 128
    local F, z = (g % 128) * 16384, (g - (g % 128)) * 2097152
    local g, y, p = (c + (M + F)) + (r + z), 4 + D, N[1]
    return 202, m, N[2], p, U, H, Q, y, g
  elseif G <= 244 then
    local F, G = m[2], u[39](Y, 0)
    local z, g = (not not (128 <= G) and 211) or 240, N[1]
    return z, F, N[2], g, H, {}, G, D, A
  else
    local F = (S + (U * D)) % 256
    u[91](Y, T, (u[116](F, u[39](e, H + T), Q)))
    local u = N[1]
    return 164, m, N[2], u, F, H, Q, D, A
  end
end, Jq = function(u, U, Q, F, A, Y, T, G, z, H)
  if U <= 272 then
    if U <= 271 then
      local N = u[39](H, T + 2)
      local S, e = (not not (N >= 128) and 19) or 178, Y[1]
      return S, Y[2], e, z, T, G, F, N
    else
      local N = u[39](H, T + 1)
      local S, e = ((N < 128) and 100) or 235, Y[1]
      return S, Y[2], e, z, T, G, N, A
    end
  elseif U <= 273 then
    Q[z] = G
    local N, S = Q[4], u[39](H, T)
    local u, Q = (not not (128 <= S) and 126) or 311, Y[1]
    return u, Y[2], Q, N, T, S, F, A
  elseif U <= 274 then
    local u, U = z - 128, 16384 * (G - 128)
    local Q, H, N = (u + (F * 128)) + U, T + 3, Y[1]
    return 2, Y[2], N, Q, H, G, F, A
  else
    local u, U = (not (2 ~= z) and 28) or 241, Y[1]
    return u, Y[2], U, z, T, G, F, A
  end
end, ij = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if N <= 138 then
    if N <= 137 then
      Y(G, D, (u[116](Q, F(T, e), A)))
      local F, Y = 2, (H + (A * U)) % 256
      u[91](G, F, (u[116](u[39](T, F + S), Y, Q)))
      F = 3
      u[91](G, F, (u[116](Q, ((U * Y) + H) % 256, (u[39](T, F + S)))))
      return 0, u[10](G, z), Q, U, z, T
    else
      local F = z + (128 * (U - 128))
      return 101, S, Q + 2, F, z, T
    end
  elseif N <= 139 then
    local F = u[39](T, Q + 1)
    return ((F < 128) and 138) or 112, S, Q, U, F, T
  else
    local F = u[39](z, S + 2)
    return ((128 > F) and 147) or 217, S, Q, U, z, F
  end
end, uM = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if T <= 7 then
    u[91](Q, A, (u[116](G, Y, (u[39](N, U + A)))))
    local S, e = 10, (z + (Y * H)) % 256
    u[91](Q, S, (u[116](e, G, (u[39](N, U + S)))))
    S = 11
    local Y = (z + (e * H)) % 256
    u[91](Q, S, (u[116](Y, G, (u[39](N, U + S)))))
    return 198, N, z, Y
  elseif T <= 8 then
    local Q = u[39](F, U + 2)
    return ((128 > Q) and 79) or 60, Q, z, A
  else
    local U = u[39](F, G + 2)
    return (not not (128 <= U) and 19) or 124, N, U, A
  end
end, [7885] = function(u, u, u, u, U)
  return function(U, U, Q)
    if not u[1].BonusBoss.enabled or (type(U) ~= "string") then
      return
    end
    local F = tick()
    if (U:find("Tall Swirly") and (type(Q) == "table")) and (type(Q[1]) == "string") then
      local A = string.lower(Q[1])
      if ((A == "grey") or (A == "gray")) or (A == "white") then
        A = u[2].bb.firstColor
        u[3][4][u[3][7]]("state", "bbzonew", 0.5, "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s \226\134\146 \224\185\131\224\184\138\224\185\137\224\184\170\224\184\181\224\185\129\224\184\163\224\184\129 %s", Q[1], tostring(A))
      elseif not u[2].bb.firstColor then
        u[2].bb.firstColor = A
      end
      if A then
        local Y = (((type(Q[2]) == "number") and (Q[2] > 1000000000)) and Q[2]) or nil
        u[2].bb.colorZone = {color = A, at = F, deadline = Y, until_ = (F + ((Y and (math.max(0.5, Y - workspace:GetServerTimeNow()))) or u[1].BonusBoss.colorTime)) + 0.8}
      end
      u[3][4][u[3][7]]("state", "bbzone", 0.5, "\224\185\130\224\184\139\224\184\153\224\184\170\224\184\181 %s (%s)", tostring(A), U)
    elseif U == "Bonus Boss Safe Color Zone Deactivated" then
      u[2].bb.colorZone = nil
      u[2].bb.firstColor = nil
    elseif U == "Bonus Boss Freezing Orb Beam" then
      pcall(function()
        local A = Instance.new("Part")
        A.Name = "claudeOrbSprayZone"
        A.Shape = Enum.PartType.Ball
        A.Size = Vector3.new(56, 56, 56)
        A.Anchored = true
        A.CanCollide = false
        A.CanTouch = false
        A.CanQuery = false
        A.Transparency = 1
        A.Position = Vector3.new(1031.2, 68.9, -43.2)
        A.Parent = workspace.CurrentCamera
        u[4]:RegisterHitbox(A, {lifetime = 8.3, owner = u[1].BonusBoss.boss})
        u[5]:GetService("Debris"):AddItem(A, 8.5)
      end)
    elseif (U == "Bonus Boss Flame Pre Target") and (type(Q) == "table") then
      if Q[1] == u[6].Character then
        u[2].bb.preTarget = {at = F}
        u[2].bb.dump = nil
        u[2].bb.station = nil
        u[3][4][u[3][7]]("state", "bbpre", 0.5, "Flame Pre Target \224\184\149\224\184\180\224\184\148\224\185\128\224\184\163\224\184\178 \226\134\146 \224\185\132\224\184\155\224\184\151\224\184\180\224\185\137\224\184\135\224\185\129\224\184\173\224\185\136\224\184\135\224\185\132\224\184\159\224\184\171\224\185\136\224\184\178\224\184\135\224\184\154\224\184\173\224\184\170")
      end
    elseif (((U == "Second Boss Moving Beam") and (type(Q) == "table")) and (typeof(Q[5]) == "CFrame")) and u[2].bobz then
      local A = Q[5]
      local Y, T, G = Vector3.new(A.LookVector.X, 0, A.LookVector.Z), tonumber(Q[1]) or 340, tonumber(Q[2]) or 18
      if (Y.Magnitude > 0.5) and (G > 0) then
        local z = u[2].bobz.lanes
        z[#z + 1] = {o = Vector3.new(A.Position.X, 0, A.Position.Z), d = Y.Unit, v = T / G, t0 = F + 1, half = 29, hl = 14, len = T}
      end
    elseif (((U == "Second Boss Big Hitting Ground Spikes") and (type(Q) == "table")) and (typeof(Q[2]) == "CFrame")) and u[2].bobz then
      local A, Y = Vector3.new(Q[2].Position.X, 0, Q[2].Position.Z), u[2].bobz.discs
      if Q[1] == "small" then
        Y[#Y + 1] = {c = A, r = 18, tA = F, tB = F + 0.35}
        Y[#Y + 1] = {c = A, r = 30, tA = F + 1.25, tB = F + 1.7, big = true}
        Y[#Y + 1] = {c = A, r = 43, tA = F + 1.95, tB = F + 2.45, big = true}
      elseif Q[1] == "medium" then
        local T = false
        for G, G in ipairs(Y) do
          if (G.r == 43) and ((G.c - A).Magnitude < 3) then
            T = true
            break
          end
        end
        if not T then
          Y[#Y + 1] = {c = A, r = 43, tA = F + 0.55, tB = F + 1.05, big = true}
        end
      end
    elseif (((U == "Bonus Boss Sideways Missile") or (U == "Third Boss Sideways Missile")) and (type(Q) == "table")) and (typeof(Q[5]) == "CFrame") then
      local A, Y = Q[5], u[1].BonusBoss.volley
      local Q = Vector3.new(A.LookVector.X, 0, A.LookVector.Z)
      if Q.Magnitude > 0.5 then
        Q = Q.Unit
        local T = u[1].BonusBoss.longLine.center
        local G, z = Vector3.new(A.Position.X - T.X, 0, A.Position.Z - T.Z), u[2].bb.volleys or {}
        u[2].bb.volleys = z
        for A = #z, 1, -1 do
          if (F - z[A].t0) > (((Y.dt * Y.kMax) + (Y.len / Y.speed)) + 0.5) then
            table.remove(z, A)
          end
        end
        T = false
        for A, H in ipairs(z) do
          if H.dir:Dot(Q) > 0.99 then
            A = G:Dot(H.perp)
            local N = math.floor((A / Y.step) + 0.5)
            if (math.abs(A - (N * Y.step)) < 4) and (math.abs(F - (H.t0 + (Y.dt * math.abs(N)))) < 0.35) then
              T = true
              break
            end
          end
        end
        if not T then
          local A = Vector3.new(-Q.Z, 0, Q.X)
          local T = G:Dot(A)
          local H = math.floor((T / Y.step) + 0.5)
          if (math.abs(T - (H * Y.step)) < 4) and (math.abs(H) <= Y.kMax) then
            local T = {t0 = F - (Y.dt * math.abs(H)), dir = Q, perp = A, a0 = G:Dot(Q), who = U:sub(1, 5)}
            z[#z + 1] = T
            if u[1].volleyToLanes then
              pcall(u[1].volleyToLanes, T)
            end
            u[2].bb.volley = T
            u[3][4][u[3][7]]("state", "bbvolley", 0.3, "Missile \224\184\138\224\184\184\224\184\148\224\185\131\224\184\171\224\184\161\224\185\136 (%s) \224\184\151\224\184\180\224\184\168 (%.2f,%.2f) a0 %.0f \224\185\128\224\184\171\224\185\135\224\184\153\224\184\136\224\184\178\224\184\129\224\185\128\224\184\165\224\184\153 k=%d \226\134\146 \224\184\151\224\184\179\224\184\153\224\184\178\224\184\162 17 \224\184\165\224\184\185\224\184\129 (\224\184\132\224\185\137\224\184\178\224\184\135 %d \224\184\138\224\184\184\224\184\148)", T.who, Q.X, Q.Z, T.a0, H, #z)
          end
        end
      end
    end
  end
end, [11741] = function(u)
  return function(u, U)
    if u.ringCPart and u.ringCPart.Parent then
      return u.ringCPart.Position
    end
    return u.ringCenter or U.Position
  end
end, [15557] = function(u, u, u, u, U)
  return function()
    local U = u[1].bb and u[1].bb.buffHold
    if (U and U.sweepGate) and (tick() < U.pressAt) then
      U.pressAt = tick()
      U.sweepGate = nil
    end
  end
end, [15784] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    local F = tick()
    for A, Y in ipairs(u[1]) do
      local T = Y.part
      if u[2][4][u[2][7]](Y, F) then
        continue
      end
      if Y.ring then
        if u[3][4][u[3][7]](Y, T, U) then
          return false
        end
      elseif u[4][4][u[4][7]](Y, T.CFrame, u[5][4][u[5][7]](Y, T), U) then
        return false
      end
      if (((Y.vel and Y.vel.Magnitude) or 0) >= u[6].incomingMinSpeed) and not Y.ring then
        A = u[5][4][u[5][7]](Y, T)
        for F = 0, u[6].escapeSamples, 1 do
          local G = Q + (((u[6].escapeLook - Q) * F) / math.max(u[6].escapeSamples, 1))
          if (G > 0) and (u[4][4][u[4][7]](Y, T.CFrame + (Y.vel * G), A, U)) then
            return false
          end
        end
      end
    end
    return true
  end
end, Q = function(u, U, Q)
  local F = {[2] = U}
  local A, Y, T, G, z, H, N, S, e, D, m, g, c, r = u:G(F)
  local M, y = Y, T
  U = F[2]
  local p, f, v, K, B, R, o, k, j, s, _, q, i = F[1], Q, G, z, H, N, S, e, D, m, g, c, r
  while A do
    if M <= 163 then
      if M <= 81 then
        if M <= 40 then
          if M <= 19 then
            if M <= 9 then
              if M <= 4 then
                M, U, p, R, o, s, _ = u:y(i, R, M, _, s, k, F, q, K, o)
                continue
              else
                M, y, U, p, R, o, q = u:Y(_, F, s, o, B, k, q, M, R, y, j)
                continue
              end
            elseif M <= 14 then
              M, U, p, f, R, q = u:k(F, f, o, K, k, R, q, B, j, M)
              continue
            elseif M <= 16 then
              M, U, p, K, B, o, j = u:j(F, B, k, K, o, R, j, M)
              continue
            else
              M, U, p, R, s = u:X(M, s, _, k, F, q, R)
              continue
            end
          elseif M <= 29 then
            if M <= 24 then
              M, U, p, R, j, s = u:K(k, K, s, R, _, F, M, j, q)
              continue
            elseif M <= 26 then
              M, U, p, R, o = u:O(j, s, F, M, k, R, o)
              continue
            else
              M, U, p, o, j, s = u:z(k, M, F, j, R, s, o)
              continue
            end
          elseif M <= 34 then
            M, y, U, p, R, j, s = u:u(R, K, k, y, F, j, s, M, _)
            continue
          elseif M <= 37 then
            M, y, U, p, R, j, s = u:U(o, K, j, y, R, _, s, q, F, M)
            continue
          else
            M, U, p, B, R, j, s, q = u:T(k, B, s, K, M, R, q, F, j)
            continue
          end
        elseif M <= 60 then
          if M <= 50 then
            if M <= 45 then
              if M <= 42 then
                M, U, p, _, q = u:R(F, M, _, R, k, q)
                continue
              else
                M, U, p, R, o, s = u:F(q, s, j, k, M, o, F, _, R)
                continue
              end
            else
              M, U, p, K, B, R, j, s, q = u:g(j, s, F, k, K, q, R, B, M)
              continue
            end
          elseif M <= 55 then
            M, y, U, p, R, j, s, _, q = u:Z(s, k, K, y, M, j, F, R, _, q, o)
            continue
          elseif M <= 57 then
            M, U, p, R, s, _ = u:E(_, s, R, k, F, M)
            continue
          else
            M, U, p, R, j, s, _ = u:s(M, y, j, K, k, s, R, _, F)
            continue
          end
        elseif M <= 70 then
          if M <= 65 then
            if M <= 62 then
              M, U, p, R, _ = u:C(q, _, R, F, M, k, i)
              continue
            else
              M, y, U, p, R, j, _, i = u:S(F, y, R, j, i, k, M, _)
              continue
            end
          elseif M <= 67 then
            M, U, p, o, s = u:_(k, y, s, F, R, M, o)
            continue
          else
            M, U, p, B, R, o, j = u:H(j, K, R, B, k, M, F, o, _, s)
            continue
          end
        elseif M <= 75 then
          Y, D, Q, G, c, z, S, H = u:J(K, q, B, R, M, y, F, k)
          if Y == 1 then
            M, y, U, p, B, R, q = D, Q, G, c, z, S, H
            continue
          elseif Y == 2 then
            return K
          end
        elseif M <= 78 then
          M, U, p, B, R, o = u:D(B, j, s, R, M, o, k, F)
          continue
        else
          M, U, p, R, o, j = u:V(s, M, R, j, k, F, o)
          continue
        end
      elseif M <= 122 then
        if M <= 101 then
          if M <= 91 then
            if M <= 86 then
              if M <= 83 then
                M, y, U, p, o, j = u:c(K, j, k, F, s, y, o, R, M)
                continue
              else
                M, U, p, B, R, j, q = u:q(j, F, _, R, s, M, k, q, o, B)
                continue
              end
            elseif M <= 88 then
              M, U, p, j, _ = u:p(j, M, F, R, _, k)
              continue
            else
              M, U, p, R, s, _ = u:x(s, i, M, R, k, F, _, q)
              continue
            end
          elseif M <= 96 then
            if M <= 93 then
              M, U, p, o, s = u:e(o, K, F, M, j, s, R, k)
              continue
            else
              M, U, p, R, j, s = u:n(F, q, k, j, _, s, R, M)
              continue
            end
          else
            M, U, p, R, o, s, q = u:I(q, _, k, F, s, o, M, R, j)
            continue
          end
        elseif M <= 111 then
          if M <= 106 then
            M, U, p, B, R, o, j, q = u:a(R, B, k, o, j, F, K, M, v, q, s)
            continue
          else
            M, y, U, p, f, B, R, o, k, s, _ = u:L(M, y, k, f, F, R, o, _, B, s, j)
            continue
          end
        elseif M <= 116 then
          M, U, p, R, j, s = u:h(M, s, F, R, k, _, j)
          continue
        elseif M <= 119 then
          M, U, p, R, o, j, q = u:W(o, F, j, R, M, k, q)
          continue
        else
          M, U, p, R, s = u:f(f, k, R, q, _, F, j, M, o, v, s, B, K)
          continue
        end
      elseif M <= 142 then
        if M <= 132 then
          if M <= 127 then
            M, U, p, f, R, j, s = u:M(k, j, K, R, F, f, M, s)
            continue
          else
            M, U, p, R, j, s, _ = u:w(M, q, j, _, K, s, R, F, k)
            continue
          end
        elseif M <= 137 then
          M, U, p, R, s, _, i = u:N(R, s, k, _, q, i, M, F)
          continue
        else
          M, U, p, R, s, _ = u:l(_, F, s, M, q, R, k)
          continue
        end
      elseif M <= 152 then
        if M <= 147 then
          M, U, p, R, o, s, _ = u:d(o, j, R, M, F, _, k, s)
          continue
        else
          M, U, p, R, j, s, _ = u:A(M, k, _, R, j, s, K, F)
          continue
        end
      elseif M <= 157 then
        M, U, p, R, s, _ = u:P(F, M, k, _, s, R, q)
        continue
      elseif M <= 160 then
        M, U, p, R, j, s = u:mq(k, F, _, R, s, j, M)
        continue
      else
        M, U, p, R, s, _ = u:oq(B, v, M, f, R, _, q, k, o, F, s)
        continue
      end
    elseif M <= 245 then
      if M <= 204 then
        if M <= 183 then
          if M <= 173 then
            if M <= 168 then
              if M <= 165 then
                M, U, p, B, o, j = u:vq(o, M, k, j, R, B, y, F)
                continue
              else
                M, U, p, R, o, _, q = u:rq(M, s, o, q, j, _, k, R, F)
                continue
              end
            else
              M, U, p, B, R, o, j = u:iq(B, s, M, F, k, j, _, o, R)
              continue
            end
          elseif M <= 178 then
            if M <= 175 then
              M, U, p, _ = u:bq(R, k, F, M)
              continue
            else
              M, U, p, R, s = u:tq(s, M, k, q, F, R, _)
              continue
            end
          else
            M, y, U, p, R, s, _ = u:Qq(y, _, F, q, M, R, k, s)
            continue
          end
        elseif M <= 193 then
          if M <= 188 then
            M, U, p, B, R, o, q, i = u:Bq(q, R, k, j, F, i, M, B, s, o)
            continue
          else
            M, U, p, R, j, s, _, q = u:Gq(j, q, k, R, F, M, s, _)
            continue
          end
        elseif M <= 198 then
          M, y, U, p, R, o, j, s, q = u:yq(o, j, K, _, M, s, y, k, q, F, R)
          continue
        elseif M <= 201 then
          M, U, p, R, s, _ = u:Yq(k, q, s, F, M, _, i, R)
          continue
        else
          M, U, p, j, s, _ = u:kq(s, R, K, k, F, f, _, j, M)
          continue
        end
      elseif M <= 224 then
        if M <= 214 then
          if M <= 209 then
            if M <= 206 then
              M, U, p, R, o = u:jq(R, M, F, s, j, o)
              continue
            else
              M, U, p, R, o, j, s = u:Xq(q, o, F, R, j, s, M, k, _)
              continue
            end
          else
            M, U, p, R, j, _ = u:Kq(_, M, s, j, y, R, F, k)
            continue
          end
        elseif M <= 219 then
          M, y, U, p, R, j, s = u:Oq(F, R, j, s, K, M, k, q, _, y)
          continue
        else
          M, U, p, R, o, j, s = u:zq(o, k, R, F, M, s, q, _, j)
          continue
        end
      elseif M <= 234 then
        if M <= 229 then
          M, y, U, p, B, R, s = u:uq(y, M, F, s, B, o, R)
          continue
        else
          M, U, p, K, R, s, _ = u:Uq(s, k, i, q, F, _, M, R, K)
          continue
        end
      elseif M <= 239 then
        M, U, p, B, R, j, s = u:Tq(j, B, K, s, o, k, _, F, M, R)
        continue
      elseif M <= 242 then
        M, U, p, B, R, j = u:Rq(F, B, k, j, M, R)
        continue
      else
        M, y, U, p, f, K, B, R, s = u:Fq(f, B, q, s, k, j, M, _, K, F, o, v, R, y)
        continue
      end
    elseif M <= 286 then
      if M <= 265 then
        if M <= 255 then
          if M <= 250 then
            if M <= 247 then
              M, U, p, R, s = u:gq(F, R, k, s, M)
              continue
            else
              M, y, U, p, R, o, j, q = u:Zq(q, s, o, K, y, j, k, _, R, M, F)
              continue
            end
          else
            M, U, p, R, s = u:Eq(F, q, R, _, s, M, K)
            continue
          end
        elseif M <= 260 then
          M, U, p, j, s, _, q = u:sq(q, s, K, F, _, j, M, R, k)
          continue
        elseif M <= 262 then
          M, U, p, R, j, s = u:Cq(M, R, K, j, _, F, s, k)
          continue
        elseif M <= 263 then
          m, N, r = u:Sq(q, _, R, s, k)
          e = F[1]
          M, U, p, R, s = r, F[2], e, N, m
          continue
        else
          M, U, p, K, B, R, o = u:_q(R, j, B, k, M, s, v, K, o, F)
          continue
        end
      elseif M <= 275 then
        if M <= 270 then
          M, U, p, R, j, s, q = u:Hq(_, j, q, F, s, k, R, M)
          continue
        else
          M, U, p, B, R, o, j, q = u:Jq(M, K, j, q, F, R, o, B, k)
          continue
        end
      elseif M <= 280 then
        M, y, U, p, R, j, s, q = u:Dq(F, R, s, q, _, k, j, y, M)
        continue
      elseif M <= 283 then
        M, U, p, R, s = u:Vq(R, s, k, _, q, F, M)
        continue
      else
        M, U, p, v, K, B, R, j, s = u:cq(F, B, f, k, s, q, v, K, _, R, M, j)
        continue
      end
    elseif M <= 307 then
      if M <= 296 then
        if M <= 291 then
          M, U, p, R, o, j, _ = u:qq(K, F, j, q, _, v, o, M, k, i, R)
          continue
        else
          M, y, U, p, R, _ = u:pq(_, y, F, R, K, f, M, k, q)
          continue
        end
      elseif M <= 301 then
        M, U, p, R, j, s, _ = u:xq(F, K, k, M, _, j, R, s)
        continue
      else
        M, U, p, R, o, j, s, _, q = u:eq(M, j, K, q, s, o, k, _, F, R)
        continue
      end
    elseif M <= 317 then
      if M <= 312 then
        M, U, p, B, R, o, j, s = u:nq(j, s, k, R, B, K, F, M, o)
        continue
      else
        M, U, p, R, s, q = u:Iq(F, M, y, s, q, B, R, k, _)
        continue
      end
    elseif M <= 322 then
      if M <= 319 then
        M, U, p, v, B, R, o, k, j = u:aq(K, v, R, j, k, M, o, B, F)
        continue
      else
        M, U, p, R, j, s, _ = u:Lq(K, _, s, j, M, q, k, F, R)
        continue
      end
    elseif M <= 325 then
      M, U, p, R, o, s, _ = u:hq(k, j, R, _, o, q, s, M, F)
      continue
    else
      M, U, p, R, o, s = u:Wq(o, k, q, s, M, F, _, R)
      continue
    end
    T = F[1]
    U, p = F[2], T
  end
  F[2] = U
  F[1] = p
end, [15538] = function(u, u, u, u)
  return function(U)
    if u[1].useMove then
      U:Move(Vector3.zero)
    end
    u[2].moveCmd = 0
    u[2].moveDirSmooth = nil
    u[2].cfLastT = nil
  end
end, [15970] = function(u, u, u, u, U)
  return function(U, Q)
    local F, A = u[1].BonusBoss.orbGuard, u[1].bbOrbList()
    if #A == 0 then
      u[2].bb.orbGuardPlan = nil
      return false
    end
    local Y = tick()
    local T, G, z = u[3][4][u[3][7]](U), F.margin, u[2].bb.goodPlan
    G = if (z and z.orb.Parent) and (Y < (z.until_ + 0.5)) then 0.5 else G
    local H = u[2].bb.sweep
    G = if ((((H and H.model) and H.model.Parent) and H.safeCenter) and H.axis) and (math.abs((H.safeCenter - u[4][4][u[4][7]](Q)):Dot(H.axis)) > 20) then 1.5 else G
    H = u[2].bb.longLine
    G = if H and ((Y - H.t0) < u[1].BonusBoss.longLine.hold) then 0.5 else G
    if (u[2].bb.colorZone and u[2].bb.colorUrgent) and u[2].bb.colorSlack then
      if (u[2].bb.colorSlack - (Y - (u[2].bb.colorSlackT or Y))) < 1 then
        u[2].bb.orbGuardPlan, u[2].bb.orbHold = nil, nil
        return false
      end
      G = 0.5
    end
    if (u[2].bb.orbHold and (Y < u[2].bb.orbHold)) and not U:IsBlocked(Q) then
      U:SetDestination(Q, false)
      return true
    end
    H = u[2].bb.orbGuardPlan
    if (((H and (Y < H.until_)) and (u[4][4][u[4][7]](H.pos - Q).Magnitude > 2)) and (u[1].bbOrbClear(A, Q, H.pos, T) >= math.min(G * 0.5, (H.clear or 0) - 1))) and not U:IsBlocked(H.pos) then
      U:SetDestination(H.pos, false)
      return true
    end
    u[2].bb.orbGuardPlan = nil
    z = u[5].dest or Q
    H = u[1].bbOrbClear(A, Q, z, T)
    if H >= G then
      return false
    end
    if (H >= 0) and (U:IsBlocked(Q)) then
      return false
    end
    local N = u[1].bbOrbClear(A, Q, Q, T)
    local function S()
      return 0
    end
    local e = u[2].bb.longLine
    if e and ((Y - e.t0) < u[1].BonusBoss.longLine.hold) then
      local D = Y - e.t0
      S = function(m)
        return ((u[1].bbLLPathSafe(Q, m, D, T) and (u[1].bbLLPointSafe(m))) and 0) or 1500
      end
    end
    local function D()
      return 0
    end
    e = u[2].bb.sweep
    if (((e and e.model) and e.model.Parent) and e.safeCenter) and e.axis then
      local m = (e.safeCenter - u[4][4][u[4][7]](Q)):Dot(e.axis)
      if math.abs(m) > 20 then
        local g = e.axis * (((m > 0) and 1) or -1)
        D = function(m)
          local c = u[4][4][u[4][7]](m - Q):Dot(g)
          return ((c < -2) and (200 + (-c * 10))) or 0
        end
      end
    end
    local m, g, c, r, M
    for y = 1, F.dirs, 1 do
      e = ((y / F.dirs) * 3.141592653589793) * 2
      y = Vector3.new(math.cos(e), 0, math.sin(e))
      for e, p in ipairs(F.dists) do
        local f = u[6][4][u[6][7]](Q + (y * p))
        if u[4][4][u[4][7]](f - Q).Magnitude > (p * 0.7) then
          e = u[1].bbOrbClear(A, Q, f, T)
          local function A()
            if u[1].bbSweepSoonOK and not u[1].bbSweepSoonOK(Q, f) then
              return false
            end
            if u[1].bbVolleyHit then
              local y = u[4][4][u[4][7]](f - Q).Magnitude / T
              if u[1].bbVolleyHit(f, math.max(0, y - 0.2), y + 1) then
                return false
              end
            end
            local T = u[4][4][u[4][7]](f - Q)
            local y = T.Magnitude
            return (y < 1) or (U:GetClearDistance(Q, T / y, y + 1, true) >= (y * 0.95))
          end
          if ((((((not m or (e > g)) and not U:IsBlocked(f)) and (U:LeashOK(f))) and (u[1].bbMemSafe(f))) and (D(f) == 0)) and (S(f) == 0)) and (A()) then
            m, g = f, e
          end
          if ((((e >= G) and not U:IsBlocked(f)) and (U:LeashOK(f))) and (u[1].bbMemSafe(f))) and (S(f) == 0) then
            local T = ((((u[4][4][u[4][7]](f - z).Magnitude + (p * 0.5)) + ((U:PathHasHitbox(Q, f) and 1000) or 0)) + D(f)) + S(f)) - (math.min(e, G + 6) * 2)
            if (not c or (T < r)) and (A()) then
              c, r, M = f, T, e
            end
          end
        end
      end
    end
    if not c then
      if (N >= G) and not U:IsBlocked(Q) then
        U:SetDestination(Q, false)
        u[2].bb.orbHold = Y + 0.25
        u[7][4][u[7][7]]("bonus", "\224\184\171\224\184\165\224\184\154\224\184\154\224\184\173\224\184\165: \224\184\171\224\184\162\224\184\184\224\184\148\224\184\163\224\184\173\224\185\131\224\184\171\224\185\137\224\184\156\224\185\136\224\184\178\224\184\153 (%.1f)", N)
        return true
      end
      if m and (g > (math.max(H, N) + 1)) then
        M, c = g, m
      elseif (N > (H + 0.5)) and not U:IsBlocked(Q) then
        U:SetDestination(Q, false)
        u[2].bb.orbHold = Y + 0.2
        u[7][4][u[7][7]]("bonus", "\224\184\171\224\184\165\224\184\154\224\184\154\224\184\173\224\184\165: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 \224\184\162\224\184\183\224\184\153\224\184\153\224\184\180\224\185\136\224\184\135 (\224\184\153\224\184\180\224\185\136\224\184\135 %.1f / \224\185\128\224\184\148\224\184\180\224\184\153 %.1f)", N, H)
        return true
      else
        u[8][4][u[8][7]]("dodge", "bborbnone", 0.5, "\224\184\171\224\184\165\224\184\154\224\184\154\224\184\173\224\184\165: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\158\224\185\137\224\184\153 (\224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161 %.1f \224\184\153\224\184\180\224\185\136\224\184\135 %.1f)", H, N)
        return false
      end
    end
    z = u[9][4][u[9][7]](U, c, Q.Y)
    u[2].bb.orbGuardPlan = {pos = z, until_ = Y + F.commit, clear = M}
    u[10].projGoal = nil
    u[10].dodgeGoal = nil
    u[10].retreatGoal = nil
    u[7][4][u[7][7]]("bonus", "\224\184\171\224\184\165\224\184\154\224\184\154\224\184\173\224\184\165: \224\184\151\224\184\178\224\184\135\224\185\128\224\184\148\224\184\180\224\184\161\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.1f \226\134\146 \224\185\132\224\184\155 %.0f studs (\224\184\158\224\185\137\224\184\153 %.1f)", H, u[4][4][u[4][7]](z - Q).Magnitude, M)
    U:SetDestination(z, false)
    return true
  end
end, Nq = "LPH:", [15332] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = u[1].bb and u[1].bb.gfAt
    if not F then
      return true
    end
    local A = tick() - F
    if (A < 3) or (A > 8.3) then
      return true
    end
    A = u[2].BonusBoss.sweepMid
    F = math.abs((Vector3.new(Q.X, 0, Q.Z) - A.center):Dot(A.axis))
    if F <= A.half then
      return true
    end
    return F <= (math.abs((Vector3.new(U.X, 0, U.Z) - A.center):Dot(A.axis)) + 1)
  end
end, [8507] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    if #u[1] == 0 then
      return math.huge
    end
    local Y = Vector3.new(F.X - Q.X, 0, F.Z - Q.Z)
    F = Y.Magnitude
    if F < 0.1 then
      return math.huge
    end
    local T = Y.Unit
    local Y, G = math.min(F, A or u[2].advanceMax), u[2].advanceStep
    while G <= Y do
      if U:IsBlocked(Q + (T * G)) then
        return math.max(0, G - u[2].advanceStep)
      end
      G += u[2].advanceStep
    end
    return math.huge
  end
end, oj = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if N <= 130 then
    local N, S, e, D, m = u[47], (H + 121) % 256, u[16](z), z - 1, 1 + 0
    local g = 0 - m
    return 64, {D + 0, nil, m, U, g}, S, Q, 121, N, 61, 233, e
  else
    local N, S, e, D = u[39](Y, 3 + Q), 128 * (z - 128), 2097152 * (F - 128), T - 128
    local u, F = (N % 128) * 16384, 2097152 * (N - (N % 128))
    N = (u + (S + e)) + (D + F)
    return 101, U, H, Q + 4, N, Y, T, G, A
  end
end, [12225] = function(u, u, u, u)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    local F = 0
    for A, Y in pairs(u[1].beamTrack) do
      if A.Parent then
        F += 1
        local A = Q.Position - Y.center
        local T, G = (Y.lenDir and (math.abs(A:Dot(Y.lenDir)))) or -1, (Y.dir and (A:Dot(Y.dir))) or 0
        print(("[BEAM] \224\184\162\224\184\178\224\184\167 %.0f | \224\184\129\224\184\167\224\184\178\224\184\148 %.0f studs/s | \224\185\128\224\184\163\224\184\178\224\184\171\224\185\136\224\184\178\224\184\135\224\185\129\224\184\153\224\184\167\224\184\129\224\184\167\224\184\178\224\184\148 %.0f"):format(Y.halfLen * 2, Y.speed, G))
        A = u[2][4][u[2][7]](Y)
        print(("       plan: %s | \224\185\128\224\184\171\224\184\165\224\184\183\224\184\173\224\184\173\224\184\181\224\184\129 %s studs"):format((Y.plan and (("dist %.0f dur %.1f"):format(Y.plan.dist, Y.plan.dur))) or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181 (\224\184\167\224\184\177\224\184\148\224\184\170\224\184\148)", (A and (("%.0f"):format(A))) or "?"))
        print(("       \224\184\149\224\184\178\224\184\161\224\185\129\224\184\153\224\184\167\224\184\162\224\184\178\224\184\167 %.0f/%.0f | %s"):format(T, Y.halfLen, ((G > 0) and "\224\184\173\224\184\162\224\184\185\224\185\136\224\184\130\224\185\137\224\184\178\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178 beam (\224\184\161\224\184\177\224\184\153\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\161\224\184\178)") or "\224\184\173\224\184\162\224\184\185\224\185\136\224\184\157\224\184\177\224\185\136\224\184\135\224\184\151\224\184\181\224\185\136\224\184\156\224\185\136\224\184\178\224\184\153\224\185\132\224\184\155\224\185\129\224\184\165\224\185\137\224\184\167"))
      end
    end
    print(("beam \224\184\151\224\184\181\224\185\136 track: %d | \224\184\149\224\184\163\224\184\135\224\184\153\224\184\181\224\185\137\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162: %s"):format(F, tostring(U:BeamSafe(Q.Position))))
    if F > 0 then
      print("--- \224\184\150\224\184\173\224\184\162 30 studs \224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\132\224\184\171\224\184\153\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 ---")
      for u = 1, 8, 1 do
        local F = ((u / 8) * 3.141592653589793) * 2
        u = Vector3.new(math.cos(F), 0, math.sin(F))
        print(("  %3d\194\176 %s"):format(math.floor(math.deg(F)), (U:BeamSafe(Q.Position + (u * 30)) and "\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162") or "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153\224\184\167\224\184\180\224\184\150\224\184\181"))
      end
    end
  end
end, [11523] = function(u, u, u, u, U)
  return function(U, U, Q)
    if (U.Name == "Midgardian Champion") and (U:FindFirstChild("HumanoidRootPart")) then
      if U.HumanoidRootPart.Position.Y >= 40 then
        return 70
      else
        return 30
      end
    end
    if U and u[1].CustomAttack[U.Name] then
      return u[1].CustomAttack[U.Name]
    end
    return Q or 35
  end
end, [2692] = function(u, u, u, u)
  return function(U, Q, F)
    if not u[1].beamTP then
      return false
    end
    local A = tick()
    if (A - (u[2].beamTPAt or 0)) < u[1].beamTPEvery then
      return false
    end
    local Y = U:GetRoot()
    if not Y then
      return false
    end
    if U:HasForceField() then
      return false
    end
    local T, G = Q.CFrame, Q.Size / 2
    Q = T:PointToObjectSpace(Y.Position)
    if ((math.abs(Q.X) > G.X) or (math.abs(Q.Y) > G.Y)) or (math.abs(Q.Z) > G.Z) then
      return false
    end
    local z = T.RightVector
    local H = Vector3.new(z.X, 0, z.Z)
    if H.Magnitude < 0.01 then
      return false
    end
    H = H.Unit
    z = (if F and F.dir then ((H:Dot(F.dir) > 0) and -1) or 1 else ((Q.X >= 0) and 1) or -1) * (G.X + u[1].beamTPMargin)
    G = T:PointToWorldSpace(Vector3.new(z, Q.Y, Q.Z))
    local Q = Vector3.new(G.X - Y.Position.X, 0, G.Z - Y.Position.Z).Magnitude
    if Q > u[1].beamTPMaxDist then
      u[3][4][u[3][7]]("dodge", "beamtpfar", 2, "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153 beam \224\185\129\224\184\149\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155 %.0f studs (\224\185\128\224\184\129\224\184\180\224\184\153 %.0f) \224\185\132\224\184\161\224\185\136\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155", Q, u[1].beamTPMaxDist)
      return false
    end
    z = U:GetGroundY(G.X, G.Z, Y.Position.Y + 5)
    if not z then
      u[3][4][u[3][7]]("dodge", "beamtpground", 2, "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153 beam \224\185\129\224\184\149\224\185\136\224\184\157\224\184\177\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\184\130\224\185\137\224\184\178\224\184\161\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\158\224\184\183\224\185\137\224\184\153")
      return false
    end
    F = Vector3.new(G.X, z + (Y.Size.Y / 2), G.Z)
    if U:IsBlocked(F) then
      u[3][4][u[3][7]]("dodge", "beamtpblocked", 2, "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153 beam \224\185\129\224\184\149\224\185\136\224\184\157\224\184\177\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\184\130\224\185\137\224\184\178\224\184\161\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\184\173\224\184\183\224\185\136\224\184\153")
      return false
    end
    u[2].beamTPAt = A
    Y.CFrame = CFrame.new(F) * Y.CFrame.Rotation
    Y.AssemblyLinearVelocity = Vector3.zero
    u[4].dodgeGoal = nil
    u[4].retreatGoal = nil
    u[4].projGoal = nil
    u[4].circleGoal = nil
    U:StopWalking()
    u[5][4][u[5][7]]("dodge", "\224\185\130\224\184\148\224\184\153 beam \226\134\146 \224\184\167\224\184\178\224\184\163\224\185\140\224\184\155\224\184\173\224\184\173\224\184\129\224\184\157\224\184\177\224\185\136\224\184\135\224\184\149\224\184\163\224\184\135\224\184\130\224\185\137\224\184\178\224\184\161 %.0f studs", Q)
    return true
  end
end, [10512] = function(u, u, u, u)
  return function(U)
    local Q = {}
    local F = u[1].bb and u[1].bb.longLine
    local A = u[2].BonusBoss.longLine
    if (F and F.gapA) and ((tick() - F.t0) < A.hold) then
      local u = Vector3.new(math.cos(F.gapA), 0, math.sin(F.gapA))
      for F = A.rMin, A.rMax, 4 do
        local Y = A.center + (u * F)
        Q[#Q + 1] = Vector3.new(Y.X, U.Y, Y.Z)
      end
    end
    return Q
  end
end, [9408] = function(u, u, u, u, U, U)
  return function(U, Q)
    return u[1].timeGuard(U, Q, u[2].bobz)
  end
end, [15975] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = U:GetRoot()
    local F, A = u[1].dest, 0
    if Q and F then
      local Y, T = {Q.Position}, u[1].waypoints
      if T and u[1].index then
        for Q = u[1].index, #T, 1 do
          local G = T[Q]
          Q = ((typeof(G) == "Vector3") and G) or G.Position
          if Q then
            table.insert(Y, Q)
          end
        end
      end
      table.insert(Y, F)
      local Q = (u[1].usingRoute and (Color3.fromRGB(200, 80, 255))) or (Color3.fromRGB(0, 200, 255))
      local F, G = u[2].walkPathStep or 4, u[2].walkPathMax or 40
      for z = 1, #Y - 1, 1 do
        T = Y[z]
        local H = Y[z + 1] - T
        local N = H.Magnitude
        if N > 0.5 then
          local S = math.max(1, math.floor(N / F))
          for F = 1, S, 1 do
            if A >= G then
              break
            end
            local G = T + (H * (F / S))
            local T = U:GetGroundY(G.X, G.Z, G.Y + 3)
            A += 1
            local H = u[3][4][u[3][7]](A)
            H.Position = Vector3.new(G.X, (T or (G.Y - 2)) + 0.6, G.Z)
            H.Color = Q
            H.Size = (((z == (#Y - 1)) and (F == S)) and (Vector3.new(2.5, 2.5, 2.5))) or (Vector3.new(1, 1, 1))
            H.Transparency = 0
          end
        end
      end
    end
    for Q = A + 1, #u[4].walkPathPool, 1 do
      U = u[4].walkPathPool[Q]
      if U and U.Parent then
        U.Transparency = 1
      end
    end
  end
end, [13697] = function(u, u)
  return function(u)
    local U = u.plan
    if not U or not u.dir then
      return nil
    end
    local Q = (u.center - U.cf.Position):Dot(u.dir)
    return math.max(U.dist - math.max(Q, 0), 0), 0
  end
end, vM = function(u, U, Q, F, A, Y, T, G)
  if Y <= 12 then
    local Y, z, H, N = u[39](F, 3 + A), (G - 128) * 128, (T - 128) * 2097152, Q - 128
    local u, F = (Y % 128) * 16384, 2097152 * (Y - (Y % 128))
    Y = (((H + N) + F) + u) + z
    return 10, 4 + A, Y, T
  else
    local u = T - 128
    local F = ((Q - 128) * 16384) + (u + (128 * U))
    return 31, 3 + A, G, F
  end
end, [3766] = function(u, u, u, u)
  return function(U)
    local Q = u[1].BonusBoss.longLine
    local u = Vector3.new(U.X, 0, U.Z) - Q.center
    for U, F in ipairs(Q.angles) do
      U = math.rad(F)
      if math.abs((u.X * math.sin(U)) - (u.Z * math.cos(U))) < 8 then
        return false
      end
    end
    return true
  end
end, [3281] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    if not u[1][4][u[1][7]]:GetFlag("Auto Swing") then
      return
    end
    if not u[2]:InAttackRange(U, Q) then
      return
    end
    if not u[2]:Cooldown("Swing", 0.2) then
      return
    end
    u[2]:Swing()
  end
end, [12292] = function(u, u, u, u, U, U, U)
  return function(U)
    if u[1].routeDbg then
      u[1].routeDbg:Destroy()
      u[1].routeDbg = nil
      print("route debug: OFF")
      return
    end
    local U, Q = u[2].ROUTE_POINTS or {}, u[2].ROUTE_LINKS or {}
    if #U == 0 then
      print("route debug: ROUTE_POINTS \224\184\167\224\185\136\224\184\178\224\184\135 (\224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137\224\185\128\224\184\163\224\184\181\224\184\162\224\184\129 GetDesertTemplePath?)")
      return
    end
    local F = Instance.new("Folder")
    F.Name = "_routeDbg"
    local function A(Y, T, G)
      local z = Instance.new("Part")
      z.Name = "_routeDbg"
      z.Size = Y
      z.CFrame = T
      z.Color = G
      z.Material = Enum.Material.Neon
      z.Anchored = true
      z.CanCollide = false
      z.CanQuery = false
      z.CanTouch = false
      z.Parent = F
      return z
    end
    local function Y(T)
      local G = U[T]
      return Vector3.new(G[1], G[2], G[3])
    end
    for T = 1, #U, 1 do
      local G = Y(T)
      local z = A(Vector3.new(2, 2, 2), CFrame.new(G + Vector3.new(0, 1, 0)), Color3.fromRGB(255, 220, 0))
      z.Shape = Enum.PartType.Ball
      local H = Instance.new("BillboardGui")
      H.Size = UDim2.fromOffset(60, 24)
      H.StudsOffset = Vector3.new(0, 3, 0)
      H.AlwaysOnTop = true
      local N = Instance.new("TextLabel")
      N.Size = UDim2.fromScale(1, 1)
      N.BackgroundTransparency = 1
      N.TextColor3 = Color3.new(1, 1, 1)
      N.TextStrokeTransparency = 0
      N.TextScaled = true
      N.Text = tostring(T)
      N.Parent = H
      H.Parent = z
      for z, z in ipairs(Q[T] or {}) do
        if z > T then
          H = Y(z)
          N = (H - G).Magnitude
          if N > 0.5 then
            A(Vector3.new(0.5, 0.5, N), CFrame.lookAt(G, H) * CFrame.new(0, 1, -N / 2), Color3.fromRGB(0, 255, 120))
          end
        end
      end
    end
    F.Parent = workspace
    u[1].routeDbg = F
    print(("route debug: ON  %d \224\184\136\224\184\184\224\184\148"):format(#U))
  end
end, [36] = function(u, u, u, u)
  return function(U)
    local Q = tick()
    local F = u[1].ownerCache[U]
    if F and ((Q - F.at) < u[2].ownerCacheTime) then
      if F.hum and F.hum.Parent then
        return F.hum
      end
      if not F.hum then
        return nil
      end
    end
    local F = nil
    for A, Y in pairs(u[3][4][u[3][7]]:GetChildren()) do
      A = Y:FindFirstChild("enemyFolder")
      if A then
        Y = A:FindFirstChild(U)
        if Y then
          F = Y:FindFirstChildOfClass("Humanoid")
          if F then
            break
          end
        end
      end
    end
    u[1].ownerCache[U] = {hum = F, at = Q}
    return F
  end
end, tM = function(u, U, Q, F, A, Y, T, G)
  if U <= 26 then
    if U <= 25 then
      local z = u[39](F, T + 1)
      return (not not (z >= 128) and 14) or 6, T, Y, z
    else
      local z = G + (128 * (Q - 128))
      return 31, 2 + T, Y, z
    end
  elseif U <= 27 then
    local U = u[39](F, 2 + T)
    return ((128 > U) and 23) or 33, T, U, Q
  else
    local U, z, H, N = u[39](F, 3 + T), (Q - 128) * 128, 2097152 * (G - 128), A - 128
    local u = ((U % 128) * 16384) + ((H + (N + ((U - (U % 128)) * 2097152))) + z)
    return 31, 4 + T, Y, u
  end
end, [249] = function(u, u, u, u)
  return function(U, U)
    U = U or 36
    if u[1].ringDebug then
      u[1].ringDebug:Destroy()
    end
    u[1].ringDebug = Instance.new("Folder")
    u[1].ringDebug.Name = "_ringDebug"
    u[1].ringDebug.Parent = workspace
    local Q = 0
    for F, A in ipairs(u[2]) do
      if (A.ring and A.part) and A.part.Parent then
        Q += 1
        F = u[3][4][u[3][7]](A, A.part)
        local Y, T = u[4][4][u[4][7]](A, A.part)
        local G, z = (Y + T) / 2, math.max(T - Y, 0.5)
        local H = ((6.283185307179586 * G) / U) * 1.25
        T = u[5][4][u[5][7]](A, A.part)
        Y = (T and (math.cos(math.rad(A.ringHalf + (A.ringAngPad or 3))))) or nil
        for A = 1, U, 1 do
          local N = ((A / U) * 3.141592653589793) * 2
          A = Vector3.new(math.cos(N), 0, math.sin(N))
          if not (Y and (A:Dot(T) < Y)) then
            local U, Y = (F + (A * G)) + Vector3.new(0, u[6].RING_DEBUG.lift, 0), Instance.new("Part")
            Y.Name = "seg"
            Y.Size = Vector3.new(z, u[6].RING_DEBUG.height, H)
            N = Vector3.new(-A.Z, 0, A.X)
            Y.CFrame = CFrame.lookAt(U, U + N)
            Y.Anchored = true
            Y.CanCollide = false
            Y.CanQuery = false
            Y.CanTouch = false
            Y.Transparency = u[6].RING_DEBUG.alpha
            Y.Color = Color3.fromRGB(255, 40, 40)
            Y.Material = Enum.Material.Neon
            Y.Parent = u[1].ringDebug
          end
        end
      end
    end
    return Q
  end
end, [13] = string.char, [4] = function(u, u, u, u, U)
  return function(U, Q, ...)
    local F = u[1].genv.__claudeBotLog
    if F then
      pcall(F, U, string.format(Q, ...))
    end
    if not u[2].enabled or not u[2][U] then
      return
    end
  end
end, [1845] = function(u, u, u, u, U, U, U)
  return function(U, U, Q, F)
    if u[1].bbMemSafe and not u[1].bbMemSafe(Q) then
      return false
    end
    local A = u[2].bb and u[2].bb.memory
    if ((A and A.model.Parent) and A.mid) and A.leftDir then
      local Y = (A.doneCache or 0) + 1
      local T, G = A.seq[Y] or (A.guess and A.guess[Y]), u[1].BonusBoss.memHitT[Y]
      if T and G then
        Y = ((T == "L") and A.leftDir) or -A.leftDir
        local T = (u[3][4][u[3][7]](Q) - A.mid):Dot(Y)
        if T < 7 then
          local Y = u[3][4][u[3][7]](Q - U).Magnitude / F
          if (((tick() + Y) + ((7 - T) / 20)) + 0.3) > ((A.at + G) - 0.25) then
            return false
          end
        end
      end
    end
    if ((u[2].bb and u[2].bb.colorZone) and u[2].bb.colorSpot) and u[2].bb.colorEnd then
      if ((u[3][4][u[3][7]](Q - U).Magnitude / F) + (math.max(0, u[3][4][u[3][7]](u[2].bb.colorSpot - Q).Magnitude - u[1].BonusBoss.colorArrive) / F)) > ((u[2].bb.colorEnd - tick()) - 0.3) then
        return false
      end
    end
    A = u[2].bb and u[2].bb.sweep
    if (((A and A.model) and A.model.Parent) and A.safeCenter) and A.axis then
      local Y = math.abs((A.safeCenter - u[3][4][u[3][7]](U)):Dot(A.axis))
      if (Y > 15) and (math.abs((A.safeCenter - u[3][4][u[3][7]](Q)):Dot(A.axis)) > (Y + 2)) then
        return false
      end
    end
    if u[1].bbSweepSoonOK and not u[1].bbSweepSoonOK(U, Q) then
      return false
    end
    A = u[3][4][u[3][7]](Q - U).Magnitude / F
    if u[1].bbVolleyHit and (u[1].bbVolleyHit(Q, math.max(0, A - 0.2), A + 1)) then
      return false
    end
    A = u[2].bb and u[2].bb.longLine
    if A and ((tick() - A.t0) < u[1].BonusBoss.longLine.hold) then
      local Y = tick() - A.t0
      if not (u[1].bbLLPointSafe(Q) and (u[1].bbLLPathSafe(U, Q, Y, F))) then
        return false
      end
    end
    return true
  end
end, [1853] = function(u, u, u, u, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    local F = 0
    for A, A in ipairs(u[1]) do
      local Y = (A.vel and A.vel.Magnitude) or 0
      if Y >= u[2].incomingMinSpeed then
        F += 1
        print(("[MOVE] %s | speed %.0f | \224\184\171\224\185\136\224\184\178\224\184\135 %.0f"):format(A.part.Name, Y, (A.part.Position - Q.Position).Magnitude))
      end
    end
    local A, Y = U:GetIncoming(Q.Position)
    print(("hitbox=%d | \224\184\151\224\184\181\224\185\136\224\184\130\224\184\162\224\184\177\224\184\154=%d | \224\184\129\224\184\167\224\184\178\224\184\148\224\184\161\224\184\178\224\184\138\224\184\153: %s"):format(#u[1], F, (A and (A.part.Name .. (" \224\184\173\224\184\181\224\184\129 %.2f \224\184\167\224\184\180"):format(Y))) or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181"))
  end
end, [11085] = function(u, u, u, u, U, U)
  return function(U)
    return tick() - u[1].currentBuff.time
  end
end, [1053] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A, Y)
    if #u[1] == 0 then
      return false
    end
    local T = Vector3.new(F.X - Q.X, 0, F.Z - Q.Z)
    F = T.Magnitude
    if F < 0.1 then
      return false
    end
    local G, z = (Y and 0) or u[2].OrbMechanic.pathSkip, F - 3
    z = if A and (z > A) then A else z
    if z <= G then
      return false
    end
    Y, F = T.Unit, G
    while F <= z do
      if U:IsBlocked(Q + (Y * F)) then
        return true
      end
      F += u[2].OrbMechanic.pathStep
    end
    return false
  end
end, t = function(u, ...)
  return (...)()
end, [138] = function(u, u, u, u, U, U, U)
  return function()
    local U = os.clock()
    if (U - u[1].hbSnapT) < 0.01 then
      return u[1].hbSnap
    end
    u[1].hbSnapT = U
    local Q = tick()
    local F = {}
    for A = #u[2], 1, -1 do
      local Y = u[2][A]
      if u[3][4][u[3][7]](Y, Q) then
        if Y.conn then
          Y.conn:Disconnect()
        end
        table.remove(u[2], A)
      elseif Y.ring then
        F[#F + 1] = {e = Y, ring = true}
      else
        U = Y.part
        local Q = U.Position
        local A = (((Y.size or U.Size).Magnitude * 0.5) + (Y.pad or 0)) + 6
        F[#F + 1] = {e = Y, x = Q.X, z = Q.Z, b2 = A * A, cf = U.CFrame, sz = u[4][4][u[4][7]](Y, U)}
      end
    end
    u[1].hbSnap = F
    return F
  end
end, [81] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    u[1].ForceFieldSkip[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "ForceField \224\184\129\224\184\177\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\171\224\184\165\224\184\154\224\184\149\224\185\136\224\184\173)") or "ForceField \224\184\129\224\184\177\224\184\153\224\185\132\224\184\148\224\185\137")
  end
end, Pq = function(u, U, Q, F, A, Y, T, G, z, ...)
  if A <= 1 then
    if A <= 0 then
      return 31, Q, T, Y + 1, z, G, U, F
    else
      return 3, Q[3], T, Y, z, G, U, F
    end
  elseif A <= 2 then
    u.v = ...
    local A, H = u.v, u[45]
    local N = u[39](A, H)
    return (not not (N >= 128) and 5) or 19, Q, A, H, {}, N, U, F
  else
    local U = u[39](T, Y)
    return (not (U >= 128) and 30) or 25, Q, T, Y, z, G, 7, U
  end
end, [11629] = function(u, u, u, u)
  return function(U, U)
    local Q = u[1].modelCache[U]
    if Q and ((tick() - Q.at) < u[2].modelCacheTime) then
      return Q
    end
    local F, A, A = pcall(function()
      return U:GetBoundingBox()
    end)
    Q = if F and A then {radius = math.max(A.X, A.Z) / 2, halfHeight = A.Y / 2, at = tick()} else {radius = u[2].defaultRadius, halfHeight = u[2].defaultHeight, at = tick()}
    u[1].modelCache[U] = Q
    return Q
  end
end, [14829] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A = u[1].bb and u[1].bb.bossPos
    if not A then
      return false
    end
    local u = Vector3.new(U.X - A.X, 0, U.Z - A.Z)
    U = u.Magnitude
    if U < 1 then
      return true
    end
    A = -((Q.X * u.X) + (Q.Z * u.Z)) / U
    if A <= 1 then
      return false
    end
    return (A * F) >= (U - 15)
  end
end, [13443] = function(u, u, u, u, U)
  return function(U, U)
    if not u[1].debugMarker then
      u[1].debugMarker = Instance.new("Part")
      u[1].debugMarker.Name = "_goalMarker"
      u[1].debugMarker.Shape = Enum.PartType.Ball
      u[1].debugMarker.Size = Vector3.new(1.5, 1.5, 1.5)
      u[1].debugMarker.Color = Color3.fromRGB(0, 255, 80)
      u[1].debugMarker.Material = Enum.Material.Neon
      u[1].debugMarker.Anchored = true
      u[1].debugMarker.CanCollide = false
      u[1].debugMarker.CanQuery = false
      u[1].debugMarker.CanTouch = false
      u[1].debugMarker.Parent = workspace
    end
    u[1].debugMarker.Position = U
    u[1].debugMarker.Transparency = 1
  end
end, [84] = function(u, u, u, u, U, U, U)
  return function(U, U)
    return (U ~= nil) and (u[1].CircleWalk[U.Name] == true)
  end
end, [35] = function(u, u, u, u, U)
  return function(U, U, Q)
    u[1].CircleWalk[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\167\224\184\153\224\184\163\224\184\173\224\184\154\224\184\149\224\184\165\224\184\173\224\184\148") or "\224\184\162\224\184\183\224\184\153\224\184\149\224\184\181\224\184\173\224\184\162\224\184\185\224\185\136\224\184\129\224\184\177\224\184\154\224\184\151\224\184\181\224\185\136")
  end
end, [3775] = function(u, u, u, u, U, U)
  return function(U, Q, F, A)
    local Y = U:GetRoot()
    if not Y then
      return nil
    end
    local T = Y.Size.Y / 2
    U:RefreshRayFilter()
    local G = math.huge
    local z, H = math.max(u[1].attackSpotDirs or 16, 8), math.max(u[1].attackSpotRing or 3, 1)
    Y = nil
    for N = 1, H, 1 do
      local S = A * (0.75 + ((0.25 * N) / H))
      for e = 1, z, 1 do
        N = ((e / z) * 3.141592653589793) * 2
        e = Vector3.new(math.cos(N), 0, math.sin(N))
        local N = Vector3.new(F.X, Q.Y, F.Z) + (e * S)
        e = Vector3.new(N.X - Q.X, 0, N.Z - Q.Z).Magnitude
        if e < G then
          local S = U:GetGroundY(N.X, N.Z, Q.Y)
          if S and (((Q.Y - T) - S) <= u[1].maxDrop) then
            local D = Vector3.new(N.X, S + T, N.Z)
            if not U:IsBlocked(D) and (U:GetSafeAdvance(Q, D) >= u[1].minAdvance) then
              G, Y = e, D
            end
          end
        end
      end
    end
    if Y then
      return Y, G
    end
    z = tick()
    G = u[2].attackDetour
    if (G and (z < G.until_)) and ((G.from - Q).Magnitude < 4) then
      if G.pos and not U:IsBlocked(G.pos) then
        return G.pos, G.d
      end
      if not G.pos then
        return nil, math.huge
      end
    end
    Y, G = {}, A * 0.9
    for N = 1, 16, 1 do
      A = ((N / 16) * 3.141592653589793) * 2
      H = Vector3.new(F.X, Q.Y, F.Z) + (Vector3.new(math.cos(A), 0, math.sin(A)) * G)
      N = U:GetGroundY(H.X, H.Z, Q.Y)
      if N then
        H = Vector3.new(H.X, N + T, H.Z)
        if not U:IsBlocked(H) and (U:LeashOK(H)) then
          Y[#Y + 1] = H
        end
      end
    end
    H, F, G = {16, 30}
    for A, N in ipairs(H) do
      for H = 1, 12, 1 do
        A = ((H / 12) * 3.141592653589793) * 2
        local S = Q + (Vector3.new(math.cos(A), 0, math.sin(A)) * N)
        H = U:GetGroundY(S.X, S.Z, Q.Y)
        if H then
          S = Vector3.new(S.X, H + T, S.Z)
          if (not U:IsBlocked(S) and (U:LeashOK(S))) and (U:GetSafeAdvance(Q, S) >= (N - 1)) then
            table.sort(Y, function(A, T)
              return (A - S).Magnitude < (T - S).Magnitude
            end)
            for A, T in ipairs(Y) do
              A = N + Vector3.new(T.X - S.X, 0, T.Z - S.Z).Magnitude
              if F and (A >= F) then
                break
              end
              if U:GetSafeAdvance(S, T) >= u[1].minAdvance then
                F, G = A, S
                break
              end
            end
          end
        end
      end
    end
    u[2].attackDetour = {from = Q, pos = G, d = F, until_ = z + 0.5}
    if G then
      return G, F
    end
    return nil, math.huge
  end
end, [4048] = function(u, u, u, u, U, U, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    print(("=== projectile %d \224\184\165\224\184\185\224\184\129 ==="):format(#u[1].Projectiles))
    for U, F in ipairs(u[1].Projectiles) do
      local u, A = (F.part.Position - Q.Position).Magnitude, F.vel.Magnitude
      print(("[%d] %s | %s | speed %.0f | \224\184\171\224\185\136\224\184\178\224\184\135 %.0f | \224\184\150\224\184\182\224\184\135\224\184\149\224\184\177\224\184\167\224\185\131\224\184\153 %.2f \224\184\167\224\184\180 | turn %.2f | \224\184\173\224\184\178\224\184\162\224\184\184 %.1f"):format(U, F.part.Name, (F.homing and "HOMING") or ((F.box and "\224\185\128\224\184\170\224\185\137\224\184\153\224\184\149\224\184\163\224\184\135(\224\184\167\224\184\178\224\184\148\224\185\129\224\184\165\224\185\137\224\184\167)") or "\224\185\128\224\184\170\224\185\137\224\184\153\224\184\149\224\184\163\224\184\135"), A, u, ((A > 1) and (u / A)) or 99, F.turnSum, tick() - F.bornAt))
    end
  end
end, [12385] = function(u, u, u, u, U, U)
  return function(U, U)
    local Q, F, A = u[1][4][u[1][7]](), U.X, U.Z
    for Y = 1, #Q, 1 do
      local T = Q[Y]
      if T.ring then
        if u[2][4][u[2][7]](T.e, T.e.part, U) then
          return true
        end
      else
        local Q = T.x - F
        local F = T.z - A
        if (((Q * Q) + (F * F)) <= T.b2) and (u[3][4][u[3][7]](T.e, T.cf, T.sz, U)) then
          return true
        end
      end
    end
    return false
  end
end, [13681] = function(u, u, u, u)
  return function(U)
    return u[1].tgStaticBlocked(U, u[1].bbzIgnore, u[1].bbzIgnoreP, true)
  end
end, [11227] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A = Q.Parent and (Q.Parent.Name == "bonusBossSmallSpiralFlame")
    if not U:RegisterHitbox(Q, {lifetime = F, autoPad = true, pad = (A and 1.5) or 3, owner = u[1].BonusBoss.boss}) then
      return
    end
    if A and u[2].bbz then
      local U, A = u[2].bbz.discs, tick()
      U[#U + 1] = {c = Vector3.new(Q.Position.X, 0, Q.Position.Z), r = 11.5, tA = A + 0.75, tB = A + 1.1}
    end
    local U = Q.Parent and u[1].BonusBoss.flashUntilGone[Q.Parent.Name]
    task.spawn(function()
      local A, Y = tick(), false
      while Q.Parent and ((tick() - A) < F) do
        local F = Q.Transparency
        Y = if F <= 0.35 then true else Y
        if (Y and (F >= 0.99)) and not U then
          break
        end
        task.wait(0.05)
      end
      u[3]:RemoveHitbox(Q)
    end)
  end
end, N = function(u, U, Q, F, A, Y, T, G, z)
  if G <= 134 then
    if G <= 133 then
      local H = Q - 128
      local N, S, e = (16384 * (A - 128)) + ((Y * 128) + H), 3 + U, z[1]
      return 257, z[2], e, S, N, A, T
    else
      local H = u[39](F, 2 + U)
      local N, S = (not (128 <= H) and 89) or 291, z[1]
      return N, z[2], S, U, Q, A, H
    end
  elseif G <= 135 then
    local H = u[39](F, U + 1)
    local N, S = (not (H >= 128) and 155) or 184, z[1]
    return N, z[2], S, U, Q, H, T
  elseif G <= 136 then
    local G, H = U + 1, z[1]
    return 12, z[2], H, G, Q, A, T
  else
    local G, H, N, S = u[39](F, 3 + U), (Q - 128) * 128, (A - 128) * 2097152, Y - 128
    local u, Q = (G % 128) * 16384, (G - (G % 128)) * 2097152
    local F, Y, G = u + ((N + (S + H)) + Q), 4 + U, z[1]
    return 37, z[2], G, Y, F, A, T
  end
end, [2466] = function(u, u, u, u, U)
  return function(U, U)
    if not U then
      return
    end
    if not u[1].FixCFrameMobs[U.Name] then
      return
    end
    U.HumanoidRootPart.CFrame = u[1].FixCFrameMobs[U.Name]
  end
end, [103] = function(u, u)
  return function(u, u)
    return u and ((u:FindFirstChild("HumanoidRootPart") or (u:FindFirstChild("Torso"))) or (u:FindFirstChild("UpperTorso")))
  end
end, [70] = pcall, [104] = typeof, [7156] = function(u, u, u, u, U)
  return function(U, Q)
    local F = U.CFrame.LookVector
    local A = Vector3.new(F.X, 0, F.Z)
    if A.Magnitude < 0.1 then
      return
    end
    local F, Y, T = math.max(U.Size.X, U.Size.Z) / 2, (Q and Q.Position) or U.Position, tick()
    Q = ((F >= 100) and 15) or 12
    local U = {c = Vector3.new(Y.X, 0, Y.Z), u = A.Unit, r = F + 4.5, rIn = math.max((F - Q) - 4.5, 0), tA = T + 0.95, tB = T + 1.35}
    Q = u[1].odz.discs
    Q[#Q + 1] = U
    if u[1].bbz then
      u[1].bbz.discs[#u[1].bbz.discs + 1] = U
    end
  end
end, [9] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = U.moveState and U.moveState.currentTarget
    if F and (F.Name == "Bob The Frost Giant") then
      local A = u[1].BossHome and u[1].BossHome["Bob The Frost Giant"]
      local Y = ((A and A.enabled) and A.leash) and (U:BobHome())
      if not Y then
        return true
      end
      local T = Vector3.new(Q.X - Y.X, 0, Q.Z - Y.Z).Magnitude
      if T <= A.leash then
        return true
      end
      A = U:GetRoot()
      return (A ~= nil) and (T <= (Vector3.new(A.Position.X - Y.X, 0, A.Position.Z - Y.Z).Magnitude + 2))
    end
    U = F and u[1].Leash[F.Name]
    if not U then
      return true
    end
    local A = U.center
    if Vector3.new(Q.X - A.X, 0, Q.Z - A.Z).Magnitude > U.radius then
      return false
    end
    if ((F.Name == "Odin Reincarnation") and u[1].bbMemSafe) and not u[1].bbMemSafe(Q) then
      return false
    end
    return true
  end
end, [8548] = function(u, u, u)
  return function(u)
    if not u then
      return nil
    end
    if u:IsA("BasePart") then
      return u
    end
    if u:IsA("Model") then
      return u.PrimaryPart or (u:FindFirstChildWhichIsA("BasePart", true))
    end
    return u:FindFirstChildWhichIsA("BasePart", true)
  end
end, kq = function(u, U, Q, F, A, Y, T, G, z, H)
  if H <= 202 then
    F[z] = U
    local N, S = F[5], u[39](A, Q)
    local e, D = (not (S >= 128) and 302) or 204, Y[1]
    return e, Y[2], D, N, S, G
  elseif H <= 203 then
    local H = F[F[8]]
    H[0] = F[F[9]]
    u[68](H, T)
    H = Y[1]
    return 72, Y[2], H, z, U, G
  else
    local F = u[39](A, Q + 1)
    local u, Q = (not (128 > F) and 271) or 237, Y[1]
    return u, Y[2], Q, z, U, F
  end
end, [3791] = function(u, u, u, u, U, U)
  return function(U, U)
    if (not u[1].enabled or not U) or not U:IsA("BasePart") then
      return
    end
    for Q, Q in ipairs(u[2].Projectiles) do
      if Q.part == U then
        return
      end
    end
    local Q, F = U.Position, tick()
    task.delay(u[1].spawnDelay, function()
      if not U.Parent then
        return
      end
      local A = U.AssemblyLinearVelocity
      if A.Magnitude < u[1].minSpeed then
        local Y = tick() - F
        A = if Y > 0.01 then (U.Position - Q) / Y else A
      end
      if A.Magnitude < u[1].minSpeed then
        task.delay(u[1].spawnDelay * 3, function()
          if not U.Parent then
            return
          end
          if ((U.Position - Q) / (tick() - F)).Magnitude >= u[1].minSpeed then
            u[3]:TrackProjectile(U)
          end
        end)
        return
      end
      local Q = {part = U, vel = A, lastPos = U.Position, radius = math.max(U.Size.X, U.Size.Y, U.Size.Z) / 2, turnSum = 0, homing = false, settled = false, bornAt = tick(), box = nil}
      table.insert(u[2].Projectiles, Q)
      u[3]:MarkStraightPath(Q)
      U.AncestryChanged:Connect(function(Q, Q)
        if not Q then
          for Q = #u[2].Projectiles, 1, -1 do
            if u[2].Projectiles[Q].part == U then
              u[3]:RemoveProjBox(u[2].Projectiles[Q])
              table.remove(u[2].Projectiles, Q)
            end
          end
        end
      end)
    end)
  end
end, [14294] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = U:GetRoot()
    if not F then
      return
    end
    local A = 0
    for Y, T in ipairs(u[1]) do
      if (T.ring and T.part) and T.part.Parent then
        A += 1
        U = u[2][4][u[2][7]](T, T.part)
        Y = Vector3.new(F.Position.X - U.X, 0, F.Position.Z - U.Z)
        local G = Y.Magnitude
        local z, H = u[3][4][u[3][7]](T, T.part)
        local N = u[4][4][u[4][7]](T, T.part, F.Position)
        local F = "\224\184\167\224\184\135\224\185\128\224\184\149\224\185\135\224\184\161"
        local S = u[5][4][u[5][7]](T, T.part)
        if S then
          local e = ((G > 0.5) and (Y.Unit:Dot(S))) or 1
          F = (("\224\184\132\224\184\163\224\184\182\224\185\136\224\184\135\224\184\167\224\184\135 %.0f\194\176 | \224\185\128\224\184\163\224\184\178\224\184\173\224\184\162\224\184\185\224\185\136\224\184\157\224\184\177\224\185\136\224\184\135 %s"):format(T.ringHalf, ((e >= 0) and "\224\184\173\224\184\177\224\184\153\224\184\149\224\184\163\224\184\178\224\184\162") or "\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162"))
        end
        print(("[RING] %s | \224\185\131\224\184\153 %.0f \224\184\153\224\184\173\224\184\129 %.0f (\224\184\171\224\184\153\224\184\178 %.0f) | \224\184\171\224\185\136\224\184\178\224\184\135\224\184\129\224\184\165\224\184\178\224\184\135 %.0f | %s | %s"):format(T.part.Name, z, H, H - z, G, F, (N and "\224\185\130\224\184\148\224\184\153!") or "\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162"))
      end
    end
    print(("\224\184\167\224\184\135\224\185\129\224\184\171\224\184\167\224\184\153\224\184\151\224\184\181\224\185\136 track: %d"):format(A))
    if Q then
      U = workspace:FindFirstChild(Q, true)
      if not U then
        print("\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 " .. Q)
        return
      end
      for Q, Q in ipairs(U:GetDescendants()) do
        if Q:IsA("BasePart") then
          A = U:FindFirstChild("center", true)
          A = ((A and (A:IsA("BasePart"))) and A.Position) or Q.Position
          local U, F, Y, T = u[6].MeasureRingArc(Q, A, 1)
          print(("  %s | size %.0f,%.0f,%.0f | \224\184\167\224\184\177\224\184\148\224\185\132\224\184\148\224\185\137 \224\185\131\224\184\153 %s \224\184\153\224\184\173\224\184\129 %s | %s"):format(Q.Name, Q.Size.X, Q.Size.Y, Q.Size.Z, (U and (("%.0f"):format(U))) or "-", (F and (("%.0f"):format(F))) or "-", (Y and (("\224\184\132\224\184\163\224\184\182\224\185\136\224\184\135\224\184\167\224\184\135 %.0f\194\176"):format(T or 0))) or "\224\184\167\224\184\135\224\185\128\224\184\149\224\185\135\224\184\161"))
        end
      end
    end
  end
end, [14391] = function(u, u, u, u, U)
  return function()
    local U = u[1]:GetService("ReplicatedStorage"):WaitForChild("remotes", 15)
    local Q = U and (U:WaitForChild("northernBossSpecficEvents", 15))
    if not Q then
      return
    end
    u[2].liveConnect(Q.OnClientEvent, function(U, Q)
      if (type(Q) ~= "table") or (typeof(Q[5]) ~= "CFrame") then
        return
      end
      local F = ({["First Boss Criss Cross Projectile"] = {part = "firstBossCrissCross", offset = 0, match = 8}, ["Third Boss Sideways Missile"] = {part = "thirdBossMissile", offset = -10, match = 16}, ["Bonus Boss Sideways Missile"] = {part = "thirdBossMissile", offset = -10, match = 16}})[U]
      if F then
        local A, Y, T = tonumber(Q[1]) or 0, tonumber(Q[2]) or 1, Q[5]
        local G = T.LookVector
        local z = Vector3.new(G.X, 0, G.Z)
        local H = {part = F.part, match = F.match, pos = T.Position + (G * F.offset), dur = Y, at = tick(), vel = (((z.Magnitude > 0.01) and z.Unit) or Vector3.zero) * (A / math.max(Y, 0.01))}
        u[3].ccPlans = u[3].ccPlans or {}
        table.insert(u[3].ccPlans, H)
        if #u[3].ccPlans > 40 then
          table.remove(u[3].ccPlans, 1)
        end
        for F, F in ipairs(u[4]) do
          if ((F.part and (F.part.Name == H.part)) and not F.planVel) and ((F.part.Position - H.pos).Magnitude < H.match) then
            F.planVel = H.vel
            F.expireAt = math.min(F.expireAt, (tick() + Y) + 0.5)
          end
        end
        return
      end
      if U ~= "Second Boss Moving Beam" then
        return
      end
      u[3].beamPlan = {dist = tonumber(Q[1]) or 0, dur = tonumber(Q[2]) or 1, cf = Q[5], at = tick()}
      for U, U in pairs(u[3].beamTrack) do
        if not U.plan then
          u[5].AttachBeamPlan(U)
        end
      end
    end)
  end
end, [11742] = function(u, u, u, u, U)
  return function(U, U, Q, F)
    local F = u[1].bobOrbRun
    if not F then
      return true
    end
    local A = tick()
    if not u[1].bobOrbLiveT or ((A - u[1].bobOrbLiveT) > 0.1) then
      u[1].bobOrbLiveT = A
      local Y, T, T = pcall(function()
        return u[2]:GetActiveOrb()
      end)
      u[1].bobOrbLivePart = (((Y and T) and T.Parent) and T) or nil
      u[1].bobOrbLive = (u[1].bobOrbLivePart and u[1].bobOrbLivePart.Position) or nil
    end
    A = u[1].bobOrbLive
    if not A then
      return true
    end
    if F.part ~= u[1].bobOrbLivePart then
      return true
    end
    if Vector3.new(A.X - U.X, 0, A.Z - U.Z).Magnitude > 35 then
      return true
    end
    return Vector3.new(Q.X - F.stand.X, 0, Q.Z - F.stand.Z).Magnitude <= (Vector3.new(U.X - F.stand.X, 0, U.Z - F.stand.Z).Magnitude + 6)
  end
end, [115] = buffer.readbits, [6722] = function(u, u, u, u)
  return function(U)
    local Q = {}
    for F, A in ipairs(u[1]) do
      local Y, T = Vector3.new(A.pos.X - U.X, 0, A.pos.Z - U.Z).Magnitude, math.abs(A.pos.Y - U.Y)
      if (Y <= u[2].routeNodeRange) and (T <= u[2].routeNodeMaxDrop) then
        table.insert(Q, {i = F, score = Y + (T * u[2].routeElevWeight)})
      end
    end
    if #Q == 0 then
      return nil
    end
    table.sort(Q, function(F, A)
      return F.score < A.score
    end)
    for F = 1, math.min(#Q, u[2].routeLOSChecks), 1 do
      if not u[3]:HasWallBetween(U, u[1][Q[F].i].pos) then
        return Q[F].i
      end
    end
    return Q[1].i
  end
end, [9968] = function(u, u, u, u, U)
  return function(U)
    return u[1].DeathSpots[#u[1].DeathSpots]
  end
end, K = function(u, U, Q, F, A, Y, T, G, z, H)
  if G <= 21 then
    if G <= 20 then
      local N = u[39](U, A)
      local S, e = (not (128 <= N) and 139) or 174, T[1]
      return S, T[2], e, A, z, N
    else
      local N, S, e = ((z - 128) * 128) + F, A + 2, T[1]
      return 103, T[2], e, S, N, F
    end
  elseif G <= 22 then
    local N, S = F - 128, 16384 * (Y - 128)
    local Y, e, D = (128 * H) + (N + S), A + 3, T[1]
    return 32, T[2], D, e, z, Y
  elseif G <= 23 then
    Q[z] = F
    local Q = u[39](U, A)
    local F, Y = (not (Q < 128) and 90) or 290, T[1]
    return F, T[2], Y, A, 6, Q
  else
    local Q = u[39](U, 1 + A)
    local u, U = (not not (128 <= Q) and 142) or 104, T[1]
    return u, T[2], U, A, z, Q
  end
end, [11242] = function(u, u, u, u, U, U, U)
  return function(U)
    if not u[1][4][u[1][7]] or not u[1][4][u[1][7]]:GetFlag("Auto Dodge") then
      return
    end
    local Q = u[2].BeamHitbox[U.Name]
    if Q then
      return task.spawn(function()
        u[3]:TrackBeamModel(U, Q)
      end)
    end
    local Q = u[2].BEAM_HITBOX[U.Name]
    if Q then
      task.spawn(function()
        u[3]:MarkBeamPath(U, Q)
      end)
      return
    end
    local Q = u[2].MovingHitbox[U.Name]
    if Q then
      if not U:IsA("BasePart") then
        return
      end
      if (U.Name == "firstBossCrissCross") and (u[2].CrissCrossMode == "reset") then
        if not u[4].resetCD or ((tick() - u[4].resetCD) >= 15) then
          if not u[3]:SkipDodge() then
            if not u[4].resetCD then
              task.delay(4, function()
                replicatesignal(u[5].Kill)
              end)
              u[4].resetCD = tick()
            else
              task.delay(2, function()
                replicatesignal(u[5].Kill)
              end)
              u[4].resetCD = tick()
            end
          end
        end
      end
      if (U.Name == "firstBossCrissCross") and (u[2].CrissCrossMode == "reset") then
        return
      end
      local F = u[3]:RegisterHitbox(U, {lifetime = Q.lifetime, pad = Q.pad, autoPad = Q.autoPad, owner = Q.owner})
      if u[2].midAddLane then
        if U.Name == "firstBossCrissCross" then
          u[2].midAddLane(U, 30, 0, u[2].Mid.ccHalf, u[2].Mid.ccLen)
        elseif U.Name == "firstBossSeekingSpikes" then
          u[2].midAddLane(U, 80, u[2].Mid.spDelay, u[2].Mid.spHalf, u[2].Mid.spLen)
        elseif U.Name == "firstBossBigSpike" then
          u[2].midAddLane(U, 100, 1.3, 23, 32)
        end
      end
      if F and u[4].ccPlans then
        local A = tick()
        for Y, Y in ipairs(u[4].ccPlans) do
          if ((Y.part == U.Name) and ((A - Y.at) < 5)) and ((U.Position - Y.pos).Magnitude < Y.match) then
            F.planVel = Y.vel
            F.expireAt = math.min(F.expireAt, (A + Y.dur) + 0.5)
            break
          end
        end
      end
      return F
    end
    local F = u[2].RingHitbox[U.Name]
    if F then
      return task.spawn(function()
        local A = F.center and (U:WaitForChild(F.center, 2))
        if A and not A:IsA("BasePart") then
          A = A:FindFirstChildWhichIsA("BasePart", true)
        end
        local function Y(T)
          if (T.Name ~= F.part) or not T:IsA("BasePart") then
            return
          end
          if (U.Name == "thirdBossMultiRings") and u[2].odzAddRing then
            u[2].odzAddRing(T, A)
          end
          u[3]:RegisterHitbox(T, {lifetime = F.lifetime, pad = F.pad, ring = true, ringCenterPart = A, ringStep = F.step, ringShrink = F.shrink, ringAngPad = F.angPad})
        end
        for F, F in ipairs(U:GetDescendants()) do
          Y(F)
          if u[2].RING_SCAN.spread then
            task.wait()
          end
        end
        U.DescendantAdded:Connect(function(F)
          task.wait(0.05)
          if F.Parent then
            Y(F)
          end
        end)
      end)
    end
    if U.Name == "bossRiflePreCast" then
      return task.spawn(function()
        local F = U:WaitForChild("Part", 2)
        if F then
          u[3]:HitBoxCustom(F, 1)
        end
      end)
    elseif ((U.Name == "secondBossYellowOrb") or (U.Name == "secondBossRedOrb")) or (U.Name == "secondBossGreenOrb") then
      local F = u[3]:AddPartToProjectile(U, Vector3.new(25, 50, 25), "Bob The Frost Giant")
      local A = u[6][4][u[6][7]]("Bob The Frost Giant")
      task.spawn(function()
        repeat
          task.wait()
          local Y = false
          pcall(function()
            if (A and A.Parent) and (A.Parent:FindFirstChild("HumanoidRootPart")) then
              if (F.Position - A.Parent.HumanoidRootPart.Position).Magnitude >= 50 then
                F:Destroy()
                Y = true
              end
            end
          end)
          if Y then
            break
          end
        until (((not U or not U.Parent) or not A) or not A.Parent) or not A.Parent:FindFirstChild("HumanoidRootPart")
        F:Destroy()
      end)
      return
    elseif U.Name == "silkBlast" then
      Q = U:WaitForChild("hitBox", 2)
      if not Q then
        return
      end
      return u[3]:HitBoxCustom(Q, 6)
    elseif U.Name == "bookClone" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2.1)
    elseif ((U.Name == "bossHunterMiddleFire") or (U.Name == "bossHunterSideFire1")) or (U.Name == "bossHunterSideFire2") then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 3)
    elseif U.Name == "kingLandingArea" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 3)
    elseif U.Name == "flameLashPrecast" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.5, nil, true)
    elseif U.Name == "kolvumarSpit" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 360)
    elseif U.Name == "kolvumarTrail" then
      return u[3]:HitBoxCustom(U, 360)
    elseif U.Name == "npcMageSpikes" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.3, nil, true)
    elseif U.Name == "spikePrecast" then
      local F = U:WaitForChild("Part", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2, nil, true)
    elseif U.Name == "fingerBlastHit" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2, Vector3.new(45, 50, 45))
    elseif U.Name == "overgrowthLongLineSpikes" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.3, nil, true)
    elseif U.Name == "flameShurikenHit" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2.5, nil, true)
    elseif U.Name == "crossShuriken" then
      local F = U:WaitForChild("hitBoxes", 2)
      if not F then
        return
      end
      for A, A in pairs(F:GetChildren()) do
        u[3]:HitBoxCustom(A, 1.5, nil, true)
      end
      return
    elseif U.Name == "shurikenThrow" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.6, Vector3.new(F.Size.X + 6, F.Size.Y + 50, F.Size.Z + 6), true)
    elseif U.Name == "golemRockThrow" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2.1)
    elseif U.Name == "golemRockThrowSmall" then
      local F = U:WaitForChild("hitBox", 2, nil, true)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.1)
    elseif U.Name == "npcShurikenThrow" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.1, Vector3.new(F.Size.X + 6.5, F.Size.Y + 50, F.Size.Z + 6.5))
    elseif U.Name == "firstBossJumpSlam" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      warn("firstBossJumpSlam.")
      if u[4].mid and u[4].mid.discs then
        local A, Y = tick(), u[4].mid.discs
        Y[#Y + 1] = {c = Vector3.new(F.Position.X, 0, F.Position.Z), r = 37, tA = A + 1.8, tB = A + 2.45, big = true}
      end
      return u[3]:HitBoxCustom(F, 3, Vector3.new(73, 73, 73), true)
    elseif U.Name == "thirdBossBouncingOrbBeam" then
      task.spawn(function()
        local F = U:WaitForChild("Ring2", 2) or (U:WaitForChild("Beam", 1))
        local A, Y = (F and F.Position) or (Vector3.new(1031.2, 67.8, -43.2)), Instance.new("Part")
        Y.Name = "claudeOrbBeamZone"
        Y.Shape = Enum.PartType.Ball
        Y.Size = Vector3.new(50, 50, 50)
        Y.Position = Vector3.new(A.X, 68.9, A.Z)
        Y.Anchored = true
        Y.CanCollide = false
        Y.CanTouch = false
        Y.CanQuery = false
        Y.Transparency = 1
        Y.Parent = workspace.CurrentCamera
        u[3]:RegisterHitbox(Y, {lifetime = 6.1, owner = "Odin"})
        u[7]:GetService("Debris"):AddItem(Y, 6.2)
        F = tick()
        Y = {c = Vector3.new(A.X, 0, A.Z), r = 25, tA = F, tB = F + 6.1}
        if u[4].odz then
          u[4].odz.discs[#u[4].odz.discs + 1] = Y
        end
        if u[4].bbz then
          u[4].bbz.discs[#u[4].bbz.discs + 1] = Y
        end
      end)
      return
    elseif U.Name == "smallIceSpikes" then
      local F = U:WaitForChild("precast", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 3, Vector3.new(60, 88, 88), true)
    elseif U.Name == "secondBossHorizontalBeam" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      if u[2].bobAddLine then
        u[2].bobAddLine(F, 0.95, 1.35, 7.5)
      end
      return u[3]:RegisterHitbox(F, {lifetime = 2, pad = 2.5, autoPad = true, noRemove = true})
    elseif U.Name == "secondBossCricleHitbox" then
      local F = U:WaitForChild("precast", 2)
      if not F then
        return
      end
      u[3]:HitBoxCustom(F, 2.5)
      if u[4].bobz then
        local A, Y, T, G = tick(), u[4].bobz.discs, Vector3.new(F.Position.X, 0, F.Position.Z), math.max(F.Size.Y, F.Size.Z) / 2
        Y[#Y + 1] = {c = T, r = G + 2.5, tA = A + 0.95, tB = A + 1.45}
        local z = u[4].bobChain
        if not z or ((A - z.last) > 0.6) then
          u[4].bobChain = {t0 = A, c0 = T, r0 = G, last = A, n = 1}
        else
          z.n = z.n + 1
          z.last = A
          local A = T - z.c0
          if ((z.n == 2) and (A.Magnitude > 5)) and not z.pred then
            z.pred = true
            local T, H, N = A.Unit, A.Magnitude, G - z.r0
            for A = 2, 9, 1 do
              local G = z.t0 + (0.26 * A)
              Y[#Y + 1] = {c = z.c0 + (T * (H * A)), r = (z.r0 + (N * A)) + 2.5, tA = G + 0.9, tB = G + 1.5, pred = true}
            end
          end
        end
      end
      return u[3]:PredictChain(F)
    elseif U.Name == "mageProjectileBall" then
      local F = U:WaitForChild("PrimaryPart", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 5, Vector3.new(5, 50, 70), true)
    elseif U.Name == "secondBossCrescent" then
      local F = U:WaitForChild("PrimaryPart", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 5, Vector3.new(5, 30, 150), true)
    elseif U.Name == "cannonCrabShot" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 5)
    elseif U.Name == "bellyFlopHit" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.5, nil, true)
    elseif U.Name == "sharkThrowhitBox" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 4)
    elseif U.Name == "corruptLineFire" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 3.5)
    elseif U.Name == "corruptMolotov" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 8)
    elseif U.Name == "serpentFireHitbox" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 5, nil, true)
    elseif U.Name == "serpentPlayerShot" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 7.5, nil, true)
    elseif U.Name == "poisonCircle" then
      local F = U:WaitForChild("precast", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 7.5)
    elseif U.Name == "battleMageOrb" then
      local F = u[3]:GetRoot()
      if not F then
        return
      end
      local A, Y, T = u[3]:CreateInstance("Part", {Size = Vector3.new(15, 50, 70), CanCollide = false, Anchored = false, Transparency = 1, Parent = workspace}), U.Position, F.Position
      F = (Vector3.new(T.X, Y.Y, T.Z) - Y).Unit
      T = Y + (F * 35)
      A.CFrame = CFrame.lookAt(T, T + F)
      T = Instance.new("WeldConstraint")
      T.Part0 = A
      T.Part1 = U
      T.Parent = A
      u[8]:AddItem(A, 3)
      return u[3]:HitBoxCustom(A, 3)
    elseif U.Name == "firstBossCrystal" then
      local F = U:WaitForChild("precast", 2)
      if not F then
        return
      end
      return task.delay(1, function()
        u[3]:HitBoxCustom(F, 5)
      end)
    elseif U.Name == "firstBossSpinningRockHitbox" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return task.spawn(function()
        repeat
          task.wait()
        until not u[3]:GetSafeSpots()
        u[3]:HitBoxCustom(F, 6.5, Vector3.new(55, 50, 55))
      end)
    elseif U.Name == "enchantedFirstBossFollowOrb" then
      local F = U:WaitForChild("innerBall", 2)
      if not F then
        return
      end
      return task.spawn(function()
        repeat
          task.wait()
        until F.Size.X > 35
        local A = u[3]:AddPartToProjectile(F, Vector3.new(40, 50, 40))
        A.Size = F.Size
        A.Transparency = 1
        u[3]:HitBoxCustom(A, 20)
      end)
    elseif U.Name == "secondBossSpinningLaserHitbox" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      u[3]:HitBoxCustom(F, 10, Vector3.new(450, 50, 10))
      warn("secondBossSpinningLaserHitbox. ")
    elseif U.Name == "thirdBossFlameBreathe" then
      for F, F in pairs(U:GetChildren()) do
        if F:FindFirstChild("hitBox") then
          u[3]:HitBoxCustom(F:FindFirstChild("hitBox"), 22)
        end
      end
      warn("thirdBossFlameBreathe.")
      return
    elseif U.Name == "secondBossRandomPulse" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 5)
    elseif U.Name == "thirdBossExplosionShot" then
      for F, F in pairs(U:GetChildren()) do
        if F:FindFirstChild("hitBox") then
          u[3]:HitBoxCustom(F.hitBox, 3)
          warn("add hitbox : ", F)
        end
      end
      return warn("thirdBossExplosionShot")
    elseif U.Name == "firstBossUpShot" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 3)
    elseif U.Name == "secondBossPulseWave" then
      for F, F in pairs(U:GetChildren()) do
        if F:FindFirstChild("hitBox") then
          u[3]:HitBoxCustom(F.hitBox, 6)
        end
      end
      return warn("secondBossPulseWave")
    elseif U.Name == "secondBossLines" then
      for F, F in pairs(U:GetChildren()) do
        if F:FindFirstChild("hitBox") then
          u[3]:HitBoxCustom(F.hitBox, 2)
        end
      end
      return warn("secondBossLines")
    elseif U.Name == "firstBossRocketHitbox" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 2, nil, true)
    elseif U.Name == "secondBossCircleHit" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 8.5)
    elseif U.Name == "secondBossRockFall" then
      local F = U:WaitForChild("outerPrecast", 2)
      if not F then
        return
      end
      warn("outerPrecast.")
      return u[3]:HitBoxCustom(F, 2)
    elseif U.Name == "firstBossPassiveBeam" then
      local F = U:WaitForChild("hitBox", 1) or (U:WaitForChild("precast", 1))
      if F then
        u[3]:RegisterHitbox(F, {lifetime = 1.5, pad = 2.5, autoPad = true, owner = "Midgardian Champion"})
        pcall(function()
          local A = F.CFrame.LookVector
          local Y, T = math.atan2(A.Z, A.X), u[4].pbeam or {}
          u[4].pbeam = T
          local G, z = tick(), (((Y - (T.a or Y)) + 3.141592653589793) % 6.283185307179586) - 3.141592653589793
          if (T.t and ((G - T.t) < 0.8)) and (math.abs(math.abs(z) - 0.3490658503988659) < 0.10471975511965978) then
            T.n = (T.n or 1) + 1
            T.step = z
          else
            T.n = 1
          end
          T.spin = (T.t ~= nil) and ((G - T.t) < 0.25)
          T.t = G
          T.a = Y
          for H, H in ipairs(T.pred or {}) do
            pcall(function()
              u[3]:RemoveHitbox(H)
            end)
            H:Destroy()
          end
          T.pred = {}
          A = T.step or -0.3490658503988659
          if u[2].midAddBeam then
            z = u[4].mid.beams
            for H = #z, 1, -1 do
              if z[H].pred then
                table.remove(z, H)
              end
            end
            u[2].midAddBeam(Y, G, false, T.spin)
            for H = 1, u[2].Mid.predN, 1 do
              if (T.n + H) <= 9 then
                u[2].midAddBeam(Y + (A * H), G + (0.51 * H), true)
              end
            end
          end
          for H = 1, 2, 1 do
            if (T.n + H) <= 9 then
              z, G = Y + (A * H), Instance.new("Part")
              G.Name = "claudeBeamPredict"
              G.Anchored = true
              G.CanCollide = false
              G.CanTouch = false
              G.CanQuery = false
              G.Transparency = 1
              G.Size = Vector3.new(8, 10, 250)
              local A = Vector3.new(-579.8, F.Position.Y, 469.9)
              G.CFrame = CFrame.lookAt(A, A + Vector3.new(math.cos(z), 0, math.sin(z)))
              G.Parent = workspace.CurrentCamera
              u[3]:RegisterHitbox(G, {lifetime = (0.51 * H) + 1.5, pad = 2.5, autoPad = true, owner = "Midgardian Champion"})
              table.insert(T.pred, G)
              u[7]:GetService("Debris"):AddItem(G, (0.51 * H) + 1.6)
            end
          end
        end)
      end
      return
    elseif U.Name == "firstBossSkyShot" then
      local F = U:WaitForChild("precast", 2)
      if not F then
        return
      end
      warn("firstBossSkyShot.")
      return u[3]:HitBoxCustom(F, 3.5)
    elseif (U.Name == "bonusBossSmallSpiralFlame") or (U.Name == "bonusBossLongLine") then
      if U.Name == "bonusBossLongLine" then
        local F = u[4].bb.longLine
        if not F or ((tick() - F.t0) > 3) then
          local F = (tick() - (u[4].bb.llLast or 0)) > 20
          u[4].bb.longLine = {t0 = tick(), first = F}
          u[4].bb.llLast = tick()
          local A = u[4].bb.buffHold
          if F and not (A and (tick() < (A.pressAt + 1))) then
            u[4].bb.buffHold = {pressAt = tick() + 6.5, sweepGate = true}
          end
        end
      end
      local F = U:WaitForChild("precast", 1)
      if F then
        u[3]:BonusBossFlash(F, u[2].BonusBoss.flashLife[U.Name] or 1.3)
      end
      if F and (U.Name == "bonusBossSmallSpiralFlame") then
        pcall(u[2].bbSpiralPredict, F)
      end
      return
    elseif U.Name == "bonusBossGroundFlame" then
      u[4].bb.buffHold = {pressAt = tick() + 12, sweepGate = true}
      u[4].bb.gfAt = tick()
      local F = U:WaitForChild("precast", 1)
      if F then
        u[3]:HitBoxCustom(F, u[2].BonusBoss.groundLife, nil, nil, u[2].BonusBoss.boss)
      end
      if F and u[4].bbz then
        local A = tick()
        u[4].bbz.discs[#u[4].bbz.discs + 1] = {c = Vector3.new(F.Position.X, 0, F.Position.Z), r = 19, tA = A + 1.6, tB = A + u[2].BonusBoss.groundLife, big = true}
      end
      local A = u[3]:GetRoot()
      if (F and A) and (Vector3.new(F.Position.X - A.Position.X, 0, F.Position.Z - A.Position.Z).Magnitude < 24) then
        u[4].bb.gfExit = {part = F, at = tick()}
        pcall(function()
          local Y, T, G, z, H, N = u[2].BonusBoss.longLine.center, Vector3.new(F.Position.X, 0, F.Position.Z), Vector3.new(A.Position.X, 0, A.Position.Z), {-8, -28.5, 151.5, 172}
          for F, A in ipairs(z) do
            local z = math.rad(A)
            A = Y + (Vector3.new(math.cos(z), 0, math.sin(z)) * 60)
            if (A - T).Magnitude >= 26 then
              z = (A - G).Magnitude + (((F <= 2) and 0) or 40)
              if not H or (z < N) then
                H, N = A, z
              end
            end
          end
          if H then
            u[4].bb.station = H
          end
        end)
      end
      return
    elseif U.Name == "bonusBossSweepingFlames" then
      task.spawn(u[3].BonusBossSweep, u[3], U)
      return
    elseif U.Name == "bonusBossMemoryModel" then
      task.spawn(u[3].BonusBossMemory, u[3], U)
      return
    elseif U.Name == "bonusBossBouncingOrbGood" then
      table.insert(u[4].bb.goods, U)
      return
    elseif U.Name == "bonusBossBouncingOrb" then
      table.insert(u[4].bb.orbs, U)
    elseif U.Name == "northernMageShot" then
      local F = U:WaitForChild("hitBox", 2)
      if not F then
        return
      end
      return u[3]:HitBoxCustom(F, 1.5, Vector3.new(200, 60, 40))
    end
    if not U:IsA("BasePart") then
      return
    end
    Q = U.Parent and U.Parent.Name
    if Q and (table.find(u[2].IgnoreHitBoxs, Q)) then
      return
    end
    local F = U.Parent and U.Parent.Parent
    if F and (F.Name == "bonusBossSweepingFlames") then
      return
    end
    if ((Q == "bonusBossGroundFlame") or (Q == "bonusBossSmallSpiralFlame")) or (Q == "bonusBossLongLine") then
      return
    end
    if (Q == "Model") and ((((U.Parent.Parent == "thirdBossFlameBreathe") or (U.Parent.Parent == "thirdBossExplosionShot")) or (U.Parent.Parent == "secondBossPulseWave")) or (U.Parent.Parent == "secondBossLines")) then
      return
    end
    if (U.Name == "hitBox") or (((string.lower(U.Name) == "precast") and U.Parent) and not U.Parent:FindFirstChild("hitBox")) then
      F = U.Parent and u[2].GenericHitOverride[U.Parent.Name]
      if ((u[2].bobAddLine and (U.Name == "hitBox")) and U.Parent) and (U.Parent.Name == "secondBossSpreadBeam") then
        u[2].bobAddLine(U, 0.85, 1.3, 8.5)
      end
      if ((u[2].odzAddLine and (U.Name == "hitBox")) and U.Parent) and (U.Parent.Name == "thirdBossLineShot") then
        u[2].odzAddLine(U, 0.4, 1.6, 12)
      end
      u[3]:RegisterHitbox(U, {lifetime = (F and F.lifetime) or 1, pad = (F and F.pad) or nil, autoPad = true})
      return
    end
    if u[9].names[U.Name] then
      warn("TrackProjectile : ", U.Name)
      u[3]:TrackProjectile(U)
    end
  end
end, [109] = getmetatable, Wq = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 326 then
    local H = u[39](Q, 2)
    local N, S = (not (128 > H) and 310) or 186, T[1]
    return N, T[2], S, z, H, A
  elseif Y <= 327 then
    local Y, H, N, S = u[39](Q, z + 3), 128 * (A - 128), 2097152 * (G - 128), F - 128
    local u, Q = 16384 * (Y % 128), (Y - (Y % 128)) * 2097152
    local F, Y, e = ((S + u) + Q) + (N + H), z + 4, T[1]
    return 187, T[2], e, Y, U, F
  else
    local u, Q, F = G + ((A - 128) * 128), z + 2, T[1]
    return 46, T[2], F, Q, U, u
  end
end, CM = function(u, u, U, Q, F, A)
  if Q <= 41 then
    if Q <= 40 then
      local Y = (128 * (A - 128)) + u
      return 118, U, 2 + F, Y
    else
      return 22, U + 1, F, A
    end
  elseif Q <= 42 then
    local Q, Y = F - 128, (u - 128) * 16384
    local T, G = ((128 * A) + Q) + Y, 3 + U
    return 195, U, T, A
  else
    return (not (u <= 27) and 98) or 68, U, F, A
  end
end, [8939] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A = u[1].BonusBoss.goodOrb
    local Y = u[2].bb.goods
    for T = #Y, 1, -1 do
      if not Y[T].Parent then
        table.remove(Y, T)
      end
    end
    if #Y == 0 then
      u[2].bb.goodPlan = nil
      return u[1].bbGoodWait(U, Q, F)
    end
    local T = tick()
    local G = u[3][4][u[3][7]](U)
    local z = u[1].bbGoodTouch(U, Q, F, Y, G)
    if z then
      u[2].bb.goodPlan = nil
      u[2].bb.touchActive = tick()
      u[4].dodgeGoal = nil
      u[4].retreatGoal = nil
      u[4].projGoal = nil
      U:SetDestination(u[5][4][u[5][7]](U, Vector3.new(z.dest.X, Q.Y, z.dest.Z), Q.Y), false)
      u[6][4][u[6][7]]("bonus", "Good orb: \224\185\128\224\184\130\224\185\137\224\184\178\224\185\129\224\184\149\224\184\176 %s (\224\184\171\224\185\136\224\184\178\224\184\135 %.0f \224\185\129\224\184\149\224\184\176\224\185\131\224\184\153 %.1f \224\184\167\224\184\180 \224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.1f \224\184\167\224\184\180)", (z.lead and ("\224\184\173\224\185\137\224\184\173\224\184\161 " .. z.lead)) or "\224\184\149\224\184\163\224\184\135", z.dBall, z.t, z.slack)
      return true
    end
    local H = u[2].bb.touchDiag
    if H and (H.inR > 0) then
      u[7][4][u[7][7]]("state", "bbtouchno", 0.5, "Good \224\185\131\224\184\129\224\184\165\224\185\137 %d \224\184\165\224\184\185\224\184\129 \224\185\128\224\184\130\224\185\137\224\184\178\224\185\129\224\184\149\224\184\176\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137: \224\184\151\224\184\178\224\184\135\224\184\158\224\185\137\224\184\153 Bad %d \224\184\151\224\184\178\224\184\135 / \224\184\149\224\184\129\224\184\170\224\184\129\224\184\180\224\184\165\224\184\173\224\184\183\224\185\136\224\184\153 %d", H.inR, H.badOK, H.hz)
    end
    local N = u[2].bb.goodPlan
    if (N and N.orb.Parent) and (T < N.until_) then
      if N.waitUntil and (T < N.waitUntil) then
        U:StopWalking()
        u[6][4][u[6][7]]("bonus", "Good orb: \224\184\163\224\184\173 Bad \224\184\156\224\185\136\224\184\178\224\184\153 %.1f \224\184\167\224\184\180 \224\185\129\224\184\165\224\185\137\224\184\167\224\185\128\224\184\130\224\185\137\224\184\178\224\185\128\224\184\129\224\185\135\224\184\154", N.waitUntil - T)
        return true
      end
      if N.wp and not N.wpDone then
        if u[8][4][u[8][7]](N.wp - Q).Magnitude <= 4 then
          N.wpDone = true
        else
          u[4].dodgeGoal = nil
          u[4].retreatGoal = nil
          u[4].projGoal = nil
          U:SetDestination(N.wp, false)
          u[6][4][u[6][7]]("bonus", "Good orb: \224\184\173\224\185\137\224\184\173\224\184\161\224\184\130\224\185\137\224\184\178\224\184\135 Bad \224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\158\224\184\177\224\184\129 %.0f studs", u[8][4][u[8][7]](N.wp - Q).Magnitude)
          return true
        end
      end
      local S, e, D = (u[8][4][u[8][7]](F - N.orb.Position).Magnitude - N.dAt) / A.speed, (N.orb.Size.X / 2) + 0.5, u[8][4][u[8][7]](N.orb.Position - Q).Magnitude
      if D < (e + 12) then
        u[4].dodgeGoal = nil
        u[4].retreatGoal = nil
        u[4].projGoal = nil
        H = u[8][4][u[8][7]](N.orb.Position)
        local m, g
        for c, r in ipairs((u[1].bbOrbList and (u[1].bbOrbList())) or {}) do
          c = (r.pos - H).Magnitude
          if ((r.r >= 8) and (c < 30)) and (not m or (c < m)) then
            m, g = c, r
          end
        end
        H = if g and (m > 0.5) then H + ((H - g.pos).Unit * 7) else H
        U:SetDestination(u[5][4][u[5][7]](U, Vector3.new(H.X, Q.Y, H.Z), Q.Y), false)
        u[6][4][u[6][7]]("bonus", "Good orb: \224\184\158\224\184\184\224\185\136\224\184\135\224\184\138\224\184\153 (%.0f studs)", D - e)
        return true
      end
      z = math.max(0, u[8][4][u[8][7]](N.pos - Q).Magnitude - e) / G
      if (S > (z - 0.1)) and not u[9][4][u[9][7]](N.pos, z, math.max(S, z) + 0.3) then
        if (u[8][4][u[8][7]](N.pos - Q).Magnitude <= 6) and not U:IsBlocked(Q) then
          U:StopWalking()
          u[6][4][u[6][7]]("bonus", "Good orb: \224\184\162\224\184\183\224\184\153\224\184\148\224\184\177\224\184\129\224\185\131\224\184\153\224\184\163\224\184\176\224\184\162\224\184\176\224\185\129\224\184\149\224\184\176 (\224\184\161\224\184\178\224\184\150\224\184\182\224\184\135\224\185\131\224\184\153 %.1f \224\184\167\224\184\180)", S)
          return true
        end
        if u[10][4][u[10][7]](U, Q, N.pos, 2, "GoodOrb") then
          u[6][4][u[6][7]]("bonus", "Good orb: \224\184\162\224\184\183\224\184\153\224\184\148\224\184\177\224\184\129 (\224\184\161\224\184\178\224\184\150\224\184\182\224\184\135\224\185\131\224\184\153 %.1f \224\184\167\224\184\180)", S)
        else
          u[6][4][u[6][7]]("bonus", "Good orb: \224\185\132\224\184\155\224\184\148\224\184\177\224\184\129 (\224\184\161\224\184\177\224\184\153 %.1f \224\184\167\224\184\180 / \224\185\128\224\184\163\224\184\178 %.1f \224\184\167\224\184\180)", S, z)
        end
        return true
      end
      u[2].bb.goodPlan = nil
    end
    local S = (u[1].bbOrbList and (u[1].bbOrbList())) or nil
    local function e(D, m, g, c)
      local r = u[8][4][u[8][7]](F - D.Position)
      local M = r.Magnitude - (A.speed * g)
      if M <= (A.minDist + 2) then
        return nil
      end
      local y, p = r.Unit, (D.Size.X / 2) + 0.5
      local f, v, K = Vector3.new(-y.Z, 0, y.X), {0, 6, -6, 9, -9, 11, -11}, {}
      for B, B in ipairs(S or {}) do
        if B.r >= 8 then
          K[#K + 1] = B
        end
      end
      local function B(R, o)
        local k = 0
        for j, s in ipairs(K) do
          j = ((s.pos + (s.v * o)) - Vector3.new(R.X, 0, R.Z)).Magnitude
          k = if j < 26 then k + ((26 - j) * 0.06) else k
        end
        return k
      end
      local function R(o, k, j, s, _)
        if #K == 0 then
          return true
        end
        s = s or 0
        local q, i, l = Vector3.new(o.X, 0, o.Z), Vector3.new(k.X, 0, k.Z), (_ and (Vector3.new(_.X, 0, _.Z))) or nil
        k = (l and (l - q).Magnitude) or 0
        local o, n, L = (l and (k + (i - l).Magnitude)) or (i - q).Magnitude, math.max(j, 0.05), 0
        while L <= (((s + n) + 0.3) + 1e-06) do
          j = math.clamp((L - s) / n, 0, 1) * o
          _ = if l and (j <= k) then (q:Lerp(l, ((k > 0.01) and (j / k)) or 1)) else if l then (l:Lerp(i, (((o - k) > 0.01) and ((j - k) / (o - k))) or 1)) else (q:Lerp(i, ((o > 0.01) and (j / o)) or 1))
          for o, o in ipairs(K) do
            if not u[1].bbBadGone(o.pos, o.v, L) and (((o.pos + (o.v * L)) - _).Magnitude < 15.5) then
              return false
            end
          end
          L += 0.1
        end
        return true
      end
      local K, o, k = {}, M - 2
      while o >= A.minDist do
        r = (M - o) / A.speed
        for j, s in ipairs(v) do
          g = u[11][4][u[11][7]]((F - (y * o)) + (f * s))
          j = math.max(0, u[8][4][u[8][7]](g - m).Magnitude - (p - math.abs(s))) / G
          if (j + A.slack) < r then
            local v = {q = g, dAt = o, tOrb = r, tMe = j, score = (j + (((o < 26) and 0.3) or 0)) + B(g, r)}
            K[#K + 1] = v
            k = if not k or (v.score < k.score) then v else k
          end
          if math.abs(s) >= 9 then
            j = u[11][4][u[11][7]](g + (f * (((s > 0) and 12) or -12)))
            local v = u[8][4][u[8][7]](j - m).Magnitude + u[8][4][u[8][7]](g - j).Magnitude
            local _ = math.max(0, v - (p - math.abs(s))) / G
            if (_ + A.slack) < r then
              K[#K + 1] = {q = g, wp = j, dAt = o, tOrb = r, tMe = _, score = ((_ + 0.25) + (((o < 26) and 0.3) or 0)) + B(g, r)}
            end
          end
        end
        o -= 2
      end
      if not c then
        return (k and {orb = D, pos = k.q, dAt = k.dAt, tOrb = k.tOrb, tMe = k.tMe}) or nil
      end
      table.sort(K, function(v, k)
        return v.score < k.score
      end)
      u[2].bb.goodDiag = u[2].bb.goodDiag or {timeOK = 0, tried = 0}
      u[2].bb.goodDiag.timeOK = u[2].bb.goodDiag.timeOK + #K
      for v = 1, math.min(#K, 30), 1 do
        u[2].bb.goodDiag.tried = u[2].bb.goodDiag.tried + 1
        y = K[v]
        p, o = u[5][4][u[5][7]](U, y.q, Q.Y), true
        if S then
          B = {}
          for v, v in ipairs(S) do
            if v.r < 8 then
              B[#B + 1] = v
            end
          end
          o = (#B == 0) or (u[1].bbOrbClear(B, m, p, G) >= 0.5)
        end
        c, g, r = {0, 0.4, 0.8, 1.2}, false, false
        for G, G in ipairs(c) do
          if (G == 0) or (((y.tMe + G) + A.slack) < y.tOrb) then
            f, M = ((u[1].bbzSafeDuring and (u[1].bbzSafeDuring(p, y.tMe + G, y.tOrb + 0.3))) and ((G == 0) or (u[1].bbzSafeDuring(m, 0, G)))) or (not u[1].bbzSafeDuring and not u[9][4][u[9][7]](p, y.tMe + G, y.tOrb + 0.3)), o and (R(m, p, y.tMe, G, y.wp))
            g, r = g or f, r or M
            if f and M then
              return {orb = D, pos = p, dAt = y.dAt, tOrb = y.tOrb, tMe = y.tMe, wait = G, wp = (y.wp and (u[5][4][u[5][7]](U, y.wp, Q.Y))) or nil}
            end
          end
        end
        if not g then
          u[2].bb.goodDiag.unsafe = (u[2].bb.goodDiag.unsafe or 0) + 1
        end
        if not r then
          u[2].bb.goodDiag.bad = (u[2].bb.goodDiag.bad or 0) + 1
        end
      end
      return nil
    end
    u[2].bb.goodDiag = {timeOK = 0, tried = 0}
    N, z = nil
    for A, G in ipairs(Y) do
      H = e(G, Q, 0, true)
      if H then
        A = 0
        for S, S in ipairs(Y) do
          A = if (S ~= G) and (e(S, H.pos, H.tOrb, false)) then A + 1 else A
        end
        local G = ((-A * 100) + H.tMe) + (((H.dAt > 38) and 0.5) or 0)
        if not N or (G < z) then
          N, z = H, G
        end
      end
    end
    if not N then
      H = u[2].bb.goodDiag or {}
      u[7][4][u[7][7]]("state", "bbgoodno", 1, "Good orb %d \224\184\165\224\184\185\224\184\129: \224\184\171\224\184\178\224\184\136\224\184\184\224\184\148\224\184\148\224\184\177\224\184\129\224\184\151\224\184\181\224\185\136\224\185\132\224\184\155\224\184\151\224\184\177\224\184\153/\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\151\224\184\177\224\184\153\224\185\128\224\184\167\224\184\165\224\184\178 %d \224\184\136\224\184\184\224\184\148 \224\184\165\224\184\173\224\184\135\224\185\128\224\184\138\224\185\135\224\184\132\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 %d: \224\184\170\224\184\129\224\184\180\224\184\165\224\184\151\224\184\177\224\184\154 %d / \224\185\131\224\184\129\224\184\165\224\185\137 Bad %d)", #Y, H.timeOK or 0, H.tried or 0, H.unsafe or 0, H.bad or 0)
      return u[1].bbGoodWait(U, Q, F)
    end
    N.until_ = (T + 0.6) + (N.wait or 0)
    N.waitUntil = ((N.wait and (N.wait > 0)) and (T + N.wait)) or nil
    u[2].bb.goodPlan = N
    u[6][4][u[6][7]]("bonus", "Good orb: \224\185\132\224\184\155\224\184\148\224\184\177\224\184\129\224\184\171\224\185\136\224\184\178\224\184\135\224\184\154\224\184\173\224\184\170 %.0f (\224\184\161\224\184\177\224\184\153 %.1f \224\184\167\224\184\180 / \224\185\128\224\184\163\224\184\178 %.1f \224\184\167\224\184\180)", N.dAt, N.tOrb, N.tMe)
    u[10][4][u[10][7]](U, Q, N.pos, 2, "GoodOrb")
    return true
  end
end, [4349] = function(u, u, u, u, U)
  return function(U)
    local Q = u[1][4][u[1][7]](U, u[2].dodgeArc, u[2].dodgeDirs)
    if u[2].allowFrontDodge then
      for F, F in ipairs(u[1][4][u[1][7]](-U, u[2].frontArc, u[2].frontDirs)) do
        table.insert(Q, F)
      end
    end
    return Q
  end
end, [9983] = function(u, u, u, u, U)
  return function(U, Q)
    if not u[1].incomingCheck then
      return false
    end
    local F = tick()
    if u[2].projGoal and (F < u[2].projGoalUntil) then
      local A = Vector3.new(u[2].projGoal.X - Q.X, 0, u[2].projGoal.Z - Q.Z).Magnitude
      if (((A > u[1].arriveThreshold) and not U:IsBlocked(u[2].projGoal)) and (U:FutureSafe(u[2].projGoal, A))) and (u[2].projDirty or (u[3].pathMoveSafe(U, Q, u[2].projGoal))) then
        U:SetDestination(u[2].projGoal, false)
        return true
      end
      u[2].projGoal = nil
    end
    local A, Y, T = U:GetIncoming(Q)
    if not A or not T then
      return false
    end
    local G = A.part
    if not G or not G.Parent then
      return false
    end
    if u[3].tgOwns and (u[3].tgOwns(G)) then
      return false
    end
    if ((G.Name == "thirdBossMissile") and u[3].bbVolleyActive) and (u[3].bbVolleyActive()) then
      return false
    end
    if (u[3].BonusBoss.orbGuard and u[3].BonusBoss.orbGuard.names[G.Name]) and u[3].bbOrbGuard then
      return false
    end
    local z = u[4].bb and u[4].bb.goodPlan
    if (((z and z.orb.Parent) and (tick() < (z.until_ + 0.5))) and u[3].BonusBoss.orbGuard) and u[3].BonusBoss.orbGuard.names[G.Name] then
      return false
    end
    z = U:GetRoot()
    local H = (z and (z.Size.Y / 2)) or 2
    local N, S = u[5][4][u[5][7]](G, u[6][4][u[6][7]](A, G), Q, A.vel), Vector3.new(T.X, 0, T.Z)
    if S.Magnitude > 0.1 then
      A = S.Unit
      z = Vector3.new(-A.Z, 0, A.X)
      table.insert(N, {dir = z, need = u[1].incomingSide})
      table.insert(N, {dir = -z, need = u[1].incomingSide})
    end
    if #N == 0 then
      return false
    end
    local e, D, m, g, c, r
    for M, y in ipairs(N) do
      if U:GetClearDistance(Q, y.dir, y.need + 6, true) >= y.need then
        M = Q + (y.dir * y.need)
        A = U:GetGroundY(M.X, M.Z, Q.Y)
        M = Vector3.new(M.X, (A or Q.Y) + H, M.Z)
        if (((not U:IsBlocked(M) and (U:FutureSafe(M, y.need))) and (U:LeashOK(M))) and (not u[3].bbMemSafe or (u[3].bbMemSafe(M)))) and (not u[3].bbLLStepOk or (u[3].bbLLStepOk(Q, M))) then
          if not U:PathHasHitbox(Q, M) and (u[3].pathMoveSafe(U, Q, M)) then
            e, D = M, y
            break
          end
          if not m then
            m, g = M, y
          end
        end
        if (not c and (U:LeashOK(M))) and (not u[3].bbLLStepOk or (u[3].bbLLStepOk(Q, M))) then
          c, r = M, y
        end
      end
    end
    H = not e
    if not e and m then
      e, D = m, g
    end
    if not e then
      if not c then
        S = Vector3.new(T.X, 0, T.Z)
        z = U:OpenEscape(Q, {prefer = ((S.Magnitude > 0.1) and S.Unit) or nil, go = 16})
        if not z then
          u[7][4][u[7][7]]("dodge", "nosidestep", 1, "%s \224\184\129\224\184\167\224\184\178\224\184\148\224\184\161\224\184\178\224\185\131\224\184\153 %.2f \224\184\167\224\184\180 \224\185\129\224\184\149\224\185\136\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\185\132\224\184\171\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137\224\185\128\224\184\165\224\184\162", G.Name, Y)
          return false
        end
        e, D = z, {need = (z - Q).Magnitude}
      else
        e, D = c, r
      end
      u[7][4][u[7][7]]("dodge", "sidestepdirty", 1, "\224\184\151\224\184\178\224\184\135\224\184\171\224\184\153\224\184\181\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\184\173\224\184\183\224\185\136\224\184\153\224\184\130\224\184\167\224\184\178\224\184\135 \224\184\162\224\184\173\224\184\161\224\185\132\224\184\155\224\184\129\224\185\136\224\184\173\224\184\153")
    end
    if (N[1] and (D ~= N[1])) and (not u[4].incDbgT or ((F - u[4].incDbgT) > 0.5)) then
      u[4].incDbgT = F
      z = N[1]
      S = Q + (z.dir * z.need)
      u[7][4][u[7][7]]("dodge", "incfirst", 0.5, "sidestep %s \224\184\151\224\184\178\224\184\135\224\185\131\224\184\129\224\184\165\224\185\137\224\184\170\224\184\184\224\184\148 %.0f \224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129 %.0f): clear %.0f blk %s fut %s leash %s pathHB %s move %s", G.Name, z.need, D.need or -1, U:GetClearDistance(Q, z.dir, z.need + 6, true), tostring(U:IsBlocked(S)), tostring(U:FutureSafe(S, z.need)), tostring(U:LeashOK(S)), tostring(U:PathHasHitbox(Q, S)), tostring(u[3].pathMoveSafe(U, Q, S)))
    end
    u[8][4][u[8][7]]("sidestep", "%s \224\184\129\224\184\167\224\184\178\224\184\148\224\184\161\224\184\178\224\185\131\224\184\153 %.2f \224\184\167\224\184\180 \226\134\146 \224\184\173\224\184\173\224\184\129\224\184\151\224\184\178\224\184\135\224\185\131\224\184\129\224\184\165\224\185\137\224\184\170\224\184\184\224\184\148 %.0f studs", G.Name, Y, D.need)
    u[2].projGoal = e
    u[2].projDirty = H
    u[2].projGoalUntil = F + u[1].incomingCommit
    u[2].dodgeGoal = nil
    u[2].retreatGoal = nil
    U:SetDestination(e, false)
    return true
  end
end, [38] = function(u, u, u, u)
  return function(U, U)
    return (u[1].strafeDodge and (U ~= nil)) and (u[2].StrafeDodge[U.Name] == true)
  end
end, [14417] = function(u, u, u, u)
  return function(U, Q, F, A, Y)
    if not ((u[1].bb and u[1].bb.memory) and u[2].bbMemHitAt) then
      return false
    end
    local T, G = tick(), 0
    while G <= (((F + A) + Y) + 1e-06) do
      if u[2].bbMemHitAt(if G <= F then U else if G < (F + A) then (U:Lerp(Q, (G - F) / A)) else Q, T + G) then
        return true
      end
      G += 0.1
    end
    return false
  end
end, [15109] = function(u, u, u, u)
  return function(U, U, Q)
    local F = u[1].Character
    local A = F and (F:FindFirstChildOfClass("Humanoid"))
    if not A or (A.Health <= 0) then
      return false
    end
    if u[2]:IsSkillCooldown(U) then
      return false
    end
    F = u[2]:GetSkillPath(U:lower())
    if not F then
      return false
    end
    if not (u[3].SkillNoDelay[F.Name] == true) then
      if not Q and (u[2]:JustSpawned()) then
        return false
      end
      if not u[2]:IsFacingTarget() then
        u[4][4][u[4][7]]("state", "notfacing", 1, "\224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\184\171\224\184\177\224\184\153\224\184\171\224\184\153\224\185\137\224\184\178\224\185\131\224\184\170\224\185\136\224\185\128\224\184\155\224\185\137\224\184\178 (\224\185\128\224\184\154\224\184\181\224\185\136\224\184\162\224\184\135 %.0f\194\176) \224\184\163\224\184\173\224\184\129\224\185\136\224\184\173\224\184\153", u[2]:FaceError())
        return false
      end
    end
    if (tick() - u[5].lastSkillAt) < u[6].skillGap then
      return false
    end
    Q = "Skill_" .. tostring(U)
    if (tick() - u[5].Cooldown[Q]) < u[6].skillCooldown then
      return false
    end
    A = F:FindFirstChild("localEvent")
    if not A then
      return false
    end
    u[5].Cooldown[Q] = tick()
    u[5].lastSkillAt = tick()
    A:Fire()
    u[7]:FireServer(U:lower(), F)
    return true
  end
end, gq = function(u, U, Q, F, A, Y)
  if Y <= 246 then
    local Y, T = 1 + Q, U[1]
    return 2, U[2], T, Y, A
  else
    local A = u[39](F, Q + 1)
    local u, F = (not (A >= 128) and 219) or 57, U[1]
    return u, U[2], F, Q, A
  end
end, [6730] = function(u, u, u, u, U, U, U)
  return function()
    local U = u[1].BonusBoss.longLine
    if U.safe then
      return U.safe
    end
    local u = {}
    for Q, Q in ipairs(U.angles) do
      u[#u + 1] = Q % 360
      u[#u + 1] = (Q + 180) % 360
    end
    table.sort(u)
    local Q = {}
    for F = 1, #u, 1 do
      local A, Y = u[F], u[(F % #u) + 1]
      Y = if F == #u then Y + 360 else Y
      if (Y - A) >= 12 then
        Q[#Q + 1] = math.rad((A + Y) / 2)
      end
    end
    U.safe = Q
    return Q
  end
end, [8659] = function(u, u, u, u, U, U)
  return function(U)
    local Q = {}
    for F, F in ipairs(u[1]) do
      if F.part and (u[2].deadBossPart(F.part)) then
        Q[#Q + 1] = F.part
      end
    end
    for F, F in ipairs(Q) do
      pcall(function()
        u[3]:RemoveHitbox(F)
      end)
    end
    local F = ipairs
    local A = {u[4].mid, u[4].bobz, u[4].bbz}
    for u, u in F(A) do
      if u.prefix == U then
        u.lanes = {}
        u.beams = {}
        u.discs = {}
        u.plan = nil
      end
    end
    return #Q
  end
end, [4150] = function(u, u, u, u, U)
  return function(U, U)
    local Q = workspace:FindFirstChild(u[1].OrbMechanic.crystalFolder)
    if not Q then
      return nil
    end
    return u[2][4][u[2][7]](Q:FindFirstChild(U))
  end
end, [92] = function(u, u, u, u, U)
  return function()
    if not u[1][4][u[1][7]] or not u[2][4][u[2][7]] then
      return
    end
    local U = u[3]:GetMouseLocation()
    local Q = U.X - u[4][4][u[4][7]].X
    local F = U.Y - u[4][4][u[4][7]].Y
    local U = u[5][4][u[5][7]].X
    local A = u[5][4][u[5][7]].Y
    local Y = u[6][4][u[6][7]].X
    local T = u[6][4][u[6][7]].Y
    if u[2][4][u[2][7]] == "L" then
      U, Y = u[5][4][u[5][7]].X + Q, u[6][4][u[6][7]].X - Q
      if u[7] then
        u[7].Left.Y = T
      end
    elseif u[2][4][u[2][7]] == "R" then
      Y = u[6][4][u[6][7]].X + Q
      if u[7] then
        u[7].Right.Y = T
      end
    elseif u[2][4][u[2][7]] == "T" then
      A, T = u[5][4][u[5][7]].Y + F, u[6][4][u[6][7]].Y - F
      if u[7] then
        u[7].Top.X = Y
      end
    elseif u[2][4][u[2][7]] == "B" then
      T = u[6][4][u[6][7]].Y + F
      if u[7] then
        u[7].Bottom.X = Y
      end
    end
    if Y < u[8].X then
      Y, U = u[8].X, if u[2][4][u[2][7]] == "L" then U - (u[8].X - Y) else U
    end
    if T < u[8].Y then
      A, T = if u[2][4][u[2][7]] == "T" then A - (u[8].Y - T) else A, u[8].Y
    end
    u[9]:Tween(TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = u[10](U, A)})
    u[9]:Tween(TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = u[10](Y, T)})
  end
end, [5417] = Vector3.new, [63] = getfenv, S = function(u, U, Q, F, A, Y, T, G, z)
  if G <= 63 then
    local H, N = u[24](T, F), 4 + F
    local S, e, D, m = u[24](T, N), N + 4, A - (A % 1), 1 + 0
    local N, g = {m, Q, D - m, nil, H + 0}, U[1]
    return 279, N, U[2], g, H, S, e, Y
  elseif G <= 64 then
    local G = u[39](T, 1 + F)
    local H, N = (not (128 <= G) and 317) or 40, U[1]
    return H, Q, U[2], N, F, A, G, Y
  else
    local Y = u[39](T, F + 2)
    local u, T = ((128 > Y) and 0) or 62, U[1]
    return u, Q, U[2], T, F, A, z, Y
  end
end, [13685] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    local Y = U:GetRoot()
    if not Y then
      return false
    end
    local T = tick()
    if T < u[1].circleResume then
      return false
    end
    local G = Vector3.new(Q.X - F.X, 0, Q.Z - F.Z)
    local z = G.Magnitude
    if z < 4 then
      return false
    end
    local H = u[1].circleGoal
    if H then
      local N = Vector3.new(H.X - Q.X, 0, H.Z - Q.Z).Magnitude
      if N > u[2].circleArrive then
        if U:IsBlocked(H) then
          u[1].circleGoal = nil
        else
          u[3][4][u[3][7]]("circle", "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\167\224\184\153\224\184\163\224\184\173\224\184\154\224\184\161\224\184\173\224\184\153 (\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.0f)", N)
          U:SetDestination(H, false)
          return true
        end
      else
        u[1].circleGoal = nil
      end
    end
    local N, S, e = G.Unit, A or z, Y.Size.Y / 2
    local function A(Y)
      for G = 1, 3, 1 do
        local z = (math.rad(u[2].circleStep) * G) * Y
        G = Vector3.new(F.X, Q.Y, F.Z) + (u[4][4][u[4][7]](N, z) * S)
        z = Vector3.new(G.X - Q.X, 0, G.Z - Q.Z)
        local F = z.Magnitude
        if F > 1 then
          if U:GetClearDistance(Q, z.Unit, F + u[2].wallClearance, true) >= F then
            local Y = U:GetGroundY(G.X, G.Z, Q.Y)
            if Y and (((Q.Y - e) - Y) <= u[2].maxDrop) then
              local z = Vector3.new(G.X, Y + e, G.Z)
              if not U:IsBlocked(z) and (U:GetSafeAdvance(Q, z) >= F) then
                return z
              end
            end
          end
        end
      end
      return nil
    end
    H = A(u[1].circleDir)
    if not H and ((T - u[1].circleFlipAt) > u[2].circleFlipGap) then
      H = A(-u[1].circleDir)
      if H then
        u[1].circleDir = -u[1].circleDir
        u[1].circleFlipAt = T
        u[5][4][u[5][7]]("state", "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\167\224\184\153\224\184\149\224\184\177\224\184\153 \226\134\146 \224\184\129\224\184\165\224\184\177\224\184\154\224\184\151\224\184\180\224\184\168 (%s)", ((u[1].circleDir > 0) and "\224\184\151\224\184\167\224\184\153\224\185\128\224\184\130\224\185\135\224\184\161") or "\224\184\149\224\184\178\224\184\161\224\185\128\224\184\130\224\185\135\224\184\161")
      end
    end
    if not H then
      u[6][4][u[6][7]]("state", "nocircle", 2, "\224\184\167\224\184\153\224\184\163\224\184\173\224\184\154\224\184\161\224\184\173\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\149\224\184\177\224\184\153\224\184\170\224\184\173\224\184\135\224\184\151\224\184\180\224\184\168)")
      return false
    end
    u[1].circleGoal = H
    u[3][4][u[3][7]]("circle", "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\167\224\184\153\224\184\163\224\184\173\224\184\154\224\184\161\224\184\173\224\184\153 %s", ((u[1].circleDir > 0) and "\224\184\151\224\184\167\224\184\153\224\185\128\224\184\130\224\185\135\224\184\161") or "\224\184\149\224\184\178\224\184\161\224\185\128\224\184\130\224\185\135\224\184\161")
    U:SetDestination(H, false)
    return true
  end
end, [40] = vector.create, [64] = table.create, [2721] = function(u, u, u, u, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    local F = workspace:FindFirstChild(u[1].OrbMechanic.crystalFolder)
    print(("\224\185\128\224\184\170\224\184\178: %s"):format((F and "\224\185\128\224\184\136\224\184\173") or ("\224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 (" .. (u[1].OrbMechanic.crystalFolder .. ")"))))
    if F then
      for A, Y in ipairs(F:GetChildren()) do
        A = u[2][4][u[2][7]](Y)
        print(("  %s: %s \224\184\171\224\185\136\224\184\178\224\184\135 %.0f"):format(Y.Name, (A and "ok") or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181 part", (A and (A.Position - Q.Position).Magnitude) or -1))
      end
    end
    local u, F, A = U:GetActiveOrb()
    if u then
      print(("\224\184\165\224\184\185\224\184\129\224\184\154\224\184\173\224\184\165: %s (\224\184\170\224\184\181 %s) \224\184\171\224\185\136\224\184\178\224\184\135 %.0f"):format(u.Name, A, (F.Position - Q.Position).Magnitude))
    else
      print("\224\184\165\224\184\185\224\184\129\224\184\154\224\184\173\224\184\165: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181")
    end
  end
end, c = function(u, U, Q, F, A, Y, T, G, z, H)
  if H <= 82 then
    U[G] = Q
    local H = u[39](F, z)
    local F, z = (not not (128 <= H) and 247) or 316, A[1]
    return F, T, A[2], z, 1, H
  else
    U[Q] = Y
    local Q, F = u[64](G), u[64](G)
    U[U[12]] = Q
    U[U[15]] = F
    F = 1 + 0
    local u, U = {T, 1 - F, F, G + 0, nil}, A[1]
    return 313, u, A[2], U, G, Q
  end
end, [15] = function(u, u, u, u, U, U, U)
  return function(U, U)
    if U then
      u[1][U] = tick() + u[2].blacklistTime
      u[3][4][u[3][7]]("target", "\224\184\130\224\185\137\224\184\178\224\184\161\224\184\161\224\184\173\224\184\153 %s \224\185\132\224\184\155 %d \224\184\167\224\184\180", U.Name, u[2].blacklistTime)
    end
  end
end, [6652] = function(u, u, u, u, U)
  return function(U, U)
    return u[1]:DistanceFromCharacter(U)
  end
end, hM = function(u, u, U, Q, F, A)
  if F <= 89 then
    return ((A > 190) and 233) or 132, U, Q
  elseif F <= 90 then
    local F = (128 * (A - 128)) + Q
    return 190, U + 2, F
  else
    return (not not (2147483648 > u) and 164) or 211, U, Q
  end
end, [14662] = function(u)
  return function(u, U, Q)
    local F = Q - U
    if F <= 0 then
      return u
    end
    Q = (u - U) % (2 * F)
    return U + (if Q > F then (2 * F) - Q else Q)
  end
end, [8026] = function(u, u, u, u)
  return function(U, Q)
    local F = U:GetRoot()
    if not F then
      return nil
    end
    local A, Y = F.Position, math.huge
    if workspace:FindFirstChild("Odin Reincarnation") then
      return workspace:FindFirstChild("Odin Reincarnation")
    end
    local T = nil
    for G, z in pairs(u[1]:GetAllMobs()) do
      F = z:FindFirstChildOfClass("Humanoid")
      if (not z:FindFirstChild("HumanoidRootPart") or not F) or (F.Health <= 0) then
        continue
      end
      if not Q and (U:IsBlacklisted(z)) then
        continue
      end
      G = U:GetTargetGroundPos(z, false)
      if not G then
        continue
      end
      local u = (G - A).Magnitude
      if u < Y then
        Y, T = u, z
      end
    end
    return T
  end
end, [13245] = function(u, u, u, u)
  return function(U, U, Q, F, A, Y)
    if not U or not U:IsA("BasePart") then
      return
    end
    u[1]:RegisterHitbox(U, {lifetime = Q or 1, size = F, autoPad = F == nil, noRemove = A, owner = Y})
  end
end, oq = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if F <= 161 then
    local e = u[39](z, 2 + Y)
    local D, m = (not (e >= 128) and 128) or 85, N[1]
    return D, N[2], m, Y, S, e
  elseif F <= 162 then
    local F, e = u[39](z, Y), Y + 1
    u[33](Q, A + U, F, H)
    local u, U = (not N[2][6] and 123) or 253, N[1]
    return u, N[2], U, Y, S, T
  else
    local u, U = S - 128, 16384 * (T - 128)
    local Q, F, A = ((G * 128) + u) + U, Y + 3, N[1]
    return 259, N[2], A, F, Q, T
  end
end, [8433] = function(u)
  return function(u, U)
    local Q = u:GetRoot()
    if not Q then
      return nil
    end
    local F = workspace:FindFirstChild("enemies")
    if not F then
      return nil
    end
    local A, Y, T = Q.Position, math.huge
    for G, z in pairs(F:GetChildren()) do
      Q = z:FindFirstChildOfClass("Humanoid")
      if (not z:FindFirstChild("HumanoidRootPart") or not Q) or (Q.Health <= 0) then
        continue
      end
      if not U and (u:IsBlacklisted(z)) then
        continue
      end
      G = u:GetTargetGroundPos(z, false)
      if not G then
        continue
      end
      local u = (G - A).Magnitude
      if u < Y then
        Y, T = u, z
      end
    end
    return T
  end
end, [6] = table.pack, [14546] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = U:GetChar()
    local U = F and (F:FindFirstChild("HumanoidRootPart"))
    if not U then
      return
    end
    local A, Y = ((typeof(Q) == "Vector3") and (CFrame.new(Q))) or Q, U.CFrame
    local T = A.Position
    Q = (Y.Position - T).Magnitude
    if Q <= 1 then
      U.CFrame = A
      return
    end
    local G = Q / 16
    local z = 0
    local H = Y.Rotation
    local Y = A.Rotation
    u[1]:Velocity(true)
    local N = 0
    local S = Q
    local Q = G + 8
    local e = nil
    local D = nil
    D = function()
      if e then
        e:Disconnect()
        e = nil
      end
      u[2].tweenBind:Fire()
    end
    e = u[3].Heartbeat:Connect(function(e)
      if not F.Parent or not U.Parent then
        return D()
      end
      z += e
      if z > Q then
        return D()
      end
      local Q = T - U.Position
      local F, T = Q.Magnitude, math.min(16 * e, 4)
      if (S - F) < (T * 0.2) then
        N += e
        if N >= 1.5 then
          return D()
        end
      else
        N = 0
      end
      S = F
      if F <= T then
        U.CFrame = A
        return D()
      end
      e = math.clamp(z / G, 0, 1)
      U.CFrame = CFrame.new(U.Position + (Q.Unit * T)) * H:Lerp(Y, e)
    end)
    u[2].tweenBind.Event:Wait()
    u[1]:Velocity(false)
  end
end, [3214] = function(u, u, u, u, U, U, U)
  return function(U)
    u[1].wpState.index = 0
    u[1].wpState.lastPos = nil
  end
end, [30] = buffer.writestring, [14629] = function(u, u, u, u, U, U)
  return function(U, U, Q)
    Q = Q or 0
    local F = tick()
    local A = 0
    for Y = #u[1], 1, -1 do
      local T = u[1][Y]
      local G = T.part
      if u[2][4][u[2][7]](T, F) then
        if T.conn then
          T.conn:Disconnect()
        end
        table.remove(u[1], Y)
      else
        local F = u[3][4][u[3][7]](T, G, U)
        A = if F <= 0 then (A + u[4].dangerInside) + math.min(-F, 30) else if F < u[4].dangerNear then A + (u[4].dangerEdge * (1 - (F / u[4].dangerNear))) else A
        if ((T.vel and T.vel.Magnitude) or 0) >= u[4].incomingMinSpeed then
          for Y = 1, 3, 1 do
            F = (u[4].dangerLook * Y) / 3
            if u[3][4][u[3][7]](T, G, U, T.vel * F) <= 0 then
              A += u[4].dangerMoving * (1 - (F / u[4].dangerLook))
              break
            end
          end
          if u[4].pathDanger and (u[4].pathLook > Q) then
            local F = u[4].pathLook - Q
            for Y = 0, u[4].pathSamples, 1 do
              local z = Q + ((F * Y) / u[4].pathSamples)
              if u[3][4][u[3][7]](T, G, U, T.vel * z) <= 0 then
                A += u[4].pathWeight * (1 - ((z - Q) / F))
                break
              end
            end
          end
        end
      end
    end
    return A
  end
end, [5675] = function(u)
  return function(u, U, Q)
    local F = u:PointToObjectSpace(Q)
    return ((math.abs(F.X) <= (U.X / 2)) and (math.abs(F.Y) <= (U.Y / 2))) and (math.abs(F.Z) <= (U.Z / 2))
  end
end, [15741] = function(u, u, u, u, U, U)
  return function()
    return not u[1].bbz.dyn or ((u[1].bbz.gaveUp ~= nil) and ((tick() - u[1].bbz.gaveUp) < 0.15))
  end
end, [14586] = function(u, u, u, u, U)
  return function(U)
    if not u[1].useMove then
      return
    end
    local U = pcall(function()
      local Q = u[2]:FindFirstChild("PlayerScripts")
      local F = Q and (Q:FindFirstChild("PlayerModule"))
      if not F then
        error("no PlayerModule")
      end
      require(F):GetControls():Disable()
    end)
    if U then
      if not u[3].controlsOff then
        u[3].controlsOff = true
        u[4][4][u[4][7]]("movement", "\224\184\155\224\184\180\224\184\148 control script \224\185\129\224\184\165\224\185\137\224\184\167 (\224\185\131\224\184\138\224\185\137 Humanoid:Move)")
      end
    else
      u[3].controlsOff = false
      u[5][4][u[5][7]]("movement", "ctrlfail", 5, "\224\184\155\224\184\180\224\184\148 control script \224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 \226\128\148 Move \224\184\173\224\184\178\224\184\136\224\184\150\224\184\185\224\184\129\224\185\128\224\184\130\224\184\181\224\184\162\224\184\153\224\184\151\224\184\177\224\184\154")
    end
    return U
  end
end, jq = function(u, u, U, Q, F, A, Y)
  if U <= 205 then
    local U, T, G = A + (128 * (Y - 128)), 2 + u, Q[1]
    return 273, Q[2], G, T, U
  else
    local U = Y - 128
    local Y, T, G = (((A - 128) * 16384) + (F * 128)) + U, u + 3, Q[1]
    return 273, Q[2], G, T, Y
  end
end, u = function(u, U, Q, F, A, Y, T, G, z, H)
  if z <= 31 then
    if z <= 30 then
      local N = u[39](F, U + 1)
      local S, e = (not not (128 <= N) and 260) or 21, Y[1]
      return S, A, Y[2], e, U, T, N
    else
      local N, S, e = H + ((G - 128) * 128), 2 + U, Y[1]
      return 259, A, Y[2], e, S, T, N
    end
  elseif z <= 32 then
    Q[T] = G
    local Q = u[39](F, U)
    local u, F = ((128 > Q) and 80) or 324, Y[1]
    return u, A, Y[2], F, U, 11, Q
  elseif z <= 33 then
    local u, Q = A[2], Y[1]
    return 165, u, Y[2], Q, U, T, G
  else
    local u, Q = U + 1, Y[1]
    return 47, A, Y[2], Q, u, T, G
  end
end, eq = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if U <= 304 then
    if U <= 302 then
      local S, e = 1 + N, H[1]
      return 262, H[2], e, S, T, Q, Y, z, A
    elseif U <= 303 then
      local S = u[39](G, 1 + N)
      local e, D = (not (S >= 128) and 307) or 185, H[1]
      return e, H[2], D, N, T, Q, Y, z, S
    else
      F[Q] = Y
      local F = u[39](G, N)
      local S, e = (not (128 > F) and 53) or 225, H[1]
      return S, H[2], e, N, T, 13, F, z, A
    end
  elseif U <= 305 then
    local F, S = T - 128, 16384 * (Q - 128)
    local e, D, m = ((128 * Y) + F) + S, 3 + N, H[1]
    return 13, H[2], m, D, e, Q, Y, z, A
  elseif U <= 306 then
    local U = u[39](G, N + 1)
    local u, F = (not not (U >= 128) and 117) or 195, H[1]
    return u, H[2], F, N, T, Q, Y, U, A
  else
    local u, U, F = (128 * (z - 128)) + A, 2 + N, H[1]
    return 269, H[2], F, U, T, Q, Y, u, A
  end
end, [12] = buffer.fromstring, [14423] = function(u, u)
  return function(u, U, Q, F)
    local A = u:GetRoot()
    if not A then
      return nil
    end
    if not u:IsBlocked(U) then
      return U
    end
    local Y = A.Size.Y / 2
    u:RefreshRayFilter()
    A = nil
    if F then
      local T = Vector3.new(U.X - F.X, 0, U.Z - F.Z)
      A = if T.Magnitude > 0.1 then T.Unit else A
    end
    F = 4
    while F <= Q do
      local Q, T = -math.huge
      for G = 1, 12, 1 do
        local z = ((G / 12) * 3.141592653589793) * 2
        G = Vector3.new(math.cos(z), 0, math.sin(z))
        z = U + (G * F)
        if not u:IsBlocked(z) then
          local H = u:GetGroundY(z.X, z.Z, U.Y)
          if H then
            local U = Vector3.new(z.X, H + Y, z.Z)
            if not u:IsBlocked(U) then
              if not A then
                return U
              end
              local u = G:Dot(A)
              if u > Q then
                Q, T = u, U
              end
            end
          end
        end
      end
      if T then
        return T
      end
      F += 4
    end
    return nil
  end
end, [7675] = function(u, u, u, u, U, U)
  return function(U)
    local U = u[1].bb
    local u = U.goodPlan
    print(("good plan: %s"):format((u and (("\224\184\171\224\185\136\224\184\178\224\184\135\224\184\154\224\184\173\224\184\170 %.0f \224\184\161\224\184\177\224\184\153 %.1f \224\184\167\224\184\180 \224\185\128\224\184\163\224\184\178 %.1f \224\184\167\224\184\180"):format(u.dAt, u.tOrb, u.tMe))) or "-"))
    print(("bonus | zone=%s (first=%s) | pre=%s | sweep=%s | memory=%s seq=%s hits=%s | goods=%d | orbs=%d"):format((U.colorZone and U.colorZone.color) or "-", tostring(U.firstColor), (U.preTarget and (("%.1f"):format(tick() - U.preTarget.at))) or "-", (U.sweep and (U.sweep.safeName or "?")) or "-", (U.memory and "on") or "-", (U.memory and ((function()
      local u = {}
      for Q = 1, 4, 1 do
        u[Q] = U.memory.seq[Q] or "?"
      end
      return table.concat(u)
    end)())) or "-", (U.memory and (tostring(U.memory.hits))) or "-", #U.goods, #U.orbs))
  end
end, [91] = buffer.writeu8, uq = function(u, u, U, Q, F, A, Y, T)
  if U <= 226 then
    if U <= 225 then
      local G, z = 1 + T, Q[1]
      return 46, u, Q[2], z, A, G, F
    else
      local G, z, H = ((A - 128) * 128) + Y, 2 + T, Q[1]
      return 2, u, Q[2], H, G, z, F
    end
  elseif U <= 227 then
    local Y, G = 1 + T, Q[1]
    return 150, u, Q[2], G, A, Y, F
  elseif U <= 228 then
    local U, Y = u[2], Q[1]
    return 239, U, Q[2], Y, A, T, F
  else
    local U, Y, G = u[1], u[4], u[3]
    local z, H = U + Y, Y <= 0
    local U, Y, N = not H, z >= G, z <= G
    G = (H and Y) or (U and N)
    u[1] = z
    if G then
      U = Q[1]
      return 181, u, Q[2], U, A, T, z
    else
      H = Q[1]
      return 228, u, Q[2], H, A, T, F
    end
  end
end, hq = function(u, U, Q, F, A, Y, T, G, z, H)
  if z <= 323 then
    local N, S = Y - 128, (Q - 128) * 16384
    local Q, e, D = ((G * 128) + N) + S, 3 + F, H[1]
    return 196, H[2], D, e, Q, G, A
  elseif z <= 324 then
    local Q = u[39](U, F + 1)
    local u, U = ((128 > Q) and 156) or 268, H[1]
    return u, H[2], U, F, Y, G, Q
  else
    local u, U = G - 128, (A - 128) * 16384
    local Q, G, z = u + ((T * 128) + U), 3 + F, H[1]
    return 38, H[2], z, G, Y, Q, A
  end
end, [8890] = function(u, u, u, u, U)
  return function(U, Q, F)
    if not u[1][4][u[1][7]]:GetFlag("Auto Skills") then
      return
    end
    if u[2].bobHold and not u[3]:InAttackRange(Q, F) then
      local A = U:GetBuffSkill()
      if A then
        u[3]:UseSkill(A)
      end
      return
    end
    if u[3]:JustSpawned() then
      u[4][4][u[4][7]]("state", "spawndelay", 1, "\224\185\128\224\184\158\224\184\180\224\185\136\224\184\135\224\185\128\224\184\129\224\184\180\224\184\148 \224\184\163\224\184\173\224\184\173\224\184\181\224\184\129 %.1f \224\184\167\224\184\180 (\224\185\128\224\184\137\224\184\158\224\184\178\224\184\176\224\184\170\224\184\129\224\184\180\224\184\165\224\184\162\224\184\129\224\185\128\224\184\167\224\185\137\224\184\153\224\185\131\224\184\138\224\185\137\224\185\132\224\184\148\224\185\137)", u[5].respawnDelay - (tick() - u[2].spawnedAt))
    end
    local A, Y = U:GetBuffSkill(), u[2].bb and u[2].bb.buffHold
    U = Y and (tick() < Y.pressAt)
    if A and not U then
      u[3]:UseSkill(A)
    end
    if not u[3]:InAttackRange(Q, F) then
      return
    end
    if A then
      if u[3]:HasBuff() or U then
        u[3]:UseSkill(((A == "q") and "e") or "q")
      end
      return
    end
    if u[3]:UseSkill("q") then
      return
    end
    u[3]:UseSkill("e")
  end
end, [87] = coroutine.create, [14195] = function(u, u, u, u)
  return function(U)
    for U, Q in pairs(u[1].OrbMechanic.orbs) do
      local F = workspace:FindFirstChild(U)
      if F then
        U = u[2][4][u[2][7]](F)
        if U then
          return F, U, Q
        end
      end
    end
    return nil
  end
end, [10532] = function(u, u, u)
  return function(u)
    local U = u:GetChar()
    if not U then
      return
    end
    local Q = u:GetRoot()
    if not Q then
      return
    end
    local F, A, Y = U:FindFirstChild("firstBossSupplyOverhead"), workspace:FindFirstChild("firstBossSupplyModels"), workspace:FindFirstChild("firstBossBuildZones")
    if F then
      if Y then
        U, u = math.huge
        for T, G in pairs(Y:GetChildren()) do
          if G:FindFirstChild("beamPart") then
            T = (G.beamPart.Position - Q.Position).Magnitude
            if T < U then
              U, u = T, G.beamPart
            end
          end
        end
        return u and u.Position
      end
      return
    end
    if not A then
      return
    end
    F, U = math.huge
    for u, T in pairs(A:GetChildren()) do
      u = T:FindFirstChildOfClass("Part")
      if not u or (u.Transparency == 1) then
        continue
      end
      Y = (u.Position - Q.Position).Magnitude
      if Y < F then
        F, U = Y, u
      end
    end
    return U and U.Position
  end
end, [13641] = function(u, u, u, u, U)
  return function(U, Q)
    local F, A = U:GetRoot(), U:GetHumanoid()
    if not F or not A then
      return
    end
    if not u[1].faceTarget or not Q then
      A.AutoRotate = true
      u[2][4][u[2][7]]()
      return
    end
    A.AutoRotate = false
    if not u[3].faceGyro or (u[3].faceGyro.Parent ~= F) then
      u[2][4][u[2][7]]()
      u[3].faceGyro = Instance.new("BodyGyro")
      u[3].faceGyro.Name = "_faceGyro"
      u[3].faceGyro.MaxTorque = Vector3.new(0, math.huge, 0)
      u[3].faceGyro.P = u[1].faceP
      u[3].faceGyro.D = u[1].faceD
      u[3].faceGyro.Parent = F
    end
    A = F.Position
    U = Vector3.new(Q.X, A.Y, Q.Z)
    if (U - A).Magnitude > 0.1 then
      u[3].faceGyro.CFrame = CFrame.lookAt(A, U)
    end
  end
end, [54] = buffer.writebits, Fj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if F <= 199 then
    Q(T, S, (u[116](H(D, S + U), A, z)))
    local Q, F = 11, (e + (G * A)) % 256
    u[91](T, Q, (u[116](u[39](D, Q + U), z, F)))
    return 0, Y, u[5417](u[78](T, N), u[78](T, 4), (u[78](T, 8))), D
  else
    local Q, F, A = u[56](U, 1 + (D % G), 2 + (D % G)), D + 1, 1 + 0
    return 204, {A, Y, F - A, N + 0, nil}, U, Q
  end
end, T = function(u, U, Q, F, A, Y, T, G, z, H)
  if Y <= 38 then
    A[H] = F
    local A = u[39](U, T)
    local N, S = (not (A < 128) and 111) or 75, z[1]
    return N, z[2], S, Q, T, 16, A, G
  elseif Y <= 39 then
    local A, Y = ((Q - 128) * 128) + T, z[1]
    return 315, z[2], Y, A, 2, H, F, G
  else
    local A = u[39](U, 2 + T)
    local u, U = (not (128 > A) and 177) or 183, z[1]
    return u, z[2], U, Q, T, H, F, A
  end
end, [113] = buffer.readu16, m = {44272, 3200806565, 1928060053, 1317756695, 2974056069, 1650729463, 1045294190, 140759232, 512091971}, [7160] = function(u, u, u, u, U, U)
  return function(U, U, Q)
    local F = U:FindFirstChildOfClass("Beam") or (U:WaitForChild("Beam", 2))
    if not F then
      warn("No beam")
      return
    end
    local A, Y = F.Attachment0, F.Attachment1
    if not A or not Y then
      warn("No beam Attachment0")
      return
    end
    local F, T = A.WorldPosition, Y.WorldPosition
    A = (T - F).Magnitude
    if A < 2 then
      warn("No len")
      return
    end
    local Y = Instance.new("Part")
    Y.Name = "_beamPath"
    Y.Size = Vector3.new(Q.width, Q.height, A)
    Y.CFrame = CFrame.lookAt(F:Lerp(T, 0.5), T)
    Y.Anchored = true
    Y.CanCollide = false
    Y.CanQuery = false
    Y.CanTouch = false
    Y.Transparency = (u[1].enabled and 0.85) or 1
    Y.Color = Color3.fromRGB(255, 60, 200)
    Y.Material = Enum.Material.Neon
    Y.Parent = workspace
    u[2]:RegisterHitbox(Y, {lifetime = Q.lifetime, pad = Q.pad})
    task.delay(Q.lifetime + 0.1, function()
      u[2]:RemoveHitbox(Y)
      if Y.Parent then
        Y:Destroy()
      end
    end)
    u[3][4][u[3][7]]("dodge", "beam %s \224\184\162\224\184\178\224\184\167 %.0f", U.Name, A)
  end
end, [13258] = function(u, u, u, u, U, U)
  return function(U, Q)
    if not u[1].OrbMechanic.enabled then
      return false
    end
    local F = U:GetRoot()
    if not F then
      return false
    end
    local A, Y, T = U:GetActiveOrb()
    if not Y then
      return false
    end
    if U:HasForceField(Q) then
      return false
    end
    local G = U:GetCrystal(T)
    if not G then
      u[2][4][u[2][7]]("dodge", "nocrystal", 2, "\224\185\128\224\184\136\224\184\173\224\184\165\224\184\185\224\184\129\224\184\154\224\184\173\224\184\165 %s \224\185\129\224\184\149\224\185\136\224\184\171\224\184\178\224\185\128\224\184\170\224\184\178\224\184\170\224\184\181 %s \224\185\132\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173", A.Name, T)
      return false
    end
    local z, H, N, S = tick(), F.Position, G.Position, Y.Position
    G = Vector3.new(N.X - S.X, 0, N.Z - S.Z)
    G = if G.Magnitude < 0.1 then (Vector3.new(N.X - H.X, 0, N.Z - H.Z)) else G
    local e = N + ((if G.Magnitude < 0.1 then (Vector3.new(0, 0, 1)) else G).Unit * u[1].OrbMechanic.behindDist)
    G = U:GetGroundY(e.X, e.Z, N.Y)
    e = Vector3.new(e.X, (G or N.Y) + (F.Size.Y / 2), e.Z)
    if U:IsBlocked(e) then
      G = U:FindSafeNear(e, u[1].OrbMechanic.stayRadius)
      if G then
        e = G
      else
        u[2][4][u[2][7]]("dodge", "orbtrapped", 1, "\224\184\151\224\184\181\224\185\136\224\185\128\224\184\170\224\184\178 %s \224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\185\128\224\184\149\224\185\135\224\184\161\224\185\132\224\184\155\224\184\171\224\184\161\224\184\148 \224\184\171\224\184\178\224\184\151\224\184\181\224\185\136\224\184\162\224\184\183\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137", T)
      end
    end
    local D = Vector3.new(e.X - H.X, 0, e.Z - H.Z).Magnitude
    u[3].bobOrbRun = {stand = e, t = z, orb = S, part = Y}
    u[4].faceTarget = if Q and (U:IsLive(Q)) then select(1, U:GetTargetGroundPos(Q, false)) or N else N
    u[4].dodgeGoal = nil
    u[4].retreatGoal = nil
    u[4].projGoal = nil
    if D <= u[5].arriveThreshold then
      u[6][4][u[6][7]]("orb", "\224\184\150\224\184\182\224\184\135\224\185\128\224\184\170\224\184\178 %s \224\185\129\224\184\165\224\185\137\224\184\167 \224\184\163\224\184\173\224\184\165\224\184\185\224\184\129\224\184\154\224\184\173\224\184\165\224\184\138\224\184\153", T)
      U:StopWalking()
      return true
    end
    Q = F.Parent and (F.Parent:FindFirstChildOfClass("Humanoid"))
    if if u[1].pathBlockedTimed then (u[1].pathBlockedTimed(U, H, e, (Q and Q.WalkSpeed) or 20)) else (U:PathHasHitbox(H, e)) then
      F = u[4].orbSlide
      G, Y = ((F and (z < F.until_)) and not U:IsBlocked(F.pos)) and (Vector3.new(F.pos.X - H.X, 0, F.pos.Z - H.Z).Magnitude > u[5].arriveThreshold)
      if G then
        Y = F.pos
      else
        Y = U:OrbSlide(H, e, S)
        if Y then
          u[4].orbSlide = {pos = Y, until_ = z + 0.8}
        end
      end
      if Y then
        u[6][4][u[6][7]]("orb", "\224\185\132\224\184\155\224\185\128\224\184\170\224\184\178 %s \224\184\151\224\184\178\224\184\135\224\184\150\224\184\185\224\184\129\224\184\130\224\184\167\224\184\178\224\184\135 \224\185\128\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\184\130\224\185\137\224\184\178\224\184\135\224\184\171\224\184\178\224\184\138\224\185\136\224\184\173\224\184\135", T)
        U:ShowDodgePath(H, Y, "retreat")
        U:SetDestination(Y, false)
        return true
      end
      N = U:FindDodgeSpot(H, e, nil, false)
      if N then
        u[6][4][u[6][7]]("orb", "\224\185\132\224\184\155\224\185\128\224\184\170\224\184\178 %s \224\185\129\224\184\149\224\185\136\224\184\151\224\184\178\224\184\135\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165 \224\184\173\224\185\137\224\184\173\224\184\161\224\184\129\224\185\136\224\184\173\224\184\153", T)
        U:SetDestination(N, false)
        return true
      end
      u[2][4][u[2][7]]("dodge", "orbdirty", 1, "\224\184\151\224\184\178\224\184\135\224\185\132\224\184\155\224\185\128\224\184\170\224\184\178 %s \224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\184\130\224\184\167\224\184\178\224\184\135 \224\185\129\224\184\149\224\185\136\224\184\173\224\185\137\224\184\173\224\184\161\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 \224\184\162\224\184\173\224\184\161\224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\184\163\224\184\135", T)
    end
    u[6][4][u[6][7]]("orb", "\224\184\165\224\184\185\224\184\129\224\184\154\224\184\173\224\184\165 %s \226\134\146 \224\185\132\224\184\155\224\185\128\224\184\170\224\184\178 %s (\224\184\171\224\185\136\224\184\178\224\184\135 %.0f)", A.Name, T, D)
    U:SetDestination(e, D > u[1].OrbMechanic.routeDist)
    return true
  end
end, [114] = bit32.bor, [6520] = function(u, u, u, u, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    local F = Q.Position
    print(("\224\184\149\224\184\163\224\184\135\224\184\153\224\184\181\224\185\137 \224\184\173\224\184\177\224\184\153\224\184\149\224\184\163\224\184\178\224\184\162 %.0f | hitbox=%d"):format(U:DangerScore(F), #u[1]))
    local A = u[2].currentTarget
    if A and u[3].keepInRange then
      Q = select(1, U:GetTargetGroundPos(A, false))
      if Q then
        local Y = Vector3.new(Q.X - F.X, 0, Q.Z - F.Z).Magnitude
        print(("\224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f | \224\184\162\224\184\180\224\184\135\224\184\150\224\184\182\224\184\135\224\185\132\224\184\161\224\185\136\224\185\128\224\184\129\224\184\180\224\184\153 %.0f | %s"):format(Y, (U.lastAttackDist or 30) + u[3].rangeSlack, ((Y <= ((U.lastAttackDist or 30) + u[3].rangeSlack)) and "\224\184\162\224\184\180\224\184\135\224\185\132\224\184\148\224\185\137") or "\224\185\132\224\184\129\224\184\165\224\185\128\224\184\129\224\184\180\224\184\153"))
      end
    end
    A, Q = math.huge
    local Y = 0
    for T = 1, 12, 1 do
      local G = ((T / 12) * 3.141592653589793) * 2
      T = Vector3.new(math.cos(G), 0, math.sin(G))
      local z, H = U:GetClearDistance(F, T, 40, true), 20 / math.max(u[3].walkSpeed, 1)
      local u, N = ((z >= 20) and (U:DangerScore(F + (T * 20), H))) or nil, ((z >= 20) and (U:DangerScore(F + (T * 20), 0))) or nil
      print(("  %3d\194\176 \224\185\130\224\184\165\224\185\136\224\184\135 %4.0f | \224\184\151\224\184\181\224\185\136 20 studs: \224\184\149\224\184\173\224\184\153\224\184\153\224\184\181\224\185\137 %s | \224\184\149\224\184\173\224\184\153\224\185\132\224\184\155\224\184\150\224\184\182\224\184\135 %s"):format(math.floor(math.deg(G)), z, (N and (("%.0f"):format(N))) or "-", (u and (("%.0f"):format(u))) or "\224\184\149\224\184\180\224\184\148\224\184\129\224\184\179\224\185\129\224\184\158\224\184\135"))
      if u and (u < A) then
        A, Q, Y = u, T, (math.deg(G))
      end
    end
    if Q then
      print(("\224\184\148\224\184\181\224\184\170\224\184\184\224\184\148: %3.0f\194\176 \224\184\173\224\184\177\224\184\153\224\184\149\224\184\163\224\184\178\224\184\162 %.0f"):format(Y, A))
    end
  end
end, [16161] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = u[1].bb.longLine
    local A = u[2].BonusBoss.longLine
    if not F or ((tick() - F.t0) > A.hold) then
      return false
    end
    if U:HandleIncoming(Q) then
      return true
    end
    local Y = tick()
    if ((not F.spot or (Y >= (F.recheck or 0))) or (U:IsBlocked(F.spot))) or ((Y >= (F.spCheck or 0)) and ((u[2].bbSpiralClear(F.spot) < 2) or (u[2].bbSpiralClear(Q) < 3))) then
      F.spCheck = Y + 0.1
      F.recheck = Y + 0.3
      local T = u[3][4][u[3][7]](Q) - A.center
      local G, z, H = math.clamp(T.Magnitude, A.rMin, A.rMax), (F.gapA and {F.gapA}) or (u[2].bbLongLineSafe()), {0, -10, 10, -20, 20}
      if F.first then
        local N, S = ipairs, {A.rMin, A.rMin + 4, A.rMin + 8}
        for e, e in N(S) do
          H[#H + 1] = e - G
        end
      end
      if F.gapA then
        H = {}
        for N = A.rMin, A.rMax, 4 do
          H[#H + 1] = N - G
        end
      end
      local N, S, e, D, m
      for g, c in ipairs(z) do
        for z, r in ipairs(H) do
          z = math.clamp(G + r, A.rMin, A.rMax)
          T = A.center + (Vector3.new(math.cos(c), 0, math.sin(c)) * z)
          local H = (T - u[3][4][u[3][7]](Q)).Magnitude
          z = u[4][4][u[4][7]](U, Vector3.new(T.X, Q.Y, T.Z), Q.Y)
          if not N or (H < S) then
            N, S = z, H
          end
          local M = u[1].bb.buffHold
          r, g = ((M and (tick() < (M.pressAt + 5))) and 30) or (u[5][4][u[5][7]](U))
          if F.first and (r < 28) then
            M = u[2].BonusBoss.sweepMid
            local y = (Vector3.new(z.X, 0, z.Z) - M.center):Dot(M.axis)
            g = H + ((((math.abs(y) >= 67) and (math.abs(y) <= 88)) and 0) or 40)
          elseif F.first then
            local M = u[2].bbSweepFleeSlack(z, r)
            g = (H * 0.5) + (math.max(0, 0.5 - M) * 120)
          else
            g = H + ((u[2].bbSweepMid(z) and 0) or 15)
          end
          g = (if not u[2].bbLLPathSafe(Q, z, Y - F.t0, u[5][4][u[5][7]](U)) then g + 1000 else g) + ((12 - math.min(u[2].bbSpiralClear(z), 12)) * 3)
          r = (z - Q).Magnitude
          for Y = 8, r - 4, 8 do
            if u[2].bbSpiralClear(Q:Lerp(z, Y / r)) < 0 then
              g += 200
              break
            end
          end
          if (not e or (g < D)) and not U:IsBlocked(z) then
            e, D, m = z, g, c
          end
        end
      end
      T = e or N
      if not F.gapA then
        if m then
          F.gapA = m
        else
          G = u[3][4][u[3][7]](N) - A.center
          F.gapA = math.atan2(G.Z, G.X)
        end
      end
      if not F.spot or (u[3][4][u[3][7]](T - F.spot).Magnitude > 1) then
        u[6][4][u[6][7]]("state", "bbll", 0.3, "LongLine: \224\184\138\224\185\136\224\184\173\224\184\135\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 %.0f studs%s", (e and D) or S, (e and "") or " (\224\184\151\224\184\184\224\184\129\224\184\138\224\185\136\224\184\173\224\184\135\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\184\151\224\184\177\224\184\154)")
      end
      F.spot = T
    end
    u[7].dodgeGoal = nil
    u[7].retreatGoal = nil
    u[7].projGoal = nil
    if u[3][4][u[3][7]](F.spot - Q).Magnitude <= 2 then
      U:StopWalking()
      u[8][4][u[8][7]]("bonus", "LongLine: \224\184\162\224\184\183\224\184\153\224\184\138\224\185\136\224\184\173\224\184\135\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162 (%.1f \224\184\167\224\184\180)", A.hold - (tick() - F.t0))
    else
      U:SetDestination(F.spot, false)
      u[8][4][u[8][7]]("bonus", "LongLine: \224\184\167\224\184\180\224\185\136\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\138\224\185\136\224\184\173\224\184\135")
    end
    return true
  end
end, Kq = function(u, U, Q, F, A, Y, T, G, z)
  if Q <= 211 then
    if Q <= 210 then
      local H, N, S = Y[3], Y[5], Y[2]
      local e, D = H + N, N <= 0
      local H, m, g = not D, e >= S, e <= S
      S = (D and m) or (H and g)
      Y[3] = e
      if S then
        H = G[1]
        return 58, G[2], H, T, A, e
      else
        N = G[1]
        return 182, G[2], N, T, A, U
      end
    else
      local Y = u[39](z, 1)
      local H, N = ((Y < 128) and 39) or 326, G[1]
      return H, G[2], N, Y, A, U
    end
  elseif Q <= 212 then
    local Y = u[39](z, T + 1)
    local u, z = (not (Y >= 128) and 159) or 197, G[1]
    return u, G[2], z, T, A, Y
  elseif Q <= 213 then
    local u, Q = A - 128, (F - 128) * 16384
    local F, Y, z = (U * 128) + (u + Q), T + 3, G[1]
    return 82, G[2], z, Y, F, U
  else
    local u, Q = 1 + T, G[1]
    return 23, G[2], Q, u, A, U
  end
end, cM = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if U <= 66 then
    local U, e, D = S[5], S[1], S[3]
    local m, g = U + e, e <= 0
    local e, c, r = not g, m >= D, m <= D
    U = (g and c) or (e and r)
    S[5] = m
    if U then
      return 200, H, m
    else
      return 54, H, N
    end
  else
    local U = Y % 256
    u[91](Q, G, (u[116](U, T, (u[39](N, G + H)))))
    local Y, G = 7, (z + (A * U)) % 256
    u[91](Q, Y, (u[116](u[39](N, Y + H), G, T)))
    return 0, u[3698](u[78](Q, F), (u[78](Q, 4))), N
  end
end, Tj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if H <= 194 then
    u[91](A, S, (u[116](D, Q, (u[39](Y, F + S)))))
    local m, g = 2, ((D * U) + G) % 256
    u[91](A, m, (u[116](u[39](Y, m + F), g, Q)))
    m = 3
    return 141, e, F, Q, m, ((U * g) + G) % 256, u[91], (u[39](Y, F + m))
  elseif H <= 195 then
    local u = 1 + 0
    local U = 1 - u
    return 66, {u, nil, z + 0, e, U}, F, 0, S, D, T, N
  else
    return 206, e, F + 1, Q, S, D, T, N
  end
end, QM = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if T <= 30 then
    if T <= 29 then
      local S, e, D = U - 95640, u[39](z, F), F + 1
      Q[6] = not (0 == e)
      e = u[64](S)
      Q[4] = e
      local Q = 1 + 0
      local m = 1 - Q
      return 8, {Q, nil, N, S + 0, m}, D, H, e, Y
    else
      return 10, N, 1 + F, H, U, Y
    end
  elseif T <= 31 then
    U[A] = G
    return 8, N, F, H, U, Y
  elseif T <= 32 then
    local Q = u[39](z, 1 + F)
    return (not (Q < 128) and 17) or 26, N, F, H, U, Q
  else
    local Q, T, G, S = u[39](z, F + 3), 128 * (H - 128), (U - 128) * 2097152, A - 128
    local u = (Q % 128) * 16384
    local A = (S + ((2097152 * (Q - (Q % 128))) + T)) + (u + G)
    return 4, N, F + 4, A, U, Y
  end
end, pM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if z <= 70 then
    local z, D, m, g, c, r = Q + 1, 61, 233, (S + 250) % 256, u[16](4), 0
    local M = (m + (D * g)) % 256
    u[91](c, r, (u[116](u[39](H, r + z), M, 250)))
    r = 1
    return 230, z, 250, D, m, c, r, ((D * M) + m) % 256, u[91], u[39], r + z
  else
    local z = u[39](Q, H + 2)
    if not (128 > z) then
      return 183, S, Q, U, A, z, G, T, Y, F, N
    else
      return 182, S, z, U, A, e, G, T, Y, F, N
    end
  end
end, [6763] = function(u, u, u, u, U, U)
  return function()
    u[1]:DisableControls()
  end
end, [8] = bit32.band, [814] = function(u, u, u, u, U, U)
  return function(U)
    u[1].ROUTE_POINTS = {}
    u[1].ROUTE_LINKS = {}
    local Q, F = {source = "baked", rooms = {}, templates = U.DesertTemplePath}, workspace:FindFirstChild("dungeon")
    if not F then
      return u[1].ROUTE_POINTS, u[1].ROUTE_LINKS, Q
    end
    local function A(Y)
      local T = Y * 1
      return (((T >= 0) and (math.floor(T + 0.5))) or (math.ceil(T - 0.5))) / 1
    end
    local function Y(T)
      local G = T:FindFirstChild("startPart")
      if G and (G:IsA("BasePart")) then
        return G.CFrame
      end
      return T:GetPivot()
    end
    local function T(G)
      return string.match(G, "^(room%d+)") or G
    end
    local function G(z, H)
      H = string.lower(H)
      for N, N in ipairs(z:GetDescendants()) do
        if string.lower(N.Name) == H then
          return true
        end
      end
      return false
    end
    local z, H = U.DesertTemplePath, workspace:FindFirstChild("bossLobbies")
    U = H and (H:FindFirstChild("Folder"))
    if U then
      local N = {}
      for S, e in ipairs(U:GetChildren()) do
        S = e:IsA("Model") and (H:FindFirstChild((T(e.Name))))
        if S then
          local D, m = Y(S), {}
          for S, S in ipairs(e:GetChildren()) do
            if S:IsA("BasePart") and (tonumber(S.Name)) then
              table.insert(m, S)
            end
          end
          table.sort(m, function(S, g)
            return tonumber(S.Name) < tonumber(g.Name)
          end)
          local S = {}
          for g, c in ipairs(m) do
            local m = D:PointToObjectSpace(c.Position)
            S[g] = {m.X, m.Y, m.Z}
          end
          if #S > 0 then
            N[e.Name] = S
          end
        end
      end
      if next(N) ~= nil then
        z = N
        Q.source = "studio"
        Q.templates = N
      end
    end
    local function N(S)
      local e, D = T(S.Name), {}
      for T in pairs(z) do
        local m = string.match(T, "^" .. (string.gsub(e, "%W", "%%%0") .. "%-(.+)%-Gone$"))
        if m then
          table.insert(D, {name = T, token = m})
        end
      end
      table.sort(D, function(T, m)
        return T.name < m.name
      end)
      for T, T in ipairs(D) do
        if not G(S, T.token) then
          return T.name
        end
      end
      if z[e] then
        return e
      end
      if #D > 0 then
        warn(("[DesertTemplePath] %s: \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181 variant \224\185\132\224\184\171\224\184\153\224\184\149\224\184\163\224\184\135 (\224\185\130\224\184\161\224\185\128\224\184\148\224\184\165\224\184\162\224\184\177\224\184\135\224\184\173\224\184\162\224\184\185\224\185\136\224\184\132\224\184\163\224\184\154) \226\134\146 \224\185\131\224\184\138\224\185\137 %s"):format(S.Name, D[1].name))
        return D[1].name
      end
      return nil
    end
    H = Vector3.new(0, 2, 0)
    local T
    local function G(S)
      if T and ((S - T).Magnitude < 0.5) then
        return #u[1].ROUTE_POINTS
      end
      local e = #u[1].ROUTE_POINTS + 1
      u[1].ROUTE_POINTS[e] = {A(S.X), A(S.Y), A(S.Z)}
      u[1].ROUTE_LINKS[e] = {}
      if e > 1 then
        table.insert(u[1].ROUTE_LINKS[e - 1], e)
        table.insert(u[1].ROUTE_LINKS[e], e - 1)
      end
      T = S
      return e
    end
    local function A(T, S)
      local e, D = #u[1].ROUTE_POINTS + 1, Y(T)
      for m, m in ipairs(z[S]) do
        G(D:PointToWorldSpace(Vector3.new(m[1], m[2], m[3])))
      end
      table.insert(Q.rooms, {room = T.Name, template = S, from = e, to = #u[1].ROUTE_POINTS})
    end
    local T, S, e = {}
    for D, m in ipairs(F:GetChildren()) do
      if not m:IsA("Model") then
        continue
      end
      if m.Name == "initialRoom" then
        S = m
      else
        U = m.Name
        if U == "bossRoom" then
          e = m
        else
          D = m:FindFirstChild("order")
          if (D and (D:IsA("ValueBase"))) and (tonumber(D.Value)) then
            table.insert(T, {room = m, order = tonumber(D.Value)})
          end
        end
      end
    end
    table.sort(T, function(D, m)
      return D.order < m.order
    end)
    U = #T == 0
    if S then
      if z.initialRoom then
        A(S, "initialRoom")
      else
        local U, D = #u[1].ROUTE_POINTS + 1, S:FindFirstChild("playerSpawn", true)
        if D and (D:IsA("BasePart")) then
          G(D.Position + H)
        end
        D = S:FindFirstChild("endPart")
        if D and (D:IsA("BasePart")) then
          G(D.Position + H)
        end
        table.insert(Q.rooms, {room = S.Name, template = "(spawn \226\134\146 door)", from = U, to = #u[1].ROUTE_POINTS})
      end
    end
    for U, D in ipairs(T) do
      F = N(D.room)
      if F then
        A(D.room, F)
      else
        U, S = #u[1].ROUTE_POINTS + 1, {"startPart", "endPart"}
        for N, m in ipairs(S) do
          N = D.room:FindFirstChild(m)
          if N and (N:IsA("BasePart")) then
            G(N.Position + H)
          end
        end
        table.insert(Q.rooms, {room = D.room.Name, template = "(start \226\134\146 end)", from = U, to = #u[1].ROUTE_POINTS})
      end
    end
    if e then
      if z.bossRoom then
        A(e, "bossRoom")
      else
        F, T = #u[1].ROUTE_POINTS + 1, Y(e)
        G(T.Position + H)
        G(T:PointToWorldSpace(Vector3.new(-60, 2, 0)))
        table.insert(Q.rooms, {room = e.Name, template = "(door \226\134\146 arena)", from = F, to = #u[1].ROUTE_POINTS})
      end
    end
    return u[1].ROUTE_POINTS, u[1].ROUTE_LINKS, Q
  end
end, [13004] = function(u, u, u, u, U, U)
  return function(U, Q)
    return u[1].timeGuard(U, Q, u[2].mid)
  end
end, [11157] = function(u, u, u)
  return function(u)
    local U, Q, F = math.abs(u.RightVector.Y), math.abs(u.UpVector.Y), math.abs(u.LookVector.Y)
    if (Q >= U) and (Q >= F) then
      return 1
    end
    if U >= F then
      return 0
    end
    return 2
  end
end, E = function(u, U, Q, F, A, Y, T)
  if T <= 56 then
    local T, G, z = (128 * (Q - 128)) + U, F + 2, Y[1]
    return 304, Y[2], z, G, T, U
  else
    local U = u[39](A, 2 + F)
    local u, A = (not (U >= 128) and 158) or 191, Y[1]
    return u, Y[2], A, F, Q, U
  end
end, Aq = function(u, U)
  return u[67](U, 1, U[u.B])
end, [10924] = function(u, u, u, u, U, U)
  return function(U, U)
    for Q, F in pairs((u[1]:FindFirstChild("Backpack") or (Instance.new("Folder"))):GetChildren()) do
      Q = F:FindFirstChild("abilitySlot")
      if Q and (Q.Value == U:lower()) then
        return F
      end
    end
  end
end, Bj = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if G <= 153 then
    if G <= 152 then
      return (not (S > 38) and 72) or 25, N, T, z
    else
      local e = A + (128 * (z - 128))
      return 193, N, 2 + T, e
    end
  elseif G <= 154 then
    local G = H % Y
    u[91](F, U, (u[116](u[39](A, N + U), G, T)))
    local U = 7
    u[91](F, U, (u[116](((G * z) + S) % 256, u[39](A, N + U), T)))
    U, G = u[24](F, Q), u[24](F, 4)
    if not (G == 0) then
      return 91, U, G, z
    else
      return 0, U, T, z
    end
  else
    return 101, N, 1 + T, z
  end
end, zM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if H then
    if G <= 3 then
      local H, m, g, c, r, M = 1 + Q, 61, 233, (A + 116) % 256, u[16](4), 0
      local y = (g + (m * c)) % 256
      u[91](r, M, (u[116](116, u[39](F, M + H), y)))
      M = 1
      return 125, H, 116, F, m, g, r, M, ((m * y) + g) % 256, u[91], u[39], H + M
    else
      local H, m, g, c = u[39](Q, 3 + F), 128 * (D - 128), 2097152 * (U - 128), e - 128
      local r, M = (H % 128) * 16384, (H - (H % 128)) * 2097152
      H = (((g + c) + r) + M) + m
      return 118, A, Q, F + 4, H, U, e, S, Y, z, N, T
    end
  elseif G <= 5 then
    local G = u[39](F, 2 + A)
    return ((128 > G) and 201) or 170, A, Q, F, G, U, e, S, Y, z, N, T
  else
    local G = u[16](Q)
    u[53](G, 0, F, A, Q)
    local u = Q + A
    return 0, G, Q, F, D, U, e, S, Y, z, N, T
  end
end, rM = function(u, U, Q, F, A, Y, T, G)
  if U <= 14 then
    local z = u[39](G, A + 2)
    return ((z < 128) and 24) or 12, A, Y, T, z
  elseif U <= 15 then
    local U = Y - 128
    local z = (16384 * (T - 128)) + ((128 * F) + U)
    return 29, 3 + A, z, T, Q
  else
    local U = u[39](G, A + 1)
    return (not (128 > U) and 22) or 9, A, Y, U, Q
  end
end, SM = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if Y <= 44 then
    local e = u[39](U, T + 1)
    return (not (128 > e) and 9) or 114, A, T, H, e, Q, z, N, F, S
  elseif Y <= 45 then
    local Q = u[39](T, 1 + U)
    return (not (128 <= Q) and 40) or 156, A, T, H, G, Q, z, N, F, S
  else
    local U, Q, F, Y, z, H = T + 1, 61, 233, (189 + A) % 256, u[16](8), 0
    local A = (F + (Q * Y)) % 256
    u[91](z, H, (u[116](A, u[39](G, U + H), 189)))
    return 80, U, 189, Q, G, F, z, 1, ((A * Q) + F) % 256, u[91]
  end
end, [12363] = function(u)
  return function(u)
    local u, U = {Part1 = {Shape = Enum.PartType.Wedge, Size = Vector3.new(11.284, 7.474, 7.37), CFrame = CFrame.new(611.443, 17.387, 57.794) * CFrame.fromOrientation(-0.00015707963267948965, 2.9464299366317874, -0.0003141592653589793)}, Part2 = {Shape = Enum.PartType.Wedge, Size = Vector3.new(44.533, 6.771, 2.203), CFrame = CFrame.new(299.036, 18.699, 198.111) * CFrame.fromOrientation(1.5707963267948966, -1.254245960360685, 0)}, Part3 = {Shape = Enum.PartType.Block, Size = Vector3.new(17.767, 1.615, 44.56), CFrame = CFrame.new(310.688, 18.968, 194.28) * CFrame.fromOrientation(0, 0.3165503664342116, 0)}}, workspace:FindFirstChild("ReaperXExtraFolder") or (Instance.new("Folder", workspace))
    U.Name = "ReaperXExtraFolder"
    U:ClearAllChildren()
    for Q, F in next, u, nil do
      Q = Instance.new("Part", U)
      Q.Size = F.Size
      Q.Shape = F.Shape or Enum.PartType.Block
      Q.CFrame = F.CFrame
      Q.Transparency = 1
      Q.Anchored = true
      Q.Color = Color3.fromRGB(255, 0, 0)
    end
    local u, U, Q = next, workspace.Map:GetChildren()
    for F, F in u, U, Q do
      if F.Name == "Part" then
        if (F.Position - Vector3.new(613.363, 12.907, 51.853)).Magnitude < 5 then
          F.CFrame = CFrame.new(613.792, 12.906, 49.801) * CFrame.fromOrientation(-0.0002617993877991494, -0.20629791758572977, 0.00017453292519943296)
        end
        if (F.Position - Vector3.new(771.075, 12.589, 0.058)).Magnitude < 5 then
          F.CFrame = CFrame.new(777.234, 12.589, -1.965) * CFrame.fromOrientation(1.7453292519943296e-05, -1.2534954687823274, 0.0003141592653589793)
        end
      end
    end
  end
end, RM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if G then
    if U <= 17 then
      local G = u[39](N, H)
      return (not (G >= 128) and 122) or 192, H, Y, G, z, N, D, Q, A
    else
      u[91](z, N, (u[116](u[39](F, T + N), H, D)))
      local G, m = 2, (e + (D * Y)) % 256
      u[91](z, G, (u[116](H, u[39](F, T + G), m)))
      G = 3
      return 173, H, Y, S, z, G, ((Y * m) + e) % 256, u[91], (u[39](F, T + G))
    end
  elseif U <= 19 then
    local U, T, G, m = u[39](S, H + 3), 128 * (Y - 128), (F - 128) * 2097152, e - 128
    local F, e = (U % 128) * 16384, 2097152 * (U - (U % 128))
    U = ((F + m) + (G + e)) + T
    return 130, H + 4, U, S, z, N, D, Q, A
  else
    local U = u[39](S, 2 + H)
    if 128 > U then
      return 77, H, Y, U, z, N, D, Q, A
    else
      return 94, H, Y, S, U, N, D, Q, A
    end
  end
end, [9007] = function(u, u, u, u, U)
  return function(U, Q, F)
    if u[1].bbz.static(U) then
      return false
    end
    if u[2].bbVolleyHit and (u[2].bbVolleyHit(U, Q, F)) then
      return false
    end
    local A = tick()
    local Y, T = u[3][4][u[3][7]](U), Q
    while T <= (F + 1e-06) do
      if u[2].midHitAt(u[1].bbz.lanes, u[1].bbz.beams, Y, A + T, u[1].bbz.discs) then
        return false
      end
      T += 0.15
    end
    return true
  end
end, [8219] = function(u, u, u, u, U, U)
  return function(U, Q)
    if not u[1].faceCheck then
      return true
    end
    local F = U:GetRoot()
    U = u[2].faceTarget
    if not F or not U then
      return true
    end
    local A = Vector3.new(U.X - F.Position.X, 0, U.Z - F.Position.Z)
    if A.Magnitude < 0.5 then
      return true
    end
    U = F.CFrame.LookVector
    F = Vector3.new(U.X, 0, U.Z)
    if F.Magnitude < 0.1 then
      return true
    end
    return math.cos(math.rad(Q or u[1].faceTolerance)) <= F.Unit:Dot(A.Unit)
  end
end, [56] = string.sub, [5562] = function(u, u, u, u, U, U)
  return function(U, U, Q)
    if not U or not U:IsA("BasePart") then
      return
    end
    Q = Q or {}
    for F, A in ipairs(u[1]) do
      if A.part == U then
        F = tick() + (Q.lifetime or u[2].hitboxLifetime)
        if F > A.expireAt then
          A.expireAt = F
        end
        return A
      end
    end
    local F = {part = U, size = Q.size, pad = Q.pad or 0, autoPad = Q.autoPad, noRemove = Q.noRemove, shape = (Q.shape or (U:IsA("Part") and U.Shape.Name)) or "Block", ring = nil, ringCPart = nil, ringCenter = nil, ringInner = nil, ringOuter = nil, ringBase = nil, ringDir = nil, ringHalf = nil, ringY = nil, ringShrink = Q.ringShrink or 0, ringAngPad = Q.ringAngPad or 3, ownerName = Q.owner, ownerHum = (Q.owner and (u[3][4][u[3][7]](Q.owner))) or nil, vel = Vector3.zero, lastPos = U.Position, expireAt = tick() + (Q.lifetime or u[2].hitboxLifetime)}
    if Q.ring then
      local A = Q.ringCenterPart
      local Y = (((A and (A:IsA("BasePart"))) and A.Position) or Q.ringCenter) or U.Position
      local T, G, z, H = u[4][4][u[4][7]](U, Y, Q.ringStep or 1)
      if T then
        F.ring = true
        F.ringCPart = A
        F.ringCenter = Y
        F.ringInner = T
        F.ringOuter = G
        F.ringBase = math.max(U.Size.X, U.Size.Z) / 2
        F.ringDir = z
        F.ringHalf = H
        F.ringY = (U.Size.Y / 2) + (Q.ringHeight or 20)
        u[5][4][u[5][7]]("dodge", "\224\184\167\224\184\135 %s | \224\184\163\224\184\177\224\184\168\224\184\161\224\184\181 %.0f..%.0f | %s", U.Name, T, G, (z and (("\224\184\132\224\184\163\224\184\182\224\185\136\224\184\135\224\184\167\224\184\135 %.0f\194\176 \224\184\151\224\184\180\224\184\168 (%.2f,%.2f)"):format(H, z.X, z.Z))) or "\224\184\167\224\184\135\224\185\128\224\184\149\224\185\135\224\184\161")
      else
        u[6][4][u[6][7]]("dodge", "ringfail", 3, "\224\184\167\224\184\177\224\184\148\224\184\167\224\184\135 %s \224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 \224\185\131\224\184\138\224\185\137\224\184\129\224\184\165\224\185\136\224\184\173\224\184\135\224\184\155\224\184\129\224\184\149\224\184\180\224\185\129\224\184\151\224\184\153", U.Name)
      end
    end
    table.insert(u[1], F)
    if not F.noRemove then
      F.conn = U.AncestryChanged:Connect(function(Q, Q)
        if not Q then
          u[7]:RemoveHitbox(U)
        end
      end)
    end
    return F
  end
end, [15454] = function(u, u, u, u)
  return function()
    local U = 1
    while true do
      if U <= 0 then
        return
      else
        u[1][4][u[1][7]] = ((732763 * u[1][4][u[1][7]]) + 99736273) % 268435456
        u[1][4][u[1][7]], U = ((889419 * u[1][4][u[1][7]]) + 214872695) % 268435456, 0
      end
    end
  end
end, HM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if H <= 52 then
    if H <= 51 then
      local D = (Q - 128) + ((16384 * (A - 128)) + (Y * 128))
      return 181, z, e, 3 + N, D, T, S, G
    else
      local D = (Y + (Q * T)) % 256
      u[91](F, S, (u[116](u[39](A, e + S), D, N)))
      local m, g = 7, ((Q * D) + Y) % 256
      u[91](F, m, (u[116](N, g, (u[39](A, e + m)))))
      return 151, z, e, N, Q, 8, Y + (Q * g), 256
    end
  elseif H <= 53 then
    local Y = (T + (e * F)) % 256
    u[91](S, G, (u[116](Y, U, (u[39](A, N + G)))))
    return 219, z, Y, N, Q, T, S, G
  else
    return 0, z[4], N, N, Q, T, S, G
  end
end, [657] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y)
    local T = u[1].bb.touchCache
    if (T and ((tick() - T.at) < ((T.res and 0.08) or 0.2))) and (not T.res or T.res.orb.Parent) then
      return T.res
    end
    T = u[2].bbGoodTouch0(U, Q, F, A, Y)
    u[1].bb.touchCache = {at = tick(), res = T}
    return T
  end
end, [111] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    if not u[1].genv.__claudeBotLog or (type(Q) ~= "function") then
      return Q
    end
    return function(...)
      local F, A = os.clock(), table.pack(Q(...))
      u[1].profAdd(U, os.clock() - F)
      return table.unpack(A, 1, A.n)
    end
  end
end, [1244] = function(u, u, u, u)
  return function(U)
    for U, U in ipairs(u[1].routeMarkers) do
      U:Destroy()
    end
    table.clear(u[1].routeMarkers)
    for U, Q in ipairs(u[2]) do
      U = Instance.new("Part")
      U.Shape = Enum.PartType.Ball
      U.Size = Vector3.new(3, 3, 3)
      U.Position = Q.pos
      U.Color = ((#Q.links > 0) and (Color3.fromRGB(0, 180, 255))) or (Color3.fromRGB(255, 0, 0))
      U.Material = Enum.Material.Neon
      U.Anchored = true
      U.CanCollide = false
      U.CanQuery = false
      U.Parent = workspace
      table.insert(u[1].routeMarkers, U)
    end
    print(("\224\185\129\224\184\170\224\184\148\224\184\135 %d \224\184\136\224\184\184\224\184\148 (\224\185\129\224\184\148\224\184\135 = \224\185\132\224\184\161\224\185\136\224\184\161\224\184\181 link)"):format(#u[2]))
  end
end, [15971] = function(u, u, u, u, U, U)
  return function(U, Q)
    if u[1].computing then
      return
    end
    local F = tick()
    if (F - u[1].lastCompute) < u[2].recomputeInterval then
      return
    end
    if F < u[1].failUntil then
      return
    end
    local A = U:GetRoot()
    if not A then
      return
    end
    u[1].computing = true
    u[1].lastCompute = F
    local F, Y = A.Position, A.Size.Y / 2
    local T, G = Q - F, Q
    if T.Magnitude > u[2].maxPathDistance then
      Q = F + (T.Unit * u[2].maxPathDistance)
      A = U:GetGroundY(Q.X, Q.Z, F.Y)
      G = Vector3.new(Q.X, (A or (F.Y - Y)) + Y, Q.Z)
    end
    u[1].pathGoal = G
    local U = (G - F).Magnitude
    task.spawn(function()
      local Q
      local function A(Y, T)
        local z = u[3]:CreatePath({AgentRadius = Y, AgentHeight = T, AgentCanJump = true})
        Y = pcall(function()
          z:ComputeAsync(F, G)
        end)
        Q = (Y and z.Status) or "pcall failed"
        if Y and (z.Status == Enum.PathStatus.Success) then
          T = z:GetWaypoints()
          if #T >= 2 then
            return T
          end
        end
        return nil
      end
      local F = A(u[2].agentRadius, 5) or (A(1.5, 4))
      u[1].computing = false
      if F then
        u[1].waypoints = F
        u[1].usingRoute = false
        u[1].index = 2
        u[1].lastMoveTo = 0
        u[1].failUntil = 0
        u[1].pathFailCount = 0
        u[4][4][u[4][7]]("path", "ok", 2, "path \224\184\170\224\184\179\224\185\128\224\184\163\224\185\135\224\184\136 %d \224\184\136\224\184\184\224\184\148 \224\184\163\224\184\176\224\184\162\224\184\176 %.0f", #F, U)
        return
      end
      u[1].waypoints = nil
      u[1].failUntil = tick() + u[2].pathRetryDelay
      u[1].pathFailCount = u[1].pathFailCount + 1
      u[5][4][u[5][7]]("path", "path \224\184\165\224\185\137\224\184\161\224\185\128\224\184\171\224\184\165\224\184\167 (%s) \224\184\163\224\184\176\224\184\162\224\184\176 %.0f | \224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\184\151\224\184\181\224\185\136 %d", tostring(Q), U, u[1].pathFailCount)
      if U < u[2].shortPathDistance then
        A = u[6]:GetRoot()
        if A and (tick() > u[1].climbUntil) then
          u[1].climbUntil = tick() + u[2].climbTime
          u[1].climbStartDist = (G - A.Position).Magnitude
          u[1].forcePath = false
          u[1].usePath = false
          u[1].pathFailCount = 0
          u[5][4][u[5][7]]("stuck", "NoPath \224\184\163\224\184\176\224\184\162\224\184\176\224\185\131\224\184\129\224\184\165\224\185\137 (%.0f) \226\134\146 \224\184\165\224\184\173\224\184\135\224\184\155\224\184\181\224\184\153 %.1f \224\184\167\224\184\180", U, u[2].climbTime)
        end
        return
      end
      if u[1].pathFailCount >= u[2].pathFailGiveUp then
        u[1].pathFailCount = 0
        u[1].forcePath = false
        u[1].usePath = false
        u[1].waypoints = nil
        u[5][4][u[5][7]]("path", "path \224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 %d \224\184\132\224\184\163\224\184\177\224\185\137\224\184\135 \226\134\146 \224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\184\163\224\184\135\224\185\132\224\184\155\224\184\129\224\185\136\224\184\173\224\184\153", u[2].pathFailGiveUp)
      end
    end)
  end
end, [13691] = function(u, u, u, u)
  return function()
    local U
    local Q = (tick())
    while task.wait(1) do
      if u[1].genv.__dwToken ~= u[2].token then
        break
      end
      if not u[3].enabled or not u[3].movement then
        continue
      end
      local F, A = u[4]:GetRoot(), U
      if not F then
        U = nil
        continue
      end
      local Y = tick()
      if A then
        local T, G, z = (F.Position - A).Magnitude, Y - Q, 0
        for A, A in ipairs(u[2].Projectiles) do
          z = if A.homing then z + 1 else z
        end
        u[5][4][u[5][7]]("movement", "%.0f studs/\224\184\167\224\184\180 | state=%s | dest=%s | %s | hitbox=%d | proj=%d(homing %d)", T / G, u[6].state, (u[7].dest and "\224\184\161\224\184\181") or "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181", (u[7].waypoints and (((u[7].usingRoute and "route ") or "path ") .. (u[7].index .. ("/" .. #u[7].waypoints)))) or "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\184\163\224\184\135", #u[8], #u[2].Projectiles, z)
      end
      U, Q = F.Position, Y
    end
  end
end, [352] = function(u, u, u, u, U)
  return function()
    local U = u[1].bb and u[1].bb.buffHold
    if (U and U.pressAt) and ((tick() - U.pressAt) < 4) then
      U.pressAt = math.max(U.pressAt, tick() + 0.25)
    end
  end
end, [61] = function(u, u, u, u, U)
  return function(U, U, Q)
    if (tick() - u[1].Cooldown[U]) >= Q then
      u[1].Cooldown[U] = tick()
      return true
    end
    return false
  end
end, [8015] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    local Y, T, G = u[1].BonusBoss.orbGuard, u[1].BonusBoss.bounds, Vector3.new(Q.X, 0, Q.Z)
    Q = Vector3.new(F.X, 0, F.Z) - G
    F = Q.Magnitude
    local u, z = ((F > 0.01) and (Q / F)) or Vector3.zero, math.huge
    for H, H in ipairs(U) do
      local U, N, S = 0, H.pos, H.v
      while U <= Y.horizon do
        Q = ((N - (G + (u * math.clamp((U - Y.react) * A, 0, F)))).Magnitude - H.r) - Y.body
        z = if Q < z then Q else z
        U += Y.step
        N += S * Y.step
        S = if (N.X < T.xMin) or (N.X > T.xMax) then (Vector3.new(-S.X, 0, S.Z)) else S
        S = if (N.Z < T.zMin) or (N.Z > T.zMax) then (Vector3.new(S.X, 0, -S.Z)) else S
      end
    end
    return z
  end
end, tj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if U <= 146 then
    if U <= 145 then
      return (not not (212 < H) and 50) or 89, G, z, T, Q, F, A, Y
    else
      local D = u[39](H, 1 + z)
      return ((D < 128) and 62) or 218, G, z, D, Q, F, A, Y
    end
  elseif U <= 147 then
    local U, D = z - 128, (e - 128) * 16384
    local m = (U + (H * 128)) + D
    return 96, 3 + G, m, T, Q, F, A, Y
  else
    A(N, Q, (u[116](F, z, (u[39](H, G + Q)))))
    local U, Q = 2, ((e * F) + S) % 256
    u[91](N, U, (u[116](Q, u[39](H, U + G), z)))
    U = 3
    local F = (S + (Q * e)) % 256
    return 58, G, z, T, U, F, u[91], (u[116](z, F, (u[39](H, G + U))))
  end
end, [9281] = function(u, u, u, u, U, U, U)
  return function(U, U)
    for Q, F in pairs((u[1]:FindFirstChild("Backpack") or (Instance.new("Folder"))):GetChildren()) do
      if not F:FindFirstChild("abilitySlot") or (F.abilitySlot.Value ~= U) then
        continue
      end
      Q = F:FindFirstChild("cooldown")
      if not Q or (Q.Value <= 0) then
        continue
      end
      return true
    end
    if u[1].Character then
      for Q, F in pairs(u[1].Character:GetChildren()) do
        if (not F:IsA("Tool") or not F:FindFirstChild("abilitySlot")) or (F.abilitySlot.Value ~= U) then
          continue
        end
        Q = F:FindFirstChild("cooldown")
        if not Q or (Q.Value <= 0) then
          continue
        end
        return true
      end
    end
    return false
  end
end, [46] = bit32.countrz, [11059] = function(u, u, u, u, U, U)
  return function(U, Q)
    if not U.ringHalf or (U.ringHalf >= 179) then
      return nil
    end
    return u[1][4][u[1][7]](Q) or U.ringDir
  end
end, [37] = next, [22] = string.byte, VM = function(u, U, Q, F, A, Y, T, G, z, H)
  if z <= 63 then
    if z <= 62 then
      local N = F + ((A - 128) * 128)
      return 15, U, Q + 2, N, T
    else
      return (not (Y > 143) and 110) or 57, U, Q, A, T
    end
  elseif z <= 64 then
    local F, Y, z = G[5], G[3], G[1]
    local N, S = F + Y, Y <= 0
    local F, Y, e = not S, N >= z, N <= z
    z = (S and Y) or (F and e)
    G[5] = N
    if z then
      return 35, U, Q, A, N
    else
      return 229, U, Q, A, T
    end
  else
    local F, Y, G, z = u[39](H, 3), (U - 128) * 128, (Q - 128) * 2097152, A - 128
    local u = 16384 * (F % 128)
    return 236, ((2097152 * (F - (F % 128))) + ((z + u) + Y)) + G, 4, A, T
  end
end, [3932] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A = tick()
    if not F and ((A - u[1].nearMobsAt) < u[2].retreatMobCache) then
      return u[1].nearMobs
    end
    u[1].nearMobsAt = A
    u[1].nearMobs = {}
    F = U:GetRoot()
    if not F then
      return u[1].nearMobs
    end
    U = F.Position
    Q = Q or u[2].retreatMobRange
    for Y, Y in pairs(u[3][4][u[3][7]]:GetChildren()) do
      A = Y:FindFirstChild("enemyFolder")
      if not A then
        continue
      end
      for T, T in pairs(A:GetChildren()) do
        Y, F = T:FindFirstChildOfClass("Humanoid"), T:FindFirstChild("HumanoidRootPart")
        if (Y and (Y.Health > 0)) and F then
          T = F.Position
          if (T - U).Magnitude <= Q then
            table.insert(u[1].nearMobs, T)
          end
        end
      end
    end
    return u[1].nearMobs
  end
end, [16103] = function(u, u, u, u)
  return function(U, Q, F)
    local A = U:GetRoot()
    local Y = (A and A.Parent) and (A.Parent:FindFirstChildOfClass("Humanoid"))
    local T = math.max((Y and Y.WalkSpeed) or 16, 8)
    if (A and u[1].bbOrbList) and u[1].bbOrbClear then
      Y = u[1].bbOrbList()
      if (#Y > 0) and (u[1].bbOrbClear(Y, A.Position, Q, T) < 1) then
        return false
      end
    end
    Y = (F or 0) / T
    if u[1].bbVolleyHit and (u[1].bbVolleyHit(Q, math.max(0, Y - 0.25), Y + 1.5)) then
      return false
    end
    if (A and u[1].pathMoveSafe) and not u[1].pathMoveSafe(U, A.Position, Q, T) then
      return false
    end
    return u[2][4][u[2][7]](U, Q, Y)
  end
end, [13424] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y)
    local T = U.CFrame.LookVector
    local G = Vector3.new(T.X, 0, T.Z)
    if G.Magnitude < 0.1 then
      return
    end
    local T = u[1].mid.lanes
    T[#T + 1] = {o = u[2][4][u[2][7]](U.Position), d = G.Unit, v = Q, t0 = tick() + F, half = A, hl = Y, len = 240, part = U}
  end
end, [108] = assert, [116] = bit32.bxor, d = function(u, U, Q, F, A, Y, T, G, z)
  if A <= 144 then
    if A <= 143 then
      local H = u[39](G, F + 1)
      local N, S = (not (128 > H) and 256) or 218, Y[1]
      return N, Y[2], S, F, U, z, H
    else
      local H = u[39](G, 2 + F)
      local u, G = (not not (H >= 128) and 96) or 213, Y[1]
      return u, Y[2], G, F, U, z, H
    end
  elseif A <= 145 then
    local u, G = U - 128, 16384 * (Q - 128)
    local Q, H, N = u + ((z * 128) + G), F + 3, Y[1]
    return 236, Y[2], N, H, Q, z, T
  elseif A <= 146 then
    local u, Q, A = ((z - 128) * 128) + T, 2 + F, Y[1]
    return 249, Y[2], A, Q, U, u, T
  else
    local u, Q = F + 1, Y[1]
    return 103, Y[2], Q, u, U, z, T
  end
end, [110] = function(u, u)
  return function(u, U)
    return u.Flags[U]
  end
end, [863] = function(u, u)
  return function(u)
    local U = u:GetBuffSkill()
    if U then
      return u:IsSkillCooldown(((U == "q") and "e") or "q")
    end
    return u:IsSkillCooldown("q") and (u:IsSkillCooldown("e"))
  end
end, [31] = table.move, [2662] = function(u, u, u, u, U, U, U)
  return function(U, Q)
    local F = U:GetRoot()
    if not F then
      return false
    end
    if Vector3.new(Q.X - F.Position.X, 0, Q.Z - F.Position.Z).Magnitude > u[1].snapDistance then
      return false
    end
    local A = F.Position + Vector3.new(0, 0.5, 0)
    if u[2][4][u[2][7]](A, (Q + Vector3.new(0, 0.5, 0)) - A) then
      return false
    end
    F.CFrame = CFrame.new(Q) * F.CFrame.Rotation
    F.AssemblyLinearVelocity = Vector3.zero
    U:StopWalking()
    return true
  end
end, [16039] = function(u, u, u, u, U)
  return function(U)
    local Q, F = u[1].BonusBoss.volley, u[1].BonusBoss.longLine.center
    for A = -Q.kMax, Q.kMax, 1 do
      local Y = (F + (U.perp * (Q.step * A))) + (U.dir * U.a0)
      local F = {o = Vector3.new(Y.X, 0, Y.Z), d = U.dir, v = Q.speed, t0 = U.t0 + (Q.dt * math.abs(A)), half = Q.half, hl = Q.lenHalf, len = Q.len}
      u[2].odz.lanes[#u[2].odz.lanes + 1] = F
      if u[2].bbz then
        u[2].bbz.lanes[#u[2].bbz.lanes + 1] = F
      end
    end
  end
end, Zj = function(u, U, Q, F, A, Y, T, G, z)
  if G <= 206 then
    if G <= 205 then
      local H, N = U - 128, 16384 * (Y - 128)
      local Y = H + ((z * 128) + N)
      return 22, F, 3 + A, Q, Y
    else
      return 0, u[64](A, u[39](T, F), 1 + F), A, Q, U
    end
  elseif G <= 207 then
    local Y, G, G = u[39](T, F), F + 1, u[16](A)
    u[33](G, 0, Y)
    return 0, G, A, Q, U
  else
    local Q = A + 1
    local A = u[39](T, Q)
    return ((A < 128) and 127) or 184, F, Q, A, U
  end
end, Hj = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D, m)
  if A <= 228 then
    if A <= 227 then
      local g = 1 + N
      return 113, Q, U, N
    else
      local g, c = N - 128, 16384 * (m - 128)
      local r = g + ((128 * H) + c)
      return 206, Q, U + 3, r
    end
  elseif A <= 229 then
    return 0, Q[4], H(F), N
  else
    D(z, F, (u[116](e, T(G, S), N)))
    local F, A = 2, ((e * H) + Y) % 256
    u[91](z, F, (u[116](u[39](G, F + U), A, N)))
    F = 3
    local T = (Y + (A * H)) % 256
    u[91](z, F, (u[116](u[39](G, F + U), N, T)))
    return 0, Q, u[24](z, m), N
  end
end, [11793] = function(u, u, u, u, U, U)
  return function(U)
    pcall(function()
      local U = u[1]:FindFirstChild("PlayerScripts")
      local Q = U and (U:FindFirstChild("PlayerModule"))
      if Q then
        require(Q):GetControls():Enable()
      end
    end)
    u[2].controlsOff = false
  end
end, [12445] = function(u, u, u, u, U, U)
  return function(U, Q)
    local F = u[1].bb and u[1].bb.longLine
    if not F or ((tick() - F.t0) > u[2].BonusBoss.longLine.hold) then
      return true
    end
    local A = u[3]:GetRoot()
    local Y = (A and A.Parent) and (A.Parent:FindFirstChildOfClass("Humanoid"))
    return u[2].bbLLPointSafe(Q) and (u[2].bbLLPathSafe(U, Q, tick() - F.t0, math.max((Y and Y.WalkSpeed) or 16, 8)))
  end
end, [59] = coroutine.yield, fq = true, [14486] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A, Y, T = {U}, math.rad(Q / 2), math.max(1, math.floor(F / 2))
    F = Y / T
    for G = 1, T, 1 do
      Q = F * G
      if Q > (Y + 0.001) then
        break
      end
      table.insert(A, u[1][4][u[1][7]](U, Q))
      table.insert(A, u[1][4][u[1][7]](U, -Q))
    end
    return A
  end
end, [5259] = function(u, u, u, u, U, U, U)
  return function(U)
    for U, U in ipairs(u[1].routeMarkers) do
      U:Destroy()
    end
    table.clear(u[1].routeMarkers)
  end
end, [9593] = function(u, u, u)
  return function(u)
    if not u then
      return nil
    end
    if u:IsA("BasePart") then
      return u.Position
    end
    if u:IsA("Model") then
      local U = u.PrimaryPart or (u:FindFirstChildWhichIsA("BasePart", true))
      return (U and U.Position) or nil
    end
    return nil
  end
end, [6176] = function(u, u, u, u, U, U)
  return function(U, Q, F, A)
    local Y = Vector3.new(F.X - Q.X, 0, F.Z - Q.Z)
    local T = Y.Magnitude
    if not A then
      local G = U:GetRoot()
      local z = (G and G.Parent) and (G.Parent:FindFirstChildOfClass("Humanoid"))
      A = (z and z.WalkSpeed) or 16
    end
    local G, z = T / math.max(A, 8), tick()
    if u[1].bbVolleyHit then
      for H = 1, 6, 1 do
        A = ((G + 0.3) * H) / 6
        U = (((A >= G) or (T < 0.1)) and F) or (Q + (Y * (A / G)))
        if u[1].bbVolleyHit(U, A - 0.1, A + 0.1) then
          return false
        end
      end
    end
    for A, H in ipairs(u[2]) do
      local N = H.part
      local S = H.vel
      if ((((N and S) and not H.ring) and (S.Magnitude >= u[3].incomingMinSpeed)) and (N.Name:sub(1, 6) ~= "claude")) and not u[4][4][u[4][7]](H, z) then
        A = u[5][4][u[5][7]](H, N)
        for z = 1, 8, 1 do
          U = ((G + 0.3) * z) / 8
          local z = (((U >= G) or (T < 0.1)) and F) or (Q + (Y * (U / G)))
          if u[6][4][u[6][7]](H, N.CFrame + (S * U), A, Vector3.new(z.X, Q.Y, z.Z)) then
            return false
          end
        end
      end
    end
    return true
  end
end, [4831] = function(u, u, u, u, U)
  return function(U, Q, F)
    if not u[1].useMove then
      U:MoveTo(F)
      return
    end
    local A = Vector3.new(F.X - Q.Position.X, 0, F.Z - Q.Position.Z)
    local Y = A.Magnitude
    if Y <= u[1].moveStop then
      U:Move(Vector3.zero)
      u[2].moveCmd = 0
      return
    end
    if u[1].walkAheadCheck and not u[3]:SkipDodge() then
      local T, G, z = Q.Position, A.Unit, tick()
      F = not u[3]:IsBlocked(T) and (u[4][4][u[4][7]](T, G, math.min(u[1].walkAhead, Y)))
      u[2].aheadHitN = (F and ((u[2].aheadHitN or 0) + 1)) or 0
      if F and (u[2].aheadHitN >= (u[1].walkAheadConfirm or 1)) then
        local F = Vector3.new(-G.Z, 0, G.X)
        local H, N, S = {F, -F}, u[2].walkSlide
        for e, D in ipairs(if N and (z < N.until_) then if N.dir:Dot(F) < 0 then {-F, F} else H else H) do
          e = u[1].walkAheadStep
          if not u[3]:IsBlocked(T + (D * e)) and (u[3]:GetClearDistance(T, D, e + 2, true) >= e) then
            S = D
            break
          end
        end
        u[5].aheadBlocked = z
        if S then
          if not ((N and (z < N.until_)) and (N.dir:Dot(S) > 0)) then
            u[2].walkSlide = {dir = S, until_ = z + u[1].walkSlideHold}
          end
          u[6][4][u[6][7]](U, ((S * 0.85) + (G * 0.15)).Unit, 0.9)
          return
        end
        S = u[2].walkOpen
        if not S or (z > S.until_) then
          F = u[3]:OpenEscape(T, {avoid = G, go = 10})
          H = F and (Vector3.new(F.X - T.X, 0, F.Z - T.Z))
          S = {dir = ((H and (H.Magnitude > 0.5)) and H.Unit) or nil, until_ = z + 0.3}
          u[2].walkOpen = S
        end
        if S.dir then
          u[6][4][u[6][7]](U, S.dir, 0.8)
          return
        end
        U:Move(Vector3.zero)
        u[2].moveCmd = 0
        return
      end
      u[2].walkSlide = nil
    end
    Q = u[1].moveSlow
    u[6][4][u[6][7]](U, A.Unit, if Y < Q then (math.max(Y / u[1].moveSlow, 0.35)) else 1)
  end
end, [16] = buffer.create, [15684] = function(u, u, u, u)
  return function(U)
    if not U or not u[1].bossDeadAt then
      return false
    end
    local Q = U.Parent
    local F = {U.Name, (Q and Q.Name) or "", ((Q and Q.Parent) and Q.Parent.Name) or ""}
    for Q in pairs(u[1].bossDeadAt) do
      if (Q == "bonusBoss") and (U.Name == "claudeSpiralPredict") then
        return true
      end
      for u, u in ipairs(F) do
        if u:sub(1, #Q) == Q then
          return true
        end
      end
    end
    return false
  end
end, [5308] = function(u, u, u, u)
  return function(U, U, Q, F, A)
    local Y = u[1].BonusBoss.bounds
    local T, G, z = u[2][4][u[2][7]](Q), u[2][4][u[2][7]](U), {}
    for H, N in ipairs((u[1].bbOrbList and (u[1].bbOrbList())) or {}) do
      if N.r >= 8 then
        H, Q = T - N.pos, (N.pos - G).Magnitude
        local S = H.Magnitude
        z[#z + 1] = {p = N.pos, v = ((S > 1) and (H.Unit * 23.5)) or Vector3.zero, thr = math.max(14.9, math.min(15.5, Q - 0.2)), tGone = ((S < 15) and 0) or ((S - 15) / 23.5)}
      end
    end
    local H, N = 0.1, 0.05
    local function S(e)
      return (((e.X > (Y.xMin + 3)) and (e.X < (Y.xMax - 3))) and (e.Z > (Y.zMin + 3))) and (e.Z < (Y.zMax - 3))
    end
    local function Y(e, D, m, g, c, r)
      local M, y = 0
      local p = G
      while M <= ((m + 0.3) + 1e-06) do
        local f = e + (D * M)
        y = if not y and ((f - p).Magnitude <= 12) then M else y
        for e, e in ipairs(z) do
          if (M < e.tGone) and (((e.p + (e.v * M)) - p).Magnitude < e.thr) then
            return nil
          end
        end
        if y and (M >= (y + 0.3)) then
          return y
        end
        if not y and (M > m) then
          return nil
        end
        if M >= H then
          local e
          if c and (M >= (H + c)) then
            if r then
              e = r
            elseif not y then
              local H = (f + (D * 0.2)) - p
              e = ((H.Magnitude > 0.1) and H.Unit) or g
              g = e
            else
              e = g
            end
          else
            e = g
          end
          p += (e * A) * N
          if not S(p) then
            return nil
          end
        end
        M += N
      end
      return y
    end
    Q = {}
    for H, N in ipairs(F) do
      H = u[2][4][u[2][7]](N.Position)
      local e = T - H
      local D = e.Magnitude
      if D > 16 then
        Q[#Q + 1] = {orb = N, G = H, dB = D, vG = e.Unit * 23.5, tBoss = (D - 14) / 23.5, dBall = (H - G).Magnitude, reach = (N.Size.X / 2) + 0.5}
      end
    end
    table.sort(Q, function(H, N)
      return H.tBoss < N.tBoss
    end)
    local H = {inR = 0, badOK = 0, hz = 0}
    u[3].bb.touchDiag = H
    local N, e, D = u[3].bbz, tick(), u[3].bb.longLine
    local m, g = D and (e - D.t0)
    if N then
      for c, c in ipairs(N.beams) do
        if c.sweep then
          g = {}
          break
        end
      end
      if g then
        for c, c in ipairs(N.beams) do
          if not c.sweep then
            g[#g + 1] = c
          end
        end
      end
    end
    local function c(r, M)
      table.sort(M, function(y, p)
        return y.t < p.t
      end)
      for y = 1, math.min(#M, 8), 1 do
        local p = M[y]
        y = A * math.min((p.lead or p.t) + 0.3, 1.2)
        local M = G + (p.u * y)
        y = if N and (u[1].midPathHit(N.lanes, N.beams, U, M, A, e, N.discs, 0.2, N.dyn, g) or (N.static and (N.static(Vector3.new(M.X, U.Y, M.Z))))) then false else true
        if if ((y and m) and (m < u[1].BonusBoss.longLine.hold)) and not u[1].bbLLPathSafe(U, M, m, A) then false else y then
          return {orb = r.orb, dest = M, t = p.t, lead = p.lead, slack = r.tBoss - p.t, dBall = r.dBall - r.reach}
        end
        H.hz = H.hz + 1
      end
      return nil
    end
    D, F = nil
    for U, N in ipairs(Q) do
      local Q, e, m = math.min(N.tBoss, 3), 0, false
      while e <= (Q + 1e-06) do
        if (((N.G + (N.vG * e)) - G).Magnitude - 12) <= (A * math.max(0, e - 0.1)) then
          m = true
          break
        end
        e += 0.1
      end
      if not (D and (((N.dBall - 12) / (A + 23.5)) > 0.25)) then
        if m then
          H.inR = H.inR + 1
          T = {}
          for m = 0, 23, 1 do
            e = math.rad(m * 15)
            local m, g = Vector3.new(math.cos(e), 0, math.sin(e)), {false, 0.35, 0.7}
            for e, r in ipairs(g) do
              e = Y(N.G, N.vG, Q, m, r or nil)
              if e then
                T[#T + 1] = {t = e + ((r and 0.05) or 0), u = m, lead = r or nil}
              end
            end
          end
          if (#T == 0) and (U <= 2) then
            for e = 0, 11, 1 do
              local m = math.rad(e * 30)
              e = Vector3.new(math.cos(m), 0, math.sin(m))
              for g = 0, 15, 1 do
                m = math.rad(g * 22.5)
                g = Y(N.G, N.vG, Q, e, 0.25, Vector3.new(math.cos(m), 0, math.sin(m)))
                if g then
                  T[#T + 1] = {t = g + 0.05, u = e, lead = 0.25}
                end
              end
            end
          end
          if (#T == 0) and (U <= 2) then
            local U, Y = u[1].bbGoodGreedy(G, N.G, N.vG, Q, z, A, S)
            if U then
              T[#T + 1] = {t = Y + 0.1, u = U, lead = 0.3}
            end
          end
          H.badOK = H.badOK + #T
          if #T > 0 then
            local u = c(N, T)
            if u then
              F, D = if u.t <= 0.25 then F or u else F, if not D then u else D
              if F then
                break
              end
            end
          end
        end
      end
    end
    return F or D
  end
end, [5093] = function(u, u, u)
  return function(u)
    local U = u:GetBuffSkill()
    if U then
      if u:IsSkillCooldown(U) and not u:HasBuff() then
        return false
      end
      return not u:IsSkillCooldown(((U == "q") and "e") or "q")
    end
    return not u:IsSkillCooldown("q") or not u:IsSkillCooldown("e")
  end
end, [15011] = function(u, u, u, u)
  return function(u)
    local U = u:GetRoot()
    u = (U and U.Parent) and (U.Parent:FindFirstChildOfClass("Humanoid"))
    return math.max((u and u.WalkSpeed) or 16, 8)
  end
end, bM = function(u, U, Q, F, A, Y, T, G, z)
  if Q <= 22 then
    if Q <= 21 then
      return 1
    else
      local H = u[39](G, 2 + Y)
      return 2, (not (128 > H) and 7) or 15, Y, A, z, H
    end
  elseif Q <= 23 then
    local u, Q = A - 128, (F - 128) * 16384
    local F = (u + (z * 128)) + Q
    return 2, 4, Y + 3, F, z, U
  else
    local u, Q = z - 128, 16384 * (U - 128)
    local F = ((128 * T) + u) + Q
    return 2, 10, Y + 3, A, F, U
  end
end, [13977] = function(u, u, u, u)
  return function(u)
    local u, U = workspace:FindFirstChild("playerPickupCannonballRing"), workspace:FindFirstChild("playerFireCannon")
    if (u and (u.Transparency ~= 1)) and not workspace:FindFirstChild("overheadCannon") then
      return u.Position
    end
    if workspace:FindFirstChild("overheadCannon") and U then
      return U.ring.Position
    end
  end
end, [5454] = function(u, u, u, u, U)
  return function(U, Q, F)
    local A = 0
    for Y, T in ipairs(U) do
      Y = u[1][4][u[1][7]](T.Position - Q)
      local U = Y.Magnitude
      if U < F then
        local Q, F = 1 / math.max(U * U, 16), T.AssemblyLinearVelocity
        F = if F.Magnitude < 1 then T:GetAttribute("bbVel") or Vector3.zero else F
        if (F.Magnitude > 1) and (Y.Magnitude > 1) then
          local U = -Y.Unit:Dot(u[1][4][u[1][7]](F).Unit)
          Q = if U > 0.5 then Q * (1 + (U * 2)) else Q
        end
        A += Q
      end
    end
    return A
  end
end, [7435] = function(u, u, u, u, U, U)
  return function(U, Q, F, A, Y)
    local T = U:GetRoot()
    if not T then
      return nil
    end
    local G = Vector3.new(Q.X - F.X, 0, Q.Z - F.Z)
    local z = G.Magnitude
    if z < 2 then
      return nil
    end
    local H = G.Unit
    local N = T.Size.Y / 2
    local S, e, D, m, g, c = math.max(A, z + u[1].retreatGain), U:GetNearbyMobs(), (U.lastAttackDist or 30) + u[1].rangeSlack, math.max(u[1].retreatArcStep, 2), -math.huge
    for r = 0, m, 1 do
      A, G = (math.rad(u[1].retreatArcDeg) * r) / m, {1, -1}
      for m, M in ipairs(G) do
        r = u[2][4][u[2][7]](H, A * M)
        M = Vector3.new(F.X, Q.Y, F.Z) + (r * S)
        m = Vector3.new(M.X - Q.X, 0, M.Z - Q.Z)
        T = m.Magnitude
        if (T >= u[1].retreatArcMin) and (T <= u[1].dodgeMaxRange) then
          if U:GetClearDistance(Q, m.Unit, T + u[1].wallClearance, Y) >= T then
            local A = U:GetGroundY(M.X, M.Z, Q.Y)
            if A and (((Q.Y - N) - A) <= u[1].maxDrop) then
              local Y = Vector3.new(M.X, A + N, M.Z)
              if not U:IsBlocked(Y) and (U:GetSafeAdvance(Q, Y) >= T) then
                local U = 0
                for A, A in ipairs(e) do
                  local G, H = Y.X - A.X, Y.Z - A.Z
                  U = if ((G * G) + (H * H)) <= (D * D) then U + 1 else U
                end
                local A = (U * 100) - (T * u[1].retreatWalkCost)
                if A > g then
                  g, c = A, Y
                end
              end
            end
          end
        end
      end
    end
    if c then
      u[3][4][u[3][7]]("state", "arcretreat", 1, "\224\184\150\224\184\173\224\184\162\224\185\129\224\184\154\224\184\154\224\185\128\224\184\148\224\184\180\224\184\153\224\185\130\224\184\132\224\185\137\224\184\135 | \224\185\128\224\184\148\224\184\180\224\184\153 %.0f | \224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f -> %.0f | \224\185\128\224\184\129\224\185\135\224\184\154\224\184\161\224\184\173\224\184\153\224\185\132\224\184\167\224\185\137 %d \224\184\149\224\184\177\224\184\167", (c - Q).Magnitude, z, Vector3.new(c.X - F.X, 0, c.Z - F.Z).Magnitude, math.floor((g + 0.5) / 100))
    end
    return c
  end
end, [14217] = function(u, u, u, u)
  return function(U)
    local Q = u[1].BonusBoss.bounds
    return Vector3.new(math.clamp(U.X, Q.xMin, Q.xMax), U.Y, math.clamp(U.Z, Q.zMin, Q.zMax))
  end
end, Dj = function(u, U, Q, F, A, Y, T)
  if A <= 236 then
    if A <= 235 then
      local G, z = Q + (128 * (Y - 128)), 2 + U
      return 195, F, T, U, G
    else
      local Q, G = u[64](2 * T), 1 + 0
      return 1, {1 - G, T + 0, F, nil, G}, Q, U, Y
    end
  elseif A <= 237 then
    return 193, F, T, 1 + U, Y
  else
    return 96, F, 1 + T, U, Y
  end
end, [126] = buffer.writei16, ZM = function(u, U, Q, F, A, Y, T, G)
  if F <= 29 then
    local z, H, N, S = u[39](G, U + 3), (T - 128) * 128, (Y - 128) * 2097152, A - 128
    local A = (z % 128) * 16384
    local e = (S + ((2097152 * (z - (z % 128))) + N)) + (A + H)
    return 22, U + 4, Q, e
  elseif F <= 30 then
    local F = U + 1
    return 195, U, Q, T
  else
    local F, A, z, H = u[39](G, U + 3), (Q - 128) * 128, 2097152 * (T - 128), Y - 128
    local u = ((16384 * (F % 128)) + (H + (2097152 * (F - (F % 128))))) + (z + A)
    return 193, 4 + U, u, T
  end
end, R = function(u, U, Q, F, A, Y, T)
  if Q <= 41 then
    local Q = u[39](Y, A + 1)
    local G, z = (not (Q < 128) and 52) or 31, U[1]
    return G, U[2], z, Q, T
  else
    local Q = u[39](Y, 2 + A)
    local u, A = (not (128 <= Q) and 133) or 91, U[1]
    return u, U[2], A, F, Q
  end
end, [6497] = function(u, u, u, u, U)
  return function(U)
    if not u[1][U.ClassName] then
      return
    end
    task.spawn(function()
      u[2].Heartbeat:Wait()
      U:Destroy()
    end)
  end
end, [39] = buffer.readu8, [1810] = function(u, u, u, u, U, U, U)
  return function()
    if u[1].faceGyro then
      u[1].faceGyro:Destroy()
      u[1].faceGyro = nil
    end
  end
end, D = function(u, U, Q, F, A, Y, T, G, z)
  if Y <= 76 then
    local H, N, S, e = u[39](G, 3 + A), (U - 128) * 128, (T - 128) * 2097152, Q - 128
    local D, m = (H % 128) * 16384, 2097152 * (H - (H % 128))
    local H, g, c = (D + N) + (m + (S + e)), 4 + A, z[1]
    return 71, z[2], c, H, g, T
  elseif Y <= 77 then
    local Y, H, N, S = u[39](G, 3 + A), 128 * (T - 128), 2097152 * (Q - 128), F - 128
    local u = (Y % 128) * 16384
    local Q, F, G = (2097152 * (Y - (Y % 128))) + (S + ((H + u) + N)), A + 4, z[1]
    return 196, z[2], G, U, F, Q
  else
    local u, Q = 1 + A, z[1]
    return 38, z[2], Q, U, u, T
  end
end, GM = false, [119] = function(u, u, u, u, U, U)
  return function(U)
    return u[1].isBossRaidPlace
  end
end, Z = function(u, U, Q, F, A, Y, T, G, z, H, N, S)
  if Y <= 52 then
    if Y <= 51 then
      F[T] = U
      local e, D = u[64](S), u[64](S)
      F[F[11]] = e
      F[F[9]] = D
      D = 1 + 0
      local F, m = {1 - D, A, S + 0, D, nil}, G[1]
      return 229, F, G[2], m, z, e, U, H, N
    else
      local F = u[39](Q, 2 + z)
      local S, e = (not (F >= 128) and 163) or 153, G[1]
      return S, A, G[2], e, z, T, U, H, F
    end
  elseif Y <= 53 then
    local F = u[39](Q, z + 1)
    local S, e = (not (128 > F) and 54) or 328, G[1]
    return S, A, G[2], e, z, T, U, F, N
  elseif Y <= 54 then
    local F = u[39](Q, z + 2)
    local u, Q = ((F < 128) and 1) or 322, G[1]
    return u, A, G[2], Q, z, T, U, H, F
  else
    local u, Q, F = (128 * (U - 128)) + H, 2 + z, G[1]
    return 257, A, G[2], F, Q, T, u, H, N
  end
end, [14356] = function(u, u, u, u, U, U)
  return function(U, Q, ...)
    local F = u[1].genv.__claudeBotLog
    if F and Q then
      local A = U .. (" | " .. string.format(Q, ...):gsub("%d+%.%d+", "#"))
      if A ~= u[2].claudeLastState then
        u[2].claudeLastState = A
        pcall(F, "state", U .. (" | " .. string.format(Q, ...)))
      end
    end
    if u[3].state == U then
      return
    end
    local F, A = tick(), u[3].state
    u[3].state = U
    u[3].stateSince = F
    u[4][4][u[4][7]]("state", "%s -> %s | %s", A, U, (Q and (string.format(Q, ...))) or "")
    if ((A == "approach") and (U == "retreat")) or ((A == "retreat") and (U == "approach")) then
      table.insert(u[3].flipTimes, F)
      for U = #u[3].flipTimes, 1, -1 do
        if (F - u[3].flipTimes[U]) > 5 then
          table.remove(u[3].flipTimes, U)
        end
      end
      if #u[3].flipTimes >= 6 then
        u[5][4][u[5][7]]("state", "oscillate", 3, "!! \224\184\167\224\184\153\224\185\128\224\184\148\224\184\180\224\184\153\224\185\128\224\184\130\224\185\137\224\184\178\224\185\128\224\184\148\224\184\180\224\184\153\224\184\173\224\184\173\224\184\129 %d \224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\185\131\224\184\153 5 \224\184\167\224\184\180", #u[3].flipTimes)
      end
    end
  end
end, [107] = bit32.countlz, [34] = function(u, u, u, u)
  return function(u)
    local U = u.CFrame.LookVector
    u = Vector3.new(U.X, 0, U.Z)
    return ((u.Magnitude > 0.01) and u.Unit) or nil
  end
end, [2286] = function(u, u, u, u, U, U)
  return function(U)
    local Q = U:GetRoot()
    if not Q then
      return
    end
    local F, A, Y, T = workspace:FindFirstChild("secondBossSafeSpots"), workspace:FindFirstChild("firstBossSafeZones"), workspace:FindFirstChild("thirdBossSafeSpots"), workspace:FindFirstChild("thirdBossSafeSpot")
    U = (u[1][4][u[1][7]] and (u[1][4][u[1][7]].Name == "Warrior Overlord")) and (workspace:FindFirstChild("forceField"))
    if T then
      return T.PrimaryPart.Position
    end
    if Y then
      local u, G = math.huge
      for z, z in pairs(Y:GetChildren()) do
        if z.Name == "hitBox" then
          T = (Q.Position - z.Position).Magnitude
          if T < u then
            u, G = T, z
          end
        end
      end
      return G and G.Position
    end
    if F then
      for u, u in pairs(F:GetChildren()) do
        if u:FindFirstChild("Union") and (u.Union.Transparency ~= 1) then
          return u.Union.Position
        end
      end
    end
    if U then
      return U.Position
    end
    if A then
      for u, u in pairs(A:GetChildren()) do
        if u.Transparency ~= 1 then
          return u.Position
        end
      end
    end
  end
end, [13091] = function(u, u, u, u, U, U, U)
  return function(U)
    return u[1].currentBuff.time and ((tick() - u[1].currentBuff.time) <= 4.5)
  end
end, W = function(u, U, Q, F, A, Y, T, G)
  if Y <= 117 then
    local z = u[39](T, 2 + A)
    local H, N = (not not (z >= 128) and 215) or 122, Q[1]
    return H, Q[2], N, A, U, F, z
  elseif Y <= 118 then
    local Y = u[39](T, 1 + A)
    local u, T = (not (128 > Y) and 92) or 119, Q[1]
    return u, Q[2], T, A, U, Y, G
  else
    local u, Y, T = ((U - 128) * 128) + F, A + 2, Q[1]
    return 162, Q[2], T, Y, u, F, G
  end
end, [7] = function(u, u, u, u)
  return function(U, U, Q)
    u[1].SkillNoDelay[U] = (Q and true) or nil
    u[2][4][u[2][7]]("target", "%s: %s", U, (Q and "\224\185\131\224\184\138\224\185\137\224\185\132\224\184\148\224\185\137\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181\224\184\149\224\184\173\224\184\153\224\185\128\224\184\129\224\184\180\224\184\148\224\185\131\224\184\171\224\184\161\224\185\136") or "\224\184\149\224\185\137\224\184\173\224\184\135\224\184\163\224\184\173 respawnDelay")
  end
end, Xj = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if H <= 176 then
    if H <= 175 then
      local S = 1 + N
      local e = u[39](Q, S)
      return (not (e >= 128) and 238) or 11, S, e, z, Q, Y, F, G, U
    else
      local S = (128 * (Q - 128)) + T
      return 61, A, N + 2, z, S, Y, F, G, U
    end
  elseif H <= 177 then
    return (not (160 < T) and 70) or 116, A, N, z, Q, Y, F, G, U
  else
    local U, F, Y, G, z, H = N + 1, 61, 233, (114 + A) % 256, u[16](8), 0
    local A = (Y + (G * F)) % 256
    u[91](z, H, (u[116](114, A, (u[39](T, U + H)))))
    return 12, U, 114, F, Q, Y, z, 1, (Y + (F * A)) % 256
  end
end, [12534] = function(u, u)
  return function(u, U)
    local Q = math.max(U.Size.X, U.Size.Z) / 2
    local U, F, A = ((u.ringBase and (u.ringBase > 0)) and (Q / u.ringBase)) or 1, u.pad or 0, u.ringShrink or 0
    return ((u.ringInner * U) - F) + A, ((u.ringOuter * U) + F) - A
  end
end, [123] = buffer.readstring, [5] = function(u, u, u, u, U, U)
  return function(U, U)
    local Q = U and u[1][U]
    if not Q then
      return false
    end
    if tick() >= Q then
      u[1][U] = nil
      return false
    end
    return true
  end
end, y = function(u, U, Q, F, A, Y, T, G, z, H, N)
  if F <= 1 then
    if F <= 0 then
      local S, e = A - 128, (z - 128) * 16384
      local D, m, g = ((U * 128) + e) + S, 3 + Q, G[1]
      return 149, G[2], g, m, N, Y, D
    else
      local U, S, e = (Y - 128) + ((16384 * (A - 128)) + (128 * z)), 3 + Q, G[1]
      return 46, G[2], e, S, N, U, A
    end
  elseif F <= 2 then
    local U = u[39](T, Q)
    local u, T = (not not (128 <= U) and 118) or 17, G[1]
    return u, G[2], T, Q, U, Y, A
  elseif F <= 3 then
    local u, U = (not (2 == H[H[3]]) and 72) or 203, G[1]
    return u, G[2], U, Q, N, Y, A
  else
    local u, U, F = (128 * (Y - 128)) + A, Q + 2, G[1]
    return 202, G[2], F, U, N, u, A
  end
end, [7219] = function(u, u, u, u, U)
  return function(U)
    local Q = u[1]:GetRoot()
    if not Q then
      return
    end
    u[1]:UpdateBuff()
    if (not u[2].HasDungeonStarted() and not u[2].HasDungeonStarted()) and not u[3].isBossRaidPlace then
      if u[4] == "Northern Lands" then
        local F = u[5][#u[5]]
        if u[1]:WalkWaypoints(u[5], 3.25, 3.25) then
          return
        end
        u[3].check = true
        if u[3].check then
          u[6]:StartDungeon()
          task.delay(6, function()
            u[3].check2 = true
          end)
        end
        return
      end
      u[6]:StartDungeon()
      return
    end
    local F = ((not u[7][4][u[7][7]] or not u[1]:IsLive(u[7][4][u[7][7]])) or (u[1]:IsBlacklisted(u[7][4][u[7][7]]))) or (u[1]:Cooldown("GetMob", 0.25))
    if F then
      u[7][4][u[7][7]] = if U then u[1]:GetNearestBossRaidEntities() else u[1]:GetNearestEntities()
    end
    u[1]:FixMobTarget(u[7][4][u[7][7]])
    if not u[7][4][u[7][7]] then
      u[8].faceTarget = nil
      if u[3].noTargetSince == 0 then
        u[3].noTargetSince = tick()
      elseif (tick() - u[3].noTargetSince) > u[9].noTargetResetTime then
        u[3].noTargetSince = 0
        u[1]:ClearBlacklist()
        u[10][4][u[10][7]]("target", "\224\184\161\224\184\173\224\184\153\224\185\130\224\184\148\224\184\153\224\184\130\224\185\137\224\184\178\224\184\161\224\184\171\224\184\161\224\184\148 \224\184\165\224\185\137\224\184\178\224\184\135 blacklist \224\184\165\224\184\173\224\184\135\224\185\131\224\184\171\224\184\161\224\185\136")
      end
      return
    end
    U = u[1]:CustomAttackDist(u[7][4][u[7][7]], u[11][4][u[11][7]]:GetFlag("Attack Distance") or 20)
    if u[4] == "Northern Lands" then
      if not u[12][4][u[12][7]].room6:FindFirstChild("barrier") and (u[12][4][u[12][7]].room7:FindFirstChild("barrier")) then
        if Q.Position.Y < 10 then
          replicatesignal(u[13].Kill)
          return
        end
      end
    end
    if u[11][4][u[11][7]]:GetFlag("Auto Dodge Odin v2") then
      u[14].SuicideMob.Odin = false
      u[15].Odin = false
    else
      u[14].SuicideMob.Odin = true
      u[15].Odin = true
    end
    if u[7][4][u[7][7]] and (u[7][4][u[7][7]].Name == "Odin") then
      F = u[7][4][u[7][7]]:FindFirstChildOfClass("Humanoid")
      if (F and (F.MaxHealth > 0)) and ((F.Health / F.MaxHealth) <= 0.08) then
        u[14].SuicideMob.Odin = false
        u[15].Odin = false
      end
    end
    if u[11][4][u[11][7]]:GetFlag("Auto Dodge Bob") then
      u[14].SuicideMob["Bob The Frost Giant"] = false
      u[15]["Bob The Frost Giant"] = false
      Q = u[11][4][u[11][7]]:GetFlag("Bob Mode")
      if Q and (Q == "Semi") then
        u[14].BossHome["Bob The Frost Giant"].enabled = false
        u[14].BossHome["Bob The Frost Giant"].orb = false
      else
        u[14].BossHome["Bob The Frost Giant"].enabled = true
        u[14].BossHome["Bob The Frost Giant"].orb = true
      end
    else
      u[14].SuicideMob["Bob The Frost Giant"] = true
      u[15]["Bob The Frost Giant"] = true
    end
    u[3].noTargetSince = 0
    u[1]:Velocity(false)
    u[1]:MoveToTarget(u[7][4][u[7][7]], U)
    u[1]:UseSkillloop(u[7][4][u[7][7]], U)
    u[1]:M1(u[7][4][u[7][7]], U)
    u[1]:TrySuicideReset(u[7][4][u[7][7]])
  end
end, [122] = bit32.rshift, [48] = buffer.writei8, [8564] = function(u, u, u, u)
  return function(U, U, Q, F, A)
    local Y = {Vector3.zero}
    if A then
      local T = Vector3.new(-Q.Z, 0, Q.X) * u[1].agentRadius
      table.insert(Y, T)
      table.insert(Y, -T)
    end
    A = F
    for T, G in ipairs(u[1].rayHeights) do
      for z, H in ipairs(Y) do
        T, z = u[2][4][u[2][7]]((U + H) + Vector3.new(0, G, 0), Q * F)
        if z then
          H = math.max(0, z - u[1].agentRadius)
          A = if H < A then H else A
        end
      end
    end
    return A
  end
end, [947] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A, Y, T, G, z, H, N)
    local S = u[1].Mid
    z = z or S.hold
    local e = u[2][4][u[2][7]](F)
    F = u[2][4][u[2][7]](A) - e
    A = F.Magnitude
    local D, m = A / Y, math.max(1, math.ceil(A / 4))
    for A = 1, m, 1 do
      Y = A / m
      A = S.react + (D * Y)
      if u[1].midHitAt(U, Q, e + (F * Y), T + A, G, H) then
        return A
      end
    end
    local A, m, g, c = e + F, {}, {}, 0.2
    while c <= (z + 1e-06) do
      Y = (S.react + D) + c
      if c <= (S.hold + 1e-06) then
        if u[1].midHitAt(U, N or Q, A, T + Y, G, H) then
          return Y
        end
      elseif u[1].midHitAt(m, g, A, T + Y, G) then
        return Y
      end
      c += 0.2
    end
    return nil
  end
end, [13968] = function(u, u, u, u)
  return function(U, Q)
    if U == Q then
      return
    end
    for F, F in ipairs(u[1][U].links) do
      if F == Q then
        return
      end
    end
    table.insert(u[1][U].links, Q)
    table.insert(u[1][Q].links, U)
  end
end, [11881] = function(u, u, u, u, U, U, U)
  return function(U, U)
    if not u[1].useMove then
      return
    end
    local Q = tick()
    if u[2].moveCmd <= 0 then
      u[2].moveStuckSince = 0
      return
    end
    if U.MoveDirection.Magnitude > 0.05 then
      u[2].moveStuckSince = 0
      return
    end
    if u[2].moveStuckSince == 0 then
      u[2].moveStuckSince = Q
      return
    end
    local U = Q - u[2].moveStuckSince
    if (U > 0.4) and (u[3]:Cooldown("CtrlRetry", 1)) then
      u[4][4][u[4][7]]("movement", "movedead", 2, "\224\184\170\224\184\177\224\185\136\224\184\135\224\185\128\224\184\148\224\184\180\224\184\153\224\185\129\224\184\165\224\185\137\224\184\167\224\185\132\224\184\161\224\185\136\224\184\130\224\184\162\224\184\177\224\184\154 %.1f \224\184\167\224\184\180 \226\134\146 \224\184\165\224\184\173\224\184\135\224\184\155\224\184\180\224\184\148 control \224\184\139\224\185\137\224\184\179", U)
      u[3]:DisableControls()
    end
    if U > 2 then
      u[1].useMove = false
      u[2].moveStuckSince = 0
    end
  end
end, [121] = function(u, u, u, u, U, U)
  return function(U, Q)
    u[1].liveConnectN = u[1].liveConnectN + 1
    local F = tostring(U)
    Q = u[1].profWrap((((F:find("Heartbeat") and "HB") or (F:find("DescendantAdded") and "DescAdd")) or "ev") .. u[1].liveConnectN, Q)
    local F
    F = U:Connect(function(...)
      if u[1].genv.__dwToken ~= u[2].token then
        if F then
          F:Disconnect()
          F = nil
        end
        return
      end
      return Q(...)
    end)
    return F
  end
end, [32] = function(u, u, u, u, U, U)
  return function(U)
    table.clear(u[1])
  end
end, [13144] = function(u, u, u, u)
  return function(U, Q)
    local F = string.format("%d_%d_%d", math.floor(U.X + 0.5), math.floor(U.Z + 0.5), math.floor(Q + 0.5))
    local A = u[1].bbFleeCache[F]
    if A then
      return A
    end
    A = u[1].BonusBoss.sweepMid
    local Y, T = Vector3.new(-A.axis.Z, 0, A.axis.X), Vector3.new(U.X, 0, U.Z)
    U = T - A.center
    local G, z, H, N = U:Dot(A.axis), U:Dot(Y), {1, -1}, math.huge
    for S, e in ipairs(H) do
      U, S = e * G, 9
      if U < 67.5 then
        local G = (A.center + (A.axis * (e * 87.5))) + (Y * math.clamp(z, -30, 30))
        local A = (G - T).Magnitude
        local Y, z = (Q * (87.5 - U)) / math.max(A, 1)
        for A = 0, 4, 0.25 do
          if u[1].bbLLPathSafe(T, G, 2.75 + A, Q) then
            z = A
            break
          end
        end
        if not z then
          S = -9
        else
          G = 0.35 + z
          for Q = -87.5, 62.5, 25 do
            S = if (Q + 4) > U then (math.min(S, ((1.6 + (((Q - 25) + 112.5) / 36)) - 0.1) - (G + (((Q + 4) - U) / Y)))) else S
          end
        end
      end
      N = if S < N then S else N
    end
    u[1].bbFleeCache[F] = N
    return N
  end
end, [19] = function(u, u, u, u, U)
  return function(U, Q, F, A, ...)
    local Y = u[1].genv.__claudeBotLog
    if not Y and (not u[2].enabled or not u[2][U]) then
      return
    end
    local T = tick()
    if u[3].logTimes[Q] and ((T - u[3].logTimes[Q]) < F) then
      return
    end
    u[3].logTimes[Q] = T
    if Y then
      pcall(Y, U, string.format(A, ...))
    end
    if not u[2].enabled or not u[2][U] then
      return
    end
  end
end, [13910] = function(u, u, u, u, U)
  return function(U, Q)
    if U:SkipDodge() then
      return
    end
    local F = Q.Parent and Q.Parent.Name
    local A = F and u[1].ChainCast[F]
    if not A then
      return
    end
    local Y = tick()
    local T = Q.Position
    local G, z = u[2].chainLast[F], math.max(Q.Size.X, Q.Size.Z) / 2
    u[2].chainLast[F] = {pos = T, at = Y, r = z}
    if not G or ((Y - G.at) > A.window) then
      return
    end
    Q = Vector3.new(T.X - G.pos.X, 0, T.Z - G.pos.Z)
    local H = Q.Magnitude
    if (H < A.minGap) or (H > A.maxGap) then
      return
    end
    local N = U:GetRoot()
    if not N then
      return
    end
    local S, e = N.Position, Q.Unit
    local D, m = Vector3.new(-e.Z, 0, e.X), Vector3.new(S.X - T.X, 0, S.Z - T.Z)
    if m.Magnitude > (A.range or 100) then
      return
    end
    T = m:Dot(e)
    if T < -H then
      u[3][4][u[3][7]]("dodge", "chainbehind", 2, "%s \224\184\162\224\184\180\224\184\135\224\185\128\224\184\155\224\185\135\224\184\153\224\185\129\224\184\150\224\184\167\224\185\129\224\184\149\224\185\136\224\185\132\224\184\165\224\185\136\224\184\173\224\184\173\224\184\129\224\184\136\224\184\178\224\184\129\224\185\128\224\184\163\224\184\178 \224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154", F)
      return
    end
    Q = (T / H) * A.window
    if Q > (A.ahead or 3) then
      u[3][4][u[3][7]]("dodge", "chainfar", 2, "%s \224\185\129\224\184\150\224\184\167\224\184\136\224\184\176\224\184\150\224\184\182\224\184\135\224\185\128\224\184\163\224\184\178\224\184\173\224\184\181\224\184\129 %.1f \224\184\167\224\184\180 \224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154", F, Q)
      return
    end
    local g, c = m:Dot(D), (G.r and (z - G.r)) or 0
    G = (z + (math.max(c, 0) * math.max(T / H, 0))) + A.clearGap
    if math.abs(g) >= G then
      u[3][4][u[3][7]]("dodge", "chainok", 1, "%s \224\184\162\224\184\180\224\184\135\224\185\128\224\184\155\224\185\135\224\184\153\224\185\129\224\184\150\224\184\167 \224\185\129\224\184\149\224\185\136\224\185\128\224\184\163\224\184\178\224\184\171\224\185\136\224\184\178\224\184\135\224\185\129\224\184\153\224\184\167 %.0f \224\185\129\224\184\165\224\185\137\224\184\167 \224\185\132\224\184\161\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\171\224\184\165\224\184\154", F, math.abs(g))
      return
    end
    c, H = -D
    if g < 0 then
      c, H = D, -D
    else
      H = D
    end
    u[2].chainSide = u[2].chainSide or {}
    D = u[2].chainSide[F]
    if (D and (Y < D.until_)) and (D.dir:Dot(H) < 0) then
      c, H = H, c
    end
    m, T, z = {{dir = H, need = (G - math.abs(g)) + 2}, {dir = c, need = (G + math.abs(g)) + 2}}
    for r, M in ipairs(m) do
      r = math.min(M.need, A.maxSide)
      if U:GetClearDistance(S, M.dir, r + 6, true) >= r then
        c = S + (M.dir * r)
        D = U:GetGroundY(c.X, c.Z, S.Y)
        c = Vector3.new(c.X, (D or S.Y) + (N.Size.Y / 2), c.Z)
        if (not U:IsBlocked(c) and (U:FutureSafe(c, r))) and (U:LeashOK(c)) then
          T, z = c, r
          break
        end
      end
    end
    if not T then
      T = U:OpenEscape(S, {prefer = H, avoid = -e, go = 14})
      z = (T and (T - S).Magnitude) or 0
      if not T then
        u[3][4][u[3][7]]("dodge", "chainwall", 1, "%s: \224\184\149\224\184\177\224\184\148\224\184\173\224\184\173\224\184\129\224\184\130\224\185\137\224\184\178\224\184\135\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\171\224\185\136\224\184\178\224\184\135\224\185\129\224\184\153\224\184\167 %.0f \224\184\149\224\185\137\224\184\173\224\184\135\224\184\173\224\184\173\224\184\129 %.0f) \224\185\129\224\184\165\224\184\176\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\185\132\224\184\171\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137", F, math.abs(g), (G - math.abs(g)) + 2)
        return
      end
    end
    u[4].projGoal = T
    u[4].projGoalUntil = Y + A.commit
    u[4].dodgeGoal = nil
    u[4].retreatGoal = nil
    u[2].chainSide[F] = {dir = (T - S).Unit, until_ = Y + (A.sideHold or 4)}
    U:ShowDodgePath(S, T, "dodge")
    u[5][4][u[5][7]]("dodge", "%s \224\184\162\224\184\180\224\184\135\224\185\128\224\184\155\224\185\135\224\184\153\224\185\129\224\184\150\224\184\167 | \224\184\150\224\184\182\224\184\135\224\185\128\224\184\163\224\184\178\224\185\131\224\184\153 %.1f \224\184\167\224\184\180 | \224\184\171\224\185\136\224\184\178\224\184\135\224\185\129\224\184\153\224\184\167 %.0f \226\134\146 \224\184\173\224\184\173\224\184\129\224\184\130\224\185\137\224\184\178\224\184\135 %.0f", F, Q, math.abs(g), z)
  end
end, BM = function(u, u, U)
  return u[4][u[7] + U]
end, [2071] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = u[1][4][u[1][7]](U, Q)
    if math.abs(F.Y - A.Y) > (U.ringY or 20) then
      return false
    end
    local Y = Vector3.new(F.X - A.X, 0, F.Z - A.Z)
    local T = Y.Magnitude
    F, A = u[2][4][u[2][7]](U, Q)
    if F > A then
      return false
    end
    if (T < F) or (T > A) then
      return false
    end
    A = u[3][4][u[3][7]](U, Q)
    if A then
      if T < 0.5 then
        return true
      end
      if math.cos(math.rad(U.ringHalf + (U.ringAngPad or 3))) > Y.Unit:Dot(A) then
        return false
      end
    end
    return true
  end
end, [5717] = function(u, u, u, u, U, U)
  return function(U, Q, F)
    local A = u[1].BonusBoss.orbDensity
    local Y = u[2].bb.orbs
    for T = #Y, 1, -1 do
      if not Y[T].Parent then
        table.remove(Y, T)
      end
    end
    if #Y < A.minOrbs then
      u[2].bb.orbSpot = nil
      return false
    end
    local T = tick()
    for G, G in ipairs(Y) do
      local z, H = G:GetAttribute("bbLP"), G:GetAttribute("bbLT")
      if (z and H) and ((T - H) > 0.05) then
        G:SetAttribute("bbVel", (G.Position - z) / (T - H))
      end
      G:SetAttribute("bbLP", G.Position)
      G:SetAttribute("bbLT", T)
    end
    local G = u[3][4][u[3][7]](Y, Q, A.radius)
    local z = u[2].bb.orbSpot
    if z and (T < z.until_) then
      if u[4][4][u[4][7]](U, Q, z.pos, 3, "OrbDensity") then
        u[5][4][u[5][7]]("bonus", "\224\184\154\224\184\173\224\184\165\224\185\128\224\184\162\224\184\173\224\184\176: \224\184\162\224\184\183\224\184\153\224\185\130\224\184\139\224\184\153\224\185\128\224\184\154\224\184\178\224\184\154\224\184\178\224\184\135 (%.2f)", G)
        return true
      end
      u[5][4][u[5][7]]("bonus", "\224\184\154\224\184\173\224\184\165\224\185\128\224\184\162\224\184\173\224\184\176: \224\184\162\224\185\137\224\184\178\224\184\162\224\185\132\224\184\155\224\185\130\224\184\139\224\184\153\224\185\128\224\184\154\224\184\178\224\184\154\224\184\178\224\184\135")
      return true
    end
    local H, N, S
    for e, D in ipairs(A.ringR) do
      for m = 1, A.dirs, 1 do
        local g = ((m / A.dirs) * 3.141592653589793) * 2
        e = u[6][4][u[6][7]](F + Vector3.new(math.cos(g) * D, 0, math.sin(g) * D))
        e = Vector3.new(e.X, Q.Y, e.Z)
        m = u[3][4][u[3][7]](Y, e, A.radius)
        z = u[7][4][u[7][7]](e - Q).Magnitude
        g = m + (z * 0.0004)
        if not H or (g < N) then
          H, N, S = e, g, z
        end
      end
    end
    if not H then
      return false
    end
    F = u[3][4][u[3][7]](Y, H, A.radius)
    if (G <= (F * A.trigger)) or (S < 6) then
      u[5][4][u[5][7]]("bonus", "\224\184\154\224\184\173\224\184\165\224\185\128\224\184\162\224\184\173\224\184\176: \224\184\149\224\184\163\224\184\135\224\184\153\224\184\181\224\185\137\224\185\128\224\184\154\224\184\178\224\184\154\224\184\178\224\184\135\224\184\158\224\184\173 (%.2f vs %.2f)", G, F)
      return false
    end
    Y = u[8][4][u[8][7]](U, H, Q.Y)
    if U:IsBlocked(Y) or not U:FutureSafe(Y, S) then
      return false
    end
    u[2].bb.orbSpot = {pos = Y, until_ = T + A.commit}
    u[5][4][u[5][7]]("bonus", "\224\184\154\224\184\173\224\184\165\224\185\128\224\184\162\224\184\173\224\184\176: \224\184\162\224\185\137\224\184\178\224\184\162 (%.2f \226\134\146 %.2f) %.0f studs", G, F, S)
    u[4][4][u[4][7]](U, Q, Y, 3, "OrbDensity")
    return true
  end
end, [10912] = function(u, u, u, u, U, U, U)
  return function(U, U)
    for Q, Q in pairs(u[1].Character:GetDescendants()) do
      if Q:IsA("BasePart") then
        if Q.CanCollide ~= not U then
          Q.CanCollide = not U
        end
      end
    end
  end
end, [98] = rawget, [592] = function(u, u, u, u)
  return function(U, Q, F)
    local A = U:GetRoot()
    if not A then
      return
    end
    local Y, T = U:GetTargetGroundPos(Q, true)
    if not Y then
      return
    end
    local G = tick()
    local z = A.Position
    u[1].faceTarget = Y
    u[1].currentTarget = Q
    local H = F or 30
    F = math.max(H, T.radius + u[2].minSurfaceGap)
    U.lastAttackDist = F
    if F > H then
      u[3][4][u[3][7]]("target", "bigmob", 5, "%s \224\184\149\224\184\177\224\184\167\224\185\131\224\184\171\224\184\141\224\185\136 (\224\184\163\224\184\177\224\184\168\224\184\161\224\184\181 %.0f) \224\184\130\224\184\162\224\184\178\224\184\162\224\184\163\224\184\176\224\184\162\224\184\176 %.0f -> %.0f", Q.Name, T.radius, H, F)
    end
    H = Vector3.new(Y.X - z.X, 0, Y.Z - z.Z)
    local N, S, e = H.Magnitude, math.abs(Y.Y - z.Y), U:SkipDodge(Q)
    if e then
      u[3][4][u[3][7]]("state", "ff", 3, "\224\184\161\224\184\181 ForceField \226\134\146 \224\184\155\224\184\180\224\184\148\224\184\129\224\184\178\224\184\163\224\184\171\224\184\165\224\184\154\224\184\138\224\184\177\224\185\136\224\184\167\224\184\132\224\184\163\224\184\178\224\184\167")
      u[1].dodgeGoal = nil
      u[1].retreatGoal = nil
      u[1].projGoal = nil
      u[1].holdUntil = 0
    end
    u[4].tgOwner = nil
    if u[5].Mid.enabled and not e then
      if Q.Name == "Midgardian Champion" then
        u[4].tgOwner = u[4].mid
      elseif (Q.Name == "Odin") and u[4].odz.dyn then
        u[4].tgOwner = u[4].odz
      elseif (Q.Name == "Odin Reincarnation") and u[4].bbz then
        u[4].tgOwner = u[4].bbz
      elseif (Q.Name == "Bob The Frost Giant") and u[4].bobz then
        u[4].tgOwner = u[4].bobz
      end
    end
    if U:BonusBossFight(Q, F, Y, e) then
      return
    end
    if (((Q.Name == "Bob The Frost Giant") and not e) and u[5].bobGuard) and (u[5].bobGuard(U, z)) then
      return
    end
    if U:BobFight(Q, F, Y, e) then
      return
    end
    T = not e
    if T and (U:HandleBigEscape(z)) then
      return
    end
    if T and (U:HandleHoming(z, Y)) then
      return
    end
    if ((((Q.Name == "Odin") and not e) and u[5].odinGuard) and u[4].odz.dyn) and (u[5].odinGuard(U, z)) then
      return
    end
    if ((((Q.Name == "Odin") and not e) and not u[4].odz.dyn) and u[5].bbOrbGuard) and (u[5].bbOrbGuard(U, z)) then
      return
    end
    if ((((Q.Name == "Odin") and not e) and not u[4].odz.dyn) and u[5].bbVolleyMove) and (u[5].bbVolleyMove(U, z)) then
      return
    end
    if ((((Q.Name == "Odin") and not e) and not u[4].odz.dyn) and u[5].odinGuard) and (u[5].odinGuard(U, z)) then
      return
    end
    if (((Q.Name == "Midgardian Champion") and not e) and u[5].midGuard) and (u[5].midGuard(U, z)) then
      return
    end
    if T and (U:HandleBeam(z)) then
      return
    end
    if T and (U:HandleIncoming(z)) then
      return
    end
    if (((Q.Name == "Odin") and not e) and not U:IsBlocked(z)) and not u[1].dodgeGoal then
      local D = Q:FindFirstChildOfClass("Humanoid")
      if (D and (D.MaxHealth > 0)) and ((D.Health / D.MaxHealth) <= 0.08) then
        local m = Vector3.new(1018, z.Y, -38)
        local g = Vector3.new(m.X - z.X, 0, m.Z - z.Z).Magnitude
        if (g > 6) and not U:IsBlocked(m) then
          U:SetDestination(m, g > 60)
          u[6][4][u[6][7]]("odinwait", "Odin \224\184\132\224\185\137\224\184\178\224\184\135 %.0f%% \226\134\146 \224\185\132\224\184\155\224\184\163\224\184\173\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135 3 \224\184\170\224\184\181 (%.0f studs)", (D.Health / D.MaxHealth) * 100, g)
        else
          U:StopWalking()
          u[6][4][u[6][7]]("odinwait", "Odin \224\184\132\224\185\137\224\184\178\224\184\135 %.0f%% \226\134\146 \224\184\163\224\184\173 Reincarnation \224\184\151\224\184\181\224\185\136\224\184\136\224\184\184\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135 3 \224\184\170\224\184\181", (D.Health / D.MaxHealth) * 100)
        end
        return
      end
    end
    local D = (T and u[1].dodgeGoal) or nil
    if D then
      local m = Vector3.new(D.X - z.X, 0, D.Z - z.Z).Magnitude
      if U:IsBlocked(D) then
        u[1].dodgeGoal = nil
        u[7][4][u[7][7]]("dodge", "\224\185\128\224\184\155\224\185\137\224\184\178\224\184\171\224\184\165\224\184\154\224\185\130\224\184\148\224\184\153 hitbox \224\184\151\224\184\177\224\184\154 \224\184\171\224\184\178\224\185\131\224\184\171\224\184\161\224\185\136")
      elseif (m > 12) and (U:PathHasHitbox(z, D)) then
        u[1].dodgeGoal = nil
        u[3][4][u[3][7]]("dodge", "dodgepathnew", 0.5, "\224\184\151\224\184\178\224\184\135\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\185\131\224\184\171\224\184\161\224\185\136\224\184\130\224\184\167\224\184\178\224\184\135 \224\184\171\224\184\178\224\185\131\224\184\171\224\184\161\224\185\136")
      elseif m <= u[2].arriveThreshold then
        u[1].dodgeGoal = nil
        u[1].holdUntil = G + u[2].postDodgeHold
        u[6][4][u[6][7]]("cooldown", "\224\184\150\224\184\182\224\184\135\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154\224\185\129\224\184\165\224\185\137\224\184\167")
        U:StopWalking()
        return
      else
        u[6][4][u[6][7]]("dodge", "\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 %.0f studs", m)
        if U:TrySnap(D) then
          u[1].dodgeGoal = nil
          u[1].holdUntil = G + u[2].postDodgeHold
          u[1].circleGoal = nil
          u[1].circleResume = G + u[2].circleHold
          return
        end
        U:SetDestination(D, false)
        return
      end
    end
    if T and ((u[4].tgOwner and (u[4].tgOwner.static(z))) or (not u[4].tgOwner and (U:IsBlocked(z)))) then
      if (G - u[1].lastDodge) < u[2].searchInterval then
        return
      end
      u[1].lastDodge = G
      D = U:FindDodgeSpot(z, Y, nil, false, U:IsStrafeDodge(Q))
      if D then
        u[1].holdUntil = 0
        u[6][4][u[6][7]]("dodge", "\224\184\171\224\184\165\224\184\154\224\185\132\224\184\155 %.0f studs", (D - z).Magnitude)
        U:ShowGoalMarker(D)
        U:ShowDodgePath(z, D, "dodge")
        u[1].retreatGoal = nil
        if U:TrySnap(D) then
          u[1].dodgeGoal = nil
          u[1].holdUntil = G + u[2].postDodgeHold
          return
        end
        u[1].dodgeGoal = D
        U:SetDestination(D, false)
        return
      end
      local m = Vector3.new(z.X - Y.X, 0, z.Z - Y.Z)
      local g = U:OpenEscape(z, {prefer = ((m.Magnitude > 0.1) and m.Unit) or nil, go = 16})
      if g then
        u[6][4][u[6][7]]("dodge", "\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\184\136\224\184\184\224\184\148\224\184\171\224\184\165\224\184\154\224\184\148\224\184\181\224\185\134 \224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\184\151\224\184\181\224\185\136\224\185\130\224\184\165\224\185\136\224\184\135 %.0f studs", (g - z).Magnitude)
        U:ShowDodgePath(z, g, "dodge")
        u[1].dodgeGoal = g
        U:SetDestination(g, false)
        return
      end
      m, g = 0
      for c = 1, u[2].unstickDirs, 1 do
        local r = ((c / u[2].unstickDirs) * 3.141592653589793) * 2
        c = Vector3.new(math.cos(r), 0, math.sin(r))
        r = U:GetClearDistance(z, c, u[2].dodgeMaxRange, true)
        if r > m then
          m, g = r, c
        end
      end
      if g and (m > 8) then
        local c = z + (g * math.min(m - 4, u[2].dodgeMaxRange))
        local m = U:GetGroundY(c.X, c.Z, z.Y)
        c = Vector3.new(c.X, (m or z.Y) + (A.Size.Y / 2), c.Z)
        u[6][4][u[6][7]]("trapped", "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153\224\184\170\224\184\129\224\184\180\224\184\165\224\185\129\224\184\149\224\185\136\224\184\171\224\184\178\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\129\224\184\167\224\185\136\224\184\178\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 \226\134\146 \224\184\148\224\184\180\224\185\137\224\184\153\224\185\132\224\184\155\224\184\151\224\184\180\224\184\168\224\185\130\224\184\165\224\185\136\224\184\135\224\184\170\224\184\184\224\184\148")
        u[1].dodgeGoal = c
        U:SetDestination(c, false)
        return
      end
      u[6][4][u[6][7]]("trapped", "\224\184\173\224\184\162\224\184\185\224\185\136\224\185\131\224\184\153\224\184\129\224\184\165\224\185\136\224\184\173\224\184\135\224\185\129\224\184\149\224\185\136\224\184\171\224\184\153\224\184\181\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\149\224\184\177\224\184\153\224\184\151\224\184\184\224\184\129\224\184\151\224\184\180\224\184\168)")
      U:StopWalking()
      return
    end
    U:HideGoalMarker()
    if T and (G < u[1].holdUntil) then
      u[6][4][u[6][7]]("cooldown", "\224\184\163\224\184\173\224\184\173\224\184\181\224\184\129 %.1f \224\184\167\224\184\180", u[1].holdUntil - G)
      U:StopWalking()
      return
    end
    if (((G < u[1].climbUntil) and u[8].usingRoute) and u[8].waypoints) and (u[8].index <= #u[8].waypoints) then
      u[6][4][u[6][7]]("climbfloor", "\224\185\128\224\184\148\224\184\180\224\184\153 route \224\184\149\224\185\136\224\184\173 (%d/%d) \224\184\170\224\184\185\224\184\135\224\184\149\224\185\136\224\184\178\224\184\135 %.0f", u[8].index, #u[8].waypoints, S)
      return
    end
    if (S > u[2].sameFloorTolerance) and (U:NeedClimb(Q)) then
      u[1].retreatGoal = nil
      u[1].climbUntil = G + u[2].climbCommit
      u[6][4][u[6][7]]("climbfloor", "\224\184\161\224\184\173\224\184\153\224\184\132\224\184\153\224\184\165\224\184\176\224\184\138\224\184\177\224\185\137\224\184\153 (\224\184\170\224\184\185\224\184\135\224\184\149\224\185\136\224\184\178\224\184\135 %.0f \224\185\129\224\184\153\224\184\167\224\184\163\224\184\178\224\184\154 %.0f) \224\185\131\224\184\138\224\185\137 route \224\184\130\224\184\182\224\185\137\224\184\153\224\185\132\224\184\155", S, N)
      U:SetDestination(Y, true)
      return
    end
    u[1].climbUntil = 0
    D = u[5].MinRange[Q.Name]
    if (D and (N < D)) or (not D and (N < (F - u[2].rangeTolerance))) then
      u[6][4][u[6][7]]("retreat", "\224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f (\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163 %.0f)", N, F)
      local m, g = math.min(F + u[2].retreatBuffer, (F + u[2].rangeTolerance) - 1), u[1].retreatGoal
      if g and not U:IsBlocked(g) then
        local c, r = Vector3.new(g.X - z.X, 0, g.Z - z.Z).Magnitude, Vector3.new(g.X - Y.X, 0, g.Z - Y.Z).Magnitude
        if (c > u[2].arriveThreshold) and (r >= F) then
          if U:TrySnap(g) then
            u[1].retreatGoal = nil
            return
          end
          U:SetDestination(g, false)
          return
        end
      end
      u[1].retreatGoal = nil
      if u[8].dest and ((G - u[1].lastRetreat) < u[2].searchInterval) then
        return
      end
      u[1].lastRetreat = G
      T = if not (if u[2].retreatArc then (U:FindRetreatArc(z, Y, m, true)) else nil) then (U:FindDodgeSpot(z, Y, m, true, U:IsStrafeDodge(Q))) else if u[2].retreatArc then (U:FindRetreatArc(z, Y, m, true)) else nil
      if T then
        U:ShowDodgePath(z, T, "retreat")
        if U:TrySnap(T) then
          u[1].retreatGoal = nil
          return
        end
        u[1].retreatGoal = T
        U:SetDestination(T, false)
        return
      end
      u[3][4][u[3][7]]("state", "noretreat", 2, "\224\184\150\224\184\173\224\184\162\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137 (\224\184\149\224\184\180\224\184\148\224\184\129\224\184\179\224\185\129\224\184\158\224\184\135\224\184\171\224\184\165\224\184\177\224\184\135) \224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f", N)
      U:StopWalking()
      return
    end
    u[1].retreatGoal = nil
    G = u[9]:GetSafeSpots()
    if G then
      if u[10]:DistanceFromCharacter(G) <= 5 then
        return U:StopWalking()
      end
      return U:SetDestination(G, false)
    end
    T = u[9]:HasPickupCannonball()
    if T then
      if u[10]:DistanceFromCharacter(T) <= 5 then
        return U:StopWalking()
      end
      return U:SetDestination(T, false)
    end
    T = u[9]:GetBossSupplyModels()
    if T then
      if u[10]:DistanceFromCharacter(T) <= 3.5 then
        return U:StopWalking()
      end
      return U:SetDestination(T, false)
    end
    if u[9]:HasAggro(Q) then
      if u[9]:AllSkillsDown() then
        U:StopWalking()
        return
      end
    end
    if N > (F + u[2].rangeTolerance) then
      T = ((N > 0.1) and H.Unit) or -A.CFrame.LookVector
      T = Vector3.new(T.X, 0, T.Z)
      G, D = Y - ((if T.Magnitude < 0.1 then (Vector3.new(0, 0, 1)) else T).Unit * F), (U:NeedClimb(Q) and Y.Y) or z.Y
      local T = U:GetGroundY(G.X, G.Z, D)
      G = Vector3.new(G.X, (T or D) + (A.Size.Y / 2), G.Z)
      T = (e and math.huge) or (U:GetSafeAdvance(z, G))
      if T < u[2].minAdvance then
        local A, H = U:FindAttackSpot(z, Y, F)
        if A then
          u[6][4][u[6][7]]("approach", "\224\184\151\224\184\178\224\184\135\224\184\149\224\184\163\224\184\135\224\184\161\224\184\181\224\184\170\224\184\129\224\184\180\224\184\165\224\184\130\224\184\167\224\184\178\224\184\135 \226\134\146 \224\184\173\224\185\137\224\184\173\224\184\161\224\185\132\224\184\155\224\184\162\224\184\183\224\184\153\224\184\173\224\184\181\224\184\129\224\184\161\224\184\184\224\184\161 (%.0f studs)", H)
          U:SetDestination(A, H > u[2].routeMinDistance)
          return
        end
        u[6][4][u[6][7]]("cooldown", "\224\184\170\224\184\129\224\184\180\224\184\165\224\184\130\224\184\167\224\184\178\224\184\135\224\185\131\224\184\129\224\184\165\224\185\137\224\185\128\224\184\129\224\184\180\224\184\153 (\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\148\224\185\137\224\185\129\224\184\132\224\185\136 %.0f) \224\184\173\224\185\137\224\184\173\224\184\161\224\184\129\224\185\135\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137", T)
        U:StopWalking()
        return
      end
      T = U:HasWallBetween(z, G)
      local A = ((N > u[2].routeMinDistance) or (S > u[2].routeElevTrigger)) or T
      u[6][4][u[6][7]]("approach", "\224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f \224\184\170\224\184\185\224\184\135\224\184\149\224\185\136\224\184\178\224\184\135 %.0f | %s", N, S, (A and "\224\185\131\224\184\138\224\185\137 route") or "\224\185\128\224\184\148\224\184\180\224\184\153\224\184\149\224\184\163\224\184\135")
      U:SetDestination(G, A)
      return
    end
    if U:IsCircleWalk(Q) and (U:HandleCircleWalk(z, Y, F)) then
      return
    end
    u[6][4][u[6][7]]("hold", "\224\184\171\224\185\136\224\184\178\224\184\135\224\184\161\224\184\173\224\184\153 %.0f", N)
    U:StopWalking()
  end
end, [13348] = function(u, u, u, u, U, U)
  return function(U)
    u[1].hbHoloLive = not u[1].hbHoloLive
    print("hitbox hologram:", (u[1].hbHoloLive and "ON") or "OFF")
    if not u[1].hbHoloLive then
      for U, Q in pairs(u[1].hbHolo) do
        if Q.Parent then
          Q:Destroy()
        end
        u[1].hbHolo[U] = nil
      end
      return
    end
    task.spawn(function()
      while u[1].hbHoloLive do
        pcall(function()
          u[2]:DrawHitboxHolo()
        end)
        task.wait(0.1)
      end
    end)
  end
end, mj = function(u, U, Q, F, A, Y, T, G)
  if Y <= 127 then
    if Y <= 126 then
      local z, H, N = U[2], U[4], U[3]
      local S, e = z + H, H <= 0
      local z, H, D = not e, S >= N, S <= N
      N = (e and H) or (z and D)
      U[2] = S
      if N then
        return 109, F, G, S
      else
        return 55, F, G, A
      end
    else
      return 181, 1 + F, G, A
    end
  elseif Y <= 128 then
    return (not (A > 9) and 142) or 43, F, G, A
  else
    local U, Y, z, H = u[39](Q, 3 + F), 128 * (G - 128), 2097152 * (T - 128), A - 128
    local u = ((16384 * (U % 128)) + (((U - (U % 128)) * 2097152) + z)) + (H + Y)
    return 181, 4 + F, u, A
  end
end, [9169] = function(u, u, u, u, U)
  return function(U, U)
    for Q = #u[1], 1, -1 do
      if u[1][Q].part == U then
        if u[1][Q].conn then
          u[1][Q].conn:Disconnect()
        end
        table.remove(u[1], Q)
        return
      end
    end
  end
end, dq = function(u)
  return true, 2, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
end, [10753] = function(u, u, u, u, U)
  return function(U)
    local Q = tick()
    local F = u[1][4][u[1][7]](U.Position)
    local A, Y = u[2].bb.spiralChains
    for T, T in ipairs(A) do
      if (Q - T.t) < 0.2 then
        if (F - (T.pred1 or T.pts[#T.pts])).Magnitude < ((T.pred1 and 5) or 12) then
          Y = T
          break
        end
      end
    end
    if not Y then
      Y = {pts = {}, parts = {}, t = Q}
      table.insert(A, Y)
    end
    table.insert(Y.pts, F)
    if Y.lastT then
      Y.dt = math.clamp(((Y.dt or 0.065) * 0.7) + ((Q - Y.lastT) * 0.3), 0.03, 0.12)
    end
    Y.lastT = Q
    Y.t = Q
    Y.y = U.Position.Y
    F = #Y.pts
    if F < 2 then
      return
    end
    Q, U = Y.pts[F - 1], Y.pts[F]
    A = U - Q
    local T, G, z = A.Magnitude, math.atan2(A.Z, A.X), 0
    if F >= 3 then
      A = Y.pts[F - 1] - Y.pts[F - 2]
      z = G - math.atan2(A.Z, A.X)
      z = if z > 3.141592653589793 then z - 6.283185307179586 else if z < -3.141592653589793 then z + 6.283185307179586 else z
    end
    A, F = G, U
    for U = 1, 10, 1 do
      A += z
      F += Vector3.new(math.cos(A), 0, math.sin(A)) * T
      if U == 1 then
        Y.pred1 = F
      end
      Y.pred = Y.pred or {}
      Y.pred[U] = Vector3.new(F.X, 0, F.Z)
      Q = Y.parts[U]
      if not Q then
        Q = Instance.new("Part")
        Q.Name = "claudeSpiralPredict"
        Q.Shape = Enum.PartType.Ball
        Q.Size = Vector3.new(24, 24, 24)
        Q.Anchored = true
        Q.CanCollide = false
        Q.CanTouch = false
        Q.CanQuery = false
        Q.Transparency = 1
        Q.Parent = workspace.CurrentCamera
        Y.parts[U] = Q
        u[3]:RegisterHitbox(Q, {lifetime = 30, owner = u[4].BonusBoss.boss})
      end
      Q.Position = Vector3.new(F.X, Y.y + 3, F.Z)
    end
  end
end, [10487] = function(u, u, u, u, U, U, U)
  return function(U, U, Q, F)
    local F = Instance.new("Part")
    F.Size = Q
    F.CFrame = U.CFrame
    F.Anchored = false
    F.CanCollide = true
    F.CanQuery = false
    F.CanTouch = false
    F.Massless = true
    F.Transparency = 1
    Q = Instance.new("WeldConstraint")
    Q.Part0 = U
    Q.Part1 = F
    Q.Parent = F
    F.Parent = U
    local Q
    Q = U.AncestryChanged:Connect(function(U, U)
      if U then
        return
      end
      if F and (F:IsDescendantOf(workspace)) then
        F:Destroy()
        u[1]:RemoveHitbox(F)
        Q:Disconnect()
        Q = nil
      end
    end)
    return F
  end
end, XM = "__index", gM = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e, D)
  if D <= 26 then
    if D <= 25 then
      return (not (43 ~= Y) and 84) or 220, G, A, Q, Y, T, e, U, H, F, S
    else
      H(T, e, (u[116](A, F(z, S), U)))
      local m, g = 1, ((N * U) + Y) % 256
      u[91](T, m, (u[116](A, u[39](z, m + G), g)))
      return 0, u[90](T, Q), A, Q, Y, T, e, U, H, F, S
    end
  elseif D <= 27 then
    local z, D, m, g, c, r = A + 1, 61, 233, (G + 252) % 256, u[16](16), 0
    local M = ((g * D) + m) % 256
    u[91](c, r, (u[116](252, u[39](N, r + z), M)))
    r = 1
    return 73, z, 252, D, m, c, r, ((D * M) + m) % 256, u[91], u[39], z + r
  else
    local u = (128 * (A - 128)) + Q
    return 206, 2 + G, u, Q, Y, T, e, U, H, F, S
  end
end, cq = function(u, U, Q, F, A, Y, T, G, z, H, N, S, e)
  if S <= 284 then
    local D, m, g, c = u[39](A, N + 3), (Y - 128) * 128, (H - 128) * 2097152, T - 128
    local A = 16384 * (D % 128)
    local T, r, M = ((((2097152 * (D - (D % 128))) + c) + g) + A) + m, N + 4, U[1]
    return 38, U[2], M, G, z, Q, r, e, T
  elseif S <= 285 then
    local A = e - 128
    local T, S, D = (16384 * (Y - 128)) + (A + (128 * H)), N + 3, U[1]
    return 5, U[2], D, G, z, Q, S, T, Y
  else
    U[1] = U[2][4]
    local Q, A = U[1][F], U[2][7]
    local F = 1 + Q
    Q = u[39](A, F)
    local u, T = ((Q < 128) and 232) or 289, U[1]
    return u, U[2], T, A, F, Q, N, e, Y
  end
end, tq = function(u, U, Q, F, A, Y, T, G)
  if Q <= 176 then
    local z, H = U - 128, (G - 128) * 16384
    local N, S, e = (A * 128) + (H + z), 3 + T, Y[1]
    return 83, Y[2], e, S, N
  elseif Q <= 177 then
    local Q, z, H, N = u[39](F, 3 + T), 128 * (U - 128), 2097152 * (G - 128), A - 128
    local u = 16384 * (Q % 128)
    local F, S, e = (z + (H + (2097152 * (Q - (Q % 128))))) + (N + u), T + 4, Y[1]
    return 47, Y[2], e, S, F
  else
    local u = U - 128
    local U, Q, F = (16384 * (G - 128)) + (u + (128 * A)), 3 + T, Y[1]
    return 262, Y[2], F, Q, U
  end
end, [15624] = function(u, u, u, u, U, U, U)
  return function(U, Q, F)
    local A = tick()
    for Y, Y in ipairs(u[1]) do
      local T = Y.part
      if ((T and T.Parent) and not u[2][4][u[2][7]](Y, A)) and (Y.expireAt > (A + Q)) then
        local G = Y.vel
        if G and (G.Magnitude > 1) then
          local z, H, N = u[3][4][u[3][7]](Y, T), ipairs, {Q, (Q + F) / 2, F}
          for Q, Q in H(N) do
            if ((A + Q) < Y.expireAt) and (u[4][4][u[4][7]](Y, T.CFrame + (G * Q), z, U)) then
              return true
            end
          end
        elseif Y.ring then
          if u[5][4][u[5][7]](Y, T, U) then
            return true
          end
        elseif u[4][4][u[4][7]](Y, T.CFrame, u[3][4][u[3][7]](Y, T), U) then
          return true
        end
      end
    end
    return false
  end
end, [4291] = function(u, u, u, u)
  return function(U, Q, F, A)
    local Y = U.CFrame.LookVector
    local T = Vector3.new(Y.X, 0, Y.Z)
    if T.Magnitude < 0.1 then
      return
    end
    T = T.Unit
    local G = tick()
    local z = U.Size.Z
    Y = u[1][4][u[1][7]](U.Position) - (T * (z / 2))
    local H = {c = Y, u = T, len = z, tA = G + Q, tB = G + F, half = A}
    u[2].odz.beams[#u[2].odz.beams + 1] = H
    if u[2].bbz then
      u[2].bbz.beams[#u[2].bbz.beams + 1] = H
    end
    U = u[2].odFan
    if not U or ((G - U.last) > 0.8) then
      H = math.atan2(T.Z, T.X)
      u[2].odFan = {t0 = G, last = G}
      for T = 1, 11, 1 do
        local N, S = G + (0.513 * T), {1, -1}
        for e, D in ipairs(S) do
          e = H + (D * math.rad(12.5 * T))
          D = {c = Y, u = Vector3.new(math.cos(e), 0, math.sin(e)), len = z, tA = (N + Q) - 0.1, tB = (N + F) + 0.1, half = A, pred = true}
          u[2].odz.beams[#u[2].odz.beams + 1] = D
          if u[2].bbz then
            u[2].bbz.beams[#u[2].bbz.beams + 1] = D
          end
        end
      end
    else
      U.last = G
    end
  end
end, [6211] = function(u, u, u, u, U)
  return function(U, U, Q)
    local F = Vector3.new(Q.X - U.X, 0, Q.Z - U.Z)
    if F.Magnitude < 0.1 then
      return false
    end
    local A = F.Unit
    F = Vector3.new(-A.Z, 0, A.X) * u[1].agentRadius
    for Y, T in ipairs(u[1].rayHeights) do
      A, Y = ipairs, {Vector3.zero, F, -F}
      for F, G in A(Y) do
        local A = (U + G) + Vector3.new(0, T, 0)
        F = u[2][4][u[2][7]](A, ((Q + G) + Vector3.new(0, T, 0)) - A)
        if F then
          u[3][4][u[3][7]]("wall", "wall", 1, "\224\185\128\224\184\136\224\184\173\224\184\129\224\184\179\224\185\129\224\184\158\224\184\135: %s", F.Instance:GetFullName())
          return true
        end
      end
    end
    return false
  end
end, x = function(u, U, Q, F, A, Y, T, G, z)
  if F <= 89 then
    local H = G - 128
    local N, S, e = (((z - 128) * 16384) + (Q * 128)) + H, 3 + A, T[1]
    return 6, T[2], e, S, U, N
  elseif F <= 90 then
    local Q = u[39](Y, A + 1)
    local F, H = (not (Q < 128) and 48) or 217, T[1]
    return F, T[2], H, A, U, Q
  else
    local Q, F, H, N = u[39](Y, 3 + A), (U - 128) * 128, 2097152 * (G - 128), z - 128
    local u = (Q % 128) * 16384
    local U, Y, z = H + (((Q - (Q % 128)) * 2097152) + (F + (N + u))), A + 4, T[1]
    return 257, T[2], z, Y, U, G
  end
end, [2796] = function(u, u, u, u, U, U, U)
  return function(U, U, Q)
    if not u[1].beamAvoid then
      return true
    end
    Q = Q or u[1].beamSafeMargin
    for F, A in pairs(u[2].beamTrack) do
      if (F.Parent and A.dir) and A.lenDir then
        local F = U - A.center
        if math.abs(F:Dot(A.lenDir)) <= (A.halfLen + Q) then
          local U = F:Dot(A.dir)
          if U > -(A.halfW + Q) then
            local F = u[3][4][u[3][7]](A)
            if not (F and (U > ((F + A.halfW) + Q))) then
              return false
            end
          end
        end
      end
    end
    return true
  end
end, [60] = bit32.lrotate, [9365] = function(u, u, u, u, U, U, U)
  return function(U, Q, F, A)
    F, A = F or 3, A or 0
    local Y = U:GetRoot()
    if not Y then
      return true
    end
    local T, G = Y.Position, tick()
    if u[1].wpState.index == 0 then
      local z, H = math.huge, 1
      for N, S in ipairs(Q) do
        local e = Vector3.new(S[1] - T.X, 0, S[3] - T.Z).Magnitude
        if e < z then
          z, H = e, N
        end
      end
      u[1].wpState.index = H
      u[1].wpState.lastPos = T
      u[1].wpState.lastAt = G
      u[2][4][u[2][7]]("route", "\224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\185\128\224\184\148\224\184\180\224\184\153 Waypoints \224\184\136\224\184\178\224\184\129\224\184\136\224\184\184\224\184\148\224\184\151\224\184\181\224\185\136 %d (\224\184\171\224\185\136\224\184\178\224\184\135 %.0f)", H, z)
    end
    if u[1].wpState.index > #Q then
      return false
    end
    local z = Q[u[1].wpState.index]
    local H = Vector3.new(z[1], z[2], z[3])
    z = Vector3.new(H.X - T.X, 0, H.Z - T.Z).Magnitude
    if ((A > 0) and (u[1].wpState.index == #Q)) and (z <= A) then
      Y.CFrame = CFrame.new(H) * Y.CFrame.Rotation
      Y.AssemblyLinearVelocity = Vector3.zero
      u[1].wpState.index = #Q + 1
      U:StopWalking()
      u[2][4][u[2][7]]("route", "\224\185\131\224\184\129\224\184\165\224\185\137\224\184\136\224\184\184\224\184\148\224\184\170\224\184\184\224\184\148\224\184\151\224\185\137\224\184\178\224\184\162 %.0f studs \226\134\146 \224\184\167\224\184\178\224\184\163\224\185\140\224\184\155\224\184\155\224\184\180\224\184\148\224\184\151\224\185\137\224\184\178\224\184\162", z)
      return false
    end
    if z <= F then
      u[1].wpState.index = u[1].wpState.index + 1
      u[1].wpState.lastPos = T
      u[1].wpState.lastAt = G
      if u[1].wpState.index > #Q then
        U:StopWalking()
        u[2][4][u[2][7]]("route", "\224\185\128\224\184\148\224\184\180\224\184\153 Waypoints \224\184\132\224\184\163\224\184\154\224\185\129\224\184\165\224\185\137\224\184\167")
        return false
      end
      return true
    end
    if u[1].wpState.lastPos then
      if (T - u[1].wpState.lastPos).Magnitude > 3 then
        u[1].wpState.lastPos, u[1].wpState.lastAt = T, G
      elseif (G - u[1].wpState.lastAt) > 3 then
        u[1].wpState.lastPos, u[1].wpState.lastAt = T, G
        if (A > 0) and (u[1].wpState.index == #Q) then
          Y.CFrame = CFrame.new(H) * Y.CFrame.Rotation
          Y.AssemblyLinearVelocity = Vector3.zero
          u[1].wpState.index = #Q + 1
          U:StopWalking()
          u[2][4][u[2][7]]("route", "\224\184\149\224\184\180\224\184\148\224\184\151\224\184\181\224\185\136\224\184\136\224\184\184\224\184\148\224\184\170\224\184\184\224\184\148\224\184\151\224\185\137\224\184\178\224\184\162 \226\134\146 \224\184\167\224\184\178\224\184\163\224\185\140\224\184\155\224\185\132\224\184\155\224\185\128\224\184\165\224\184\162")
          return false
        end
        u[1].wpState.index = u[1].wpState.index + 1
        u[2][4][u[2][7]]("route", "\224\184\149\224\184\180\224\184\148\224\184\151\224\184\181\224\185\136\224\184\136\224\184\184\224\184\148 %d \226\134\146 \224\184\130\224\185\137\224\184\178\224\184\161\224\185\132\224\184\155\224\184\136\224\184\184\224\184\148\224\184\150\224\184\177\224\184\148\224\185\132\224\184\155", u[1].wpState.index - 1)
        return u[1].wpState.index <= #Q
      end
    end
    U:SetDestination(H, false)
    return true
  end
end, [127] = function(u, u, u, u, U, U)
  return function(U)
    if U:JustSpawned() then
      return
    end
    if not U:IsFacingTarget() then
      return
    end
    local Q = U:GetChar()
    if not Q then
      return
    end
    U = Q:FindFirstChild("busyCasting")
    if U and U.Value then
      return
    end
    local U, F, A = next, Q:GetChildren()
    for Q, Y in U, F, A do
      if not Y:IsA("Accessory") then
        continue
      end
      if not Y:FindFirstChild("Weapon") then
        continue
      end
      Q = Y:FindFirstChildOfClass("RemoteEvent")
      if not Q then
        continue
      end
      Q:FireServer()
      u[1]:FireServer()
    end
  end
end, z = function(u, U, Q, F, A, Y, T, G)
  if Q <= 27 then
    local z = u[39](U, 1 + Y)
    local H, N = (not (z >= 128) and 188) or 280, F[1]
    return H, F[2], N, G, z, T
  elseif Q <= 28 then
    local Q = u[39](U, Y)
    local z, H = (not (Q >= 128) and 301) or 66, F[1]
    return z, F[2], H, 9, Q, T
  else
    local Q = u[39](U, 2 + Y)
    local u, U = ((Q < 128) and 145) or 26, F[1]
    return u, F[2], U, G, A, Q
  end
end, [2491] = function(u, u, u, u, U, U, U)
  return function(U)
    return u[1].tgStaticBlocked(U, u[1].bobIgnore, u[1].bobIgnoreP)
  end
end, [3] = error, [15369] = function(u, u, u, u, U, U)
  return function()
    u[1]:ResetState()
    u[1]:ClearHitboxes()
    u[1]:ClearBlacklist()
    u[1]:LoadRouteForDungeon()
  end
end, [10391] = function(u, u, u, u)
  return function(U)
    return u[1].tgStaticBlocked(U, u[1].midIgnore, u[1].midIgnoreP)
  end
end, _j = function(u, U, Q, F, A, Y, T)
  if T <= 224 then
    return 1
  elseif T <= 225 then
    local T, G, z = Q[3], Q[4], Q[1]
    local H, N = T + G, G <= 0
    local T, G, S = not N, H >= z, H <= z
    z = (N and G) or (T and S)
    Q[3] = H
    if z then
      return 2, 92, F, H
    else
      return 2, 14, F, A
    end
  else
    local Q = u[39](Y, 1 + U)
    return 2, (not (Q < 128) and 179) or 153, Q, A
  end
end, wq = "?", bq = function(u, U, Q, F, A)
  if A <= 174 then
    local A = u[39](Q, U + 1)
    local Y, T = (not (A < 128) and 314) or 151, F[1]
    return Y, F[2], T, A
  else
    local A = u[39](Q, 1 + U)
    local u, U = ((128 > A) and 146) or 193, F[1]
    return u, F[2], U, A
  end
end, [6815] = function(u, u, u, u, U)
  return function(U, U)
    if not u[1].incomingCheck then
      return nil
    end
    local Q, F = math.huge, tick()
    local A = nil
    local Y = nil
    for T, G in ipairs(u[2]) do
      local z, H = G.part, (G.vel and G.vel.Magnitude) or 0
      if G.isClaude == nil then
        G.isClaude = z.Name:sub(1, 6) == "claude"
      end
      H = if G.isClaude then 0 else H
      if (H >= u[1].incomingMinSpeed) and not u[3][4][u[3][7]](G, F) then
        T = G.vel.Unit
        local F = (U - z.Position):Dot(T) / H
        if (F >= 0) and (F <= u[1].incomingLook) then
          local H, N = ((z.Position + (G.vel * F)) - U).Magnitude, G.size or z.Size
          if (H <= (((math.max(N.X, N.Z) / 2) + (G.pad or 0)) + u[1].incomingPad)) and (F < Q) then
            Q, A, Y = F, G, T
          end
        end
      end
    end
    return A, Q, Y
  end
end, [7170] = function(u)
  return function(u, U)
    local Q, F = u:GetRoot(), U and (select(1, u:GetTargetGroundPos(U, false)))
    if not Q or not F then
      return math.huge
    end
    return Vector3.new(F.X - Q.Position.X, 0, F.Z - Q.Position.Z).Magnitude
  end
end, G = function(u, u)
  u[1] = nil
  return true, 286, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
end, [16005] = function(u, u, u, u, U, U)
  return function(U, Q)
    if not u[1].beamAvoid then
      return false
    end
    local F = tick()
    if u[2].projGoal and (F < u[2].projGoalUntil) then
      if (u[2].projGoalKind == "beam") and (U:BeamSafe(Q)) then
        u[2].projGoal = nil
        u[2].projGoalKind = nil
        return false
      end
      if Vector3.new(u[2].projGoal.X - Q.X, 0, u[2].projGoal.Z - Q.Z).Magnitude > u[1].arriveThreshold then
        U:SetDestination(u[2].projGoal, false)
        return true
      end
      u[2].projGoal = nil
      u[2].projGoalKind = nil
    end
    local A, Y = U:BeamIncoming(Q)
    if not A or not A.lenDir then
      return false
    end
    local T = U:GetRoot()
    if not T then
      return false
    end
    local G, z = T.Size.Y / 2, Q - A.center
    local H, N = z:Dot(A.lenDir), A.halfLen + u[1].beamSafeMargin
    local S, e, e, D = {{dir = A.lenDir, need = N - H, name = "\224\184\155\224\184\165\224\184\178\224\184\162+"}, {dir = -A.lenDir, need = N + H, name = "\224\184\155\224\184\165\224\184\178\224\184\162-"}}, U:GetActiveOrb()
    H = e and (U:GetCrystal(D))
    if H then
      N = H.Position
      for m, g in ipairs(S) do
        m = Q + (g.dir * math.max(g.need, 0))
        g.score = g.need + (0.7 * Vector3.new(N.X - m.X, 0, N.Z - m.Z).Magnitude)
      end
      table.sort(S, function(m, g)
        return m.score < g.score
      end)
    else
      table.sort(S, function(m, g)
        return m.need < g.need
      end)
    end
    e, N = nil
    for m, g in ipairs(S) do
      if g.need > 0 then
        if U:GetClearDistance(Q, g.dir, g.need + 6, true) >= g.need then
          D = Q + (g.dir * g.need)
          m = U:GetGroundY(D.X, D.Z, Q.Y)
          D = Vector3.new(D.X, (m or Q.Y) + G, D.Z)
          if (not U:IsBlocked(D) and (U:FutureSafe(D, g.need))) and (U:LeashOK(D)) then
            e, N = D, g
            break
          end
        end
      end
    end
    if not e then
      S = u[3][4][u[3][7]](A)
      if S and A.dir then
        H = (S - (z:Dot(A.dir) - A.halfW)) + u[1].beamSafeMargin
        if (H > 0) and (H <= 60) then
          local S, m = U:GetClearDistance(Q, A.dir, H + 4, true), Q + (A.dir * H)
          if ((S >= H) and not U:IsBlocked(m)) and (U:LeashOK(m)) then
            D = U:GetGroundY(m.X, m.Z, Q.Y)
            e, N = (Vector3.new(m.X, (D or Q.Y) + G, m.Z)), {name = "\224\184\150\224\184\173\224\184\162\224\184\158\224\185\137\224\184\153\224\184\136\224\184\184\224\184\148\224\184\151\224\184\181\224\185\136\224\184\161\224\184\177\224\184\153\224\184\171\224\184\162\224\184\184\224\184\148", need = H}
          end
        end
      end
      if not e then
        e = U:OpenEscape(Q, {prefer = A.dir, go = 16})
        N = if e then {name = "\224\184\151\224\184\178\224\184\135\224\184\151\224\184\181\224\185\136\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\148\224\185\137", need = (e - Q).Magnitude} else N
      end
      if not e then
        u[4][4][u[4][7]]("dodge", "beamnoexit", 1, "beam \224\184\150\224\184\182\224\184\135\224\185\131\224\184\153 %.1f \224\184\167\224\184\180 \224\185\129\224\184\149\224\185\136\224\185\128\224\184\148\224\184\180\224\184\153\224\185\132\224\184\155\224\185\132\224\184\171\224\184\153\224\185\132\224\184\161\224\185\136\224\185\132\224\184\148\224\185\137\224\185\128\224\184\165\224\184\162", Y)
        return false
      end
    end
    H = T.Parent and (T.Parent:FindFirstChildOfClass("Humanoid"))
    G = math.max((H and H.WalkSpeed) or 16, 8)
    T, H = (N.need / G) + u[1].beamDodgeMargin, z:Dot(A.dir) - A.halfW
    if (Y > T) or (((u[1].beamDodgeDist or 0) > 0) and (H > u[1].beamDodgeDist)) then
      u[4][4][u[4][7]]("dodge", "beamwait", 1, "beam \224\184\171\224\185\136\224\184\178\224\184\135 %.0f studs (\224\184\150\224\184\182\224\184\135\224\185\131\224\184\153 %.1f \224\184\167\224\184\180) \224\184\173\224\184\173\224\184\129\224\185\131\224\184\138\224\185\137 %.1f \224\184\167\224\184\180 \226\134\146 \224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\184\171\224\184\165\224\184\154", H, Y, T)
      return false
    end
    u[5][4][u[5][7]]("beamdodge", "beam \224\184\150\224\184\182\224\184\135\224\185\131\224\184\153 %.1f \224\184\167\224\184\180 \226\134\146 \224\184\173\224\184\173\224\184\129%s %.0f studs", Y, N.name, N.need)
    u[2].projGoal = e
    u[2].projGoalUntil = (F + math.max(Y, 1)) + 1.5
    u[2].projGoalKind = "beam"
    u[2].dodgeGoal = nil
    u[2].retreatGoal = nil
    U:ShowDodgePath(Q, e, "dodge")
    U:SetDestination(e, false)
    return true
  end
end, yM = function(u, U, Q, F)
  local A, Y, T, G, z, H, N, S, e, D, m, g = u[3], u.Mq, u.wq, u.Nq, u[97], u.lq, u[99], 5, U, F, Q
  while true do
    if S <= 3 then
      if S <= 1 then
        if S <= 0 then
          A(e, 0)
          S = 4
        else
          D(m .. (g .. (Y .. e)), 0)
          S = 4
        end
      elseif S <= 2 then
        S, g = 1, T
      else
        Q = D[m]
        if Q then
          S, D, m, g = 1, A, G, Q
        else
          S, D, m = 2, A, G
        end
      end
    elseif S <= 5 then
      if S <= 4 then
        return
      else
        S = ((z(e) == H) and 7) or 6
      end
    elseif S <= 6 then
      A(e, 1)
      S = 4
    else
      S = (N(e, ":(%d+)[:\013\n]") and 3) or 0
    end
  end
end, [41] = bit32.bnot, [6452] = function(u, u, u, u, U, U)
  return function(U)
    local Q, F = u[1].bob, U:GetRoot()
    local A = Q.boss and u[2].BossHome[Q.boss]
    local Y = (A and A.homePos) or (U:BobHome())
    print(("%s | state=%s | hold=%s | ready=%s spent=%s | home=%s | dist=%.0f | buff=%s"):format(tostring(Q.boss), Q.state, tostring(u[1].bobHold), tostring(u[3][4][u[3][7]](U)), tostring(u[4][4][u[4][7]](U)), (Y and (("%.0f,%.0f,%.0f"):format(Y.X, Y.Y, Y.Z))) or "nil", ((Y and F) and (Y - F.Position).Magnitude) or -1, tostring(U:GetBuffSkill())))
  end
end, [9886] = function(u, u, u, u)
  return function(U, Q, F)
    local A = u[1].walkAheadStep
    local Y = A
    while Y <= F do
      if u[2]:IsBlocked(U + (Q * Y)) then
        return true
      end
      Y += A
    end
    return false
  end
end, Vj = function(u, ...)
  local U, Q, F, A, Y, T, G, z, H, N, S, e = u:dq()
  local D, m, g, c, r, M, y, p, f, v, K, B = Q, F, u[6](...), A, Y, T, G, z, H, N, S, e
  while U do
    if D <= 16 then
      if D <= 7 then
        if D <= 3 then
          D, m, c, r, M, y, p, f = u:Pq(p, m, f, D, r, c, y, M, u:Aq(g))
        else
          D, r, p, f = u:mM(r, c, D, v, f, p)
        end
      elseif D <= 11 then
        D, c, r, y, p, f = u:oM(m, c, D, y, M, f, p, r)
      elseif D <= 13 then
        D, r, f, v = u:vM(B, K, c, r, D, v, f)
      else
        D, r, p, f, K = u:rM(D, K, v, r, p, f, c)
      end
    elseif D <= 24 then
      if D <= 20 then
        D, r, v, B = u:iM(D, B, v, c, r)
      else
        A, e, H, N, T, Y = u:bM(v, D, p, y, r, K, c, f)
        if A == 1 then
          return c
        elseif A == 2 then
          D, r, y, f, v = e, H, N, T, Y
        end
      end
    elseif D <= 28 then
      D, r, f, v = u:tM(D, v, c, B, f, r, K)
    else
      D, m, r, y, p, K = u:QM(p, M, r, f, K, D, v, c, y, m)
    end
  end
end, [11] = function(u, u, u, u, U)
  return function(U)
    u[1][4][u[1][7]] += U
    if u[1][4][u[1][7]] < 0.03333333333333333 then
      return
    end
    u[1][4][u[1][7]] = 0
    if not (u[2].IsOpen and u[3][4][u[3][7]].Visible) then
      if u[4][4][u[4][7]] then
        u[4][4][u[4][7]] = false
        u[5].Instance.NearIntensity = 0
        u[6].Instance.Offset = u[7](0, 0, 0)
        u[6].Instance.Scale = u[7](0, 0, 0)
      end
      return
    end
    if not u[4][4][u[4][7]] then
      u[4][4][u[4][7]] = true
      u[5].Instance.NearIntensity = 1
      u[8].Instance.Transparency = 0.97
      u[8].Instance.Size = u[7](1, 1, 1) * 0.01
    end
    U = u[9].AbsolutePosition
    local Q = U + u[9].AbsoluteSize
    local F = u[10]:ScreenPointToRay(U.X, U.Y, 1)
    local A = u[10]:ScreenPointToRay(Q.X, Q.Y, 1)
    local Y = u[10].CFrame.Position + (u[10].CFrame.LookVector * (0.05 - u[10].NearPlaneZ))
    local T = u[10].CFrame.LookVector
    U, Q = u[11][4][u[11][7]]:GetCalculatedRayPosition(Y, T, F.Origin, F.Direction), u[11][4][u[11][7]]:GetCalculatedRayPosition(Y, T, A.Origin, A.Direction)
    U, Q = u[10].CFrame:PointToObjectSpace(U), u[10].CFrame:PointToObjectSpace(Q)
    u[6].Instance.Offset = (U + Q) / 2
    u[6].Instance.Scale = (Q - U) / 0.0101
    u[8].Instance.CFrame = u[10].CFrame
  end
end}, {}):Vj(...)

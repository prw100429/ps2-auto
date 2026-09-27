-- Project Slayers 2 | Clean Remake v4.0 | Standalone executor script
-- Offline source build; game runtime behavior remains unverified.
local DATA = {["quests"] = {{["key"] = "Ill take 3 bandits", ["npc"] = "Krue", ["mob"] = "Bandit", ["title"] = "Defeat 3 bandits", ["level"] = 0}, {["key"] = "Ill take the bandit boss(Lv 7)", ["npc"] = "Krue", ["mob"] = "Zuko", ["title"] = "Defeat the bandit boss", ["level"] = 7}, {["key"] = "Ill drive the bears back(Lv 10)", ["npc"] = "Tom", ["mob"] = "Bear Cub", ["title"] = "Hunt the Bears", ["level"] = 10}, {["key"] = "Ill restock the pantry(Lv 10)", ["npc"] = "Lucy", ["mob"] = "Bear Cub", ["title"] = "Acquire Bear Meat", ["level"] = 10}, {["key"] = "Ill fell the Mother Bear(Lv 18)", ["npc"] = "Tom", ["mob"] = "Mother Bear", ["title"] = "Fell the Mother Bear", ["level"] = 18}, {["key"] = "Ill clear out his subordinates(Lv 26)", ["npc"] = "Chaka", ["mob"] = "Kaiden Subordinate", ["title"] = "Clear Kaiden's Subordinates", ["level"] = 26}, {["key"] = "Ill help clear them out", ["npc"] = "Kazu", ["mob"] = "*Civilian*", ["title"] = "Clear Village Spies", ["level"] = 26}, {["key"] = "Ill deal with Kaiden(Lv 34)", ["npc"] = "Chaka", ["mob"] = "Kaiden", ["title"] = "Defeat Kaiden", ["level"] = 34}, {["key"] = "I will clear out his guards(Lv 40)", ["npc"] = "Wagwan", ["mob"] = "Hoyuzo Subordinate", ["title"] = "Clear Hoyuzo's Guard", ["level"] = 40}, {["key"] = "Ill drive them off(Lv 47)", ["npc"] = "Rin", ["mob"] = "Beast Born Demon", ["title"] = "Hold the Night", ["level"] = 47}, {["key"] = "I will take care of Hoyuzo(Lv 50)", ["npc"] = "Wagwan", ["mob"] = "Hoyuzo", ["title"] = "Eliminate Hoyuzo", ["level"] = 50}, {["key"] = "Ill help you defeat them(Lv 90)", ["npc"] = "Wounded Slayer Tomoi", ["mob"] = "Fire Profound Demon", ["title"] = "Drive Off High Demons", ["level"] = 90}, {["key"] = "Theyre not welcome here(Lv 90)", ["npc"] = "Demon Delroy", ["mob"] = "High Demon", ["title"] = "Thin Kanoe Ranks", ["level"] = 90}, {["key"] = "Ill drive back the frost(Lv 105)", ["npc"] = "Demon Slayer Mitsu", ["mob"] = "Ice Profound Demon", ["title"] = "Drive Back the Frost", ["level"] = 105}, {["key"] = "Ill put out the blaze(Lv 115)", ["npc"] = "Demon Slayer Mitsu", ["mob"] = "Fire Profound Demon", ["title"] = "Put Out the Blaze", ["level"] = 115}}, ["npcs"] = {["Angler Runo"] = {-561.0, 796.0, 684.0}, ["Betty"] = {714.0, 1121.0, -808.0}, ["Blacksmith Togane"] = {1732.0, 694.0, -765.0}, ["Chaka"] = {471.0, 1146.0, -1260.0}, ["Demon Delroy"] = {140.0, 1254.0, -1911.0}, ["Demon Mokuro"] = {-1948.0, 28.0, 374.0}, ["Demon Slayer Goro"] = {-872.0, 235.0, 318.0}, ["Demon Slayer Mitsu"] = {-824.0, 1382.0, -2538.0}, ["Dock Master Sofen"] = {-161.0, 796.0, 703.0}, ["Elara"] = {428.0, 941.0, 507.0}, ["Estate Worker Niko"] = {374.0, 942.0, 523.0}, ["Flame Trainer Rengu"] = {-968.0, 1029.0, 1188.0}, ["Ginzo"] = {274.0, 942.0, 528.0}, ["Harvester of Souls Zurinyz"] = {-1213.0, 1387.0, -2372.0}, ["Iceveil Guard Shiro"] = {-107.0, 1349.0, -2499.0}, ["Insect Trainer Shinora"] = {-1799.0, 348.0, -189.0}, ["Jugg"] = {488.0, 874.0, 1008.0}, ["Kazu"] = {-626.0, 1242.0, -1138.0}, ["Krue"] = {-425.0, 1244.0, -952.0}, ["Lamplighter Isamu"] = {1082.0, 1426.0, -749.0}, ["Liv"] = {657.0, 1019.0, 140.0}, ["Lucy"] = {-615.0, 1258.0, -1177.0}, ["MoldySugar"] = {-702.0, 1243.0, -983.0}, ["Noote"] = {-516.0, 1243.0, -1251.0}, ["Ren"] = {-1795.0, 312.0, -85.0}, ["Rin"] = {432.0, 1018.0, 73.0}, ["Serpent Trainer Obari"] = {37.0, 1311.0, -1180.0}, ["Shady Individual Rooyi"] = {-773.0, 965.0, -9.0}, ["Shiori"] = {-1814.0, 312.0, -101.0}, ["Shrine Messenger Akio"] = {-207.0, 1350.0, -2423.0}, ["Soryu Expert Kazuma"] = {-769.0, 909.0, 303.0}, ["Sound Trainer Tengai"] = {465.0, 1491.0, -3273.0}, ["Stone Trainer Gyorei"] = {2579.0, 1096.0, -828.0}, ["Tai Chi Expert Renjiro"] = {1883.0, 687.0, -761.0}, ["Thunder Trainer Zentaro"] = {1970.0, 1660.0, -610.0}, ["Tom"] = {507.0, 1121.0, -970.0}, ["Wagwan"] = {724.0, 1019.0, -802.0}, ["Water Trainer Urokodaki"] = {667.0, 1023.0, -228.0}, ["Wind Trainer Saneri"] = {-276.0, 1187.0, -3437.0}, ["Wounded Slayer Tomoi"] = {485.0, 1223.0, -1813.0}, ["Kona"] = {-791.61, 1262.57, -1130.91}, ["Raze"] = {-594.0, 1245.08, -1095.0}, ["Rika"] = {-497.04, 1249.66, -1176.81}, ["Togane"] = {388.0, 1253.0, -1928.0}}, ["spawns"] = {["Civilian"] = {170.0, 888.0, 603.0}, ["Fire Profound Demon"] = {-916.0, 1374.0, -2431.0}, ["Greater Demon"] = {-499.0, 284.0, 528.0}, ["Hoyuzo Subordinate"] = {533.0, 1001.0, -1357.0}, ["Mizunoe Demon Slayer"] = {-1835.0, 31.0, 487.0}, ["Mother Bear"] = {540.0, 1121.0, -1024.0}, ["Zuko"] = {-297.0, 1224.0, -1023.0}, ["Giyen"] = {388.0, 1018.0, -86.0}, ["Gyorei"] = {2574.0, 1089.0, -743.0}, ["Gyutai"] = {-267.0, 1043.0, -1140.0}, ["Insect Trainee"] = {-1396.0, 261.0, 69.0}, ["Nezura"] = {-1460.0, 275.0, 935.0}, ["Obari"] = {770.0, 1121.0, -1047.0}, ["Reaper Trainee Kuzan"] = {-1220.0, 1373.0, -3035.0}, ["Rengu"] = {-713.0, 965.0, 883.0}, ["Saneri"] = {-380.0, 1093.0, -423.0}, ["Serpent Trainee"] = {-272.0, 1292.0, -1536.0}, ["Shinora"] = {-453.0, 964.0, 2.0}, ["Soryu Trainee Goki"] = {-427.0, 288.0, 543.0}, ["Sound Trainee"] = {192.0, 1349.0, -2582.0}, ["Stone Trainee"] = {2685.0, 1073.0, -569.0}, ["Sumari"] = {396.0, 1018.0, -621.0}, ["Tai Chi Trainee Suzume"] = {2360.0, 601.0, -643.0}, ["Tengai"] = {-134.0, 1349.0, -2632.0}, ["Thunder Trainee"] = {2425.0, 1073.0, -557.0}, ["Water Trainee Sabito"] = {815.0, 1018.0, 101.0}, ["Wind Trainee"] = {-942.0, 1381.0, -2636.0}, ["Yahari"] = {825.0, 1019.0, -642.0}, ["Zentaro"] = {1332.0, 821.0, -1018.0}, ["Akazo"] = {-1132.0, 1380.0, -1747.0}, ["Domae"] = {-297.0, 1350.0, -3452.0}, ["Enru"] = {821.0, 800.0, 543.0}, ["Flame Trainee"] = {-1129.0, 1029.0, 994.0}, ["Fujiko"] = {-2460.0, 37.0, 1119.0}, ["Hoyuzo"] = {746.0, 1001.0, -1413.0}, ["Reaper"] = {98.0, 1043.0, -574.0}}, ["mobs"] = {"*Civilian*", "Akazo", "Bandit", "Bear Cub", "Beast Born Demon", "Blood Hounded Demon", "Cache Lancer", "Cache Prowler", "Civilian", "Datai", "Domae", "Enru", "Fire Profound Demon", "Flame Trainee", "Fujiko", "Giyen", "Greater Demon", "Grove Raider", "Gyorei", "Gyutai", "High Demon", "Hoyuzo", "Hoyuzo Subordinate", "Ice Profound Demon", "Insect Trainee", "Kaiden", "Kaiden Subordinate", "Kanoe Demon Slayer", "Lancer Captain", "Lesser Demon", "Mizunoe Demon Slayer", "Mizunoto", "Mother Bear", "Nezura", "Obari", "Prowler Captain", "Raid Captain", "Reaper", "Reaper Trainee Kuzan", "Rengu", "Saneri", "Serpent Trainee", "Shinora", "Soryu Trainee Goki", "Sound Trainee", "Stone Trainee", "Sumari", "Tai Chi Trainee Suzume", "Tengai", "Thunder Trainee", "Water Trainee Sabito", "Wind Trainee", "Yahari", "Zentaro", "Zuko"}, ["bosses"] = {"Akazo", "Datai", "Domae", "Enru", "Flame Trainee", "Fujiko", "Giyen", "Gyorei", "Gyutai", "Hoyuzo", "Insect Trainee", "Kaiden", "Mother Bear", "Nezura", "Obari", "Reaper", "Reaper Trainee Kuzan", "Rengu", "Saneri", "Serpent Trainee", "Shinora", "Soryu Trainee Goki", "Sound Trainee", "Stone Trainee", "Sumari", "Tai Chi Trainee Suzume", "Tengai", "Thunder Trainee", "Water Trainee Sabito", "Wind Trainee", "Yahari", "Zentaro", "Zuko"}, ["hunts"] = {["crow"] = {"Mother Bear", "Hoyuzo", "Soryu Trainee Goki", "Reaper Trainee Kuzan", "Datai", "Domae", "Sumari", "Yahari", "Enru", "Nezura", "Gyutai", "Akazo", "Reaper"}, ["muzan"] = {"Flame Trainee", "Thunder Trainee", "Water Trainee Sabito", "Wind Trainee", "Stone Trainee", "Serpent Trainee", "Insect Trainee", "Sound Trainee", "Tai Chi Trainee Suzume", "Obari", "Tengai", "Shinora", "Rengu", "Saneri", "Gyorei", "Zentaro", "Giyen", "Gyutai", "Datai"}}}
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Input = game:GetService("UserInputService")
local player = Players.LocalPlayer
if not player then error("클라이언트에서 실행해 주세요.", 0) end
if game.PlaceId ~= 136406881576517 then
    error("이 버전은 제공된 본게임 PlaceId 136406881576517용입니다.", 0)
end
local playerGui = player:WaitForChild("PlayerGui", 10)
if not playerGui then error("PlayerGui가 준비되지 않았습니다.", 0) end
local env = type(getgenv) == "function" and getgenv() or _G
local registryKey = "PS2_CleanRemake_v1"
local previous = env[registryKey]
if type(previous) == "table" and type(previous.Unload) == "function" then previous.Unload() end

local state = {
    alive = true, mode = "idle", phase = "대기", selectedMob = "Bandit", generation = 0,
    questIndex = 1, selectedNpc = "Krue", style = "Combat", moveMethod = "부드러운 이동",
    speed = 100, offset = 5, attackInterval = 0, attackMode = "원본 전투 호출",
    positionMode = "위", repeatQuest = true, noclip = false, autoResume = true,
    antiAFK = false, noSunLocal = false, crowSlot = 1, bellSlot = 1,
    cooldownUntil = 0, questSeen = false, missingSince = nil, levelChoice = nil,
    levelBlocked = {}, hunt = nil, respawnGraceUntil = 0,
    farmTravel = "빠른 텔포", farmNoclip = true, selectedBoss = "Zuko",
    autoSkill = false, skillHold = 0.12, skillGap = 0.4, skillBackend = "자동",
    walkOverride = false, walkSpeed = 24, jumpPower = 60,
    equipmentSlot = 0, target = nil, destination = nil, combo = 0,
    lastAttack = 0, lastMove = 0, lastAction = 0, actionCount = 0,
    questDeadline = 0, questStep = "", completedObserved = false, observedCycles = 0,
    message = "기능을 선택한 뒤 시작하세요.", errors = 0,
}
local connections, logs, mobs, npcs = {}, {}, {}, {}
local clearESP = function() end
local bossSet = {}
for _, name in ipairs(DATA.bosses) do bossSet[name] = true end
local skillKeys = {"Z", "X", "C", "V", "B", "N", "K"}
local skills = {}
for _, key in ipairs(skillKeys) do skills[key] = {enabled = false, interval = 5, last = -math.huge} end
local heldSkill, skillCursor, lastSkill = nil, 0, -math.huge
local windowActive = true
local trackingRestore = nil
local virtualInput
pcall(function() virtualInput = game:GetService("VirtualInputManager") end)
local releaseSkill = function() end
local restoreTracking = function() end
local releaseMouse = function() end
local restoreExtras = function() end
local restoreEquip = function() end
local collisionRestore = setmetatable({}, {__mode = "k"})
local humanoidRestore = setmetatable({}, {__mode = "k"})
local refreshUI = function() end
local gui
local function connect(signal, fn)
    local c = signal:Connect(fn)
    table.insert(connections, c)
    return c
end
local function log(message)
    state.message = tostring(message)
    if logs[1] ~= state.message then
        table.insert(logs, 1, state.message)
        if #logs > 8 then table.remove(logs) end
    end
end
local function path(root, names)
    local node = root
    for _, name in ipairs(names) do
        node = node and node:FindFirstChild(name)
        if not node then return nil end
    end
    return node
end
local function character()
    local char = player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not hum or not root or hum.Health <= 0 then return nil end
    return char, hum, root
end
local function event()
    local remote = path(RS, {"Communication", "ServerAndClient", "Signals", "SignalEvent", "Event"})
    return remote and remote:IsA("RemoteEvent") and remote or nil
end
local function restoreMovement()
    for part, value in pairs(collisionRestore) do
        if part.Parent then part.CanCollide = value end
    end
    table.clear(collisionRestore)
    for hum, values in pairs(humanoidRestore) do
        if hum.Parent then
            hum.WalkSpeed = values.speed
            hum.JumpPower = values.power
            hum.JumpHeight = values.height
        end
    end
    table.clear(humanoidRestore)
end
local function haltMotion()
    local _, hum, root = character()
    if root then
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
        hum:MoveTo(root.Position)
        hum:Move(Vector3.zero)
    end
end
local function stop(message, emergency)
    state.generation = state.generation + 1
    releaseSkill()
    releaseMouse()
    restoreEquip()
    restoreTracking()
    state.mode, state.target, state.destination = "idle", nil, nil
    state.questStep, state.phase = "", "대기"
    state.cooldownUntil, state.questSeen, state.missingSince = 0, false, nil
    state.levelChoice, state.hunt = nil, nil
    if emergency then
        state.espEnabled = false; clearESP()
        state.autoSkill = false
        state.antiAFK, state.noSunLocal = false, false
        restoreExtras()
        state.noclip, state.walkOverride = false, false
        restoreMovement()
    end
    haltMotion()
    if message then log(message) end
    refreshUI()
end
local api = {}
function api.Unload()
    if not state.alive then return end
    stop("종료", true)
    state.alive = false
    for _, c in ipairs(connections) do c:Disconnect() end
    table.clear(connections)
    if gui then gui:Destroy() end
    if env[registryKey] == api then env[registryKey] = nil end
end
env[registryKey] = api

local function modelRoot(instance)
    if instance:IsA("BasePart") then return instance end
    local root = instance:FindFirstChild("HumanoidRootPart", true)
    if root and root:IsA("BasePart") then return root end
    if instance:IsA("Model") then return instance.PrimaryPart end
    return nil
end
local function scanWorld()
    local nextMobs, nextNpcs = {}, {}
    local seen = {}
    local regions = path(workspace, {"Humanoids", "Regions"})
    if regions then
        for _, region in ipairs(regions:GetChildren()) do
            local active = region:FindFirstChild("ActiveNpcs")
            if active then
                for _, container in ipairs(active:GetChildren()) do
                    local candidates = {container}
                    for _, child in ipairs(container:GetChildren()) do table.insert(candidates, child) end
                    for _, model in ipairs(candidates) do
                        if model:IsA("Model") and not seen[model] and not Players:GetPlayerFromCharacter(model) then
                            local hum = model:FindFirstChildOfClass("Humanoid")
                            local root = model:FindFirstChild("HumanoidRootPart")
                            if hum and root and root:IsA("BasePart") then
                                seen[model] = true
                                table.insert(nextMobs, {name = container.Name, model = model, hum = hum, root = root, region = region.Name})
                            end
                        end
                    end
                end
            end
        end
    end
    regions = path(workspace, {"Debree", "Regions"})
    if regions then
        for _, region in ipairs(regions:GetChildren()) do
            local folder = region:FindFirstChild("StationaryNpcs")
            if folder then
                for _, container in ipairs(folder:GetChildren()) do
                    local root = modelRoot(container)
                    if root then
                        table.insert(nextNpcs, {name = container.Name, instance = container, root = root, region = region.Name})
                    end
                end
            end
        end
    end
    mobs, npcs = nextMobs, nextNpcs
end
local function nearestMob(name, origin)
    local best, distance = nil, math.huge
    for _, mob in ipairs(mobs) do
        local isBoss = bossSet[mob.name] or bossSet[mob.model.Name]
        local matches = (name == "[전체]" and not isBoss) or (name == "[보스 전체]" and isBoss)
            or mob.name == name or mob.model.Name == name
        if matches and mob.model.Parent
            and mob.root.Parent and mob.hum.Health > 0 then
            local d = (mob.root.Position - origin).Magnitude
            if d < distance then best, distance = mob, d end
        end
    end
    return best
end
local function findNpc(name, origin)
    local best, distance = nil, math.huge
    for _, npc in ipairs(npcs) do
        if npc.name == name and npc.root.Parent then
            local d = (npc.root.Position - origin).Magnitude
            if d < distance then best, distance = npc, d end
        end
    end
    return best
end
local function fallback(name, data)
    local p = data[name]
    return p and Vector3.new(p[1], p[2] + 3, p[3]) or nil
end
local function moveTo(position, dt, face)
    local _, hum, root = character()
    if not root then return false end
    local delta = position - root.Position
    local distance = delta.Magnitude
    if distance > 1 then
        if state.moveMethod == "걷기" then
            if os.clock() - state.lastMove > 0.4 then
                hum:MoveTo(position)
                state.lastMove = os.clock()
            end
        else
            local nextPosition = position
            if state.moveMethod == "부드러운 이동" then
                nextPosition = root.Position + delta.Unit * math.min(distance, state.speed * math.min(dt, 0.25))
            end
            if face and (face - nextPosition).Magnitude > 0.1 then
                root.CFrame = CFrame.lookAt(nextPosition, face)
            else
                root.CFrame = CFrame.new(nextPosition) * root.CFrame.Rotation
            end
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end
    elseif face and state.moveMethod ~= "걷기" and (face - root.Position).Magnitude > 0.1 then
        root.CFrame = CFrame.lookAt(root.Position, face)
        root.AssemblyLinearVelocity = Vector3.zero
    end
    return (position - root.Position).Magnitude < 3
end
local function attack(target)
    local char, _, root = character()
    if not root or not target.root.Parent or target.hum.Health <= 0 or heldSkill then return end
    if (root.Position - target.root.Position).Magnitude > 12 then return end
    if os.clock() - state.lastAttack < state.attackInterval then return end
    state.lastAttack = os.clock()
    if state.attackMode == "장착 Tool 사용" then
        local tool = char:FindFirstChildOfClass("Tool")
        if not tool then log("장착된 Tool이 없습니다. 무기를 장착하거나 공격 방식을 바꾸세요."); return end
        tool:Activate()
    else
        local remote = event()
        if not remote then stop("전투 통신 객체를 찾지 못했습니다."); return end
        if state.equipmentSlot > 0 then
            local equipped = path(player, {"Items_Config", "Equipped"})
            if equipped and (equipped:IsA("IntValue") or equipped:IsA("NumberValue")) then
                equipped.Value = state.equipmentSlot
            end
        end
        state.combo = state.combo % 5 + 1
        -- Original source lines 9698-9703: command, style, combo, true, 0, true, nil.
        remote:FireServer("Combat_Service", state.style, state.combo, true, 0, true, nil)
    end
end
local function farm(name, dt)
    local _, _, root = character()
    if not root then return end
    local target = state.target
    if not target or not target.model.Parent or not target.root.Parent or target.hum.Health <= 0
        or not ((name == "[전체]" and not (bossSet[target.name] or bossSet[target.model.Name]))
            or (name == "[보스 전체]" and (bossSet[target.name] or bossSet[target.model.Name]))
            or target.name == name or target.model.Name == name) then
        target = nearestMob(name, root.Position)
        state.target = target
    end
    if not target then
        state.phase = "대상 대기: " .. name
        local position = fallback(name, DATA.spawns)
        if position then
            if state.farmTravel == "빠른 텔포" then
                root.CFrame = CFrame.new(position) * root.CFrame.Rotation
                root.AssemblyLinearVelocity = Vector3.zero
            else moveTo(position, dt) end
        end
        return
    end
    state.phase = "사냥: " .. target.name
end

local function trackingTarget()
    if not (state.mode == "farm" or state.mode == "boss" or ((state.mode == "quest" or state.mode == "level" or state.mode == "crow" or state.mode == "muzan") and state.questStep == "active")) then return nil end
    local target = state.target
    if target and target.root.Parent and target.model.Parent and target.hum.Health > 0 then return target end
end
local function flatForward(direction)
    local flat = Vector3.new(direction.X, 0, direction.Z)
    return flat.Magnitude > 0.001 and flat.Unit or Vector3.new(0, 0, -1)
end
local function targetPose(targetRoot)
    local forward = flatForward(targetRoot.CFrame.LookVector)
    local offset
    if state.positionMode == "위" then offset = Vector3.new(0, state.offset, 0)
    elseif state.positionMode == "아래" then offset = Vector3.new(0, -state.offset, 0)
    elseif state.positionMode == "앞" then offset = forward * state.offset
    else offset = -forward * state.offset end
    local position = targetRoot.Position + offset
    -- An explicit horizontal up vector avoids the vertical lookAt singularity.
    -- Above: torso faces down; below: torso faces up. Both point toward the target.
    local up = (state.positionMode == "위" or state.positionMode == "아래") and forward or Vector3.new(0, 1, 0)
    return CFrame.lookAt(position, targetRoot.Position, up)
end
restoreTracking = function()
    local saved = trackingRestore
    trackingRestore = nil
    if saved then
        if saved.hum.Parent then saved.hum.AutoRotate = saved.autoRotate end
        if saved.root.Parent then
            saved.root.CFrame = CFrame.lookAt(saved.root.Position, saved.root.Position + saved.forward)
            saved.root.AssemblyAngularVelocity = Vector3.zero
        end
    end
    if not state.noclip then
        for part, value in pairs(collisionRestore) do if part.Parent then part.CanCollide = value end end
        table.clear(collisionRestore)
    end
end
local function trackFrame(dt)
    local target = trackingTarget()
    local _, hum, root = character()
    if not target or not root then restoreTracking(); return end
    if not trackingRestore or trackingRestore.hum ~= hum then
        restoreTracking()
        trackingRestore = {hum = hum, root = root, autoRotate = hum.AutoRotate, forward = flatForward(root.CFrame.LookVector)}
    end
    hum.AutoRotate = false
    local pose = targetPose(target.root)
    if state.farmTravel == "빠른 텔포" then root.CFrame = pose
    else
        local distance = (pose.Position - root.Position).Magnitude
        root.CFrame = root.CFrame:Lerp(pose, distance > 0.001 and math.min(1, state.speed * dt / distance) or 1)
    end
    root.AssemblyLinearVelocity = Vector3.zero
    root.AssemblyAngularVelocity = Vector3.zero
end

releaseSkill = function()
    local held = heldSkill
    if not held then return end
    heldSkill = nil
    local ok, problem = pcall(held.release)
    if not ok then
        state.autoSkill = false
        if type(keyrelease) == "function" then pcall(keyrelease, string.byte(held.key)) end
        log("스킬 키 해제 오류로 자동 스킬을 껐습니다: " .. tostring(problem))
    end
end
local function pressSkill(key)
    local code = Enum.KeyCode[key]
    local backend = state.skillBackend
    if backend ~= "실행기 키 입력" and virtualInput then
        local ok = pcall(function() virtualInput:SendKeyEvent(true, code, false, game) end)
        if ok then return function() virtualInput:SendKeyEvent(false, code, false, game) end end
        pcall(function() virtualInput:SendKeyEvent(false, code, false, game) end)
    end
    if backend ~= "VirtualInputManager" and type(keypress) == "function" and type(keyrelease) == "function" then
        local keyCode = string.byte(key)
        local ok = pcall(keypress, keyCode)
        if ok then return function() keyrelease(keyCode) end end
        pcall(keyrelease, keyCode)
    end
    return nil
end
local function skillFrame()
    local now = os.clock()
    local target = trackingTarget()
    local _, _, root = character()
    local allowed = windowActive and state.autoSkill and target and root and (root.Position - target.root.Position).Magnitude <= 12
        and not Input:GetFocusedTextBox()
    if heldSkill then
        if not allowed or not skills[heldSkill.key].enabled or now >= heldSkill.untilTime then releaseSkill() end
        return
    end
    if not allowed or now - lastSkill < state.skillGap then return end
    for step = 1, #skillKeys do
        local index = (skillCursor + step - 1) % #skillKeys + 1
        local key = skillKeys[index]
        local setting = skills[key]
        if setting.enabled and now - setting.last >= setting.interval then
            local release = pressSkill(key)
            if not release then
                state.autoSkill = false
                log("스킬 키 입력을 지원하지 않습니다. 스킬 탭에서 입력 방식을 확인하세요.")
                return
            end
            heldSkill = {key = key, release = release, untilTime = now + state.skillHold}
            setting.last, lastSkill, skillCursor = now, now, index
            return
        end
    end
end

local function valueOf(parent, name)
    local object = parent and parent:FindFirstChild(name)
    if object and object:IsA("ValueBase") then return object.Value end
    return parent and parent:GetAttribute(name) or nil
end
local function questHolder()
    -- Never substitute another player's data when the local player's data is absent.
    local data = path(RS, {"Player_Service", "Data", player.Name})
    local slot = valueOf(data, "slotEquipped")
    if slot == nil then return nil, "내 캐릭터 슬롯 정보를 찾지 못했습니다." end
    local holder = path(data, {"slots", "Slot" .. tostring(slot), "Quests", "Holder"})
    if not holder then return nil, "내 퀘스트 목록이 아직 준비되지 않았습니다." end
    return holder
end
local function questStatus(query)
    local key = type(query) == "table" and query.key or query
    local title = type(query) == "table" and query.title or nil
    local holder, problem = questHolder()
    if not holder then return nil, problem end
    for _, q in ipairs(holder:GetChildren()) do
        if q.Name == key or (title and q.Name == title) or valueOf(q, "QuestString") == key
            or (title and valueOf(q, "QuestString") == title) then
            local tasks = q:FindFirstChild("Tasks")
            local complete, count, progress = true, 0, {}
            if tasks then
                for _, item in ipairs(tasks:GetChildren()) do
                    local current, maximum = tonumber(valueOf(item, "Value")), tonumber(valueOf(item, "Max"))
                    count = count + 1
                    if not current or not maximum or current < maximum then complete = false end
                    table.insert(progress, tostring(current or "?") .. "/" .. tostring(maximum or "?"))
                end
            end
            return {active = true, complete = complete and count > 0, progress = table.concat(progress, " · "), instance = q}
        end
    end
    return {active = false, complete = false}
end
local function visible(object)
    local current = object
    while current and current ~= playerGui do
        if current:IsA("GuiObject") and not current.Visible then return false end
        if current:IsA("ScreenGui") and not current.Enabled then return false end
        current = current.Parent
    end
    return current == playerGui
end
local function clickButton(button)
    if not button or not button:IsA("GuiButton") or not visible(button) then return false end
    if type(firesignal) ~= "function" then return false end
    firesignal(button.MouseButton1Click)
    return true
end
local function dialogueChoice(key)
    local actual = path(playerGui, {"ComponentsHolder", "DialogueFrame", "Actual"})
    if not actual then return false end
    local holder = actual:FindFirstChild("ButtonHolder")
    if holder then
        local entry = holder:FindFirstChild(key)
        if entry then
            local button = entry:IsA("GuiButton") and entry or entry:FindFirstChildWhichIsA("TextButton", true)
            if clickButton(button) then return true end
        end
        for _, button in ipairs(holder:GetDescendants()) do
            if button:IsA("TextButton") and button.Text == key and clickButton(button) then return true end
        end
    end
    -- Advance only the original dialogue continuation control, never an arbitrary choice.
    clickButton(actual:FindFirstChild("ClickDetector"))
    return false
end
local function readLevel()
    local data = path(RS, {"Player_Service", "Data", player.Name})
    local slotNumber = valueOf(data, "slotEquipped")
    local slot = slotNumber ~= nil and path(data, {"slots", "Slot" .. tostring(slotNumber)}) or nil
    local level = tonumber(valueOf(slot, "Level"))
    if level and level >= 0 and level < math.huge then return math.floor(level) end
    -- This exact TextLabel path exists in the provided dump. Do not guess expPerLevel.
    local label = path(playerGui, {"ComponentsHolder", "LeftHudPortion", "ExpFrame", "Context", "Level"})
    if label and label:IsA("TextLabel") then
        local text = label.Text:gsub("<.->", ""):gsub(",", "")
        level = tonumber(text:match("%d+"))
        if level then return level end
    end
    return nil
end
local function chooseLevelQuest()
    local level = readLevel()
    if not level then return nil, "Level을 읽을 수 없습니다. 캐릭터 HUD 로딩을 기다립니다." end
    -- Resume an existing supported quest before choosing another one.
    for index, q in ipairs(DATA.quests) do
        local result = questStatus(q)
        if result and result.active then
            if (state.levelBlocked[q.key] or 0) > os.clock() then
                return nil, "진행 중인 Quest 응답을 기다립니다. 잠시 뒤 재시도합니다."
            end
            return index
        end
    end
    local best
    local _, _, root = character()
    for index, q in ipairs(DATA.quests) do
        local blocked = (state.levelBlocked[q.key] or 0) > os.clock()
        local availableBoss = not bossSet[q.mob] or (root and nearestMob(q.mob, root.Position))
        if q.level <= level and not blocked and availableBoss and (not best or q.level > DATA.quests[best].level) then best = index end
    end
    return best, best and nil or "현재 수락 가능한 Level Farm 후보를 기다립니다."
end
local function questFailure(message)
    if state.mode == "level" and state.levelChoice then
        state.levelBlocked[DATA.quests[state.levelChoice].key] = os.clock() + 120
        state.levelChoice, state.target, state.questSeen, state.missingSince = nil, nil, false, nil
        state.completedObserved = false
        state.questStep, state.cooldownUntil = "cooldown", os.clock()
        releaseSkill(); restoreTracking(); haltMotion()
        log(message .. " 다른 레벨 퀘스트를 시도합니다.")
    else stop(message) end
end
local function finishQuestCycle()
    state.observedCycles = state.observedCycles + 1
    state.target, state.questSeen, state.missingSince, state.completedObserved = nil, false, nil, false
    releaseSkill(); restoreTracking(); haltMotion()
    if state.mode == "quest" and not state.repeatQuest then stop("퀘스트 종료를 확인했습니다."); return end
    state.questStep, state.cooldownUntil = "cooldown", os.clock()
    state.actionCount, state.lastAction, state.levelChoice = 0, 0, nil
    log("퀘스트 종료 확인. 수락될 때까지 NPC 대화를 다시 시도합니다.")
end
local function questTick(dt)
    local now, generation = os.clock(), state.generation
    if now < state.respawnGraceUntil then state.phase = "Respawn · quest 데이터 대기"; return end
    if now < state.cooldownUntil then
        state.phase = string.format("Quest cooldown · %.1fs", state.cooldownUntil - now)
        state.target = nil
        return
    end
    if state.questStep == "cooldown" then state.questStep = "" end
    if state.mode == "level" and not state.levelChoice then
        local index, problem = chooseLevelQuest()
        if not index then state.phase = problem; return end
        state.levelChoice = index
        log("Level Farm → " .. DATA.quests[index].title)
    end
    local q = DATA.quests[state.mode == "level" and state.levelChoice or state.questIndex]
    local status, problem = questStatus(q)
    if not status then
        state.target = nil
        state.phase = problem .. " (재시도 대기)"
        return -- Missing replication after respawn is not quest completion.
    end
    local _, _, root = character()
    if not root then return end
    if status.active then
        state.questSeen, state.missingSince = true, nil
        if not status.complete then
            if state.completedObserved then finishQuestCycle(); return end
            state.questStep, state.actionCount = "active", 0
            farm(q.mob, dt)
            state.phase = q.title .. " · " .. status.progress
            return
        end
        state.target, state.completedObserved = nil, true
        releaseSkill(); restoreTracking()
        if state.questStep ~= "turnin" then
            state.questStep, state.actionCount, state.lastAction = "turnin", 0, -math.huge
            haltMotion()
        end
        state.phase = "Quest completion · " .. q.title
        if now - state.lastAction >= 3 then
            if state.actionCount >= 3 then questFailure("완료 요청 3회 후에도 퀘스트가 남아 있습니다."); return end
            local remote = event()
            if not remote then questFailure("퀘스트 Event를 찾지 못했습니다."); return end
            remote:FireServer("QuestProgress", q.key, "TurnIn")
            state.actionCount, state.lastAction = state.actionCount + 1, now
        end
        return
    end
    if state.questSeen then
        state.target = nil
        state.missingSince = state.missingSince or now
        state.phase = "Quest state · 종료 확인 중"
        if now - state.missingSince >= 1 then finishQuestCycle() end
        return
    end
    if state.questStep ~= "seek" and state.questStep ~= "dialogue" then
        state.questStep, state.questDeadline, state.actionCount = "seek", now + 90, 0
        state.target = nil
    end
    if now > state.questDeadline then state.questStep, state.questDeadline, state.actionCount = "seek", now + 90, 0 end
    if state.questStep == "seek" then
        state.phase = "Quest NPC · " .. q.npc
        local npc = findNpc(q.npc, root.Position)
        local position = npc and (npc.root.Position - npc.root.CFrame.LookVector * 4) or fallback(q.npc, DATA.npcs)
        if not position then questFailure("NPC 위치 미확인: " .. q.npc); return end
        moveTo(position, dt, npc and npc.root.Position)
        if npc and (root.Position - npc.root.Position).Magnitude <= 8 then
            local prompt = npc.instance:FindFirstChildWhichIsA("ProximityPrompt", true)
            if not prompt or not prompt.Enabled then return end
            if type(fireproximityprompt) ~= "function" or type(firesignal) ~= "function" then
                questFailure("자동 수락에 fireproximityprompt / firesignal이 필요합니다."); return
            end
            fireproximityprompt(prompt, prompt.HoldDuration)
            if not state.alive or state.generation ~= generation then return end
            state.questStep, state.questDeadline, state.lastAction = "dialogue", now + 2, now
            haltMotion()
        end
    elseif now - state.lastAction > 0.8 then
        if state.actionCount == 0 then
            local chosen = dialogueChoice(q.key)
            if not state.alive or state.generation ~= generation then return end
            if chosen then state.actionCount = 1 end
        else
            state.questStep, state.actionCount = "seek", 0
        end
        state.lastAction = now
    end
end

local heldEquip, heldMouse
restoreEquip = function()
    local saved = heldEquip
    heldEquip = nil
    if saved and saved.object.Parent and saved.object.Value == saved.assigned then saved.object.Value = saved.value end
end
local function equipSlot(slot)
    local object = path(player, {"Items_Config", "Equipped"})
    if not object or not (object:IsA("IntValue") or object:IsA("NumberValue")) then return false end
    if not heldEquip then heldEquip = {object = object, value = object.Value} end
    heldEquip.assigned, object.Value = slot, slot
    return true
end
releaseMouse = function()
    local held = heldMouse
    heldMouse = nil
    if held then pcall(held.release) end
end
local function activateBell()
    local camera = workspace.CurrentCamera
    if not virtualInput or not camera then return false end
    local x, y = camera.ViewportSize.X / 2, camera.ViewportSize.Y * 0.15
    local release = function() virtualInput:SendMouseButtonEvent(x, y, 0, false, game, 0) end
    heldMouse = {release = release, untilTime = os.clock() + 0.1}
    local ok = pcall(function() virtualInput:SendMouseButtonEvent(x, y, 0, true, game, 0) end)
    if not ok then releaseMouse() end
    return ok
end
local function activeHunt(kind)
    local holder, problem = questHolder()
    if not holder then return nil, problem end
    for _, name in ipairs(DATA.hunts[kind]) do
        local status = questStatus({key = "BossHunt " .. name, title = "Eliminate " .. name})
        if status and status.active then return {name = name, status = status} end
    end
    return nil
end
local function claimHunt()
    local content = path(playerGui, {"ComponentsHolder", "DialogueContent"})
    if not content then return false end
    local choices = {}
    for _, child in ipairs(content:GetDescendants()) do
        if child.Name == "Claim" and child:IsA("TextButton") and visible(child) then
            local parent = child.Parent
            if parent and parent.Name:match("^Hunt%d+$") then
                local cover = parent:FindFirstChild("LevelCover", true)
                if not cover or (cover:IsA("GuiObject") and not cover.Visible) then table.insert(choices, child) end
            end
        end
    end
    table.sort(choices, function(a,b) return a.Parent.Name < b.Parent.Name end)
    return choices[1] and clickButton(choices[1]) or false
end
local function collectHuntLoot(h)
    if not h.lastPosition or (h.lootCount or 0) >= 3 or os.clock() < (h.nextLoot or 0) then return end
    h.nextLoot = os.clock() + 1
    if type(fireproximityprompt) ~= "function" then return end
    local _, _, root = character()
    if not root then return end
    local service = game:GetService("CollectionService")
    for _, drop in ipairs(service:GetTagged("LootDrop")) do
        local part = drop:IsA("BasePart") and drop or drop:FindFirstChildWhichIsA("BasePart", true)
        if part and not h.lootVisited[drop] and (part.Position - h.lastPosition).Magnitude < 60 then
            local prompt = drop:FindFirstChildWhichIsA("ProximityPrompt", true)
            if prompt and prompt.Enabled then
                h.lootVisited[drop], h.lootCount = true, (h.lootCount or 0) + 1
                root.CFrame = CFrame.new(part.Position + Vector3.new(0, 0, 2))
                fireproximityprompt(prompt, prompt.HoldDuration)
                return
            end
        end
    end
end
local function huntTick(dt)
    local now, generation = os.clock(), state.generation
    if now < state.respawnGraceUntil then state.phase = "Respawn · Hunt 데이터 대기"; return end
    if not state.hunt then
        state.hunt = {seen = false, nextAccept = 0, nextAction = 0, deadline = now + 90, lootVisited = {}}
    end
    local h = state.hunt
    if now < h.nextAccept then
        state.questStep, state.target = "cooldown", nil
        state.phase = string.format("%s Quest cooldown · %.1fs", state.mode, h.nextAccept - now)
        collectHuntLoot(h)
        return
    end
    local found, problem = activeHunt(state.mode)
    if problem then state.phase = problem; state.target = nil; return end
    if found then
        restoreEquip()
        h.seen, h.missingSince, h.awaitClaim = true, nil, nil
        if found.status.complete then
            state.target, state.questStep = nil, "huntComplete"
            releaseSkill(); restoreTracking()
            state.phase = "Hunt 완료 반영 대기 · " .. found.name
            collectHuntLoot(h)
        else
            state.questStep = "active"
            farm(found.name, dt)
            if state.target and state.target.root.Parent then h.lastPosition = state.target.root.Position end
            state.phase = state.mode .. " Quest · " .. found.name
        end
        return
    end
    state.target = nil
    if h.seen then
        state.questStep = "huntConfirm"
        h.missingSince = h.missingSince or now
        if now - h.missingSince >= 1 then
            h.seen, h.nextAccept, h.nextAction, h.deadline = false, now, now, now + 90
            h.bellAttempts, h.promptAt, h.lootVisited, h.lootCount = 0, nil, {}, 0
            state.observedCycles = state.observedCycles + 1
            releaseSkill(); restoreTracking(); haltMotion()
            log("Hunt 종료 확인. 수락될 때까지 다시 대화합니다.")
        end
        return
    end
    if h.awaitClaim then
        if now >= (h.releaseEquipAt or 0) then restoreEquip() end
        if now < h.awaitClaim then state.phase = "Hunt 수락 반영 대기"; return end
        h.awaitClaim, h.nextAction = nil, now + 1
        log("Hunt 수락을 확인하지 못했습니다. 잠시 후 다시 확인합니다.")
    end
    if now < h.nextAction then return end
    h.nextAction = now + 1
    if type(firesignal) ~= "function" then stop("Crow / Muzan 자동 수락에 firesignal이 필요합니다."); return end
    state.questStep = "huntAccept"
    if claimHunt() then
        if state.generation ~= generation then return end
        h.awaitClaim, h.lastPosition, h.lootVisited, h.lootCount = now + 1, nil, {}, 0
        h.releaseEquipAt = now + 0.5
        return
    end
    if now > h.deadline then
        restoreEquip()
        h.nextAction, h.deadline, h.bellAttempts = now + 1, now + 91, 0
        log("Hunt 메뉴를 찾지 못했습니다. 슬롯·종족·선행 조건을 확인하세요.")
        return
    end
    if state.mode == "crow" then
        state.phase = "Crow Quest · Hunt 메뉴 열기"
        if not equipSlot(state.crowSlot) then log("Crow Toolbar Slot에 접근하지 못했습니다.") end
    else
        state.phase = "Muzan Quest · Give me a task"
        local model = path(workspace, {"Debree", "MuzanLairModel"})
        local npcRoot = model and modelRoot(model)
        local _, _, root = character()
        if npcRoot and root then
            restoreEquip()
            root.CFrame = npcRoot.CFrame * CFrame.new(0, 0, 3)
            if not h.promptAt or now - h.promptAt > 8 then
                local prompt = model:FindFirstChildWhichIsA("ProximityPrompt", true)
                if prompt and prompt.Enabled and type(fireproximityprompt) == "function" then
                    h.promptAt = now
                    fireproximityprompt(prompt, prompt.HoldDuration)
                    if state.generation ~= generation then return end
                end
            end
            dialogueChoice("Give me a task")
        elseif not h.bellAt or now - h.bellAt >= 10 then
            if (h.bellAttempts or 0) < 3 then
                if not windowActive or Input:GetFocusedTextBox() then return end
                if h.bellReadyAt and now >= h.bellReadyAt then
                    h.bellReadyAt = nil
                    h.bellAt, h.bellAttempts = now, (h.bellAttempts or 0) + 1
                    activateBell()
                elseif not h.bellReadyAt and equipSlot(state.bellSlot) then
                    h.bellReadyAt, h.nextAction = now + 0.2, now + 0.25
                end
            else log("MuzanLairModel 미확인. Biwa Bell 슬롯이나 입장 조건을 확인하세요.") end
        end
    end
end

local sunRestore = setmetatable({}, {__mode = "k"})
restoreExtras = function()
    for object, disabled in pairs(sunRestore) do if object.Parent then object.Disabled = disabled end end
    table.clear(sunRestore)
end
local function extrasTick()
    if state.noSunLocal then
        local object = path(playerGui, {"UCS", "Game_Play", "SunDamage"})
        if object and object:IsA("LocalScript") then
            if sunRestore[object] == nil then sunRestore[object] = object.Disabled end
            object.Disabled = true
        end
    else restoreExtras() end
end

local function start(mode)
    stop(nil, false)
    if (mode == "farm" or mode == "boss" or mode == "quest" or mode == "level" or mode == "crow" or mode == "muzan") and state.attackMode == "원본 전투 호출" and not event() then
        log("게임 통신 객체가 없습니다. 상태 탭에서 경로를 확인하세요."); refreshUI(); return
    end
    if mode == "quest" or mode == "level" or mode == "crow" or mode == "muzan" then
        local holder, problem = questHolder()
        if not holder then log(problem); refreshUI(); return end
    end
    state.mode, state.questStep, state.actionCount, state.lastAction = mode, "", 0, -math.huge
    state.completedObserved, state.errors = false, 0
    log("Automation start · " .. mode)
    refreshUI()
end
local function travel(position, title)
    stop(nil, false)
    state.mode, state.destination, state.phase = "move", position, title
    state.questDeadline = os.clock() + 120
    log(title)
    refreshUI()
end

-- Only replicated objects are inspected. Missing player fields remain Unknown.
state.espEnabled, state.espDistance = false, 5000
local espGroups = {Player=true, Boss=true, Monster=false, NPC=false, Muzan=true, ["Spider Lily"]=true}
local espColors = {Player={90,200,255}, Boss={255,100,100}, Monster={255,180,80}, NPC={100,255,160}, Muzan={220,120,255}, ["Spider Lily"]={100,150,255}}
local espObjects, worldSpecial = {}, {}
local specialScanAt = 0
clearESP = function()
    for _, entry in pairs(espObjects) do entry.gui:Destroy() end
    table.clear(espObjects)
end
local function replicatedSlot(who)
    local data = path(RS, {"Player_Service","Data",who.Name})
    local number = valueOf(data,"slotEquipped")
    return number ~= nil and path(data,{"slots","Slot"..tostring(number)}) or nil
end
local function publicField(who, name)
    local slot = replicatedSlot(who)
    for _, parent in ipairs({who, who.Character or who, slot or who, who:FindFirstChild("leaderstats") or who}) do
        local value = valueOf(parent,name)
        if type(value)=="string" or type(value)=="number" then return tostring(value) end
    end
    return "Unknown"
end
local function scanSpecial()
    if os.clock()<specialScanAt then return end
    specialScanAt=os.clock()+3
    worldSpecial={}
    for _, item in ipairs(workspace:GetDescendants()) do
        if (item.Name=="Muzan" or item.Name=="Spider Lily") and (item:IsA("Model") or item:IsA("BasePart")) then
            local root=modelRoot(item) or item:FindFirstChildWhichIsA("BasePart",true)
            if root and not Players:GetPlayerFromCharacter(item) then
                table.insert(worldSpecial,{model=item,root=root,name=item.Name})
            end
        end
    end
end
local function espTick()
    if not state.espEnabled then clearESP(); return end
    local _,_,root=character()
    if not root or not gui then clearESP(); return end
    scanSpecial()
    local seen={}
    local function draw(model,part,name,group,details)
        if not espGroups[group] or not part or not part.Parent then return end
        local distance=(part.Position-root.Position).Magnitude
        if distance>state.espDistance then return end
        seen[model]=true
        local entry=espObjects[model]
        if not entry then
            local bill=Instance.new("BillboardGui")
            bill.Name="PS2_ESP"; bill.Size=UDim2.fromOffset(250,76)
            bill.AlwaysOnTop=true; bill.StudsOffset=Vector3.new(0,4,0); bill.Parent=gui
            local text=Instance.new("TextLabel")
            text.Size=UDim2.fromScale(1,1); text.BackgroundTransparency=1
            text.TextSize=13; text.Font=Enum.Font.GothamSemibold
            text.TextStrokeTransparency=0.25; text.TextWrapped=true; text.Parent=bill
            entry={gui=bill,text=text}; espObjects[model]=entry
        end
        local color=espColors[group]
        entry.gui.Adornee=part; entry.gui.MaxDistance=state.espDistance
        entry.text.TextColor3=Color3.fromRGB(color[1],color[2],color[3])
        entry.text.Text=string.format("%s · %s\n%d studs%s",group,name,math.floor(distance),details or "")
    end
    for _, who in ipairs(Players:GetPlayers()) do
        if who~=player and who.Character then
            draw(who.Character,modelRoot(who.Character),who.Name,"Player","\nBreathing: "..publicField(who,"Breathing").." | Level: "..publicField(who,"Level").." | Clan: "..publicField(who,"Clan"))
        end
    end
    for _, mob in ipairs(mobs) do
        if mob.hum.Health>0 then draw(mob.model,mob.root,mob.name,bossSet[mob.name] and "Boss" or "Monster") end
    end
    for _, npc in ipairs(npcs) do draw(npc.instance,npc.root,npc.name,"NPC") end
    for _, item in ipairs(worldSpecial) do draw(item.model,item.root,item.name,item.name) end
    for model,entry in pairs(espObjects) do if not seen[model] then entry.gui:Destroy();espObjects[model]=nil end end
end
local gear = {
    {name="Firstlight Spear",at={-889.6,983.1,-3962.7}},
    {name="Firstlight Katana",at={-1266.5,982.7,-3347.2}},
    {name="Nightfall Scythe",at={-1205.3,968.8,-3186.8}},
    {name="Nightfall Axe and Mace",at={1082.9,1583.8,-810.7}},
    {name="Firstlight Mask",at={2232.1,603.6,-509}},
    {name="Nightfall Katana",at={-570.2,815.2,111.9}},
    {name="Firstlight Insect Katana",at={-698.1,857.6,75}},
    {name="Nightfall Mask",at={-1628.7,1229.1,1143.3}},
    {name="Nightfall Claws",at={-1815.8,-43.7,438}},
    {name="Firstlight War Fans",at={-424.6,1353.6,-3528.6},kind="dig"},
    {name="Firstlight Tanto",at={-1374.6,1420.5,-3824.4},kind="dig"},
    {name="Nightfall Top",at={1732.1,694,-764.6},kind="top",series="Nightfall"},
    {name="Firstlight Top",at={1732.1,694,-764.6},kind="top",series="Firstlight"},
}
local trainings={"Meditation","Pushups","Cup Game","Aim Training","Boulder Split","Boulder Push","Squat Rack"}
local activity
local function ownInventory()
    local slot=replicatedSlot(player)
    return path(slot,{"Inventory","Inventory"})
end
local function owns(name)
    local inventory=ownInventory()
    return inventory and inventory:FindFirstChild(name)~=nil
end
local function promptPosition(prompt)
    local parent=prompt.Parent
    if parent and parent:IsA("Attachment") then return parent.WorldPosition end
    if parent and parent:IsA("BasePart") then return parent.Position end
end
local function beginActivity(mode,item)
    if type(fireproximityprompt)~="function" then log("fireproximityprompt 지원이 필요합니다.");return end
    if mode=="training" then
        local misc=playerGui:FindFirstChild("Misc")
        if misc and #misc:GetChildren()>0 then log("진행 중인 미니게임을 먼저 마쳐 주세요.");return end
    end
    if mode=="schematic" then
        if not ownInventory() then log("Inventory가 없어 획득을 확인할 수 없습니다.");return end
        if owns(item.name.." Schematic") then log("이미 보유: "..item.name.." Schematic");return end
        if item.kind=="dig" then
            if not owns("Shovel") then log("Shovel이 필요합니다.");return end
            local slot=replicatedSlot(player)
            if item.name=="Firstlight War Fans" and not path(slot,{"WorldEvents","WarFansClue_4"}) then log("WarFansClue_4 선행 단서가 필요합니다.");return end
            if item.name=="Firstlight Tanto" then
                local ok,worn=pcall(function() return require(path(RS,{"CAM","Global","Series"})).WornEntry(player,"Mushroom Lit Lantern") end)
                if not ok or not worn then log("Mushroom Lit Lantern 착용을 확인해야 합니다.");return end
            end
        elseif item.kind=="top" then
            local ok,gate=pcall(function() return require(path(RS,{"CAM","Global","Series"})).CapstoneGate(item.series) end)
            if not ok or type(gate)~="table" then log("Series 선행 조건을 확인할 수 없습니다.");return end
            for _,name in ipairs(gate) do if not owns(name) then log("필요한 선행 아이템: "..tostring(name));return end end
        end
    end
    start(mode)
    activity={item=item,nextAction=0,deadline=os.clock()+180,phase="seek"}
end
local function activityTick(dt)
    if not activity then stop("진행 정보 없음");return end
    local a,now=activity,os.clock()
    if now<a.nextAction then return end
    if now>a.deadline then stop("확인 시간 초과. 현재 진행 상황과 선행 조건을 확인하세요.");return end
    local _,_,root=character()
    if not root then return end
    local prompt,position
    if state.mode=="training" then
        state.phase="Training · "..a.item
        if a.phase=="started" then
            local misc=playerGui:FindFirstChild("Misc")
            if misc and #misc:GetChildren()>0 then
                local remote=event()
                if remote then remote:FireServer("training_signaler","Stop",true) end
                stop("Training 완료 신호를 전송했습니다. 실제 진행도는 게임에서 확인하세요.")
            end
            return
        end
        local folder=path(workspace,{"Training",a.item})
        prompt=folder and folder:FindFirstChildWhichIsA("ProximityPrompt",true)
        position=prompt and promptPosition(prompt)
    else
        local item=a.item
        state.phase=item.name.." Schematic · "..a.phase
        if owns(item.name.." Schematic") then stop("획득 확인: "..item.name.." Schematic");return end
        position=Vector3.new(table.unpack(item.at))
        if item.kind=="top" then
            local npc=findNpc("Blacksmith Togane",root.Position)
            if npc then
                position=npc.root.Position
                prompt=npc.instance:FindFirstChildWhichIsA("ProximityPrompt",true)
                if a.phase=="chat" and (root.Position-position).Magnitude<=10 then
                    local remote=event()
                    if remote then remote:FireServer("SeriesCapstone",item.series) end
                    a.nextAction=now+3;return
                end
            end
        elseif item.kind=="dig" then
            local action=a.phase=="dug" and "Open" or "Dig"
            if not a.scanAt or now>=a.scanAt then
            a.scanAt=now+1; a.prompt=nil
            for _,candidate in ipairs(workspace:GetDescendants()) do
                if candidate:IsA("ProximityPrompt") and candidate.Enabled and candidate.ActionText==action then
                    local at=promptPosition(candidate)
                    if at and (at-position).Magnitude<=60 then a.prompt=candidate;break end
                end
            end
            end
            prompt=a.prompt and a.prompt.Parent and a.prompt or nil
        else
            for _,prop in ipairs(game:GetService("CollectionService"):GetTagged("StudyProp")) do
                if prop:GetAttribute("Item")==item.name then prompt=prop:FindFirstChildWhichIsA("ProximityPrompt",true);break end
            end
        end
        if prompt then position=promptPosition(prompt) or position end
    end
    if not position then state.phase=state.phase.." · 로드된 대상 대기";a.nextAction=now+1;return end
    moveTo(position+Vector3.new(3,0,0),dt,position)
    if prompt and prompt.Enabled and (root.Position-position).Magnitude<=8 then
        local generation=state.generation
        a.nextAction=now+math.max(2,prompt.HoldDuration+0.5)
        fireproximityprompt(prompt,prompt.HoldDuration)
        if generation~=state.generation or not state.alive then return end
        if state.mode=="training" then a.phase="started";a.deadline=now+15
        elseif a.item.kind=="dig" then a.phase="dug"
        elseif a.item.kind=="top" then a.phase="chat" end
    end
end

-- Local Roblox UI; no downloaded library, assets, files, clipboard or telemetry.
local colors = {bg = Color3.fromRGB(16, 20, 28), card = Color3.fromRGB(30, 38, 49),
    accent = Color3.fromRGB(82, 210, 181), text = Color3.fromRGB(232, 237, 245), muted = Color3.fromRGB(170, 183, 201)}
local function make(class, props, parent)
    local instance = Instance.new(class)
    for k, v in pairs(props) do instance[k] = v end
    instance.Parent = parent
    return instance
end
gui = make("ScreenGui", {Name = "PS2CleanRemake", ResetOnSpawn = false, DisplayOrder = 50, ZIndexBehavior = Enum.ZIndexBehavior.Sibling}, playerGui)
local panel = make("Frame", {Size = UDim2.fromOffset(820, 590), Position = UDim2.fromScale(0.5, 0.5),
    AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = colors.bg, BorderSizePixel = 0}, gui)
make("UICorner", {CornerRadius = UDim.new(0, 12)}, panel)
local uiScale = make("UIScale", {Scale = 1}, panel)
local function label(parent, text, size)
    return make("TextLabel", {Size = size or UDim2.new(1, 0, 0, 34), Text = text, TextSize = 14,
        TextWrapped = true, RichText = false, TextColor3 = colors.text, Font = Enum.Font.Gotham,
        TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1}, parent)
end
local function button(parent, text, callback)
    local b = make("TextButton", {Text = text, Size = UDim2.new(1, 0, 0, 38), BackgroundColor3 = colors.card,
        TextColor3 = colors.text, Font = Enum.Font.Gotham, TextSize = 14, TextWrapped = true, BorderSizePixel = 0}, parent)
    make("UICorner", {CornerRadius = UDim.new(0, 6)}, b)
    connect(b.Activated, function()
        if not state.alive then return end
        local ok, problem = pcall(callback)
        if not ok then stop("조작 오류: " .. tostring(problem), true) end
        refreshUI()
    end)
    return b
end
local header = label(panel, "  SLAYERS  /  CONTROL", UDim2.new(1, -190, 0, 50))
header.TextSize = 19
header.Active = true
local hide = button(panel, "접기", function() panel.Visible = false end)
hide.Size, hide.Position = UDim2.fromOffset(68, 32), UDim2.new(1, -152, 0, 9)
local close = button(panel, "종료", api.Unload)
close.Size, close.Position = UDim2.fromOffset(68, 32), UDim2.new(1, -76, 0, 9)
local reopen = button(gui, "PS2", function() panel.Visible = not panel.Visible end)
reopen.Size, reopen.Position = UDim2.fromOffset(54, 36), UDim2.fromOffset(12, 12)
local stopButton = button(panel, "■ 전체 정지  [End]", function() stop("전체 정지: 이동 설정도 복원했습니다.", true) end)
stopButton.Position, stopButton.Size = UDim2.new(1, -220, 1, -50), UDim2.fromOffset(204, 36)
stopButton.BackgroundColor3 = Color3.fromRGB(123, 57, 52)
local statusLabel = label(panel, "", UDim2.new(1, -252, 0, 42))
statusLabel.Position = UDim2.new(0, 16, 1, -53)
statusLabel.TextSize = 12
make("Frame", {Position = UDim2.fromOffset(166, 74), Size = UDim2.new(0, 1, 1, -146),
    BackgroundColor3 = Color3.fromRGB(42, 51, 65), BorderSizePixel = 0}, panel)
local badge = label(panel, "v4.0  ·  LOCAL UI", UDim2.fromOffset(148, 22))
badge.Position, badge.TextSize, badge.TextColor3 = UDim2.fromOffset(18, 51), 11, colors.accent
local pageTitle = label(panel, "자동사냥", UDim2.new(1, -204, 0, 34))
pageTitle.Position, pageTitle.TextSize = UDim2.fromOffset(188, 63), 23
local pages, tabButtons, bindings = {}, {}, {}
local pageTitles = {"자동사냥", "보스 사냥", "퀘스트", "이동", "자동 스킬", "상태 / 설정", "Combat", "Misc", "ESP", "장비 / 설계도", "트레이닝"}
local selectedTab = 1
local function newPage()
    local p = make("ScrollingFrame", {Size = UDim2.new(1, -204, 1, -180), Position = UDim2.fromOffset(188, 106),
        CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 5,
        BackgroundTransparency = 1, BorderSizePixel = 0, Visible = false}, panel)
    make("UIPadding", {PaddingRight = UDim.new(0, 9), PaddingBottom = UDim.new(0, 8)}, p)
    make("UIListLayout", {Padding = UDim.new(0, 9), SortOrder = Enum.SortOrder.LayoutOrder}, p)
    return p
end
local navigation = make("ScrollingFrame", {Position=UDim2.fromOffset(10,95), Size=UDim2.new(0,148,1,-172), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=3, CanvasSize=UDim2.fromOffset(0,#pageTitles*49)}, panel)
for index, title in ipairs(pageTitles) do
    pages[index] = newPage()
    local tabIndex = index
    local b = button(navigation, string.format("%02d    %s", index, title), function()
        selectedTab = tabIndex
        for i, page in ipairs(pages) do page.Visible = i == selectedTab end
    end)
    b.Size, b.Position = UDim2.fromOffset(138, 43), UDim2.fromOffset(6, (index - 1) * 49)
    b.TextSize = 13
    tabButtons[index] = b
end
pages[1].Visible = true
local function row(parent, text)
    local l = label(parent, text)
    l.AutomaticSize, l.Size = Enum.AutomaticSize.Y, UDim2.new(1, 0, 0, 26)
    l.TextColor3 = colors.muted
    return l
end
local function boundButton(parent, getText, fn)
    local b = button(parent, getText(), fn)
    table.insert(bindings, function() b.Text = getText() end)
    return b
end
local function cycle(parent, title, key, choices)
    return boundButton(parent, function() return title .. ": " .. tostring(state[key]) end, function()
        local index = table.find(choices, state[key]) or 1
        state[key] = choices[index % #choices + 1]
    end)
end
local function toggle(parent, title, key)
    return boundButton(parent, function() return title .. ": " .. (state[key] and "켜짐" or "꺼짐") end, function()
        state[key] = not state[key]
        if key == "autoSkill" and not state[key] then releaseSkill() end
        if key == "noSunLocal" and not state[key] then restoreExtras() end
        if (key == "noclip" or key == "walkOverride") and not state[key] then restoreMovement() end
    end)
end
local function section(parent, title)
    local frame = make("Frame", {Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(22, 28, 38), BorderSizePixel = 0}, parent)
    make("UICorner", {CornerRadius = UDim.new(0, 10)}, frame)
    make("UIPadding", {PaddingTop = UDim.new(0, 12), PaddingBottom = UDim.new(0, 12),
        PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 12)}, frame)
    make("UIListLayout", {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder}, frame)
    local heading = label(frame, title, UDim2.new(1, 0, 0, 23))
    heading.TextColor3, heading.TextSize = colors.accent, 12
    return frame
end
local function numeric(parent, title, key, minimum, maximum, integer)
    local frame = make("Frame", {Size = UDim2.new(1, 0, 0, 38), BackgroundTransparency = 1}, parent)
    local l = label(frame, title, UDim2.new(0.67, 0, 1, 0))
    l.TextSize = 13
    local box = make("TextBox", {Size = UDim2.new(0.3, 0, 1, 0), Position = UDim2.fromScale(0.7, 0),
        Text = tostring(state[key]), ClearTextOnFocus = false, BackgroundColor3 = colors.card,
        TextColor3 = colors.text, TextSize = 14, Font = Enum.Font.Gotham, BorderSizePixel = 0}, frame)
    connect(box.FocusLost, function()
        local n = tonumber(box.Text)
        if not n or n ~= n or math.abs(n) == math.huge then log("숫자를 입력하세요: " .. title)
        else state[key] = math.clamp(integer and math.floor(n) or n, minimum, maximum) end
        box.Text = tostring(state[key])
    end)
    return box
end
local popup
local popupConnections = {}
local function closePopup()
    for _, c in ipairs(popupConnections) do c:Disconnect() end
    table.clear(popupConnections)
    if popup then popup:Destroy(); popup = nil end
end
local function chooser(title, options, selected)
    closePopup()
    popup = make("Frame", {Size = UDim2.fromScale(1, 1), BackgroundColor3 = colors.bg, ZIndex = 20}, panel)
    local titleLabel = label(popup, "  " .. title, UDim2.new(1, -90, 0, 44))
    titleLabel.ZIndex = 21
    local exitButton = make("TextButton", {Text = "닫기", Size = UDim2.fromOffset(70, 34), Position = UDim2.new(1, -82, 0, 6),
        BackgroundColor3 = colors.card, TextColor3 = colors.text, TextSize = 14, ZIndex = 21}, popup)
    table.insert(popupConnections, exitButton.Activated:Connect(closePopup))
    local query = make("TextBox", {Text = "", PlaceholderText = "이름 검색", ClearTextOnFocus = false,
        Size = UDim2.new(1, -24, 0, 38), Position = UDim2.fromOffset(12, 48), TextSize = 16,
        BackgroundColor3 = colors.card, TextColor3 = colors.text, ZIndex = 21}, popup)
    local list = make("ScrollingFrame", {Size = UDim2.new(1, -24, 1, -104), Position = UDim2.fromOffset(12, 96),
        BackgroundTransparency = 1, CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 5, ZIndex = 21, BorderSizePixel = 0}, popup)
    make("UIListLayout", {Padding = UDim.new(0, 6)}, list)
    local entries = {}
    for _, option in ipairs(options) do
        local item = option
        local b = make("TextButton", {Text = item.label, TextWrapped = true, TextSize = 13, Size = UDim2.new(1, -8, 0, 42),
            BackgroundColor3 = colors.card, TextColor3 = colors.text, BorderSizePixel = 0, ZIndex = 22}, list)
        table.insert(entries, {button = b, text = string.lower(item.label)})
        table.insert(popupConnections, b.Activated:Connect(function()
            closePopup()
            local ok, problem = pcall(selected, item.value)
            if not ok then stop("선택 오류: " .. tostring(problem), true) end
            refreshUI()
        end))
    end
    table.insert(popupConnections, query:GetPropertyChangedSignal("Text"):Connect(function()
        for _, entry in ipairs(entries) do entry.button.Visible = string.find(entry.text, string.lower(query.Text), 1, true) ~= nil end
        list.CanvasPosition = Vector2.zero
    end))
end

row(pages[1], "대상을 선택하고 시작하세요. 공격 스타일과 간격은 Combat 탭에서 설정합니다.")
local farmTargetCard = section(pages[1], "TARGET  /  대상")
boundButton(farmTargetCard, function() return "몬스터 선택: " .. state.selectedMob end, function()
    scanWorld()
    local names = {["[전체]"] = true}
    for _, name in ipairs(DATA.mobs) do if not bossSet[name] then names[name] = true end end
    for _, mob in ipairs(mobs) do if not (bossSet[mob.name] or bossSet[mob.model.Name]) then names[mob.name] = true end end
    local choices = {}
    for name in pairs(names) do table.insert(choices, {label = name, value = name}) end
    table.sort(choices, function(a,b) return a.label < b.label end)
    chooser("몬스터 선택", choices, function(name) stop(nil); state.selectedMob = name end)
end)
local attackCard = section(pages[7], "COMBAT  /  공격")
cycle(attackCard, "공격 방식", "attackMode", {"원본 전투 호출", "장착 Tool 사용"})
boundButton(attackCard, function() return "전투 스타일: " .. state.style end, function()
    local choices = {}
    for _, name in ipairs({"Combat", "Regular Katana", "Sickles", "Obi Manipulation", "Insect Katana", "Axe and Mace", "Sound Katanas", "Scythe", "Claws", "Tai Chi", "Bear", "Shotgun", "Tanto", "Bladed Wagasa", "Spear", "War Fans", "Gauntlet", "Blood Manipulation"}) do
        table.insert(choices, {label=name, value=name})
    end
    chooser("실제로 사용하는 스타일 선택", choices, function(name) state.style = name end)
end)
local poseCard = section(pages[1], "TRACKING  /  추적과 자세")
cycle(poseCard, "추적 방식", "farmTravel", {"빠른 텔포", "부드러운 추적"})
cycle(poseCard, "사냥 위치", "positionMode", {"위", "아래", "뒤", "앞"})
row(poseCard, "위: 엎드린 방향으로 아래를 공격 · 아래: 위를 바라보며 공격")
toggle(poseCard, "추적 중 충돌 해제", "farmNoclip")
numeric(poseCard, "대상과 거리 (2–10)", "offset", 2, 10)
numeric(attackCard, "공격 간격 초 (0 = 매 프레임)", "attackInterval", 0, 2)
row(attackCard, "0은 프레임당 최대 1회 요청입니다. 실제 공격 속도와 쿨다운은 서버가 결정합니다.")
numeric(attackCard, "장비 슬롯 번호 (0 = 변경하지 않음)", "equipmentSlot", 0, 20, true)
local farmStart = boundButton(farmTargetCard, function() return state.mode == "farm" and "자동사냥 정지" or "자동사냥 시작" end,
    function() if state.mode == "farm" then stop("자동사냥 정지") else start("farm") end end)

farmStart.BackgroundColor3, farmStart.TextColor3 = colors.accent, colors.bg
local bossCard = section(pages[2], "BOSS  /  원본 보스 목록 33종")
row(bossCard, "보스 전체는 현재 로딩된 보스 중 가까운 대상을 선택합니다. 출현하지 않은 보스는 대기합니다.")
boundButton(bossCard, function() return "선택: " .. state.selectedBoss end, function()
    scanWorld()
    local live = {}
    for _, mob in ipairs(mobs) do if mob.hum.Health > 0 then live[mob.name] = true; live[mob.model.Name] = true end end
    local choices = {{label = "[보스 전체] · 가까운 생존 보스", value = "[보스 전체]"}}
    for _, name in ipairs(DATA.bosses) do
        table.insert(choices, {label = (live[name] and "[출현] " or "[미확인] ") .. name, value = name})
    end
    chooser("보스 선택", choices, function(name) stop(nil); state.selectedBoss = name end)
end)
local bossStart = boundButton(bossCard, function() return state.mode == "boss" and "보스 사냥 정지" or "보스 사냥 시작" end,
    function() if state.mode == "boss" then stop("보스 사냥 정지") else start("boss") end end)
bossStart.BackgroundColor3, bossStart.TextColor3 = colors.accent, colors.bg
row(pages[2], "공격 스타일은 Combat, 자세·추적 설정은 자동사냥 탭과 공유합니다. 자동 스킬도 보스 사냥에 적용됩니다.")

row(pages[3], "선택한 처치 퀘스트를 수락 → 사냥 → 완료 요청합니다. 레벨·선행 조건은 게임이 검사합니다.")
boundButton(pages[3], function() return "퀘스트: " .. DATA.quests[state.questIndex].title end, function()
    local choices = {}
    for index, q in ipairs(DATA.quests) do table.insert(choices, {label = "Lv " .. q.level .. " | " .. q.title .. " | " .. q.npc, value = index}) end
    chooser("처치 퀘스트 선택", choices, function(index) stop(nil); state.questIndex = index end)
end)
local questInfo = row(pages[3], "")
toggle(pages[3], "완료 후 같은 퀘스트 반복", "repeatQuest")
boundButton(pages[3], function() return state.mode == "quest" and "퀘스트 자동화 정지" or "퀘스트 자동화 시작" end,
    function() if state.mode == "quest" then stop("퀘스트 자동화 정지") else start("quest") end end)
row(pages[3], "배송·수집·선행 스토리 분기는 이 버전에 포함하지 않았습니다. 직접 수락한 처치 퀘스트도 이어서 진행할 수 있습니다.")

local levelCard = section(pages[3], "AUTO LEVEL FARM")
row(levelCard, "현재 Level 이하의 처치 퀘스트를 자동 선택합니다. 진행 중인 퀘스트를 먼저 마치고, 올라간 Level로 다시 선택하고 수락될 때까지 대화합니다.")
local levelLabel = row(levelCard, "Level · 읽는 중")
boundButton(levelCard, function() return state.mode == "level" and "Auto Level Farm 정지" or "Auto Level Farm 시작" end,
    function() if state.mode == "level" then stop("Auto Level Farm 정지") else start("level") end end)
row(levelCard, "선행 조건·NPC 접근 실패 시 다른 후보를 시도합니다. 배송·스토리 선행 퀘스트까지 자동 해결하지는 않습니다.")
local huntCard = section(pages[3], "CROW / MUZAN QUESTS")
numeric(huntCard, "Crow Toolbar Slot", "crowSlot", 1, 8, true)
boundButton(huntCard, function() return state.mode == "crow" and "Crow Quest 정지" or "Crow Quest 시작" end,
    function() if state.mode == "crow" then stop("Crow Quest 정지") else start("crow") end end)
numeric(huntCard, "Biwa Bell Toolbar Slot", "bellSlot", 1, 8, true)
boundButton(huntCard, function() return state.mode == "muzan" and "Muzan Quest 정지" or "Muzan Quest 시작" end,
    function() if state.mode == "muzan" then stop("Muzan Quest 정지") else start("muzan") end end)
row(huntCard, "잠기지 않은 Hunt를 수락하고 보스를 사냥합니다. 수락 확인까지 대화를 반복합니다. Crow / Biwa Bell 슬롯을 먼저 맞추세요.")

row(pages[4], "모든 부드러운 이동·추적 속도는 기본 100입니다. 사냥 중 추적 방식은 자동사냥 탭에서 선택합니다.")
cycle(pages[4], "이동 방식", "moveMethod", {"부드러운 이동", "즉시 이동", "걷기"})
numeric(pages[4], "공통 부드러운 이동·추적 속도 (10–250)", "speed", 10, 250)
boundButton(pages[4], function() return "NPC 선택: " .. state.selectedNpc end, function()
    scanWorld()
    local names, choices = {}, {}
    for name in pairs(DATA.npcs) do names[name] = true end
    for _, npc in ipairs(npcs) do names[npc.name] = true end
    for name in pairs(names) do table.insert(choices, {label=name, value=name}) end
    table.sort(choices, function(a,b) return a.label < b.label end)
    chooser("NPC 선택", choices, function(name) state.selectedNpc = name end)
end)
button(pages[4], "선택한 NPC로 이동", function()
    local _, _, root = character()
    if not root then log("캐릭터가 준비되지 않았습니다."); return end
    local npc = findNpc(state.selectedNpc, root.Position)
    local point = npc and (npc.root.Position - npc.root.CFrame.LookVector * 4) or fallback(state.selectedNpc, DATA.npcs)
    if point then travel(point, "NPC 이동: " .. state.selectedNpc) else log("NPC와 좌표를 찾지 못했습니다.") end
end)
state.x, state.y, state.z = 0, 0, 0
local xBox = numeric(pages[4], "X 좌표", "x", -100000, 100000)
local yBox = numeric(pages[4], "Y 좌표", "y", -100000, 100000)
local zBox = numeric(pages[4], "Z 좌표", "z", -100000, 100000)
button(pages[4], "현재 위치를 좌표 칸에 넣기", function()
    local _, _, root = character()
    if root then
        state.x, state.y, state.z = root.Position.X, root.Position.Y, root.Position.Z
        xBox.Text, yBox.Text, zBox.Text = string.format("%.2f",state.x), string.format("%.2f",state.y), string.format("%.2f",state.z)
    end
end)
button(pages[4], "입력 좌표로 이동", function() travel(Vector3.new(state.x, state.y, state.z), "좌표 이동") end)
toggle(pages[4], "충돌 해제", "noclip")
toggle(pages[4], "걷기 / 점프 설정 적용", "walkOverride")
numeric(pages[4], "걷기 속도 (8–100)", "walkSpeed", 8, 100)
numeric(pages[4], "점프 파워 (20–150)", "jumpPower", 20, 150)

local skillCard = section(pages[5], "SKILLS  /  Z · X · C · V · B · N · K")
toggle(skillCard, "자동 스킬", "autoSkill")
row(skillCard, "키를 켜고 재입력 간격을 정하세요. 공격 대상이 가까이 있을 때만 순서대로 입력합니다. 실제 스킬 쿨다운은 게임에서 확인하세요.")
for _, name in ipairs(skillKeys) do
    local key = name
    local frame = make("Frame", {Size = UDim2.new(1, 0, 0, 40), BackgroundTransparency = 1}, skillCard)
    local b = boundButton(frame, function() return key .. (skills[key].enabled and "    ON" or "    OFF") end, function()
        skills[key].enabled = not skills[key].enabled
        if not skills[key].enabled and heldSkill and heldSkill.key == key then releaseSkill() end
    end)
    b.Size = UDim2.new(0.42, 0, 1, 0)
    local l = label(frame, "간격 (초)", UDim2.new(0.25, 0, 1, 0))
    l.Position, l.TextColor3 = UDim2.fromScale(0.48, 0), colors.muted
    local box = make("TextBox", {Size = UDim2.new(0.22, 0, 1, 0), Position = UDim2.fromScale(0.78, 0),
        Text = tostring(skills[key].interval), ClearTextOnFocus = false, BackgroundColor3 = colors.card,
        TextColor3 = colors.text, TextSize = 14, BorderSizePixel = 0}, frame)
    connect(box.FocusLost, function()
        local value = tonumber(box.Text)
        if value and value == value and math.abs(value) < math.huge then skills[key].interval = math.clamp(value, 0.5, 120) end
        box.Text = tostring(skills[key].interval)
    end)
    table.insert(bindings, function() b.BackgroundColor3 = skills[key].enabled and Color3.fromRGB(32, 84, 73) or colors.card end)
end
local inputCard = section(pages[5], "INPUT  /  키 입력")
cycle(inputCard, "입력 방식", "skillBackend", {"자동", "VirtualInputManager", "실행기 키 입력"})
numeric(inputCard, "키 누름 시간 (초)", "skillHold", 0.05, 1)
numeric(inputCard, "스킬 사이 최소 간격 (초)", "skillGap", 0.2, 5)
row(inputCard, "채팅·검색 입력 중에는 스킬을 멈춥니다. 정지·사망·종료 시 누르고 있던 키를 해제합니다.")

toggle(pages[6], "리스폰 후 자동화 재개", "autoResume")
local diagnostics = row(pages[6], "")
button(pages[6], "게임 구조 다시 확인", function()
    scanWorld()
    local holder, problem = questHolder()
    diagnostics.Text = "전투 Event: " .. (event() and "확인" or "없음") .. "\n몬스터: " .. #mobs .. " / NPC: " .. #npcs ..
        "\n퀘스트 목록: " .. (holder and "확인" or tostring(problem)) ..
        "\nfireproximityprompt: " .. tostring(type(fireproximityprompt) == "function") ..
        " / firesignal: " .. tostring(type(firesignal) == "function")
    log("구조 확인 완료. Event 존재가 서버 동작 성공을 뜻하지는 않습니다.")
end)
row(pages[6], "RightShift: 창 표시 / 숨김 · End: 전체 정지\n외부 다운로드·웹훅·파일 쓰기 없음. 실제 게임 실행 검증은 아직 하지 않았습니다.")
local logLabel = row(pages[6], "")
local defenseCard = section(pages[7], "PARRY  /  확인 결과")
row(defenseCard, "Auto Parry / Infinite Parry: 현재 미지원. 원본 AutoParry는 프리미엄 안내만 호출하며 Blocking 모듈 내용·패링 조건은 덤프에 없습니다.")
local miscCard = section(pages[8], "MISC  /  보조 기능")
toggle(miscCard, "Anti AFK", "antiAFK")
toggle(miscCard, "SunDamage LocalScript 비활성 (실험)", "noSunLocal")
row(miscCard, "확인된 PlayerGui.UCS.Game_Play.SunDamage만 비활성화합니다. 서버의 Sun 피해까지 차단한다고 검증한 기능은 아닙니다. 해제·종료하면 원래 설정을 복원합니다.")
row(miscCard, "Infinite Dash / No Dash Cooldown: 현재 미지원. 원본에 기능 구현이 없으며 Dashing / Dash_Handler 이름만으로 쿨다운을 복원할 수 없습니다.")
row(miscCard, "사망 후 자동 재개는 기본 ON입니다. 전체 정지 [End]를 누르면 대기 중인 재개도 중단합니다.")

refreshUI = function()
    if not state.alive then return end
    for _, binding in ipairs(bindings) do binding() end
    for i, b in ipairs(tabButtons) do b.BackgroundColor3 = i == selectedTab and Color3.fromRGB(32, 84, 73) or colors.card end
    pageTitle.Text = pageTitles[selectedTab]
    local q = DATA.quests[state.questIndex]
    levelLabel.Text = "Current Level · " .. tostring(readLevel() or "unavailable")
    questInfo.Text = "NPC: " .. q.npc .. " / 대상: " .. q.mob .. "\n대화 항목: " .. q.key
    statusLabel.Text = state.phase .. "\n" .. state.message
    logLabel.Text = "최근 기록\n" .. table.concat(logs, "\n")
end
local dragging, dragInput, dragStart, panelStart
connect(header.InputBegan, function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging, dragInput, dragStart, panelStart = true, input, input.Position, panel.Position
    end
end)
connect(Input.InputEnded, function(input)
    if input == dragInput or input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)
connect(Input.InputChanged, function(input)
    if dragging and (input == dragInput or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local d = input.Position - dragStart
        panel.Position = panelStart + UDim2.fromOffset(d.X, d.Y)
    end
end)
connect(Input.InputBegan, function(input, processed)
    if input.KeyCode == Enum.KeyCode.End then stop("전체 정지: 이동 설정도 복원했습니다.", true)
    elseif not processed and input.KeyCode == Enum.KeyCode.RightShift then panel.Visible = not panel.Visible end
end)
connect(Input.WindowFocusReleased, function() windowActive = false; releaseSkill(); releaseMouse() end)
connect(Input.WindowFocused, function() windowActive = true end)
connect(player.CharacterRemoving, function()
    releaseSkill()
    releaseMouse()
    restoreEquip()
    restoreTracking()
    restoreMovement()
    state.target = nil
    if not state.autoResume then stop("캐릭터가 사라져 자동화를 정지했습니다.", true)
    else
        state.generation = state.generation + 1
        if activity then activity.phase="seek";activity.deadline=os.clock()+180;activity.nextAction=0 end
        if state.questStep ~= "cooldown" then state.questStep = "" end
        if state.hunt then state.hunt.nextAction = 0; state.hunt.deadline = os.clock() + 90 end
        log("리스폰을 기다립니다. 현재 자동화와 퀘스트 대기를 유지합니다.")
    end
end)
connect(player.CharacterAdded, function()
    state.respawnGraceUntil = os.clock() + 10
end)
connect(player.Idled, function()
    if not state.antiAFK or not state.alive then return end
    local ok, problem = pcall(function()
        local user = game:GetService("VirtualUser")
        user:CaptureController()
        user:ClickButton2(Vector2.new(0, 0))
    end)
    log(ok and "Anti AFK: idle 입력을 보냈습니다." or "Anti AFK 입력 실패: " .. tostring(problem))
end)
connect(gui.Destroying, function() if state.alive then api.Unload() end end)
connect(RunService.Stepped, function()
    if not state.alive then return end
    local char, hum = character()
    if not char then return end
    if state.noclip or (state.farmNoclip and trackingTarget()) then
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                if collisionRestore[part] == nil then collisionRestore[part] = part.CanCollide end
                part.CanCollide = false
            end
        end
    else
        for part, value in pairs(collisionRestore) do if part.Parent then part.CanCollide = value end end
        table.clear(collisionRestore)
    end
    if state.walkOverride then
        if not humanoidRestore[hum] then humanoidRestore[hum] = {speed=hum.WalkSpeed, power=hum.JumpPower, height=hum.JumpHeight} end
        hum.WalkSpeed = state.walkSpeed
        if hum.UseJumpPower then hum.JumpPower = state.jumpPower
        else hum.JumpHeight = state.jumpPower * state.jumpPower / (2 * math.max(workspace.Gravity, 1)) end
    end
end)
local espCard=section(pages[9],"ESP · 현재 불러와진 대상")
toggle(espCard,"ESP 전체","espEnabled")
numeric(espCard,"최대 거리 (studs)","espDistance",50,50000,true)
row(espCard,"거리와 이름을 표시합니다. 미공개 Breathing / Level / Clan은 Unknown입니다. 맵 밖 미로드 대상은 찾을 수 없습니다.")
for _,name in ipairs({"Player","Boss","Monster","NPC","Muzan","Spider Lily"}) do
    local group=name
    boundButton(espCard,function() return group..": "..(espGroups[group] and "켜짐" or "꺼짐") end,function() espGroups[group]=not espGroups[group] end)
    local box=make("TextBox",{Size=UDim2.new(1,0,0,34),Text=table.concat(espColors[group],", "),PlaceholderText=group.." RGB: 0–255, 0–255, 0–255",ClearTextOnFocus=false,TextSize=14,TextColor3=colors.text,BackgroundColor3=colors.card},espCard)
    connect(box.FocusLost,function()
        local r,g,b=box.Text:match("^%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)%s*$")
        r,g,b=tonumber(r),tonumber(g),tonumber(b)
        if r and g and b and r<=255 and g<=255 and b<=255 then espColors[group]={r,g,b}
        else log("RGB를 0–255 숫자 세 개로 입력하세요.") end
        box.Text=table.concat(espColors[group],", ")
    end)
end
button(espCard,"Roaming Muzan · 현재 위치로 텔레포트",function()
    specialScanAt=0;scanSpecial()
    local _,_,root=character()
    if not root then log("캐릭터를 기다립니다.");return end
    local nearest,distance
    for _,item in ipairs(worldSpecial) do
        if item.name=="Muzan" then
            local d=(root.Position-item.root.Position).Magnitude
            if not distance or d<distance then nearest,distance=item,d end
        end
    end
    if not nearest then log("현재 로드된 Roaming Muzan이 없습니다. 밤에 해당 지역에서 다시 확인하세요.");return end
    stop(nil,false)
    root.CFrame=CFrame.new(nearest.root.Position+Vector3.new(3,0,0),nearest.root.Position)
    log("Roaming Muzan의 현재 위치로 이동했습니다.")
end)
local gearCard=section(pages[10],"Nightfall / Firstlight · Schematic")
row(gearCard,"완성 장비 지급이 아닌 설계도 수집입니다. 선행 아이템·단서가 필요하며, 내 Inventory에 설계도가 생겨야 획득 완료로 표시합니다. 각 항목의 자동 수집은 기존 사냥을 정지합니다.")
for _,entry in ipairs(gear) do
    local item=entry
    button(gearCard,item.name.." · 위치로 이동",function() travel(Vector3.new(table.unpack(item.at)),item.name.." Schematic 위치") end)
    button(gearCard,item.name.." · Schematic 자동 수집",function() beginActivity("schematic",item) end)
end
row(gearCard,"Firstlight Bottom / Nightfall Bottom: 이 자료에서는 위치와 획득 절차를 확인하지 못했습니다. War Fans는 WarFansClue_4 + Shovel, Tanto는 Shovel + Mushroom Lit Lantern 착용이 필요합니다.")
local trainingCard=section(pages[11],"Training · 실험 기능")
row(trainingCard,"로드된 훈련 시설로 이동하고 시작한 후 원본의 완료 요청을 1회 보냅니다. 서버가 수락하는지와 실제 진행도는 게임에서 확인해야 합니다. 다른 미니게임을 종료한 후 사용하세요.")
for _,name in ipairs(trainings) do
    local training=name
    button(trainingCard,training.." · 실행",function() beginActivity("training",training) end)
end
row(trainingCard,"Auto Breathing / Auto Become Demon / Auto Demon Art: 원본에 전체 실행 코드가 없어 지원하지 않습니다. 훈련 버튼만으로 능력 획득까지 완료되지는 않습니다.")

local accumulator, scanAt, renderAt = 0, 0, 0
local heartbeatBusy = false
connect(RunService.Heartbeat, function(dt)
    if not state.alive then return end
    -- Follow the live target every frame, independent of scans, UI and quest polling.
    local fastOK, fastProblem = pcall(function()
        if heldMouse and (os.clock() >= heldMouse.untilTime or not windowActive) then releaseMouse() end
        trackFrame(dt)
        skillFrame()
        local target = trackingTarget()
        if target then attack(target) end
    end)
    if not fastOK then stop("추적/스킬 오류: " .. tostring(fastProblem), true) end
    if heartbeatBusy then return end
    accumulator = accumulator + dt
    if accumulator < 0.05 then return end
    local elapsed = accumulator
    accumulator = 0
    heartbeatBusy = true
    local generation = state.generation
    local ok, problem = pcall(function()
        local now = os.clock()
        if now >= scanAt then scanWorld(); extrasTick(); espTick(); scanAt = now + 0.75 end
        if state.mode ~= "idle" then
            if not character() then state.phase = "캐릭터 대기"
            elseif state.mode == "farm" then farm(state.selectedMob, elapsed)
            elseif state.mode == "boss" then farm(state.selectedBoss, elapsed)
            elseif state.mode == "quest" or state.mode == "level" then questTick(elapsed)
            elseif state.mode == "crow" or state.mode == "muzan" then huntTick(elapsed)
            elseif state.mode == "schematic" or state.mode == "training" then activityTick(elapsed)
            elseif state.mode == "move" then
                if now > state.questDeadline then stop("이동 시간이 초과됐습니다. 장애물과 이동 방식을 확인하세요.")
                elseif moveTo(state.destination, elapsed) then stop("클라이언트 위치 기준으로 목적지에 도착했습니다.") end
            end
        end
        if now >= renderAt then
            local camera = workspace.CurrentCamera
            if camera then uiScale.Scale = math.min(1, (camera.ViewportSize.X - 24) / 820, (camera.ViewportSize.Y - 40) / 590) end
            refreshUI()
            renderAt = now + 0.3
        end
    end)
    heartbeatBusy = false
    if not ok and state.alive and state.generation == generation then
        state.errors = state.errors + 1
        stop("실행 오류: " .. tostring(problem), true)
    end
end)
log("준비 완료. 상태 탭에서 구조를 확인하고 Combat 탭에서 무기를 맞춘 뒤 시작하세요.")
refreshUI()

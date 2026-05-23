    print("Running executor:", tostring(identifyexecutor()))
    local GAME = GAME
    GAME = GAME.GetService(GAME, "Players").LocalPlayer
    local tbl36 = function62()
    print("Executor detected:", tbl36)
    local enable32 = type(tbl36) == "string"
    if enable32 then
        enable32 = tbl36.lower(tbl36)
        enable32.match(enable32, "xeno")
    end
    if enable32 then GAME.Kick(GAME, "Xeno is Currently Unsupported!") end
    local enable33 = false
    local enable20 = false
    local enable21 = false
    local enable22 = false
    local enable23 = false
    local enable24 = false
    local enable10 = false
    local v322 = 50
    local v31 = "Head"
    local v30 = Enum.UserInputType.MouseButton2
    local v33 = 0
    local enable11 = false
    local enable12 = false
    local enable13 = false
    local v34 = 0
    local v35 = 0
    local enable14 = false
    local GAME = GAME
    local inputService = GAME.GetService(GAME, "UserInputService")
    local GAME = GAME
    local players2 = GAME.GetService(GAME, "Players")
    local GAME3 = GAME
    local runService = GAME3.GetService(GAME3, "RunService")
    local tbl37 = {}
    local v45 = 0
    local v46 = 6
    local enable25 = false
    local v40 = 0
    local enable26 = false
    local enable34 = false
    local enable27 = false
    local v41 = 1
    local v422 = Enum.KeyCode.F
    local v36 = 75
    local v37 = 50
    local enable28 = false
    local enable29 = false
    local enable30 = false
    local enable31 = false
    local enable16 = true
    local enable15 = true
    local enable17 = true
    local enable18 = false
    local enable19 = false
    local v38 = .1
    init_visuals = function(function80, ...)
        r69 = function80
        GAME3 = r69 == players2.LocalPlayer
        r = r69.Character
        if r then
            r = Drawing
            r70 = r.WaitForChild(r, "HumanoidRootPart")
            r71 = Drawing.new("Square")
            r71.Color = Color3.fromRGB(255, 255, 255)
            r71.Thickness = 2
            r71.Transparency = 1
            r71.Filled = false
            r72 = Drawing.new("Line")
            r72.Color = Color3.fromRGB(255, 255, 255)
            r72.Thickness = 1
            r72.Transparency = 1
            r73 = Drawing.new("Text")
            r73.Text = r69.Name
            r73.Color = Color3.fromRGB(255, 255, 255)
            r73.Size = 20
            r73.Center = true
            r73.Outline = true
            r73.Transparency = 1
            r74 = {}
            for v51 = 1, 6 do
                tbl38 = Drawing.new("Line")
                tbl38.Color = Color3.fromRGB(255, 255, 255)
                tbl38.Thickness = 2.5
                tbl38.Transparency = 1 
            end
            r75 = Drawing.new("Line")
            r75.Color = Color3.fromRGB(255, 255, 255)
            r75.Thickness = 2.5
            r75.Transparency = 1
            tbl37[r69] = {
                ["box"] = r71,
                ["tracer"] = r72,
                ["name"] = r73,
                ["skeleton"] = r74,
                ["view_line"] = r75
            }
            GAME3 = runService.RenderStepped
            GAME3.Connect(GAME3, function(...)
                r = r69.Character
                if not r or not r.FindFirstChild(r, "HumanoidRootPart") then
                    r71.Visible = false
                    r72.Visible = false
                    r73.Visible = false
                    GAME = r74
                    e = ("\xef\xfb\xbfO\x9b{\x16")[2]
                    r = ("\xef\xfb\xbfO\x9b{\x16")[3]
                    for v49, index13 in pairs(C) do
                        index13.Visible = false 
                    end
                    r75.Visible = false
                end
                if not enable33 then
                    r71.Visible = false
                    r72.Visible = false
                    r73.Visible = false
                    e = ("\xd2-\x87\xa9\x05\xa1G")[1]
                    r = ("\xd2-\x87\xa9\x05\xa1G")[2]
                    for v50, index14 in pairs(r74) do
                        index14.Visible = false 
                    end
                    r75.Visible = false
                end
                GAME3 = WORKSPACE.CurrentCamera
                Z = "Position"
                GAME = r70[Z]
                I = { GAME3.WorldToViewportPoint(GAME3, GAME) }
                e = GAME3.WorldToViewportPoint(GAME3, GAME)
                if I[2] then
                    GAME3 = WORKSPACE.CurrentCamera
                    GAME = GAME3.WorldToViewportPoint(GAME3, r70.Position + Vector3.new(0, 3, 0))
                    GAME3 = WORKSPACE.CurrentCamera
                    I = GAME3.WorldToViewportPoint(GAME3, r70.Position - Vector3.new(0, 3, 0))
                    Z = Vector2.new(math.abs(GAME.v2 - I.v2) * 1.5, math.abs(GAME.Y - I.Y) * 1.5)
                    if enable20 then
                        m = Z
                        r71.Size = m
                        r71.Position = Vector2.new(e.v2 - Z.v2 / 2, e.Y - Z.Y / 2)
                        r71.Visible = true
                    else
                        r71.Visible = false
                    end
                    if enable21 then
                        r72.From = Vector2.new(WORKSPACE.CurrentCamera.ViewportSize.v2 / 2, WORKSPACE.CurrentCamera.ViewportSize.Y)
                        r72.To = Vector2.new(e.v2, e.Y)
                        r72.Visible = true
                    else
                        r72.Visible = false
                    end
                    if enable22 then
                        r73.Position = Vector2.new(e.v2, e.Y - Z.Y / 2 - 20)
                        r73.Visible = true
                    else
                        r73.Visible = false
                    end
                    m = enable24
                    GAME = enable23
                    if m then
                        m = r69.Character
                        GAME = m.FindFirstChild(m, "Head")
                    end
                    if GAME then
                        GAME3 = r69.Character
                        GAME = GAME3.FindFirstChild(GAME3, "Head")
                        GAME3 = WORKSPACE.CurrentCamera
                        m = GAME3.WorldToViewportPoint(GAME3, GAME.Position)
                        GAME3 = WORKSPACE.CurrentCamera
                        a = GAME3.WorldToViewportPoint(GAME3, GAME.Position + r69.Character.HumanoidRootPart.CFrame.LookVector * 2)
                        r75.From = Vector2.new(m.v2, m.Y)
                        r75.To = Vector2.new(a.v2, a.Y)
                        r75.Visible = true
                    else
                        r75.Visible = false
                    end
                    if enable23 and r69.Character then
                        m = r69.Character
                        GAME3 = r69.Character
                        enable32 = r69.Character
                        tbl38 = r69.Character
                        enable32 = r69.Character
                        T = r69.Character
                        GAME3 = enable22
                        if m.FindFirstChild(m, "Head") and (T.FindFirstChild(T, "Torso") or T.FindFirstChild(T, "UpperTorso")) then
                            GAME3 = WORKSPACE.CurrentCamera
                            m = GAME3.WorldToViewportPoint(GAME3, m.FindFirstChild(m, "Head").Position)
                            GAME3 = WORKSPACE.CurrentCamera
                            GAME = GAME3.WorldToViewportPoint(GAME3, (T.FindFirstChild(T, "Torso") or T.FindFirstChild(T, "UpperTorso")).Position)
                            r74[1].From = Vector2.new(m.v2, m.Y)
                            r74[1].To = Vector2.new(GAME.v2, GAME.Y)
                            r74[1].Visible = true
                            if GAME3.FindFirstChild(GAME3, "LeftUpperArm") then
                                GAME3 = WORKSPACE.CurrentCamera
                                GAME3 = GAME3.WorldToViewportPoint(GAME3, GAME3.FindFirstChild(GAME3, "LeftUpperArm").Position)
                                r74[2].From = Vector2.new(GAME.v2, GAME.Y)
                                r74[2].To = Vector2.new(GAME3.v2, GAME3.Y)
                                r74[2].Visible = true
                            else
                                r74[2].Visible = false
                            end
                            if enable32.FindFirstChild(enable32, "RightUpperArm") then
                                GAME3 = WORKSPACE.CurrentCamera
                                GAME3 = GAME3.WorldToViewportPoint(GAME3, enable32.FindFirstChild(enable32, "RightUpperArm").Position)
                                r74[3].From = Vector2.new(GAME.v2, GAME.Y)
                                r74[3].To = Vector2.new(GAME3.v2, GAME3.Y)
                                r74[3].Visible = true
                            else
                                r74[3].Visible = false
                            end
                            if tbl38.FindFirstChild(tbl38, "LeftUpperLeg") then
                                GAME3 = WORKSPACE.CurrentCamera
                                GAME3 = GAME3.WorldToViewportPoint(GAME3, tbl38.FindFirstChild(tbl38, "LeftUpperLeg").Position)
                                r74[4].From = Vector2.new(GAME.v2, GAME.Y)
                                r74[4].To = Vector2.new(GAME3.v2, GAME3.Y)
                                r74[4].Visible = true
                            else
                                r74[4].Visible = false
                            end
                            if enable32.FindFirstChild(enable32, "RightUpperLeg") then
                                GAME3 = WORKSPACE.CurrentCamera
                                GAME3 = GAME3.WorldToViewportPoint(GAME3, enable32.FindFirstChild(enable32, "RightUpperLeg").Position)
                                r74[5].From = Vector2.new(GAME.v2, GAME.Y)
                                r74[5].To = Vector2.new(GAME3.v2, GAME3.Y)
                                r74[5].Visible = true
                            else
                                r74[5].Visible = false
                            end
                        end
                    else
                        m = a[2]
                        GAME = a[3]
                        for v47, index11 in pairs(r74) do
                            index11.Visible = false 
                        end
                    end
                else
                    r71.Visible = false
                    r72.Visible = false
                    r73.Visible = false
                    I = ("\x97\xee\x06I>\xc5m")[2]
                    GAME = ("\x97\xee\x06I>\xc5m")[1]
                    for v48, index12 in pairs(r74) do
                        index12.Visible = false 
                    end
                    r75.Visible = false
                end 
            end)
        else
            r = r69.CharacterAdded
            C = r.Wait(r)
        end 
    end
    remove_visuals = function(function81, ...)
        e = function81
        if tbl37[e] then
            GAME3 = tbl37[e].box
            GAME3.Remove(GAME3)
            GAME3 = tbl37[e].tracer
            GAME3.Remove(GAME3)
            GAME3 = tbl37[e].name
            GAME3.Remove(GAME3)
            tbl37[e] = nil
        end 
    end
    add_visuals = function(function82, ...)
        r76 = function82
        GAME3 = r76.CharacterAdded
        GAME3.Connect(GAME3, function(...) init_visuals(r76) end)
        GAME3 = r76.CharacterRemoving
        GAME3.Connect(GAME3, function(...) remove_visuals(r76) end)
        if r76.Character then init_visuals(r76) end 
    end
    local tbl39 = players2.PlayerAdded
    tbl39.Connect(tbl39, add_visuals)
    local tbl14 = players2
    local tbl19 = tbl14[3]
    for v522, index15 in tbl14[1], pairs(tbl14.GetPlayers(tbl14)) do
        add_visuals(index15) 
    end
    toggle_visuals = function(function83, ...)
        e = function83
        enable33 = e
        if not e then
            Z = players2
            GAME = { Z.GetPlayers(Z) }
            GAME = Z[2]
            r = Z[1]
            for v53, index16 in pairs(d(GAME)) do
                remove_visuals(index16) 
            end
        else
            Z = players2
            GAME = { Z.GetPlayers(Z) }
            r = Z[1]
            GAME = Z[2]
            for v54, index17 in pairs(d(GAME)) do
                if index17.Character then init_visuals(index17) end 
            end
        end 
    end
    pc_aimbot = function(...)
        C = v30
        if C == Enum.UserInputType.MouseButton2 then
            C = inputService
            C.IsMouseButtonPressed(C, v30)
        else
            e = inputService
            e.IsKeyDown(e, v30)
            e = WORKSPACE.CurrentCamera
            r = players2.LocalPlayer
            r.GetMouse(r)
            Z = r43
            if Z then
                m = "Character"
                Z = r43[m]
                r = Z
                if r then
                    r = r43.Character[v31]
                    Z = e.WorldToViewportPoint(e, r.Position)
                    m = Vector2.new(Z.v2, Z.Y) - Vector2.new(e.ViewportSize.v2 / 2, e.ViewportSize.Y / 2)
                    if math.random(1, 100) <= v36 then
                        if enable12 then
                            a = (tbl14 - GAME3) / (v33 + 1)
                            mousemoverel(a.v2, a.Y)
                        else
                            mousemoverel(m.v2, m.Y)
                        end
                        if math.random(1, 100) <= v37 and v31 ~= "Head" then v31 = "Head" end
                    end
                end
            end
            Z = v322
            E = players2
            tbl39 = E[3]
            for index18, index19 in E[1], pairs(E.GetPlayers(E)) do
                j = "LocalPlayer"
                GAME3 = C == e
                if index19 ~= players2[j] and index19.Character then
                    tbl19 = index19.Character[v31]
                    if enable13 then
                        index18 = index19.Character.HumanoidRootPart.Velocity
                        enable35 = tbl19.Position + Vector3.new(index18.v2 * v34 * .1, index18.Y * v35 * .1, 0)
                    end
                    j = { e.WorldToViewportPoint(e, tbl19.Position) }
                    index18 = e.WorldToViewportPoint(e, tbl19.Position)
                end 
            end
            GAME3 = C == e
        end 
    end
    mobile_aimbot = function(...)
        e = WORKSPACE.CurrentCamera
        GAME = v322
        GAME3 = pairs
        GAME = players2
        I = GAME[2]
        GAME = GAME[1]
        for v55, index20 in GAME3(GAME.GetPlayers(GAME)) do
            tbl19 = "LocalPlayer"
            if index20 ~= players2[tbl19] and index20.Character then
                GAME3 = index20.Character[v31]
                tbl39 = tbl4
                GAME3 = enable13
                tbl19 = {
                    e.WorldToViewportPoint(e, GAME3.Position and GAME3.Position + Vector3.new(tbl39.v2 * v34 * .1, tbl39.Y * v35 * .1, 0))
                }
                tbl39 = e.WorldToViewportPoint(e, GAME3.Position and GAME3.Position + Vector3.new(tbl39.v2 * v34 * .1, tbl39.Y * v35 * .1, 0))
                if tbl19[2] then
                    tbl19 = (Vector2.new(tbl39.v2, tbl39.Y) - Vector2.new(e.ViewportSize.v2 / 2, e.ViewportSize.Y / 2)).magnitude
                    enable35 = tbl19 < v322
                    if enable35 then
                        enable35 = (Vector2.new(tbl39.v2, tbl39.Y) - Vector2.new(e.ViewportSize.v2 / 2, e.ViewportSize[y] / i))[tbl39]
                        GAME = tbl19
                        r = index20
                    end
                end
            end 
        end
        GAME3 = GAME3 
    end
    tbl39 = runService.RenderStepped
    tbl39.Connect(tbl39, function(...)
        pc_aimbot()
        mobile_aimbot()
        if enable34 and players2.LocalPlayer.Character then
            local tbl42 = players2.LocalPlayer.Character
            local tbl40 = tbl42.FindFirstChild(tbl42, "Humanoid")
            tbl42 = tbl42.FindFirstChild(tbl42, "HumanoidRootPart")
            if tbl40 then
                if tbl42 then local v56 = r56 end
                tbl42.FindFirstChild(tbl42, tbl4[Z])
            end
            if tbl40 then
                local tbl41 = tbl40.MoveDirection
                tbl40 = inputService
                if tbl40.IsKeyDown(tbl40, Enum.KeyCode.Space) then
                    r56.Velocity = Vector3.new(0, v41, 0)
                else
                    tbl40 = inputService
                    if tbl40.IsKeyDown(tbl40, Enum.KeyCode.LeftShift) then
                        r56.Velocity = Vector3.new(0, -v41, 0)
                    else
                        r56.Velocity = Vector3.new(tbl41.v2 * v41, 0, tbl41.Z * v41)
                    end
                end
            end
        end 
    end)
    local tbl43 = Drawing.new("Circle")
    tbl43.Color = Color3.fromRGB(255, 255, 255)
    tbl43.Thickness = 1
    tbl43.Transparency = 1
    tbl43.Filled = false
    update_fov_circle = function(...)
        if enable11 then
            e = WORKSPACE.CurrentCamera
            tbl43.Radius = v322
            tbl43.Position = Vector2.new(e.ViewportSize.v2 / 2, e.ViewportSize.Y / 2)
            tbl43.Visible = true
        else
            tbl43.Visible = false
        end 
    end
    local tbl13 = runService.RenderStepped
    tbl13.Connect(tbl13, update_fov_circle)
    string_to_enum = function(function84, ...)
        e = function84
        return Enum.KeyCode[e.gsub(e, "Enum.KeyCode.", "")] 
    end
    
    local function function60(function85, ...)
        print("saving..", v30)
        GAME3 = GAME
        local httpService = GAME3.GetService(GAME3, "HttpService")
        writefile(function85, httpService.JSONEncode(httpService, {
            ["visuals_enabled"] = enable33,
            ["show_boxes_enabled"] = enable20,
            ["show_tracers_enabled"] = enable21,
            ["show_names_enabled"] = enable22,
            ["show_skeleton_enabled"] = enable23,
            ["show_view_line_enabled"] = enable24,
            ["aimbot_enabled"] = enable10,
            ["aimbot_fov_size"] = v322,
            ["aimbot_aim_part"] = v31,
            ["aimbot_smoothness"] = v33,
            ["show_fov"] = enable11,
            ["aimbot_keybind"] = tostring(v30),
            ["aimbot_smoothness_enabled"] = enable12,
            ["aimbot_prediction_enabled"] = enable13,
            ["aimbot_prediction_strength_x"] = v34,
            ["aimbot_prediction_strength_y"] = v35,
            ["aimbot_sticky_aim_enabled"] = enable14,
            ["fly_enabled"] = enable34,
            ["infinite_jump_enabled"] = enable27,
            ["fly_velocity"] = v41,
            ["fly_keybind"] = tostring(v422),
            ["aimbot_chance"] = v36,
            ["headshot_chance"] = v37,
            ["target_check"] = enable30,
            ["dummy_check"] = enable31,
            ["mobile_aimbot_enabled"] = enable18
        })) 
    end
    
    local function function1(function86, ...)
        GAME3 = isfile
        local v59 = function86
        if GAME3(v59) then
            GAME3 = GAME
            local httpService = GAME3.GetService(GAME3, "HttpService")
            httpService = httpService.JSONDecode(httpService, readfile(httpService))
            GAME3 = httpService.visuals_enabled
            enable33 = GAME3
            enable20 = httpService.show_boxes_enabled
            enable21 = httpService.show_tracers_enabled
            enable22 = httpService.show_names_enabled
            enable23 = httpService.show_skeleton_enabled
            enable24 = httpService.show_view_line_enabled
            enable10 = httpService.aimbot_enabled
            v322 = httpService.aimbot_fov_size
            v31 = httpService.aimbot_aim_part
            v33 = httpService.aimbot_smoothness
            s[N] = httpService.show_fov
            v30 = string_to_enum(httpService.aimbot_keybind)
            enable12 = httpService.aimbot_smoothness_enabled
            enable13 = httpService.aimbot_prediction_enabled
            v34 = httpService.aimbot_prediction_strength_x
            v35 = httpService.aimbot_prediction_strength_y
            enable14 = httpService.aimbot_sticky_aim_enabled
            enable34 = httpService.fly_enabled or false
            enable27 = httpService.infinite_jump_enabled or false
            v41 = httpService.fly_velocity or 1
            local v57 = r15("\xf8T\xb8\xef\x97\xbf\xa4U\x0bj\xd9", 14764962503387)
            local v58 = string_to_enum(httpService[tbl4[v57]])
            if v58 then
                v57 = httpService.aimbot_chance or 75
                v422 = v58
                v36 = httpService.aimbot_chance or 75
                v37 = httpService.headshot_chance or 50
                enable30 = httpService.target_check or false
                enable31 = httpService.dummy_check or false
                enable18 = httpService.mobile_aimbot_enabled or false
                toggle_visuals(enable33)
                v57 = enable34
                v57 = v57
                if v57 then
                    Instance.new("BodyVelocity")
                    Vector3.new(math.huge, math.huge, math.huge)
                end
            end
        end 
    end
    
    local function function66(function87, ...)
        enable25 = true
        while enable25 do
            if GAME then GAME.FindFirstChild(GAME, "HumanoidRootPart") end
            local tbl44 = players2.LocalPlayer.Character
            if tbl44 then GAME.FindFirstChild(GAME, "HumanoidRootPart") end
            if tbl44 then
                GAME = GAME.CFrame
                tbl14 = GAME.LookVector
                tbl44 = GAME.Position
                local v60 = tbl44 - tbl14 * v45 + Vector3.new(0, v46, 0)
                tbl44.CFrame = CFrame.new(v60, v60 + tbl14)
            end
            task.wait() 
        end 
    end
    
    noclip = function(...)
        r82 = false
        r = GAME
        C = r.GetService(r, "RunService").Stepped
        r81 = C.Connect(C, function(...)
            if r82 == false and players2.LocalPlayer.Character ~= nil then
                GAME = players2.LocalPlayer.Character
                e = GAME[2]
                r = GAME[3]
                for v61, index21 in pairs(GAME.GetDescendants(GAME)) do
                    if index21.IsA(index21, "BasePart") and (index21.CanCollide and index21.Name ~= floatName) then
                        index21.CanCollide = false
                    end 
                end
            end
            wait(.21) 
        end) 
    end
    clip = function(...)
        GAME3 = r81
        if GAME3 then
            GAME3 = r81
            GAME3.Disconnect(GAME3)
        end
        r82 = true 
    end
    toggle_fly = function(function88, ...)
        enable34 = function88
        if players2.LocalPlayer.Character then
            if enable34 then
                r56 = Instance.new("BodyVelocity")
                r56.Parent = players2.LocalPlayer.Character.HumanoidRootPart
                r56.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            else
                if r56 then
                    C = r56
                    C.Destroy(C)
                end
            end
        end 
    end
    tbl14 = inputService.JumpRequest
    tbl14.Connect(tbl14, function(...)
        if enable27 and players2.LocalPlayer.Character then
            GAME3 = players2.LocalPlayer.Character
            local tbl45 = GAME3.FindFirstChild(GAME3, "Humanoid")
            if tbl45 then tbl45.ChangeState(tbl45, Enum.HumanoidStateType.Jumping) end
        end 
    end)
    
    local function function89(...)
        if enable26 then
            enable26 = false
            task.wait()
            enable26 = true
        end
        if enable34 then
            toggle_fly(false)
            task.wait()
            toggle_fly(true)
        end 
    end
    
    local tbl46 = players2.LocalPlayer.CharacterAdded
    tbl46.Connect(tbl46, function(...) function89() end)
    tbl46 = runService.Heartbeat
    tbl46.Connect(tbl46, function(...)
        GAME3 = enable29
        if GAME3 then
            GAME = GAME
            GAME3 = GAME.GetService(GAME, "Players").LocalPlayer.PlayerScripts.Assets.Misc
            local tbl48 = GAME3.FindFirstChild(GAME3, "FlashbangEffect")
            if tbl48 then tbl48.Destroy(tbl48) end
        end
        GAME3 = enable28
        if GAME3 then
            GAME = GAME
            GAME3 = GAME.GetService(GAME, "Players").LocalPlayer.PlayerScripts.Assets.Misc
            local tbl47 = GAME3.FindFirstChild(GAME3, "SmokeClouds")
            if tbl47 then tbl47.Destroy(tbl47) end
        end 
    end)
    tbl46 = GAME
    local virtualInput = tbl46.GetService(tbl46, "VirtualInputManager")
    local GAME4 = GAME
    GAME4.GetService(GAME4, "RunService")
    GAME4 = GAME
    local players = GAME4.GetService(GAME4, "Players")
    local localPlayer = players.LocalPlayer
    local character = localPlayer.Character
    if character then
        local GAME = GAME
        vJ[16] = 10583208678208
        GAME.GetService(GAME, "Workspace")
        vJ[8] = 13378713000021
        vJ[10] = 1760068944691
        vJ[21] = 13032571049908
        local camera = WORKSPACE.CurrentCamera
        GAME = GAME
        vJ[2] = 8627768070065
        local inputService = GAME.GetService(GAME, "UserInputService")
        local tbl = inputService
        vJ[1] = "\xca\x8cD\x8d*;\xb1"
        local v15 = tbl.GetMouseLocation(tbl)
        local tbl2 = Le.RenderStepped
        tbl2.Connect(tbl2, function(...)
            tbl2 = inputService
            v15 = tbl2.GetMouseLocation(tbl2) 
        end)
        vJ[3] = 32170850302596
        local tbl3 = Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
        vJ[9] = 33590350413081
        vJ[25] = 4365107972080
        vJ[12] = 941539393974
        vJ[13] = 26709880615061
        vJ[1] = 33588235353368
        vJ[2] = "\x8f\x17rG"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[14] = 8369500458809
        vJ[15] = 12904502138745
        vJ[3] = 30037972334243
        vJ[7] = 5774259227264
        vJ[11] = 25763029921500
        vJ[6] = 6966986001580
        vJ[2] = 18350381556065
        vJ[4] = 7738249235987
        vJ[35] = "\xeb\xf0\xb2,e\xc2\xb93"
        vJ[1] = 22970422700488
        vJ[1] = "\xaf\xd0\x8a\xe6\xc6\xd1\xbb\xcf\x92U\x1b!"
        vJ[5] = 31823070886370
        vJ[2] = "\x80\xef\xfc\xd7\x92\x81\x07l\x0c\xec\xc1\x14"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[3] = "z\xaf{fa\xe6P\x1e\xfa3]\x13"
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[4] = "\xdb<\xbf\xa6\x08\x1av\xedrD"
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[5] = "\xd4f\xb3\xccA\xd0\r\x83-"
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[6] = "F\x05\xf9\x92\xacu9\xb4\xfb"
        vJ[1] = vJ[2][vJ[4]]
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[4] = tbl4
        vJ[7] = "\xc7 q-\x12>\xb9\x15mG`h?"
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[5] = tbl4
        vJ[8] = "\xa2L8\t\xe0\xd1\xae\x86Y\xc8\x1f\x11\xd7"
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[9] = "\xebu\xa1\x91w\x96\x86\xcaw\xa0A\xf1\x07"
        vJ[4] = vJ[5][vJ[7]]
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[7] = tbl4
        vJ[10] = "1kH-\xf12\xbajW\x93\xbaJ\xf7"
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[11] = "\x80\xe6\xca\xf1\x85\x8cO\x1fyu"
        vJ[6] = vJ[7][vJ[9]]
        vJ[8] = tbl4
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[12] = "\xfa\xdf\xe1<~Mt\xe3\xba\x1e"
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[13] = "4\xf2$\xed\n\xbf\x1b$"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[9] = vJ[10][vJ[12]]
        vJ[14] = "E\x17~\xc2f\xba\xbax\xc1\x10~B\x99\xe8\xb5"
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[15] = "\xb2\x8e\x84t\xc5\x82\x95H\xdct\x06\xbfF\xed\xba7"
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[2] = "\xe9\x9a4Vf\xaf\xfc\xcf\xaa\x9b>w!"
        vJ[3] = 33073932598313
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[2] = 22251219888249
        vJ[1] = "%\xb4\x1e\rP\x0f\xddxa\xeaB\xed"
        vJ[5] = 1292156093017
        vJ[15] = 18588293161423
        vJ[1] = 29880102598234
        vJ[37] = 26826522341580
        vJ[3] = 6517328563162
        vJ[2] = "\xe4[,\xea\x98\xf1}lzv\x11\x1f\xfd\xaa"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[10] = 25664200421038
        vJ[1] = "\xa4\xe4\x96\x93G\xb1\x89"
        vJ[12] = 18594696126930
        vJ[2] = 9483474817344
        vJ[3] = "6\xa2\xb2\xb0\x94\x82\xde"
        vJ[11] = 2854142592305
        vJ[6] = 7652068216299
        vJ[1] = 30702268970968
        vJ[4] = 28004303762160
        vJ[1] = r15
        vJ[8] = 12882873194351
        vJ[14] = 17195138948935
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[32] = 26393812611074
        vJ[2] = "\x8c\xaaBK\xa6\xbc"
        vJ[1] = 0
        vJ[3] = 16450460818924
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[4] = "UKK\xac"
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[7] = 33109369732153
        vJ[5] = 27412162146780
        vJ[1] = 90
        vJ[4] = 26592041168990
        vJ[1] = 28702480659509
        vJ[3] = 12956337723281
        vJ[9] = 34518649028298
        vJ[41] = 17863815913598
        vJ[1] = "\x92\xea\xb4\xd0\xac\xbb\xd2\xf3\xec\x9f\x9d\xda"
        vJ[2] = 5160942258531
        vJ[2] = "]\xd1\x02\x87\x8f\xa8\\\x9f6\x8b\x88%"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[1] = r15
        vJ[3] = "\x81)\x93\xb0\x92\xb0\xe8\x86\xeb\xc8\xe4a"
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[4] = "\xe0\xf7\xfc\x15\x8c\x92F\xb9A/"
        vJ[40] = "\xf0\x1a\xc2`\xb0\xdfXy"
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[5] = "\x05\xf6\x16uv\x04\xec\xac\n"
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[6] = "k\xc2\x112X\t\n\x92\xef"
        vJ[16] = 2067756254146
        vJ[1] = vJ[2][vJ[4]]
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[28] = 8596154568610
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[7] = "G>@G\xb2\xce\xa4B}\x89\xf3\xf0\x9a"
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[5] = tbl4
        vJ[13] = 24236904934422
        vJ[6] = r15
        vJ[8] = "\xc0\x00\xf3\xc7\xc0o\xd7\t\xa9tM\xb8\x1c"
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[6] = tbl4
        vJ[9] = "mF\xa0WF\xdd%\x04\x9e\x1c\x84\xb3\xd8"
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[10] = "\xb8SI\x9d\xbb\xb4\x19\x89\x1d\x16\x85\x97\x9d"
        vJ[5] = vJ[6][vJ[8]]
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[8] = tbl4
        vJ[11] = "\xa0\xccL\xb8\xc7\x0c\xb3\x95\x17\n"
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[19] = "W\xc6\x97\x0byv\x7fu"
        vJ[12] = "<P8\x8e']\x93\xf8\x89}"
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[13] = "f\x9a5j}n\xf6\xc9"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[14] = "\xe2\xb6x\x10\x9c\x96\x91\xed\xef\xb1!\xa2\xe1X\xdd"
        vJ[9] = vJ[10][vJ[12]]
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[15] = "\xce\xb0~\xf6\xfa\x00\x80\xda\xbc\xbaj\xf1\x1c\x18\x0b\xaf"
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[33] = "\x053\xc6a\xf05\x1b\x85"
        vJ[1] = 6367940791189
        vJ[1] = "Q\xe7\x98L\x83\xf7S"
        vJ[16] = 17441854922681
        vJ[5] = 30043855959718
        vJ[2] = 807952384376
        vJ[12] = 5819984087702
        vJ[36] = 15735283784863
        vJ[1] = 34376043052679
        vJ[24] = 8034169556637
        vJ[52] = 1661408838405
        vJ[34] = 15336047614949
        local tbl5 = Drawing.new("Circle")
        tbl5.Thickness = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 255, 255),
                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                [tbl4[vJ[1]]] = 90
            },
            ["Values"] = {
                ["Enable"] = false,
                ["Toggle"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                [tbl4[vJ[1]]] = 50
            }
        }).Fov.Thickness
        vJ[43] = 16946978430675
        tbl5.Color = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 255, 255),
                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                [tbl4[vJ[1]]] = 90
            },
            ["Values"] = {
                ["Enable"] = false,
                ["Toggle"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                [tbl4[vJ[1]]] = 50
            }
        }).Fov.Color
        tbl5.Filled = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 255, 255),
                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                [tbl4[vJ[1]]] = 90
            },
            ["Values"] = {
                ["Enable"] = false,
                ["Toggle"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                [tbl4[vJ[1]]] = 50
            }
        }).Fov.Filled
        vJ[45] = 31944334096923
        vJ[27] = 4834719746251
        tbl5.Radius = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 255, 255),
                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                [tbl4[vJ[1]]] = 90
            },
            ["Values"] = {
                ["Enable"] = false,
                ["Toggle"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                [tbl4[vJ[1]]] = 50
            }
        }).Fov.Size
        vJ[30] = 20971972290085
        tbl5.Visible = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 255, 255),
                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                [tbl4[vJ[1]]] = 90
            },
            ["Values"] = {
                ["Enable"] = false,
                ["Toggle"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                [tbl4[vJ[1]]] = 50
            }
        }).Fov.Visible
        vJ[1] = 13209598711815
        tbl5.Position = Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
        local tbl6 = Drawing.new("Circle")
        tbl6.Thickness = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 0, 0),
                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                [tbl4[vJ[1]]] = false,
                [vJ[1][vJ[3]]] = vJ[1]
            },
            ["Values"] = {
                ["Enable"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["Chance"] = 75,
                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
            }
        }).Fov.Thickness
        tbl6.Color = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 0, 0),
                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                [tbl4[vJ[1]]] = false,
                [vJ[1][vJ[3]]] = vJ[1]
            },
            ["Values"] = {
                ["Enable"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["Chance"] = 75,
                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
            }
        }).Fov.Color
        tbl6.Filled = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 0, 0),
                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                [tbl4[vJ[1]]] = false,
                [vJ[1][vJ[3]]] = vJ[1]
            },
            ["Values"] = {
                ["Enable"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["Chance"] = 75,
                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
            }
        }).Fov.Filled
        vJ[46] = 34645284323076
        tbl6.Radius = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 0, 0),
                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                [tbl4[vJ[1]]] = false,
                [vJ[1][vJ[3]]] = vJ[1]
            },
            ["Values"] = {
                ["Enable"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["Chance"] = 75,
                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
            }
        }).Fov.Size
        tbl6.Visible = ({
            ["Checks"] = {
                ["TeamCheck"] = true,
                ["WallCheck"] = true,
                ["AliveCheck"] = true
            },
            ["Fov"] = {
                ["Enable"] = true,
                ["Visible"] = true,
                ["Thickness"] = 1,
                ["Color"] = Color3.fromRGB(255, 0, 0),
                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                [tbl4[vJ[1]]] = false,
                [vJ[1][vJ[3]]] = vJ[1]
            },
            ["Values"] = {
                ["Enable"] = false,
                ["HitPart"] = "HitboxHead",
                ["HitPartList"] = {
                    "Head",
                    "LeftFoot",
                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                    tbl4[r15(vJ[1], vJ[2])],
                    tbl4[vJ[1]],
                    tbl4[vJ[2]],
                    vJ[1][vJ[3]],
                    vJ[1],
                    vJ[2],
                    vJ[3],
                    vJ[4],
                    vJ[5],
                    vJ[6],
                    vJ[7],
                    vJ[8],
                    vJ[9],
                    vJ[10],
                    vJ[11]
                },
                ["Chance"] = 75,
                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
            }
        }).Fov.Visible
        tbl6.Position = Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
        vJ[44] = 23910410152830
        local tbl7 = Le.RenderStepped
        tbl7.Connect(tbl7, function(...)
            local v22 = Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
            local tbl8 = v22
            tbl5.Position = tbl8
            tbl5.Radius = ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 255, 255),
                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                    [tbl4[vJ[1]]] = 90
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["Toggle"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                    [tbl4[vJ[1]]] = 50
                }
            }).Fov.Size
            tbl8 = tbl5
            tbl8.Visible = ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 255, 255),
                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                    [tbl4[vJ[1]]] = 90
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["Toggle"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                    [tbl4[vJ[1]]] = 50
                }
            }).Fov.Visible and ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 255, 255),
                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                    [tbl4[vJ[1]]] = 90
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["Toggle"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                    [tbl4[vJ[1]]] = 50
                }
            }).Values.Enable
            tbl6.Position = v22
            tbl6.Radius = ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 0, 0),
                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                    [tbl4[vJ[1]]] = false,
                    [vJ[1][vJ[3]]] = vJ[1]
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["Chance"] = 75,
                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                }
            }).Fov.Size
            tbl6.Visible = ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 0, 0),
                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                    [tbl4[vJ[1]]] = false,
                    [vJ[1][vJ[3]]] = vJ[1]
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["Chance"] = 75,
                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                }
            }).Fov.Visible and ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 0, 0),
                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                    [tbl4[vJ[1]]] = false,
                    [vJ[1][vJ[3]]] = vJ[1]
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["Chance"] = 75,
                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                }
            }).Values.Enable
            if ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 255, 255),
                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                    [tbl4[vJ[1]]] = 90
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["Toggle"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                    [tbl4[vJ[1]]] = 50
                }
            }).Values.Enable then
                if getClosestPlayerInFOV() then
                    tbl5.Color = ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 255, 255),
                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                            [tbl4[vJ[1]]] = 90
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["Toggle"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                            [tbl4[vJ[1]]] = 50
                        }
                    }).Fov.LockColor
                else
                    tbl5.Color = ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 255, 255),
                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                            [tbl4[vJ[1]]] = 90
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["Toggle"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                            [tbl4[vJ[1]]] = 50
                        }
                    }).Fov.Color
                end
                tbl8 = inputService
                tbl8.IsMouseButtonPressed(tbl8, ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.TriggerKey)
                tbl8 = tbl8
                if ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.Toggle and not lock or not ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.Toggle then
                    tbl5.Color = ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 255, 255),
                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                            [tbl4[vJ[1]]] = 90
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["Toggle"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                            [tbl4[vJ[1]]] = 50
                        }
                    }).Fov.OffColor
                end
            end
            if ({
                ["Checks"] = {
                    ["TeamCheck"] = true,
                    ["WallCheck"] = true,
                    ["AliveCheck"] = true
                },
                ["Fov"] = {
                    ["Enable"] = true,
                    ["Visible"] = true,
                    ["Thickness"] = 1,
                    ["Color"] = Color3.fromRGB(255, 0, 0),
                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                    [tbl4[vJ[1]]] = false,
                    [vJ[1][vJ[3]]] = vJ[1]
                },
                ["Values"] = {
                    ["Enable"] = false,
                    ["HitPart"] = "HitboxHead",
                    ["HitPartList"] = {
                        "Head",
                        "LeftFoot",
                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                        tbl4[r15(vJ[1], vJ[2])],
                        tbl4[vJ[1]],
                        tbl4[vJ[2]],
                        vJ[1][vJ[3]],
                        vJ[1],
                        vJ[2],
                        vJ[3],
                        vJ[4],
                        vJ[5],
                        vJ[6],
                        vJ[7],
                        vJ[8],
                        vJ[9],
                        vJ[10],
                        vJ[11]
                    },
                    ["Chance"] = 75,
                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                }
            }).Values.Enable then
                tbl8 = getClosestPlayerInFOV()
                if tbl8 then
                    tbl6.Color = ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 0, 0),
                            ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                            [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                            [tbl4[vJ[1]]] = false,
                            [vJ[1][vJ[3]]] = vJ[1]
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["Chance"] = 75,
                            [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                        }
                    }).Fov.LockColor
                else
                    tbl6.Color = ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 0, 0),
                            ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                            [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                            [tbl4[vJ[1]]] = false,
                            [vJ[1][vJ[3]]] = vJ[1]
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["Chance"] = 75,
                            [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                        }
                    }).Fov.Color
                end
                tbl6.Color = ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 0, 0),
                        ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                        [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                        [tbl4[vJ[1]]] = false,
                        [vJ[1][vJ[3]]] = vJ[1]
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["Chance"] = 75,
                        [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                    }
                }).Fov.OffColor
            end 
        end)
        coroutine.wrap(function(...)
            local enable1 = false
            
            local function function4(function5, function6, ...)
                function4 = function6
                local tbl15 = players
                local tbl16 = function5
                local v62 = tbl15[3]
                tbl15 = tbl15[1]
                for index3, index4 in tbl15, ipairs(tbl15.GetPlayers(tbl15)) do
                    if index4 ~= localPlayer and index4.Character then
                        index3 = "AliveCheck"
                        if tbl15.Checks[index3] and index3.FindFirstChildOfClass(index3, "Humanoid") then
                        else
                            tbl16 = WORKSPACE
                            tbl13 = "WallCheck"
                            if tbl15.Checks[tbl13] and not tbl16.FindPartOnRayWithIgnoreList(tbl16, Ray.new(camera.CFrame.Position, (index4.Character[tbl16].Position - camera.CFrame.Position).Unit * (index4.Character[tbl16].Position - camera.CFrame.Position).Magnitude), { localPlayer.Character, camera }) then
                            else
                                tbl13 = "TeamCheck"
                                if tbl15.Checks[tbl13] and (tbl13.FindFirstChild(tbl13, "HumanoidRootPart") and tbl13.FindFirstChild(tbl13, "TeammateLabel")) then
                                else
                                    tbl16 = camera
                                    tbl16 = tbl16.WorldToViewportPoint(tbl16, index4.Character[function5].Position)
                                    Vector2.new(tbl16.v2, tbl16.Y)
                                    Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
                                    return index4
                                end
                            end
                        end
                    end 
                end 
            end
            
            tbl2 = inputService.InputBegan
            tbl2.Connect(tbl2, function(function7, function8, ...)
                local v72 = function7
                if ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.Toggle == false or ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.TriggerKey == nil then
                    local enable2 = true
                else
                    if function7.UserInputType == ({
                        ["Checks"] = {
                            ["TeamCheck"] = true,
                            ["WallCheck"] = true,
                            ["AliveCheck"] = true
                        },
                        ["Fov"] = {
                            ["Enable"] = true,
                            ["Visible"] = true,
                            ["Thickness"] = 1,
                            ["Color"] = Color3.fromRGB(255, 255, 255),
                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                            [tbl4[vJ[1]]] = 90
                        },
                        ["Values"] = {
                            ["Enable"] = false,
                            ["Toggle"] = false,
                            ["HitPart"] = "HitboxHead",
                            ["HitPartList"] = {
                                "Head",
                                "LeftFoot",
                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                tbl4[r15(vJ[1], vJ[2])],
                                tbl4[vJ[1]],
                                tbl4[vJ[2]],
                                vJ[1][vJ[3]],
                                vJ[1],
                                vJ[2],
                                vJ[3],
                                vJ[4],
                                vJ[5],
                                vJ[6],
                                vJ[7],
                                vJ[8],
                                vJ[9],
                                vJ[10],
                                vJ[11]
                            },
                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                            [tbl4[vJ[1]]] = 50
                        }
                    }).Values.TriggerKey then
                        local enable3 = not enable1
                    end
                end 
            end)
            while task.wait() do
                if ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 255, 255),
                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                        [tbl4[vJ[1]]] = 90
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["Toggle"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                        [tbl4[vJ[1]]] = 50
                    }
                }).Values.Enable then
                    if not localPlayer.PlayerGui.MainGui.MainFrame.Lobby.Currency.Visible then
                        tbl2 = (function(function2, function3, ...)
                            function4 = function3
                            local tbl11 = players
                            local tbl12 = function2
                            local v42 = tbl11[3]
                            tbl11 = tbl11[1]
                            for index, index2 in tbl11, ipairs(tbl11.GetPlayers(tbl11)) do
                                if index2 ~= localPlayer and index2.Character then
                                    index = "AliveCheck"
                                    if tbl11.Checks[index] and index.FindFirstChildOfClass(index, "Humanoid") then
                                    else
                                        tbl12 = WORKSPACE
                                        tbl13 = "WallCheck"
                                        if tbl11.Checks[tbl13] and not tbl12.FindPartOnRayWithIgnoreList(tbl12, Ray.new(camera.CFrame.Position, (index2.Character[tbl12].Position - camera.CFrame.Position).Unit * (index2.Character[tbl12].Position - camera.CFrame.Position).Magnitude), { localPlayer.Character, camera }) then
                                        else
                                            tbl13 = "TeamCheck"
                                            if tbl11.Checks[tbl13] and (tbl13.FindFirstChild(tbl13, "HumanoidRootPart") and tbl13.FindFirstChild(tbl13, "TeammateLabel")) then
                                            else
                                                tbl12 = camera
                                                tbl12 = tbl12.WorldToViewportPoint(tbl12, index2.Character[function2].Position)
                                                Vector2.new(tbl12.v2, tbl12.Y)
                                                Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)
                                                return index2
                                            end
                                        end
                                    end
                                end 
                            end 
                        end)(({
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = true,
                                ["AliveCheck"] = true
                            },
                            ["Fov"] = {
                                ["Enable"] = true,
                                ["Visible"] = true,
                                ["Thickness"] = 1,
                                ["Color"] = Color3.fromRGB(255, 255, 255),
                                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                [tbl4[vJ[1]]] = 90
                            },
                            ["Values"] = {
                                ["Enable"] = false,
                                ["Toggle"] = false,
                                ["HitPart"] = "HitboxHead",
                                ["HitPartList"] = {
                                    "Head",
                                    "LeftFoot",
                                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                    tbl4[r15(vJ[1], vJ[2])],
                                    tbl4[vJ[1]],
                                    tbl4[vJ[2]],
                                    vJ[1][vJ[3]],
                                    vJ[1],
                                    vJ[2],
                                    vJ[3],
                                    vJ[4],
                                    vJ[5],
                                    vJ[6],
                                    vJ[7],
                                    vJ[8],
                                    vJ[9],
                                    vJ[10],
                                    vJ[11]
                                },
                                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                [tbl4[vJ[1]]] = 50
                            }
                        }).Values.HitPart, {
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = true,
                                ["AliveCheck"] = true
                            },
                            ["Fov"] = {
                                ["Enable"] = true,
                                ["Visible"] = true,
                                ["Thickness"] = 1,
                                ["Color"] = Color3.fromRGB(255, 255, 255),
                                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                [tbl4[vJ[1]]] = 90
                            },
                            ["Values"] = {
                                ["Enable"] = false,
                                ["Toggle"] = false,
                                ["HitPart"] = "HitboxHead",
                                ["HitPartList"] = {
                                    "Head",
                                    "LeftFoot",
                                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                    tbl4[r15(vJ[1], vJ[2])],
                                    tbl4[vJ[1]],
                                    tbl4[vJ[2]],
                                    vJ[1][vJ[3]],
                                    vJ[1],
                                    vJ[2],
                                    vJ[3],
                                    vJ[4],
                                    vJ[5],
                                    vJ[6],
                                    vJ[7],
                                    vJ[8],
                                    vJ[9],
                                    vJ[10],
                                    vJ[11]
                                },
                                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                [tbl4[vJ[1]]] = 50
                            }
                        })
                        if tbl2 then
                            tbl5.Color = ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Fov.LockColor
                        else
                            tbl5.Color = ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Fov.Color
                        end
                        local tbl9 = ({
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = true,
                                ["AliveCheck"] = true
                            },
                            ["Fov"] = {
                                ["Enable"] = true,
                                ["Visible"] = true,
                                ["Thickness"] = 1,
                                ["Color"] = Color3.fromRGB(255, 255, 255),
                                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                [tbl4[vJ[1]]] = 90
                            },
                            ["Values"] = {
                                ["Enable"] = false,
                                ["Toggle"] = false,
                                ["HitPart"] = "HitboxHead",
                                ["HitPartList"] = {
                                    "Head",
                                    "LeftFoot",
                                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                    tbl4[r15(vJ[1], vJ[2])],
                                    tbl4[vJ[1]],
                                    tbl4[vJ[2]],
                                    vJ[1][vJ[3]],
                                    vJ[1],
                                    vJ[2],
                                    vJ[3],
                                    vJ[4],
                                    vJ[5],
                                    vJ[6],
                                    vJ[7],
                                    vJ[8],
                                    vJ[9],
                                    vJ[10],
                                    vJ[11]
                                },
                                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                [tbl4[vJ[1]]] = 50
                            }
                        }).Values
                        tbl14 = "Toggle"
                        tbl2 = tbl2
                        if tbl9[tbl14] and not enable1 or not ({
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = true,
                                ["AliveCheck"] = true
                            },
                            ["Fov"] = {
                                ["Enable"] = true,
                                ["Visible"] = true,
                                ["Thickness"] = 1,
                                ["Color"] = Color3.fromRGB(255, 255, 255),
                                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                [tbl4[vJ[1]]] = 90
                            },
                            ["Values"] = {
                                ["Enable"] = false,
                                ["Toggle"] = false,
                                ["HitPart"] = "HitboxHead",
                                ["HitPartList"] = {
                                    "Head",
                                    "LeftFoot",
                                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                    tbl4[r15(vJ[1], vJ[2])],
                                    tbl4[vJ[1]],
                                    tbl4[vJ[2]],
                                    vJ[1][vJ[3]],
                                    vJ[1],
                                    vJ[2],
                                    vJ[3],
                                    vJ[4],
                                    vJ[5],
                                    vJ[6],
                                    vJ[7],
                                    vJ[8],
                                    vJ[9],
                                    vJ[10],
                                    vJ[11]
                                },
                                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                [tbl4[vJ[1]]] = 50
                            }
                        }).Values.Toggle then
                            tbl5.Color = ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Fov.OffColor
                        end
                        if tbl2 then
                            tbl14 = tbl4
                            local v52 = tbl2.Character and tbl14.FindFirstChild(tbl14, ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Values.HitPart)
                            tbl2 = tbl2
                        end
                        if tbl2 then
                            tbl9 = "Toggle"
                            if not ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Values[tbl9] and (({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Values.TriggerKey and not tbl9.IsMouseButtonPressed(tbl9, ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = true,
                                    ["AliveCheck"] = true
                                },
                                ["Fov"] = {
                                    ["Enable"] = true,
                                    ["Visible"] = true,
                                    ["Thickness"] = 1,
                                    ["Color"] = Color3.fromRGB(255, 255, 255),
                                    ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                    ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                    [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                    [tbl4[vJ[1]]] = 90
                                },
                                ["Values"] = {
                                    ["Enable"] = false,
                                    ["Toggle"] = false,
                                    ["HitPart"] = "HitboxHead",
                                    ["HitPartList"] = {
                                        "Head",
                                        "LeftFoot",
                                        tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                        tbl4[r15(vJ[1], vJ[2])],
                                        tbl4[vJ[1]],
                                        tbl4[vJ[2]],
                                        vJ[1][vJ[3]],
                                        vJ[1],
                                        vJ[2],
                                        vJ[3],
                                        vJ[4],
                                        vJ[5],
                                        vJ[6],
                                        vJ[7],
                                        vJ[8],
                                        vJ[9],
                                        vJ[10],
                                        vJ[11]
                                    },
                                    ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                    [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                    [tbl4[vJ[1]]] = 50
                                }
                            }).Values.TriggerKey)) then
                            else
                                local v32 = ({
                                    ["Checks"] = {
                                        ["TeamCheck"] = true,
                                        ["WallCheck"] = true,
                                        ["AliveCheck"] = true
                                    },
                                    ["Fov"] = {
                                        ["Enable"] = true,
                                        ["Visible"] = true,
                                        ["Thickness"] = 1,
                                        ["Color"] = Color3.fromRGB(255, 255, 255),
                                        ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                        ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                        [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                        [tbl4[vJ[1]]] = 90
                                    },
                                    ["Values"] = {
                                        ["Enable"] = false,
                                        ["Toggle"] = false,
                                        ["HitPart"] = "HitboxHead",
                                        ["HitPartList"] = {
                                            "Head",
                                            "LeftFoot",
                                            tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                            tbl4[r15(vJ[1], vJ[2])],
                                            tbl4[vJ[1]],
                                            tbl4[vJ[2]],
                                            vJ[1][vJ[3]],
                                            vJ[1],
                                            vJ[2],
                                            vJ[3],
                                            vJ[4],
                                            vJ[5],
                                            vJ[6],
                                            vJ[7],
                                            vJ[8],
                                            vJ[9],
                                            vJ[10],
                                            vJ[11]
                                        },
                                        ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                        [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                        [tbl4[vJ[1]]] = 50
                                    }
                                }).Values.Chance
                                if math.random(1, 100) <= v32 then
                                    local tbl10 = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = true,
                                            ["AliveCheck"] = true
                                        },
                                        ["Fov"] = {
                                            ["Enable"] = true,
                                            ["Visible"] = true,
                                            ["Thickness"] = 1,
                                            ["Color"] = Color3.fromRGB(255, 255, 255),
                                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                            [tbl4[vJ[1]]] = 90
                                        },
                                        ["Values"] = {
                                            ["Enable"] = false,
                                            ["Toggle"] = false,
                                            ["HitPart"] = "HitboxHead",
                                            ["HitPartList"] = {
                                                "Head",
                                                "LeftFoot",
                                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                                tbl4[r15(vJ[1], vJ[2])],
                                                tbl4[vJ[1]],
                                                tbl4[vJ[2]],
                                                vJ[1][vJ[3]],
                                                vJ[1],
                                                vJ[2],
                                                vJ[3],
                                                vJ[4],
                                                vJ[5],
                                                vJ[6],
                                                vJ[7],
                                                vJ[8],
                                                vJ[9],
                                                vJ[10],
                                                vJ[11]
                                            },
                                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                            [tbl4[vJ[1]]] = 50
                                        }
                                    }).Values.HitPart
                                    if math.random(1, 100) <= ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = true,
                                            ["AliveCheck"] = true
                                        },
                                        ["Fov"] = {
                                            ["Enable"] = true,
                                            ["Visible"] = true,
                                            ["Thickness"] = 1,
                                            ["Color"] = Color3.fromRGB(255, 255, 255),
                                            ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                            ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                            [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                            [tbl4[vJ[1]]] = 90
                                        },
                                        ["Values"] = {
                                            ["Enable"] = false,
                                            ["Toggle"] = false,
                                            ["HitPart"] = "HitboxHead",
                                            ["HitPartList"] = {
                                                "Head",
                                                "LeftFoot",
                                                tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                                tbl4[r15(vJ[1], vJ[2])],
                                                tbl4[vJ[1]],
                                                tbl4[vJ[2]],
                                                vJ[1][vJ[3]],
                                                vJ[1],
                                                vJ[2],
                                                vJ[3],
                                                vJ[4],
                                                vJ[5],
                                                vJ[6],
                                                vJ[7],
                                                vJ[8],
                                                vJ[9],
                                                vJ[10],
                                                vJ[11]
                                            },
                                            ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                            [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                            [tbl4[vJ[1]]] = 50
                                        }
                                    }).Values.HeadshotChance then
                                        tbl10 = "Head"
                                    end
                                    camera.CFrame = CFrame.new(camera.CFrame.Position + (tbl10.Character[tbl10].Position - camera.CFrame.Position).Unit * 0.5, tbl10.Character[tbl10].Position)
                                    tbl10 = virtualInput
                                    tbl10.SendMouseButtonEvent(tbl10, tbl3.v2, tbl3.Y, 0, true, GAME, 0)
                                    task.wait()
                                    tbl10 = virtualInput
                                    tbl10.SendMouseButtonEvent(tbl10, tbl3.v2, tbl3.Y, 0, false, GAME, 0)
                                end
                            end
                        end
                    else
                        tbl5.Color = ({
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = true,
                                ["AliveCheck"] = true
                            },
                            ["Fov"] = {
                                ["Enable"] = true,
                                ["Visible"] = true,
                                ["Thickness"] = 1,
                                ["Color"] = Color3.fromRGB(255, 255, 255),
                                ["LockColor"] = Color3.fromRGB(255, 0, 0),
                                ["OffColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](150, 150, 150),
                                [tbl4[r15("{\xb2\x1d\x15[*", vJ[1])]] = false,
                                [tbl4[vJ[1]]] = 90
                            },
                            ["Values"] = {
                                ["Enable"] = false,
                                ["Toggle"] = false,
                                ["HitPart"] = "HitboxHead",
                                ["HitPartList"] = {
                                    "Head",
                                    "LeftFoot",
                                    tbl4[r15(")\x1e0\xf7\tJ\x1f\xe7", vJ[1])],
                                    tbl4[r15(vJ[1], vJ[2])],
                                    tbl4[vJ[1]],
                                    tbl4[vJ[2]],
                                    vJ[1][vJ[3]],
                                    vJ[1],
                                    vJ[2],
                                    vJ[3],
                                    vJ[4],
                                    vJ[5],
                                    vJ[6],
                                    vJ[7],
                                    vJ[8],
                                    vJ[9],
                                    vJ[10],
                                    vJ[11]
                                },
                                ["TriggerKey"] = Enum[tbl4[vJ[1]]][tbl4[r15(vJ[1], vJ[2])]],
                                [tbl4[r15("\xad_\x19\x12rg", vJ[1])]] = 75,
                                [tbl4[vJ[1]]] = 50
                            }
                        }).Fov.OffColor
                    end
                end 
            end 
        end)()
        coroutine.wrap(function(...)
            while task.wait() do
                if ({
                    ["Checks"] = {
                        ["TeamCheck"] = true,
                        ["WallCheck"] = true,
                        ["AliveCheck"] = true
                    },
                    ["Fov"] = {
                        ["Enable"] = true,
                        ["Visible"] = true,
                        ["Thickness"] = 1,
                        ["Color"] = Color3.fromRGB(255, 0, 0),
                        ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                        [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                        [tbl4[vJ[1]]] = false,
                        [vJ[1][vJ[3]]] = vJ[1]
                    },
                    ["Values"] = {
                        ["Enable"] = false,
                        ["HitPart"] = "HitboxHead",
                        ["HitPartList"] = {
                            "Head",
                            "LeftFoot",
                            tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                            tbl4[r15(vJ[1], vJ[2])],
                            tbl4[vJ[1]],
                            tbl4[vJ[2]],
                            vJ[1][vJ[3]],
                            vJ[1],
                            vJ[2],
                            vJ[3],
                            vJ[4],
                            vJ[5],
                            vJ[6],
                            vJ[7],
                            vJ[8],
                            vJ[9],
                            vJ[10],
                            vJ[11]
                        },
                        ["Chance"] = 75,
                        [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                    }
                }).Values.Enable then
                    if not localPlayer.PlayerGui.MainGui.MainFrame.Lobby.Currency.Visible then
                        local tbl20 = players
                        local tbl18 = tbl20[2]
                        tbl20 = tbl20[1]
                        for v92, index5 in ipairs(tbl20.GetPlayers(tbl20)) do
                            if index5 ~= localPlayer and index5.Character then
                                local tbl17 = "AliveCheck"
                                if ({
                                    ["Checks"] = {
                                        ["TeamCheck"] = true,
                                        ["WallCheck"] = true,
                                        ["AliveCheck"] = true
                                    },
                                    ["Fov"] = {
                                        ["Enable"] = true,
                                        ["Visible"] = true,
                                        ["Thickness"] = 1,
                                        ["Color"] = Color3.fromRGB(255, 0, 0),
                                        ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                        [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                        [tbl4[vJ[1]]] = false,
                                        [vJ[1][vJ[3]]] = vJ[1]
                                    },
                                    ["Values"] = {
                                        ["Enable"] = false,
                                        ["HitPart"] = "HitboxHead",
                                        ["HitPartList"] = {
                                            "Head",
                                            "LeftFoot",
                                            tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                            tbl4[r15(vJ[1], vJ[2])],
                                            tbl4[vJ[1]],
                                            tbl4[vJ[2]],
                                            vJ[1][vJ[3]],
                                            vJ[1],
                                            vJ[2],
                                            vJ[3],
                                            vJ[4],
                                            vJ[5],
                                            vJ[6],
                                            vJ[7],
                                            vJ[8],
                                            vJ[9],
                                            vJ[10],
                                            vJ[11]
                                        },
                                        ["Chance"] = 75,
                                        [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                    }
                                }).Checks[tbl17] and tbl17.FindFirstChildOfClass(tbl17, "Humanoid") then
                                else
                                    tbl18 = WORKSPACE
                                    tbl19 = "WallCheck"
                                    if ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = true,
                                            ["AliveCheck"] = true
                                        },
                                        ["Fov"] = {
                                            ["Enable"] = true,
                                            ["Visible"] = true,
                                            ["Thickness"] = 1,
                                            ["Color"] = Color3.fromRGB(255, 0, 0),
                                            ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                            [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                            [tbl4[vJ[1]]] = false,
                                            [vJ[1][vJ[3]]] = vJ[1]
                                        },
                                        ["Values"] = {
                                            ["Enable"] = false,
                                            ["HitPart"] = "HitboxHead",
                                            ["HitPartList"] = {
                                                "Head",
                                                "LeftFoot",
                                                tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                tbl4[r15(vJ[1], vJ[2])],
                                                tbl4[vJ[1]],
                                                tbl4[vJ[2]],
                                                vJ[1][vJ[3]],
                                                vJ[1],
                                                vJ[2],
                                                vJ[3],
                                                vJ[4],
                                                vJ[5],
                                                vJ[6],
                                                vJ[7],
                                                vJ[8],
                                                vJ[9],
                                                vJ[10],
                                                vJ[11]
                                            },
                                            ["Chance"] = 75,
                                            [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                        }
                                    }).Checks[tbl19] and not tbl18.FindPartOnRayWithIgnoreList(tbl18, Ray.new(camera.CFrame.Position, (tbl17.Character[({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = true,
                                            ["AliveCheck"] = true
                                        },
                                        ["Fov"] = {
                                            ["Enable"] = true,
                                            ["Visible"] = true,
                                            ["Thickness"] = 1,
                                            ["Color"] = Color3.fromRGB(255, 0, 0),
                                            ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                            [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                            [tbl4[vJ[1]]] = false,
                                            [vJ[1][vJ[3]]] = vJ[1]
                                        },
                                        ["Values"] = {
                                            ["Enable"] = false,
                                            ["HitPart"] = "HitboxHead",
                                            ["HitPartList"] = {
                                                "Head",
                                                "LeftFoot",
                                                tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                tbl4[r15(vJ[1], vJ[2])],
                                                tbl4[vJ[1]],
                                                tbl4[vJ[2]],
                                                vJ[1][vJ[3]],
                                                vJ[1],
                                                vJ[2],
                                                vJ[3],
                                                vJ[4],
                                                vJ[5],
                                                vJ[6],
                                                vJ[7],
                                                vJ[8],
                                                vJ[9],
                                                vJ[10],
                                                vJ[11]
                                            },
                                            ["Chance"] = 75,
                                            [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                        }
                                    }).Values.HitPart].Position - camera.CFrame.Position).Unit * (tbl17.Character[({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = true,
                                            ["AliveCheck"] = true
                                        },
                                        ["Fov"] = {
                                            ["Enable"] = true,
                                            ["Visible"] = true,
                                            ["Thickness"] = 1,
                                            ["Color"] = Color3.fromRGB(255, 0, 0),
                                            ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                            [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                            [tbl4[vJ[1]]] = false,
                                            [vJ[1][vJ[3]]] = vJ[1]
                                        },
                                        ["Values"] = {
                                            ["Enable"] = false,
                                            ["HitPart"] = "HitboxHead",
                                            ["HitPartList"] = {
                                                "Head",
                                                "LeftFoot",
                                                tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                tbl4[r15(vJ[1], vJ[2])],
                                                tbl4[vJ[1]],
                                                tbl4[vJ[2]],
                                                vJ[1][vJ[3]],
                                                vJ[1],
                                                vJ[2],
                                                vJ[3],
                                                vJ[4],
                                                vJ[5],
                                                vJ[6],
                                                vJ[7],
                                                vJ[8],
                                                vJ[9],
                                                vJ[10],
                                                vJ[11]
                                            },
                                            ["Chance"] = 75,
                                            [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                        }
                                    }).Values.HitPart].Position - camera.CFrame.Position).Magnitude), { localPlayer.Character, camera }) then
                                    else
                                        tbl19 = "TeamCheck"
                                        if ({
                                            ["Checks"] = {
                                                ["TeamCheck"] = true,
                                                ["WallCheck"] = true,
                                                ["AliveCheck"] = true
                                            },
                                            ["Fov"] = {
                                                ["Enable"] = true,
                                                ["Visible"] = true,
                                                ["Thickness"] = 1,
                                                ["Color"] = Color3.fromRGB(255, 0, 0),
                                                ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                                [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                                [tbl4[vJ[1]]] = false,
                                                [vJ[1][vJ[3]]] = vJ[1]
                                            },
                                            ["Values"] = {
                                                ["Enable"] = false,
                                                ["HitPart"] = "HitboxHead",
                                                ["HitPartList"] = {
                                                    "Head",
                                                    "LeftFoot",
                                                    tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                    tbl4[r15(vJ[1], vJ[2])],
                                                    tbl4[vJ[1]],
                                                    tbl4[vJ[2]],
                                                    vJ[1][vJ[3]],
                                                    vJ[1],
                                                    vJ[2],
                                                    vJ[3],
                                                    vJ[4],
                                                    vJ[5],
                                                    vJ[6],
                                                    vJ[7],
                                                    vJ[8],
                                                    vJ[9],
                                                    vJ[10],
                                                    vJ[11]
                                                },
                                                ["Chance"] = 75,
                                                [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                            }
                                        }).Checks[tbl19] and (tbl19.FindFirstChild(tbl19, "HumanoidRootPart") and tbl19.FindFirstChild(tbl19, "TeammateLabel")) then
                                        else
                                            tbl18 = camera
                                            tbl14 = tbl18.WorldToViewportPoint(tbl18, tbl17.Character[({
                                                ["Checks"] = {
                                                    ["TeamCheck"] = true,
                                                    ["WallCheck"] = true,
                                                    ["AliveCheck"] = true
                                                },
                                                ["Fov"] = {
                                                    ["Enable"] = true,
                                                    ["Visible"] = true,
                                                    ["Thickness"] = 1,
                                                    ["Color"] = Color3.fromRGB(255, 0, 0),
                                                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                                    [tbl4[vJ[1]]] = false,
                                                    [vJ[1][vJ[3]]] = vJ[1]
                                                },
                                                ["Values"] = {
                                                    ["Enable"] = false,
                                                    ["HitPart"] = "HitboxHead",
                                                    ["HitPartList"] = {
                                                        "Head",
                                                        "LeftFoot",
                                                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                        tbl4[r15(vJ[1], vJ[2])],
                                                        tbl4[vJ[1]],
                                                        tbl4[vJ[2]],
                                                        vJ[1][vJ[3]],
                                                        vJ[1],
                                                        vJ[2],
                                                        vJ[3],
                                                        vJ[4],
                                                        vJ[5],
                                                        vJ[6],
                                                        vJ[7],
                                                        vJ[8],
                                                        vJ[9],
                                                        vJ[10],
                                                        vJ[11]
                                                    },
                                                    ["Chance"] = 75,
                                                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                                }
                                            }).Values.HitPart].Position)
                                            tbl18 = (Vector2.new(tbl14.v2, tbl14.Y) - Vector2.new(camera.ViewportSize.v2 / 2, camera.ViewportSize.Y / 2)).Magnitude
                                            if ({
                                                ["Checks"] = {
                                                    ["TeamCheck"] = true,
                                                    ["WallCheck"] = true,
                                                    ["AliveCheck"] = true
                                                },
                                                ["Fov"] = {
                                                    ["Enable"] = true,
                                                    ["Visible"] = true,
                                                    ["Thickness"] = 1,
                                                    ["Color"] = Color3.fromRGB(255, 0, 0),
                                                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                                    [tbl4[vJ[1]]] = false,
                                                    [vJ[1][vJ[3]]] = vJ[1]
                                                },
                                                ["Values"] = {
                                                    ["Enable"] = false,
                                                    ["HitPart"] = "HitboxHead",
                                                    ["HitPartList"] = {
                                                        "Head",
                                                        "LeftFoot",
                                                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                        tbl4[r15(vJ[1], vJ[2])],
                                                        tbl4[vJ[1]],
                                                        tbl4[vJ[2]],
                                                        vJ[1][vJ[3]],
                                                        vJ[1],
                                                        vJ[2],
                                                        vJ[3],
                                                        vJ[4],
                                                        vJ[5],
                                                        vJ[6],
                                                        vJ[7],
                                                        vJ[8],
                                                        vJ[9],
                                                        vJ[10],
                                                        vJ[11]
                                                    },
                                                    ["Chance"] = 75,
                                                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                                }
                                            }).Fov.Enable and tbl18 > ({
                                                ["Checks"] = {
                                                    ["TeamCheck"] = true,
                                                    ["WallCheck"] = true,
                                                    ["AliveCheck"] = true
                                                },
                                                ["Fov"] = {
                                                    ["Enable"] = true,
                                                    ["Visible"] = true,
                                                    ["Thickness"] = 1,
                                                    ["Color"] = Color3.fromRGB(255, 0, 0),
                                                    ["LockColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](255, 0, 0),
                                                    [tbl4[r15("\xeb\xc3\xb1Fy\xca\xa9\xe3", vJ[1])]] = Color3[tbl4[vJ[2]]](150, 0, vJ[1]),
                                                    [tbl4[vJ[1]]] = false,
                                                    [vJ[1][vJ[3]]] = vJ[1]
                                                },
                                                ["Values"] = {
                                                    ["Enable"] = false,
                                                    ["HitPart"] = "HitboxHead",
                                                    ["HitPartList"] = {
                                                        "Head",
                                                        "LeftFoot",
                                                        tbl4[r15("\xb0\xf2\xb1\xd3\xa9Ae\x90", vJ[1])],
                                                        tbl4[r15(vJ[1], vJ[2])],
                                                        tbl4[vJ[1]],
                                                        tbl4[vJ[2]],
                                                        vJ[1][vJ[3]],
                                                        vJ[1],
                                                        vJ[2],
                                                        vJ[3],
                                                        vJ[4],
                                                        vJ[5],
                                                        vJ[6],
                                                        vJ[7],
                                                        vJ[8],
                                                        vJ[9],
                                                        vJ[10],
                                                        vJ[11]
                                                    },
                                                    ["Chance"] = 75,
                                                    [tbl4[r15("M\x8e\x85<\xa2\xb0:u\x12\xa6\xd9p\xa9\xec", vJ[1])]] = 50
                                                }
                                            }).Fov.Size then
                                            else
                                                local v82 = tbl17
                                            end
                                            tbl18 = tbl18
                                        end
                                    end
                                end
                            end 
                        end
                    end
                end 
            end 
        end)()
        coroutine.wrap(function(...)
            tbl = r15
            while task.wait() do
                tbl = players
                local tbl22 = tbl[3]
                tbl22 = tbl22[1]
                for v102, index6 in tbl22, pairs(tbl22.GetPlayers(tbl22)) do
                    if index6 ~= localPlayer and index6.Character then
                        tbl2 = index6.Character
                        tbl2.FindFirstChild(tbl2, "Esp")
                        local tbl21 = "AliveCheck"
                        if ({
                            ["Checks"] = {
                                ["TeamCheck"] = true,
                                ["WallCheck"] = false,
                                ["AliveCheck"] = true
                            },
                            ["Values"] = {
                                ["Enabled"] = true,
                                ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                ["FillTransparency"] = 0.5,
                                ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                            }
                        }).Checks[tbl21] and tbl21.FindFirstChildOfClass(tbl21, "Humanoid") then
                            if tbl21 then tbl21.Destroy(tbl21) end
                        else
                            tbl21 = "TeamCheck"
                            if ({
                                ["Checks"] = {
                                    ["TeamCheck"] = true,
                                    ["WallCheck"] = false,
                                    ["AliveCheck"] = true
                                },
                                ["Values"] = {
                                    ["Enabled"] = true,
                                    ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                    ["FillTransparency"] = 0.5,
                                    ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                    [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                }
                            }).Checks[tbl21] and (tbl21.FindFirstChild(tbl21, "HumanoidRootPart") and tbl21.FindFirstChild(tbl21, "TeammateLabel")) then
                                if tbl21 then tbl21.Destroy(tbl21) end
                            else
                                if not tbl21 then
                                    tbl21 = Instance.new("Highlight")
                                    tbl21.RobloxLocked = true
                                    tbl21.Name = "Esp"
                                    tbl21.Adornee = index6.Character
                                    tbl21.Parent = index6.Character
                                end
                                if tbl21 then
                                    tbl2 = "DepthMode"
                                    tbl2 = tbl2
                                    tbl2 = tbl2
                                    tbl2 = r15
                                    tbl21[tbl2] = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Checks.WallCheck and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop
                                    tbl21.Enabled = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Values.Enabled
                                    tbl21.FillColor = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Values.FillColor
                                    tbl21.FillTransparency = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Values.FillTransparency
                                    tbl21.OutlineColor = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Values.OutlineColor
                                    tbl21.OutlineTransparency = ({
                                        ["Checks"] = {
                                            ["TeamCheck"] = true,
                                            ["WallCheck"] = false,
                                            ["AliveCheck"] = true
                                        },
                                        ["Values"] = {
                                            ["Enabled"] = true,
                                            ["FillColor"] = Color3.fromRGB(255, 255, 255),
                                            ["FillTransparency"] = 0.5,
                                            ["OutlineColor"] = Color3[tbl4[r15(vJ[1], vJ[2])]](200, 200, 200),
                                            [tbl4[r15("\xe1\xde\xbc\\\x1b\x82\xad>\x16^\xdd\x88-\x96bM\xf2^\xa0", vJ[1])]] = 0
                                        }
                                    }).Values.OutlineTransparency
                                end
                            end
                        end
                    end 
                end 
            end 
        end)()
        local GAME = GAME
        vJ[22] = "\xa8\x13\x8eUC\x96\xf0\x12"
        local v112 = loadstring(GAME.HttpGet(GAME, "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        tbl7 = v112
        vJ[17] = 23384865729161
        vJ[4] = "\xc8\xff\r\xf9\x02 \x8a"
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[4] = 29301643965772
        vJ[1] = r15
        vJ[3] = "\xef>\xb1\xfa*}\xb0#7Fs\x8f"
        vJ[2] = vJ[1](vJ[3], vJ[4])
        GAME = tbl7.CreateWindow(tbl7, {
            ["Title"] = "Swift Hub | Rivals Script",
            ["SubTitle"] = "BETA v0.5",
            ["TabWidth"] = 160,
            ["Size"] = UDim2.fromOffset(580, 460),
            ["Acrylic"] = false,
            ["Theme"] = "Darker",
            [tbl4[r15("\xc0\x16\xed\xbe\xd5\x97`N\x1c\xb5\xc0", vJ[1])]] = Enum[vJ[1][vJ[3]]][tbl4[vJ[2]]]
        })
        local screenGui = Instance.new("ScreenGui")
        vJ[3] = 5125456988498
        local textLabel = Instance.new("TextLabel")
        vJ[6] = 19435728823130
        local corner = Instance.new("UICorner")
        local enable4 = true
        screenGui.Name = "Toggle Gui"
        screenGui.Parent = nil
        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        screenGui.ResetOnSpawn = false
        corner.Parent = textLabel
        vJ[2] = 12106468759045
        corner.CornerRadius = UDim.new(1, 0)
        textLabel.Name = "Toggle"
        textLabel.Parent = screenGui
        vJ[13] = 17378965495708
        textLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
        vJ[5] = 31899281521158
        textLabel.Position = UDim2.new(0.25, -30, 0.25, -30)
        vJ[1] = 31766495820232
        textLabel.Size = UDim2.new(0, 60, 0, 60)
        vJ[18] = 14708939397825
        textLabel.Font = Enum.Font.SourceSans
        vJ[10] = 18416248856959
        vJ[4] = 21604715898700
        textLabel.Text = "Close Gui"
        textLabel.TextColor3 = Color3.fromRGB(203, 122, 49)
        textLabel.TextSize = 14
        textLabel.BackgroundTransparency = 0
        textLabel.TextScaled = true
        coroutine.wrap(function(...)
            tbl2 = GAME
            local tbl23 = tbl2.GetService(tbl2, "Players").LocalPlayer
            if tbl23 then
                screenGui.Parent = tbl23.WaitForChild(tbl23, "PlayerGui")
                textLabel.BackgroundTransparency = 1
                for index7 = 1, 0, -0.05 do
                    GAME = index7
                    textLabel.BackgroundTransparency = GAME
                    wait(.01) 
                end
            else
                tbl2 = e.PlayerAdded
                tbl2.Wait(tbl2)
                tbl23 = e.LocalPlayer
                screenGui.Parent = tbl23.WaitForChild(tbl23, "PlayerGui")
                textLabel.BackgroundTransparency = 1
                for index8 = 1, 0, -0.05 do
                    GAME = index8
                    textLabel.BackgroundTransparency = GAME
                    wait(.01) 
                end
            end 
        end)()
        vJ[14] = 12116477367818
        local tbl24 = textLabel.InputBegan
        tbl24.Connect(tbl24, function(function9, ...)
            local tbl25 = function9
            tbl = Enum.UserInputType
            if tbl25.UserInputType == tbl.MouseButton1 then
                local enable6 = true
                local position = tbl25.Position
                local position2 = textLabel.Position
                tbl = tbl25.Changed
                tbl.Connect(tbl, function(...)
                    if tbl25.UserInputState == Enum.UserInputState.End then
                        local enable5 = false
                    end 
                end)
            end 
        end)
        vJ[8] = 10418660528883
        tbl24 = textLabel.InputChanged
        tbl24.Connect(tbl24, function(function10, ...)
            local tbl26 = function10
            if tbl26.UserInputType == Enum.UserInputType.MouseMovement and r99 then
                tbl2 = function10
                local v122 = tbl2
            end 
        end)
        local GAME2 = GAME
        vJ[7] = 9269692895452
        tbl24 = GAME2.GetService(GAME2, "UserInputService").InputChanged
        tbl24.Connect(tbl24, function(function11, ...)
            local tbl28 = function11
            if tbl28 == r100 and r99 then
                local tbl27 = tbl28.Position - r101
                textLabel.Position = UDim2.new(r102.v2.Scale, r102.v2.Offset + tbl27.v2, r102.Y.Scale, r102.Y.Offset + tbl27.Y)
            end 
        end)
        tbl24 = textLabel.InputBegan
        tbl24.Connect(tbl24, function(function12, ...)
            if function12.UserInputType == Enum.UserInputType.MouseButton1 and not r99 then
                getgenv().keytoclick = "RightControl"
                tbl2 = GAME
                local virtualInput2 = tbl2.GetService(tbl2, "VirtualInputManager")
                virtualInput2.SendKeyEvent(virtualInput2, true, keytoclick, false, GAME)
                enable4 = not enable4
                if enable4 then
                    textLabel.Text = "Open Gui"
                else
                    textLabel.Text = "Close Gui"
                end
            end 
        end)
        
        local function function16(function15, function14, function13, ...)
            local v16 = function14
            local v152 = function15
            v16 = function13
            local floorVal = math.floor(v152 * 6)
            local v142 = v152 * 6 - floorVal
            local v19 = v16 * (1 - v142 * v16)
            local v17 = floorVal % 6
            local v28 = 0
            v152 = v17 == v28
            if v152 then
                v152 = function13
                v152 = v16 * (1 - v16)
                v17 = v16 * (1 - (1 - v142) * v16)
                local v132 = v16
                floorVal = v132 * (1 - (1 - v142) * v132)
            else
                v19 = floorVal % 6 == 1
                if v19 then
                    v19 = v16 * (1 - v142 * v16)
                    local v18 = v16 * (1 - v142 * v16)
                    floorVal = function13
                    v152 = v18 * (1 - v18)
                else
                    local v21 = math.floor(v152 * 6) % 6
                    local enable7 = v21 == 2
                    if enable7 then
                        enable7 = v21 * (1 - v21)
                        local v20 = v21 * (1 - v21)
                        v20 = function13
                        floorVal = function13
                        enable7 = v20 * (1 - (1 - v142) * v20)
                    else
                        local v23 = math.floor(enable7 * 6) % 6
                        local enable8 = v23 == 3
                        if enable8 then
                            enable8 = v23 * (1 - v23)
                            v23 = v222 * (1 - v142 * v222)
                            enable8 = function13
                            local v222 = v23 * (1 - v23)
                            floorVal = v222 * (1 - v142 * v222)
                        else
                            local v25 = math.floor(enable8 * 6) % 6
                            local enable9 = v25 == 4
                            if enable9 then
                                enable9 = v25 * (1 - (1 - v142) * v25)
                                local v24 = v25 * (1 - (1 - v142) * v25)
                                enable9 = function13
                                v24 = v24 * (1 - v24)
                                floorVal = v24 * (1 - v24)
                            else
                                local v26 = math.floor(enable9 * 6) % 6
                                if v26 == 5 then
                                    v26 = v27 * (1 - v27)
                                    local v27 = function13
                                    enable9 = v27 * (1 - v142 * v27)
                                    floorVal = v27 * (1 - v27)
                                end
                                return Color3.new(nil, nil, nil)
                            end
                        end
                    end
                end
            end 
        end
        
        spawn(function(...)
            while true do
                textLabel.TextColor3 = function16(0, 1, 1)
                local v29 = (0 + .01) % 1
                wait(.05) 
            end 
        end)
        vJ[1] = "\xd5#p\xd251\xdd"
        vJ[2] = "\xabF\x17Q"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[3] = "\xad\x1e\xfa\xeb"
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[4] = 28265920852842
        vJ[3] = 2575406515375
        vJ[2] = "V\xa3\t-\x81"
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[3] = "1?OU\xc6"
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[4] = "\xa5\x1d\x17z"
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[5] = "\xb6\xc1\x05\xedkd\xcf/e"
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[1] = "\\\xb6'\xe2\xfc\x9ekM\xe5`"
        vJ[2] = 27250908803473
        vJ[6] = 12080049722873
        vJ[4] = "w\xc0\xc7\x8e\x15"
        vJ[5] = 19927493157951
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[5] = "*\xff\xd5\xf6"
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[6] = "?\xb2F\xb3"
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[7] = "\x03&\xe7'l"
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[4] = 29351259977059
        vJ[7] = 23019279624671
        vJ[3] = "\x157\x0b!\x8c\xc89\xf9\x85\x8a\xb4"
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[8] = 20881973995003
        vJ[3] = tbl4
        vJ[6] = "wG\xb9\xd2c"
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[7] = "\xf0\xf6\xbe\xef\xbf\x17w"
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[5] = tbl4
        vJ[9] = 30562925770647
        vJ[6] = r15
        vJ[8] = "\xdbX\xd8I"
        vJ[11] = 20597507220855
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[9] = "_\xa5\xe0"
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[26] = 5545429830166
        vJ[5] = vJ[6][vJ[8]]
        vJ[10] = 21239137625762
        vJ[9] = 19557084177298
        vJ[6] = 28396151501734
        vJ[1] = { [vJ[2]] = vJ[3], [vJ[4]] = vJ[5] }
        vJ[5] = "\x05\tn*A\xf9i\xd2\xfbt"
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[8] = "\x11\x07\x14\x99q"
        vJ[15] = 7817583201848
        vJ[1] = vJ[2][vJ[4]]
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[9] = "\xc70\x81\xfac\xf3"
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[10] = "\xa4\xb3\xcf\x96"
        vJ[2] = "AddTab"
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[8] = tbl4
        vJ[11] = "\xac\x90 -"
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[8] = 31494665632073
        vJ[10] = "p\x03\xea\x8e8"
        vJ[3] = { [vJ[4]] = vJ[5], [vJ[6]] = vJ[7] }
        vJ[2] = GAME[vJ[2]]
        vJ[2] = vJ[2](GAME, vJ[3])
        vJ[4] = tbl4
        vJ[7] = "G\x98\x9c\x99\x1e\xe2UX8\xec\xfb9"
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[11] = 20510471611726
        vJ[3] = vJ[4][vJ[6]]
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[8] = tbl4
        vJ[11] = "\t\xc1\xc9\x85f\xfb\x06@"
        vJ[12] = 10031188398655
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[12] = "\xefi\x1c\x96"
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[13] = "\xf5\xf8\x92"
        vJ[11] = r15
        vJ[4] = "AddTab"
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[9] = vJ[10][vJ[12]]
        vJ[10] = 30895486548018
        vJ[5] = { [vJ[6]] = vJ[7], [vJ[8]] = vJ[9] }
        vJ[20] = 22152034773067
        vJ[4] = GAME[vJ[4]]
        vJ[12] = "\xb9\x18\x94w9"
        vJ[4] = vJ[4](GAME, vJ[5])
        vJ[9] = "\x12\xc2|\xdcwE\x8a\xe2"
        vJ[6] = tbl4
        vJ[13] = 12316397917799
        vJ[14] = 8698601082834
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[6] = "AddTab"
        vJ[6] = GAME[vJ[6]]
        vJ[13] = "\x18\x0b\xe3\xe2"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[14] = "\x7f\xc0\x95\xf9"
        vJ[9] = vJ[10][vJ[12]]
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[15] = "\xefv\xed"
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[12] = 30303316981535
        vJ[7] = { [vJ[8]] = vJ[9], [vJ[10]] = vJ[11] }
        vJ[15] = 17994029981883
        vJ[6] = vJ[6](GAME, vJ[7])
        vJ[11] = "\xf4\xd8\xd4\x10\x89\xc8\xe4\xdf\xd5B"
        vJ[8] = tbl4
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[14] = "\x17?\xc3i9"
        vJ[7] = vJ[8][vJ[10]]
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[8] = "AddTab"
        vJ[15] = "\xdeYC\xb1\xfa\x1d\xff\xe6"
        vJ[16] = 20017261438057
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[8] = GAME[vJ[8]]
        vJ[11] = vJ[12][vJ[14]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[16] = "t\"\x18\xb8"
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[12] = vJ[13][vJ[15]]
        vJ[17] = "\x10yB\x1e\xd9\x11\x97c"
        vJ[14] = tbl4
        vJ[15] = r15
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        vJ[9] = { [vJ[10]] = vJ[11], [vJ[12]] = vJ[13] }
        vJ[8] = vJ[8](GAME, vJ[9])
        local tbl29 = {
            ["updates_tab"] = GAME.AddTab(GAME, {
                [tbl4[r15("\xa4\xf6\x93\xdb\x14", vJ[1])]] = tbl4[r15(vJ[1], vJ[2])],
                [tbl4[vJ[1]]] = tbl4[vJ[2]]
            }),
            ["aimbot_tab"] = GAME.AddTab(GAME, { [tbl4[vJ[1]]] = tbl4[vJ[2]], [vJ[1][vJ[3]]] = vJ[1] }),
            [tbl4[r15(vJ[1], vJ[2])]] = GAME.AddTab(GAME, { [vJ[1][vJ[3]]] = vJ[1], [vJ[2]] = vJ[3] }),
            [tbl4[vJ[2]]] = GAME.AddTab(GAME, vJ[1]),
            [vJ[1]] = vJ[2],
            [vJ[3]] = vJ[4],
            [vJ[5]] = vJ[6],
            [vJ[7]] = vJ[8]
        }
        vJ[14] = 10959227753455
        local tbl30 = tbl29.aimbot_tab
        vJ[7] = 25451193626187
        vJ[10] = 31271177713889
        vJ[4] = 9870720979444
        vJ[2] = "\xcf|\xf0\xa3\x1f"
        tbl30.AddSection(tbl30, "Aimbot PC")
        vJ[1] = 16348667895228
        vJ[3] = 24721095339255
        vJ[5] = 10515555767072
        tbl30 = tbl29.aimbot_tab
        vJ[8] = 17027017268984
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[9] = 9377609502990
        vJ[1] = r15
        vJ[3] = "\xda\xdf Z<Pz\xa15\xccQ"
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[4] = "\xcc\x81;\xe7\x1a\x9b\xaf"
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[38] = 4016497362766
        vJ[3] = "0\xb5\xb7\xbb\xb3"
        vJ[6] = 23964474387351
        vJ[2] = 30752694990832
        vJ[1] = false
        local tbl31 = tbl30.AddToggle(tbl30, tbl4[r15("\x00\xcdvQO\x9e\xb8>#\x00\xf7Z", vJ[1])], { [tbl4[vJ[1]]] = tbl4[vJ[2]], [vJ[1][vJ[3]]] = vJ[1] })
        tbl31.OnChanged(tbl31, function(function17, ...) enable10 = function17 end)
        vJ[1] = 12556002875094
        tbl30 = tbl29[tbl4[r15("\x80\x10\xa0 \xf8\xbd\x17f\x03<", vJ[1])]]
        vJ[1] = "\x99{\xdcF\x97\xacb"
        vJ[50] = 8013068439187
        vJ[4] = 5894109448888
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[5] = 30972251732054
        vJ[12] = 4437246691346
        vJ[4] = "i\xd2\xc3iY\xc6\x190\x08\xeb\xd8\xa7"
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[5] = "_,\xe2\xb1"
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[6] = "\x15\x8e\x85\xc8\xb6h"
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[4] = tbl4
        vJ[7] = "\xf7\xca\xd8\xb0\xf4\x00J"
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[16] = 1548374262481
        vJ[8] = "w\x93\xf0\xcd'\xf5\xda\xc0\xef\xcb/^"
        vJ[3] = vJ[4][vJ[6]]
        vJ[49] = "\x80\x0f\xbfk\xa0\xef4]"
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[9] = "\x06\xe4W=\xc8\x8fP\xfc\xaa\x9dy\xf5\xe5\xb5a"
        vJ[4] = vJ[5][vJ[7]]
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[6] = function(function18, ...)
            e = function18
            C = Enum.KeyCode.Unknown
            if e == C then
                v30 = Enum.UserInputType.MouseButton2
            else
                C = function18
                v30 = C
            end 
        end
        vJ[1] = "n.\xe1U\x04I\xd2\xae&\xf7"
        tbl30.AddKeybind(tbl30, tbl4[r15(vJ[1], vJ[2])], {
            [tbl4[vJ[2]]] = vJ[1][vJ[3]],
            [vJ[1]] = vJ[2],
            [vJ[3]] = vJ[4],
            [vJ[5]] = vJ[6]
        })
        vJ[4] = "\x07,\x88h\x11"
        vJ[8] = 34022598098403
        vJ[2] = 6820186393703
        vJ[2] = "x\x94R)\xf1\xb8\x0e\x04\x89\x03Zi\x89\x11\x99"
        vJ[5] = 7848302104134
        vJ[9] = 30740332427242
        vJ[7] = 9646691668364
        vJ[3] = 1829108466515
        tbl30 = tbl29[tbl4[r15(vJ[1], vJ[2])]]
        vJ[1] = r15(vJ[2], vJ[3])
        vJ[6] = 15518787476538
        vJ[1] = tbl4
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[2] = tbl4
        vJ[5] = "\xb4q\xe3\x14\xe5\x9a\x81\x89"
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[3] = tbl4
        vJ[6] = "\xdfU#\xf02\xf0E"
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[3] = false
        local tbl32 = tbl30.AddToggle(tbl30, tbl4[vJ[1]], { [vJ[1][vJ[3]]] = vJ[1], [vJ[2]] = vJ[3] })
        vJ[6] = 27640721650247
        vJ[5] = "\t_\x12%Q"
        vJ[7] = 10123046359657
        vJ[3] = 25290157026816
        tbl32.OnChanged(tbl32, function(function19, ...) enable11 = function19 end)
        vJ[2] = "\xdd\xb9\xe2 \x0f\xff\x1a\xd2\xe1\xa5"
        vJ[1] = r15(vJ[2], vJ[3])
        tbl30 = tbl29[tbl4[vJ[1]]]
        vJ[3] = "\x95\xfe`\x93\xcb\xec\xab\x97\x94\xcf\x9d\xa5m\n\"7\xe4\xdd"
        vJ[1] = r15
        vJ[4] = 10637732369241
        vJ[2] = vJ[1](vJ[3], vJ[4])
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[6] = "X\x15\x86\x8f[\x19C\xb8T-"
        vJ[1] = vJ[2][vJ[4]]
        vJ[23] = 16348621938108
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[7] = "&\xb0\x17\xddhF("
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[10] = 12056393291246
        vJ[3] = vJ[4][vJ[6]]
        vJ[4] = false
        local tbl33 = tbl30.AddToggle(tbl30, tbl4[vJ[2]], { [vJ[1]] = vJ[2], [vJ[3]] = vJ[4] })
        vJ[3] = "\x1c4\x01u\xe0\x8b\x1cB\xa2\x18"
        vJ[4] = 7165288959240
        vJ[5] = 14391664532013
        vJ[6] = "\xeb\xe6m\xc2\xa4"
        tbl33.OnChanged(tbl33, function(function20, ...) enable12 = function20 end)
        vJ[1] = r15
        vJ[2] = vJ[1](vJ[3], vJ[4])
        tbl30 = tbl29[tbl4[vJ[2]]]
        vJ[1] = tbl4
        vJ[4] = "\x8e\x91\x86Y\xfc|8\"\x86\x9d\xf1\xfb\xdc\xc6\xc7\xad"
        vJ[7] = 14289628436990
        vJ[2] = r15
        vJ[8] = 6617349409801
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[11] = 29197251458332
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[7] = "8D\xa6\xa7H\xd2\xf5.\xb7\x1b\xba\xe9t\xf1{\x1fY"
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[8] = "\xd0!17w}\x01"
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[5] = false
        vJ[1] = { [vJ[2]] = vJ[3], [vJ[4]] = vJ[5] }
        vJ[7] = "\x1b\x02\xedq]"
        vJ[5] = 3826351687413
        local tbl34 = tbl30.AddToggle(tbl30, vJ[1][vJ[3]], vJ[1])
        vJ[9] = 16382354562508
        vJ[6] = 16488070405629
        tbl34.OnChanged(tbl34, function(function21, ...) enable13 = function21 end)
        vJ[1] = tbl4
        vJ[4] = "\x81\xfd\x19\xea\x95\xcfs\x873\x19"
        vJ[8] = 6071516089099
        vJ[2] = r15
        vJ[3] = vJ[2](vJ[4], vJ[5])
        vJ[5] = "]p\x99\\\xc9 \xbb\xc0\":U\xbdW\x9a\xb3\xa2\x02"
        tbl30 = tbl29[vJ[1][vJ[3]]]
        vJ[2] = tbl4
        vJ[3] = r15
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[8] = "\x91D}J\x15tR4_\xc6"
        vJ[3] = vJ[4][vJ[6]]
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[9] = "\xf1\xde\xcd\xeb\xca\x1eu"
        vJ[4] = vJ[5][vJ[7]]
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[6] = false
        vJ[2] = { [vJ[3]] = vJ[4], [vJ[5]] = vJ[6] }
        local tbl35 = tbl30.AddToggle(tbl30, vJ[1], vJ[2])
        vJ[6] = 11965625537987
        vJ[8] = "\xc3\xf8p\xb9U"
        vJ[10] = 2232447058959
        vJ[15] = "_\x97\xb6\x0e"
        vJ[1] = function(function22, ...) enable14 = function22 end
        tbl35.OnChanged(tbl35, vJ[1])
        vJ[2] = tbl4
        vJ[9] = 836495573381
        vJ[3] = r15
        vJ[5] = "\x86\x163D\x13\x90%\xaa\xd1\xb8"
        vJ[4] = vJ[3](vJ[5], vJ[6])
        vJ[1] = vJ[2][vJ[4]]
        vJ[6] = "\xb3\x8d6\xfc\xd5*q6\xc2"
        vJ[7] = 12170234189347
        tbl30 = tbl29[vJ[1]]
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[6] = tbl4
        vJ[9] = "K!\x9d{5\x13Y:\xcdR"
        vJ[7] = r15
        vJ[1] = "AddToggle"
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[1] = tbl30[vJ[1]]
        vJ[5] = vJ[6][vJ[8]]
        vJ[7] = tbl4
        vJ[10] = "v\x8b\x1cg\x98\xdcM"
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[7] = true
        vJ[3] = { [vJ[4]] = vJ[5], [vJ[6]] = vJ[7] }
        vJ[10] = 7350190148958
        vJ[1] = vJ[1](tbl30, vJ[2], vJ[3])
        vJ[7] = 10214105092756
        vJ[2] = function(function23, ...) enable15 = function23 end
        vJ[11] = 4917814118642
        vJ[1].OnChanged(vJ[1], vJ[2])
        vJ[3] = tbl4
        vJ[4] = r15
        vJ[6] = "F\xc6\x0ex[\x8e\x1fy\xaeJ"
        vJ[9] = "\x8a^`v\xdb"
        vJ[8] = 33503624789233
        vJ[5] = vJ[4](vJ[6], vJ[7])
        vJ[2] = vJ[3][vJ[5]]
        vJ[7] = "\xd9\x01\"=\xf3\xacI\x10C"
        tbl30 = tbl29[vJ[2]]
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[2] = "AddToggle"
        vJ[10] = "|\xb8)\xe4\x18n\xd1\xdc\x07\xef"
        vJ[5] = vJ[6][vJ[8]]
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[11] = "\xb2\xe8\xb71\xfb%\x9b"
        vJ[6] = vJ[7][vJ[9]]
        vJ[2] = tbl30[vJ[2]]
        vJ[8] = tbl4
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[8] = true
        vJ[4] = { [vJ[5]] = vJ[6], [vJ[7]] = vJ[8] }
        vJ[2] = vJ[2](tbl30, vJ[3], vJ[4])
        vJ[7] = "Z\x85\xb4E\x87,=^\xf9\xa5"
        vJ[17] = 15534685346881
        vJ[48] = 17915638849686
        vJ[3] = function(function24, ...) enable16 = function24 end
        vJ[11] = 6266355157861
        vJ[2].OnChanged(vJ[2], vJ[3])
        vJ[10] = "Z\xc5\x15^\xa0"
        vJ[8] = 2882094335294
        vJ[4] = tbl4
        vJ[5] = r15
        vJ[6] = vJ[5](vJ[7], vJ[8])
        vJ[3] = vJ[4][vJ[6]]
        vJ[9] = 11738000512345
        tbl30 = tbl29[vJ[3]]
        vJ[5] = tbl4
        vJ[6] = r15
        vJ[8] = "\x8d\x0f\x10\xf5$~A\x9c\xa5b"
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[8] = tbl4
        vJ[12] = 10730396455812
        vJ[13] = 27256787988884
        vJ[9] = r15
        vJ[18] = 15838002699471
        vJ[11] = "\x03\xe7R\x8c6wF\x17\x15^J"
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[3] = "AddToggle"
        vJ[7] = vJ[8][vJ[10]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[12] = "\xb8;\xe4\xd7\xd8\x85p"
        vJ[3] = tbl30[vJ[3]]
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[9] = true
        vJ[5] = { [vJ[6]] = vJ[7], [vJ[8]] = vJ[9] }
        vJ[3] = vJ[3](tbl30, vJ[4], vJ[5])
        vJ[4] = function(function25, ...) enable17 = function25 end
        vJ[10] = 836181377413
        vJ[8] = "=\x16x5\xe9\xc3\xcf\xc0\x00:"
        vJ[3].OnChanged(vJ[3], vJ[4])
        vJ[5] = tbl4
        vJ[12] = 2710148252910
        vJ[6] = r15
        vJ[9] = 15913046842610
        vJ[13] = 8369396387641
        vJ[7] = vJ[6](vJ[8], vJ[9])
        vJ[4] = vJ[5][vJ[7]]
        vJ[9] = "\x0cv\x0b;\xbd\x89l\xf7\x05\x06o\x9a\xbf\x98\x01"
        vJ[42] = "]\xa0\x85WZ\xe8\xde\xd9"
        tbl30 = tbl29[vJ[4]]
        vJ[31] = "P\xb3\x06"
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[5] = vJ[6][vJ[8]]
        vJ[8] = tbl4
        vJ[9] = r15
        vJ[11] = "k0\x85D@"
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[12] = "\xe4\xa5\xd6J\xb8;"
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[13] = "3\x85^x\xafr"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[9] = vJ[10][vJ[12]]
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[4] = "AddDropdown"
        vJ[16] = "@0\x844\x13{+\xd9\xf5\x15\x00\"\xbb\xbb\xa8\x1d"
        vJ[11] = vJ[12][vJ[14]]
        vJ[4] = tbl30[vJ[4]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[16] = 25350892285468
        vJ[12] = vJ[13][vJ[15]]
        vJ[10] = { vJ[11], vJ[12] }
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[15] = "(\xe3\x010\xc1"
        vJ[17] = "\xcf\x89\xc1#\xfea\xa1"
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[14] = tbl4
        vJ[12] = false
        vJ[15] = r15
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        vJ[14] = 1
        vJ[16] = tbl4
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[17] = 15512126364727
        vJ[16] = function(function26, ...) v31 = function26 end
        vJ[6] = {
            [vJ[7]] = vJ[8],
            [vJ[9]] = vJ[10],
            [vJ[11]] = vJ[12],
            [vJ[13]] = vJ[14],
            [vJ[15]] = vJ[16]
        }
        vJ[10] = 20906852607495
        vJ[4] = vJ[4](tbl30, vJ[5], vJ[6])
        vJ[9] = "\x17\x95\xb8]l*\x1f\xed\xcbI"
        vJ[6] = tbl4
        vJ[7] = r15
        vJ[16] = "\xc2??"
        vJ[8] = vJ[7](vJ[9], vJ[10])
        vJ[14] = 26978368696594
        vJ[5] = vJ[6][vJ[8]]
        vJ[20] = "\xab\xc6\xd8\x04\x98\xee\xb9)"
        tbl30 = tbl29[vJ[5]]
        vJ[10] = "\x8bZ[\x80K\x8c\xe6\x9bF\xfa E\xf6"
        vJ[12] = "\xc0\xaf\xcd4\xd2"
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[13] = 3455733073481
        vJ[11] = 19664354386884
        vJ[5] = "AddSlider"
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[6] = vJ[7][vJ[9]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[10] = tbl4
        vJ[11] = r15
        vJ[13] = ")\xdc\xe9} \x0eG\xaa"
        vJ[15] = 862336844177
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[14] = "E \x85Er\x02\x0e"
        vJ[9] = vJ[10][vJ[12]]
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[13] = tbl4
        vJ[11] = 50
        vJ[14] = r15
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[12] = vJ[13][vJ[15]]
        vJ[13] = 0
        vJ[19] = 3759622145750
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[18] = "\x82\x97v"
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[14] = vJ[15][vJ[17]]
        vJ[15] = 1000
        vJ[17] = tbl4
        vJ[18] = r15
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        vJ[5] = tbl30[vJ[5]]
        vJ[19] = tbl4
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[17] = 0
        vJ[18] = vJ[19][vJ[21]]
        vJ[19] = function(function27, ...) v322 = function27 end
        vJ[7] = {
            [vJ[8]] = vJ[9],
            [vJ[10]] = vJ[11],
            [vJ[12]] = vJ[13],
            [vJ[14]] = vJ[15],
            [vJ[16]] = vJ[17],
            [vJ[18]] = vJ[19]
        }
        vJ[5] = vJ[5](tbl30, vJ[6], vJ[7])
        vJ[10] = "\x04PO\xb2F\x8b<@\xdd\xf1"
        vJ[14] = 26562727030865
        vJ[15] = 4311321888727
        vJ[29] = "y\xeb\x19"
        vJ[11] = 5992069204710
        vJ[7] = tbl4
        vJ[8] = r15
        vJ[13] = "S\x1c\xc21J"
        vJ[9] = vJ[8](vJ[10], vJ[11])
        vJ[17] = "\xac\xc5\xeb"
        vJ[6] = vJ[7][vJ[9]]
        tbl30 = tbl29[vJ[6]]
        vJ[18] = 31480541149507
        vJ[8] = tbl4
        vJ[11] = "\x9a\xf5\x06\xd1\xfd\xad\x8a\x81\xd8\x9f\xa2P\x8f^:\xfd"
        vJ[12] = 7045450403024
        vJ[20] = 8748568596457
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[10] = tbl4
        vJ[19] = "\x8aJ\xe0"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[16] = 14395640568367
        vJ[9] = vJ[10][vJ[12]]
        vJ[11] = tbl4
        vJ[14] = "n\x02\x9b\xd3\xa6\x85\xf3I\"h"
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[6] = "AddSlider"
        vJ[10] = vJ[11][vJ[13]]
        vJ[15] = "\x840\xb4\xa2U:\xd0"
        vJ[23] = "\xd0\xf4\xd0#H\xc5\x84d"
        vJ[12] = tbl4
        vJ[22] = 17277734903661
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[14] = tbl4
        vJ[12] = 0
        vJ[15] = r15
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[21] = "\x9b2\x96,;+\x82O"
        vJ[13] = vJ[14][vJ[16]]
        vJ[14] = 0
        vJ[16] = tbl4
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[16] = 20
        vJ[6] = tbl30[vJ[6]]
        vJ[18] = tbl4
        vJ[19] = r15
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[20] = tbl4
        vJ[18] = 1
        vJ[21] = r15
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[20] = function(function28, ...) v33 = function28 end
        vJ[8] = {
            [vJ[9]] = vJ[10],
            [vJ[11]] = vJ[12],
            [vJ[13]] = vJ[14],
            [vJ[15]] = vJ[16],
            [vJ[17]] = vJ[18],
            [vJ[19]] = vJ[20]
        }
        vJ[12] = 15014923754319
        vJ[6] = vJ[6](tbl30, vJ[7], vJ[8])
        vJ[15] = 106585456689
        vJ[11] = "1\xa1\xd9\xa6P\xba?\x89Q\x93"
        vJ[8] = tbl4
        vJ[9] = r15
        vJ[10] = vJ[9](vJ[11], vJ[12])
        vJ[7] = vJ[8][vJ[10]]
        vJ[12] = "\xa8\x06\x14.\xd0\xbd\x08\xd6R\xecv\xec\xfdoaX\xaf\xea\xd4a\t$\xc1f\x9d"
        vJ[14] = "3N\x8d\xce\xea"
        tbl30 = tbl29[vJ[7]]
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[19] = 2816733709599
        vJ[13] = 28008131359474
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[17] = 28844312753271
        vJ[21] = 4112994895739
        vJ[8] = vJ[9][vJ[11]]
        vJ[18] = "Rr\xf3"
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[15] = "E\xd5\x08\"\xed\xcc\x95\x9d\xa4\x99\xf7G\xbe]\xdd=\x81\xc4M\x0b\r"
        vJ[20] = "\x7fb\xdf"
        vJ[16] = 30927970596929
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[16] = "\x04i<R\x16*\x05"
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[22] = "\xb6\x94\x1f#\x85\xec\xd6F"
        vJ[24] = "\xd12\"3\x1f\x07\xbf\x86"
        vJ[12] = vJ[13][vJ[15]]
        vJ[13] = 0
        vJ[7] = "AddSlider"
        vJ[7] = tbl30[vJ[7]]
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[23] = 4619168401510
        vJ[14] = vJ[15][vJ[17]]
        vJ[17] = tbl4
        vJ[15] = 0
        vJ[18] = r15
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        vJ[19] = tbl4
        vJ[17] = 5
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[18] = vJ[19][vJ[21]]
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[19] = 2
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[21] = function(function29, ...) v34 = function29 end
        vJ[9] = {
            [vJ[10]] = vJ[11],
            [vJ[12]] = vJ[13],
            [vJ[14]] = vJ[15],
            [vJ[16]] = vJ[17],
            [vJ[18]] = vJ[19],
            [vJ[20]] = vJ[21]
        }
        vJ[14] = 29970060686979
        vJ[15] = "D\x9a\xa4\x966"
        vJ[13] = 19647680242621
        vJ[7] = vJ[7](tbl30, vJ[8], vJ[9])
        vJ[17] = 6615342910472
        vJ[9] = tbl4
        vJ[10] = r15
        vJ[12] = "\x9b\xac\x14\x99\xa6\x16\xad\xca\x7f\xb6"
        vJ[11] = vJ[10](vJ[12], vJ[13])
        vJ[8] = vJ[9][vJ[11]]
        vJ[13] = "O\xba\x0f\xe9g\x100\x80\xd7\n9\xce/W(\x97\xd2I\x9d\x00vo\x19\x7f\xbe"
        vJ[25] = "\xa3\xb2\x08:/\x93\xec\xdb"
        vJ[20] = 4683092969604
        tbl30 = tbl29[vJ[8]]
        vJ[10] = tbl4
        vJ[19] = "\x9b\xef\x1c"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[9] = vJ[10][vJ[12]]
        vJ[12] = tbl4
        vJ[13] = r15
        vJ[16] = 20203110687935
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[23] = "G\x1c\xea\xa7Q\xb4\xf7\x01"
        vJ[16] = "z\xa0w\xe2\xf9K\xbf\x931k\xb6\xa4P<dv\xbcn\x1b\xeeG"
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[18] = 15692541189259
        vJ[12] = vJ[13][vJ[15]]
        vJ[14] = tbl4
        vJ[8] = "AddSlider"
        vJ[15] = r15
        vJ[17] = "m.u\xeb\x9b\x95\x1a"
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        vJ[16] = tbl4
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[21] = "\t\x89\x1e"
        vJ[14] = 0
        vJ[16] = 0
        vJ[18] = tbl4
        vJ[22] = 10071075983953
        vJ[19] = r15
        vJ[24] = 7486537780638
        vJ[1] = nil
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[18] = 5
        vJ[20] = tbl4
        vJ[21] = r15
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[20] = 2
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[8] = tbl30[vJ[8]]
        vJ[22] = function(function30, ...) v35 = function30 end
        vJ[10] = {
            [vJ[11]] = vJ[12],
            [vJ[13]] = vJ[14],
            [vJ[15]] = vJ[16],
            [vJ[17]] = vJ[18],
            [vJ[19]] = vJ[20],
            [vJ[21]] = vJ[22]
        }
        vJ[8] = vJ[8](tbl30, vJ[9], vJ[10])
        vJ[18] = 6747452197958
        vJ[22] = "\x11\xf8I"
        vJ[10] = tbl4
        vJ[26] = "C@\xbf\xcdHN.\xa5"
        vJ[14] = 25583202348681
        vJ[15] = 11246159926388
        vJ[23] = 33310179228823
        vJ[21] = 25623451283099
        vJ[25] = 21549551036210
        vJ[20] = "\xb8\x01D"
        vJ[39] = 15888456375526
        vJ[13] = "\x19\x1e\xedi\xf3\xbb\xda\xe3\xf1\xb0"
        vJ[11] = r15
        vJ[12] = vJ[11](vJ[13], vJ[14])
        vJ[17] = 18578000880075
        vJ[9] = vJ[10][vJ[12]]
        vJ[14] = "*{\xa2\x9cD\xb7\x0e\xb85\x02\xae\x1b"
        tbl30 = tbl29[vJ[9]]
        vJ[11] = tbl4
        vJ[12] = r15
        vJ[19] = 17238229147483
        vJ[24] = "\xf2\xc8*IA\xffK\xee"
        vJ[16] = "\x12\xa4V\xd9T"
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[12] = vJ[13][vJ[15]]
        vJ[14] = tbl4
        vJ[15] = r15
        vJ[17] = "\xfcHk\"u\xfa\xca\xbc\xc0\t)\xfe\xc5\xad\xd1"
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        vJ[18] = "%\xce\x1b\x06\xe8v\x83"
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[14] = vJ[15][vJ[17]]
        vJ[9] = "AddSlider"
        vJ[17] = tbl4
        vJ[15] = 75
        vJ[18] = r15
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[6] = nil
        vJ[16] = vJ[17][vJ[19]]
        vJ[17] = 0
        vJ[19] = tbl4
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[18] = vJ[19][vJ[21]]
        vJ[19] = 100
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[9] = tbl30[vJ[9]]
        vJ[20] = vJ[21][vJ[23]]
        vJ[21] = 0
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[23] = function(function31, ...) v36 = function31 end
        vJ[11] = {
            [vJ[12]] = vJ[13],
            [vJ[14]] = vJ[15],
            [vJ[16]] = vJ[17],
            [vJ[18]] = vJ[19],
            [vJ[20]] = vJ[21],
            [vJ[22]] = vJ[23]
        }
        vJ[9] = vJ[9](tbl30, vJ[10], vJ[11])
        vJ[14] = "z\xd0a\x9awY\x06u|\x99"
        vJ[11] = tbl4
        vJ[16] = 30298119632668
        vJ[15] = 29606348289498
        vJ[18] = 22112454666296
        vJ[12] = r15
        vJ[13] = vJ[12](vJ[14], vJ[15])
        vJ[10] = vJ[11][vJ[13]]
        vJ[19] = 2456145740919
        tbl30 = tbl29[vJ[10]]
        vJ[12] = tbl4
        vJ[17] = "-a\x06\x84\xfc"
        vJ[21] = "\xdb\xbcR"
        vJ[25] = "\xfe\xa7\xef\r\x11\x91'\x0e"
        vJ[15] = "\x7fl\xc9\xe0\x08\x90v\xd5\xb6(o\xa6\xac\xf6\x87\x03\xe3\x83\xb1G"
        vJ[13] = r15
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[14] = tbl4
        vJ[23] = "\xbbD\xdb"
        vJ[15] = r15
        vJ[24] = 2562731197609
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[22] = 14936213920555
        vJ[13] = vJ[14][vJ[16]]
        vJ[26] = 5872269789870
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[18] = "va\x9c\xc0H\xba~\xa0x\x81^\x08\x0c\x17\x18\xe9\xb5d\xef"
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[14] = vJ[15][vJ[17]]
        vJ[20] = 10128671298156
        vJ[16] = tbl4
        vJ[17] = r15
        vJ[19] = "\x14\xd9(G\x84\xda\x04"
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[18] = tbl4
        vJ[19] = r15
        vJ[16] = 50
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[20] = tbl4
        vJ[18] = 0
        vJ[21] = r15
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[27] = "\xc2\x05\x1d\xf7P=\x15\xa0"
        vJ[19] = vJ[20][vJ[22]]
        vJ[20] = 100
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[10] = "AddSlider"
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[22] = 0
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[24] = function(function32, ...) v37 = function32 end
        vJ[10] = tbl30[vJ[10]]
        vJ[12] = {
            [vJ[13]] = vJ[14],
            [vJ[15]] = vJ[16],
            [vJ[17]] = vJ[18],
            [vJ[19]] = vJ[20],
            [vJ[21]] = vJ[22],
            [vJ[23]] = vJ[24]
        }
        vJ[19] = "f`\x00\x85T"
        vJ[10] = vJ[10](tbl30, vJ[11], vJ[12])
        vJ[12] = tbl4
        vJ[16] = 5379464923593
        vJ[13] = r15
        vJ[15] = "\xc8\t)\xab\xf8\xdbZ\xde\x82\xe5"
        vJ[23] = 31180090538167
        vJ[14] = vJ[13](vJ[15], vJ[16])
        vJ[11] = vJ[12][vJ[14]]
        vJ[16] = "\x8c\xb8\x85q\xe4\xb3\x7f-\xcdR\x1d\xb2p"
        tbl30 = tbl29[vJ[11]]
        vJ[13] = tbl4
        vJ[14] = r15
        vJ[11] = "AddSection"
        vJ[11] = tbl30[vJ[11]]
        vJ[17] = 9985264685609
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[12] = vJ[13][vJ[15]]
        vJ[11] = vJ[11](tbl30, vJ[12])
        vJ[13] = tbl4
        vJ[18] = 9744572895673
        vJ[14] = r15
        vJ[17] = 13215322970121
        vJ[20] = 29632944944614
        vJ[16] = "U\x17lE\xc0d3>\x17\xc9"
        vJ[15] = vJ[14](vJ[16], vJ[17])
        vJ[12] = vJ[13][vJ[15]]
        vJ[17] = "\xbeI\x85\x90\xf4\xc0f\xe8\xe0\xeem\xa6|\x8e\xf6\xc9+6"
        tbl30 = tbl29[vJ[12]]
        vJ[14] = tbl4
        vJ[15] = r15
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        vJ[16] = tbl4
        vJ[21] = 8001011551885
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[22] = 29947683583609
        vJ[12] = "AddToggle"
        vJ[20] = "\xcb\x1e=[\xe4\xe7\xd6~\xfb3\xe5jr\x7f\xec"
        vJ[15] = vJ[16][vJ[18]]
        vJ[17] = tbl4
        vJ[18] = r15
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        vJ[21] = "Y\xc95\x8a*\x0b\xcd"
        vJ[18] = tbl4
        vJ[12] = tbl30[vJ[12]]
        vJ[19] = r15
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[18] = false
        vJ[14] = { [vJ[15]] = vJ[16], [vJ[17]] = vJ[18] }
        vJ[12] = vJ[12](tbl30, vJ[13], vJ[14])
        vJ[13] = function(function33, ...) enable18 = function33 end
        vJ[18] = 1063915749871
        vJ[17] = "\x1c\xae\x13\xe9\xe44nl\xff\x9a"
        vJ[12].OnChanged(vJ[12], vJ[13])
        vJ[14] = tbl4
        vJ[15] = r15
        vJ[21] = 34630776569598
        vJ[19] = 23693552741145
        vJ[16] = vJ[15](vJ[17], vJ[18])
        vJ[13] = vJ[14][vJ[16]]
        tbl30 = tbl29[vJ[13]]
        vJ[18] = "\x12\xd7\xe9\xbf\\J\xf3\xa5\x18\xca\xf0L\x9a\xe5\xc2"
        vJ[22] = 11134991750209
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[14] = vJ[15][vJ[17]]
        vJ[17] = tbl4
        vJ[20] = "\xd6\xec\xab\xb8|"
        vJ[18] = r15
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        vJ[18] = tbl4
        vJ[21] = "\xae\xff\x9bz\x91\x7f\x10d\x86\xec"
        vJ[13] = "AddToggle"
        vJ[19] = r15
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[19] = tbl4
        vJ[22] = "\xd8\xde\x9a~e\xb5&"
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[20] = 1533821993674
        vJ[13] = tbl30[vJ[13]]
        vJ[18] = vJ[19][vJ[21]]
        vJ[22] = 7241878359340
        vJ[19] = true
        vJ[15] = { [vJ[16]] = vJ[17], [vJ[18]] = vJ[19] }
        vJ[13] = vJ[13](tbl30, vJ[14], vJ[15])
        vJ[14] = function(function34, ...) enable15 = function34 end
        vJ[19] = 4991834294548
        vJ[18] = "\x8a\xdc\xba\xb5L\xec\xb4h\x89\x95"
        vJ[13].OnChanged(vJ[13], vJ[14])
        vJ[23] = 23569835174623
        vJ[15] = tbl4
        vJ[16] = r15
        vJ[17] = vJ[16](vJ[18], vJ[19])
        vJ[14] = vJ[15][vJ[17]]
        tbl30 = tbl29[vJ[14]]
        vJ[16] = tbl4
        vJ[19] = "L\xd3b\xea-\xfe\xce\xbb\xdfVD\x1b;\x95\x1b"
        vJ[14] = "AddToggle"
        vJ[21] = "\xc3\xb1\xe46\xa9"
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[18] = tbl4
        vJ[19] = r15
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[17] = vJ[18][vJ[20]]
        vJ[25] = 18843634115142
        vJ[22] = "j\xb3\x1f\x82\xc9\t\xbf\xe5\r\xad"
        vJ[19] = tbl4
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[24] = 8281274191632
        vJ[27] = 5847934470819
        vJ[18] = vJ[19][vJ[21]]
        vJ[14] = tbl30[vJ[14]]
        vJ[20] = tbl4
        vJ[23] = "lp?l\x1d\xaf\x95"
        vJ[21] = r15
        vJ[26] = 20707930596778
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[20] = true
        vJ[16] = { [vJ[17]] = vJ[18], [vJ[19]] = vJ[20] }
        vJ[22] = "\xb0h\x97\x88e"
        vJ[14] = vJ[14](tbl30, vJ[15], vJ[16])
        vJ[15] = function(function35, ...) enable16 = function35 end
        vJ[20] = 24480107506823
        vJ[19] = "1\xc7\xf9\x94\x931o\xf3\x13\x98"
        vJ[14].OnChanged(vJ[14], vJ[15])
        vJ[16] = tbl4
        vJ[17] = r15
        vJ[18] = vJ[17](vJ[19], vJ[20])
        vJ[15] = vJ[16][vJ[18]]
        vJ[20] = "L\x1aH\xefr\x19#\xb8\x95n.y\xd2+\xb0\xf0"
        vJ[23] = 6407081331623
        tbl30 = tbl29[vJ[15]]
        vJ[17] = tbl4
        vJ[24] = 10845286454202
        vJ[18] = r15
        vJ[21] = 14008914352507
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        vJ[19] = tbl4
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[15] = "AddToggle"
        vJ[18] = vJ[19][vJ[21]]
        vJ[23] = "\xb0cF]>\xf5T\x02*\xbe\x82"
        vJ[20] = tbl4
        vJ[15] = tbl30[vJ[15]]
        vJ[21] = r15
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[21] = tbl4
        vJ[24] = "\x8c\xb5\xd7[\x13Q#"
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[21] = true
        vJ[17] = { [vJ[18]] = vJ[19], [vJ[20]] = vJ[21] }
        vJ[15] = vJ[15](tbl30, vJ[16], vJ[17])
        vJ[16] = function(function36, ...) enable17 = function36 end
        vJ[28] = 7335036046679
        vJ[22] = 5959033981654
        vJ[15].OnChanged(vJ[15], vJ[16])
        vJ[17] = tbl4
        vJ[21] = 829057515906
        vJ[18] = r15
        vJ[20] = ",B\x00\x91\xb4\xee\x97`\x1bH"
        vJ[19] = vJ[18](vJ[20], vJ[21])
        vJ[16] = vJ[17][vJ[19]]
        tbl30 = tbl29[vJ[16]]
        vJ[23] = 3285203256825
        vJ[18] = tbl4
        vJ[21] = "\xf7\xf5\xb6\x15+g\x16\x1bp\xb4w\x03\xd8L\xbd\xe3W\xed\xa8\xc8\xa8\x8ao\x06)U\xddg5\xc6\x9d\x8b\xb7uz"
        vJ[19] = r15
        vJ[25] = 16087705279811
        vJ[16] = "AddSection"
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[16] = tbl30[vJ[16]]
        vJ[17] = vJ[18][vJ[20]]
        vJ[16] = vJ[16](tbl30, vJ[17])
        vJ[18] = tbl4
        vJ[19] = r15
        vJ[24] = "\nz\xb4C\n"
        vJ[22] = 5771716676223
        vJ[21] = "\xd4\x9c$z\x8b\xcb6C\xc3Y"
        vJ[20] = vJ[19](vJ[21], vJ[22])
        vJ[22] = "\xa6\x9e\xf2\x80\xdb\xefi$\x9fM\xbd\r\xda\xc4\xae#"
        vJ[17] = vJ[18][vJ[20]]
        tbl30 = tbl29[vJ[17]]
        vJ[19] = tbl4
        vJ[20] = r15
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[17] = "AddToggle"
        vJ[18] = vJ[19][vJ[21]]
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[25] = "\xa8\"\n\xc5%\x95\xbf\xb7|\x07q\xaae\xc2\xd0\xfdO"
        vJ[17] = tbl30[vJ[17]]
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[26] = "\xa3I\x15\x04\x05\x1ad"
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[23] = false
        vJ[19] = { [vJ[20]] = vJ[21], [vJ[22]] = vJ[23] }
        vJ[17] = vJ[17](tbl30, vJ[18], vJ[19])
        vJ[18] = function(function37, ...) enable19 = function37 end
        vJ[26] = 11227399394412
        vJ[22] = "\x93\xdfK_\xf7\xb6\x00M\x13:"
        vJ[17].OnChanged(vJ[17], vJ[18])
        vJ[19] = tbl4
        vJ[23] = 21959975086065
        vJ[20] = r15
        vJ[24] = 29304085181773
        vJ[25] = "U\xac=\x12'"
        vJ[21] = vJ[20](vJ[22], vJ[23])
        vJ[18] = vJ[19][vJ[21]]
        tbl30 = tbl29[vJ[18]]
        vJ[20] = tbl4
        vJ[21] = r15
        vJ[23] = "X\xeao*C\xcf}Z\xeck\xa1\x89\xc4rl\xf7\xe6MB>b"
        vJ[18] = "AddSlider"
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[22] = tbl4
        vJ[27] = 31945239771675
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[23] = tbl4
        vJ[26] = "\xba\xd4\xd9\x8cJ\x80L\xc0\xe5\x1b|Y\xbc\x10\xc1*"
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[24] = tbl4
        vJ[27] = "g*8\xed\xaaq\xc2"
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[26] = tbl4
        vJ[24] = .1
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[26] = 0
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[28] = 1
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[18] = tbl30[vJ[18]]
        vJ[30] = 2
        vJ[31] = vJ[32][vJ[34]]
        vJ[32] = function(function38, ...) v38 = function38 end
        vJ[20] = {
            [vJ[21]] = vJ[22],
            [vJ[23]] = vJ[24],
            [vJ[25]] = vJ[26],
            [vJ[27]] = vJ[28],
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32]
        }
        vJ[25] = 3845228250878
        vJ[18] = vJ[18](tbl30, vJ[19], vJ[20])
        vJ[23] = "\x90\xc2c\x14g\x1c\x06\xf7\x82\xad"
        vJ[27] = "#\xc8\xdd\x15-"
        vJ[20] = tbl4
        vJ[29] = 20173522543794
        vJ[21] = r15
        vJ[28] = 35025318789045
        vJ[24] = 27457728377330
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        tbl30 = tbl29[vJ[19]]
        vJ[24] = "V\xd5\xd1\x9cW\x93P\xb2\x9e1\x8d\xeb\xd8\xbe\x9c\xbf\xdbm\x82pA\xe1\x8b\xad\xbe\xa5\x18\xd1x\xf3z"
        vJ[21] = tbl4
        vJ[19] = "AddSection"
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[19] = tbl30[vJ[19]]
        vJ[25] = 15181688249245
        vJ[24] = "@\xc7\x88<\xb2\xe9\x98\"\xcd\xc3"
        vJ[19] = vJ[19](tbl30, vJ[20])
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[30] = 4942170015997
        vJ[26] = 3408348022323
        vJ[25] = "]|\xdc\xeb\xa1\xd6\xa6X\x85\xbbd?\xcb:."
        tbl30 = tbl29[vJ[20]]
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[20] = "AddToggle"
        vJ[21] = vJ[22][vJ[24]]
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[28] = "\x9c\xe6H\xb55\xfc"
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[26] = tbl4
        vJ[29] = "\"\xbc\xf7\xb6\xfeT\x82"
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[26] = false
        vJ[27] = 22567899965708
        vJ[20] = tbl30[vJ[20]]
        vJ[22] = { [vJ[23]] = vJ[24], [vJ[25]] = vJ[26] }
        vJ[20] = vJ[20](tbl30, vJ[21], vJ[22])
        vJ[31] = 6227161975635
        vJ[21] = function(function39, ...) end
        vJ[26] = 31562932566377
        vJ[20].OnChanged(vJ[20], vJ[21])
        vJ[25] = "\xf0\xd6\xba\xbc{\xd9\xa0\xab\xa4\xd8"
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[28] = "\x9d\x02\xc4\x07\xf5"
        tbl30 = tbl29[vJ[21]]
        vJ[23] = tbl4
        vJ[26] = "@\xca*BH,7"
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[29] = 19630525555637
        vJ[22] = vJ[23][vJ[25]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[30] = 7223846915363
        vJ[29] = "\xb4\x88\xb2\x9b\"\n\xd0\xe1"
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[30] = "\xb9\x1a\xfd\x05\xb8\x04\xa9"
        vJ[25] = vJ[26][vJ[28]]
        vJ[21] = "AddToggle"
        vJ[27] = tbl4
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[21] = tbl30[vJ[21]]
        vJ[27] = false
        vJ[23] = { [vJ[24]] = vJ[25], [vJ[26]] = vJ[27] }
        vJ[21] = vJ[21](tbl30, vJ[22], vJ[23])
        vJ[22] = function(function40, ...) end
        vJ[36] = "\x8d\xcb\x98\xca.\x02\xb8\x07\xe5"
        vJ[32] = 16046189174064
        vJ[27] = 23744786328369
        vJ[21].OnChanged(vJ[21], vJ[22])
        vJ[23] = tbl4
        vJ[26] = "\xf4\xd2\xab\xe5\x8aV-\x88\xf5\x9f"
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[27] = "\xc2E\x1f\xdd\xee|\xedq\x97\xf7\xf1y\xeb\x02\xd5"
        vJ[22] = vJ[23][vJ[25]]
        vJ[30] = 32706809265022
        tbl30 = tbl29[vJ[22]]
        vJ[24] = tbl4
        vJ[28] = 29270586193214
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[31] = 29592720799188
        vJ[23] = vJ[24][vJ[26]]
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[29] = "\xd3#\xbbJ\x01"
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[27] = tbl4
        vJ[28] = r15
        vJ[30] = "pA\xad\xe2H\x99C0"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[28] = tbl4
        vJ[31] = "\xf5\x18\xfe\r\xa9\xd8"
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[31] = r91
        vJ[22] = "AddDropdown"
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[30] = vJ[31][vJ[32]]
        vJ[36] = 5635748088384
        vJ[32] = tbl4
        vJ[35] = "&R\x80`@\xd2"
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[29] = vJ[30][vJ[31]]
        vJ[34] = "\x87\x1fr\xb20w\xcay3\xff\x91"
        vJ[31] = tbl4
        vJ[35] = 12807056856907
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[35] = "\x076\x87w\xd1i*"
        vJ[30] = vJ[31][vJ[33]]
        vJ[28] = vJ[29][vJ[30]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[33] = "v\xa1\xa1d\xd9"
        vJ[34] = 34161558388259
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[37] = "F\xdc\x8e\xf3\xbae\xbd\xaa"
        vJ[20] = nil
        vJ[29] = vJ[30][vJ[32]]
        vJ[36] = 26607720394854
        vJ[30] = false
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[22] = tbl30[vJ[22]]
        vJ[31] = vJ[32][vJ[34]]
        vJ[32] = 1
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = function(function41, ...) end
        vJ[24] = {
            [vJ[25]] = vJ[26],
            [vJ[27]] = vJ[28],
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34]
        }
        vJ[28] = 18158462165255
        vJ[33] = 7329470762325
        vJ[22] = vJ[22](tbl30, vJ[23], vJ[24])
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[38] = "\xbd\xe3\xc3\xad5\xaeR\xd5"
        vJ[27] = "i\x96Ny\xc9c\xed\x8fej"
        vJ[32] = 17999408849085
        vJ[37] = 25082233908639
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[29] = 22340320323747
        vJ[36] = "\x85\xa2\xa7"
        vJ[34] = "#\x1b."
        vJ[28] = "\xf8\xe5\xf1\x86D\xb6\xf5\x8a\x1f\xea\xe7A\x9f"
        tbl30 = tbl29[vJ[23]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[31] = 34882573762419
        vJ[24] = vJ[25][vJ[27]]
        vJ[27] = tbl4
        vJ[30] = "\xedQ):\x93"
        vJ[35] = 4640371689584
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[4] = nil
        vJ[26] = vJ[27][vJ[29]]
        vJ[28] = tbl4
        vJ[31] = "\xa6\xa6\xf6U\x92z\xe9\xa8"
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[32] = "\x1cA\xe4\x81\x939\xce"
        vJ[27] = vJ[28][vJ[30]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[29] = 90
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[23] = "AddSlider"
        vJ[33] = tbl4
        vJ[31] = 10
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[33] = 1000
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[23] = tbl30[vJ[23]]
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = 0
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[37] = function(function42, ...) end
        vJ[25] = {
            [vJ[26]] = vJ[27],
            [vJ[28]] = vJ[29],
            [vJ[30]] = vJ[31],
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37]
        }
        vJ[23] = vJ[23](tbl30, vJ[24], vJ[25])
        vJ[31] = "S\xe6\xb0\x03f"
        vJ[30] = 9499146228039
        vJ[41] = 20329919177978
        vJ[29] = 28684641301549
        vJ[28] = "CoK\xa6$\x03\xe9Hg\x1a"
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[29] = "\x1d|\x03\xb5(\x92\x85_\x9cu,&\xae\xb1\x81\xe8"
        tbl30 = tbl29[vJ[24]]
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[36] = 769364214118
        vJ[32] = 22769552435562
        vJ[25] = vJ[26][vJ[28]]
        vJ[28] = tbl4
        vJ[34] = 21498024879898
        vJ[22] = nil
        vJ[39] = 14824393202423
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[29] = tbl4
        vJ[14] = nil
        vJ[33] = 6683150109736
        vJ[32] = "\xf2\xf8rn\xca\x8e\xb9"
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[35] = 11329966658715
        vJ[28] = vJ[29][vJ[31]]
        vJ[30] = tbl4
        vJ[33] = ".T\x81\xdb"
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[37] = 19020462039705
        vJ[34] = "\xe2\"\xc8\xd0&s"
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[32] = tbl4
        vJ[35] = "31\xd9*\xc1\x8aM"
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[38] = 5738315369072
        vJ[24] = "AddKeybind"
        vJ[36] = "\x88\xf9\xd5\x01&\xe3\x89\x84\x9c\xfc\x1d\xc3"
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[34] = tbl4
        vJ[24] = tbl30[vJ[24]]
        vJ[37] = "\x102q\xa67*\x1f\x7f\xd7\xdd\xa3\xd2H\x89h"
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = function(function43, ...)
            e = function43
            r = Enum.KeyCode 
        end
        vJ[40] = "\x1b\xb1 _^v#@"
        vJ[26] = {
            [vJ[27]] = vJ[28],
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34]
        }
        vJ[24] = vJ[24](tbl30, vJ[25], vJ[26])
        vJ[29] = "\xe2-\xcez\x04\x97\x1b\xa0s\xfb"
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[33] = 29627162932708
        vJ[30] = 6927122533529
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[30] = "\xfb\x05\xe4\xe0\x8foI\xb3\x00\xfe5\x10\x9f\xff\xb4y\x10\xd8\xe4k\x1a"
        vJ[34] = 24926531398999
        vJ[25] = vJ[26][vJ[28]]
        tbl30 = tbl29[vJ[25]]
        vJ[38] = ":Q\xd7"
        vJ[32] = "\xc2\xf3\xb9\xbc\xc1"
        vJ[27] = tbl4
        vJ[31] = 32296364145343
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[36] = "\r\x1dh"
        vJ[5] = nil
        vJ[26] = vJ[27][vJ[29]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[35] = 4441462802452
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[33] = "\x02Y#\xf7\x81Np\xa2\x95R\xc3\xac/P\r"
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[34] = ".\x88\xbd\x1b\xf9\xd9\xc6"
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[33] = tbl4
        vJ[37] = 34267534622293
        vJ[31] = 75
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[21] = nil
        vJ[32] = vJ[33][vJ[35]]
        vJ[35] = tbl4
        vJ[25] = "AddSlider"
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[33] = 0
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = 100
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[39] = tbl4
        vJ[37] = 0
        vJ[25] = tbl30[vJ[25]]
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[38] = vJ[39][vJ[41]]
        vJ[39] = function(function44, ...) end
        vJ[27] = {
            [vJ[28]] = vJ[29],
            [vJ[30]] = vJ[31],
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37],
            [vJ[38]] = vJ[39]
        }
        vJ[35] = 1284234805846
        vJ[37] = "-\x9a\x06"
        vJ[32] = 33101049658421
        vJ[25] = vJ[25](tbl30, vJ[26], vJ[27])
        vJ[31] = 29785456801325
        vJ[27] = tbl4
        vJ[30] = "\xd5\xaa\xf6\x11\x95\xe7\xfe\xcb\\V"
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        tbl30 = tbl29[vJ[26]]
        vJ[40] = 2053599019964
        vJ[28] = tbl4
        vJ[38] = 18172094783758
        vJ[33] = "\x84=\xcc:\xa6"
        vJ[31] = "\xae\xbe\x8e\xed\x07\xd2\xca,?\x06X6\xe38{\xda\x04D\xe9O\x05o\xdd\xb0\xd3\x8a\xb1G\x81"
        vJ[29] = r15
        vJ[34] = 6842128125042
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[36] = 19414702433104
        vJ[19] = nil
        vJ[39] = "D\xaf\xb4"
        vJ[29] = vJ[30][vJ[32]]
        vJ[34] = "\x86\xbaH\x01\xa5_\x90\x92/?\xdf\\Y\xad\xc0@\x94@d"
        vJ[24] = nil
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[23] = nil
        vJ[41] = "[A\x9cL\xd3\xfe\xd6\x8c"
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[23] = ")\xb5\r\x88\xa8\xb0:/\x92;"
        vJ[25] = nil
        vJ[35] = "\xe5\x0c\x07\xff\xe8t\\"
        vJ[30] = vJ[31][vJ[33]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[24] = 13307390564404
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[26] = "AddSlider"
        vJ[32] = 50
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = 0
        vJ[43] = "\xcf\xc640\xc1Q\x0c\xa3"
        vJ[36] = tbl4
        vJ[16] = nil
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[42] = 3250792383977
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[36] = 100
        vJ[37] = vJ[38][vJ[40]]
        vJ[40] = tbl4
        vJ[38] = 0
        vJ[41] = r15
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[26] = tbl30[vJ[26]]
        vJ[39] = vJ[40][vJ[42]]
        vJ[40] = function(function45, ...) end
        vJ[28] = {
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34],
            [vJ[35]] = vJ[36],
            [vJ[37]] = vJ[38],
            [vJ[39]] = vJ[40]
        }
        vJ[26] = vJ[26](tbl30, vJ[27], vJ[28])
        vJ[9] = nil
        vJ[20] = tbl4
        vJ[25] = 23553203235543
        vJ[21] = r15
        vJ[37] = 5301470366116
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[26] = nil
        vJ[7] = nil
        vJ[27] = "\xb7\xa9\x0b\x12\xd6"
        vJ[19] = vJ[20][vJ[22]]
        tbl30 = tbl29[vJ[19]]
        vJ[21] = tbl4
        vJ[26] = 11762126083429
        vJ[22] = r15
        vJ[24] = "\x9c+_\xc1\x19\x16<\x11\xab''z\x8f\x97"
        vJ[19] = "AddSection"
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[24] = "E\ttnF\x07=\xb4\xb0\x1e"
        vJ[19] = tbl30[vJ[19]]
        vJ[20] = vJ[21][vJ[23]]
        vJ[25] = 2897513268549
        vJ[28] = 12321863620201
        vJ[19] = vJ[19](tbl30, vJ[20])
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        tbl30 = tbl29[vJ[20]]
        vJ[30] = 6506715253717
        vJ[22] = tbl4
        vJ[25] = "\x1f1K\xee<\x88\xabkH7\xb7{h"
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[51] = "T!p\x86\xfd\xd2\xb1\xf1"
        vJ[28] = "\xeeKq\xcb\xdcA"
        vJ[23] = vJ[24][vJ[26]]
        vJ[25] = tbl4
        vJ[29] = 12853557106529
        vJ[26] = r15
        vJ[32] = 20801673668054
        vJ[38] = 6540053007333
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[26] = tbl4
        vJ[29] = "\xdd\xd8\x08\x0e*\xab\xfb"
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[26] = false
        vJ[22] = { [vJ[23]] = vJ[24], [vJ[25]] = vJ[26] }
        vJ[30] = 23815538666321
        vJ[29] = 32668598287
        vJ[20] = "AddToggle"
        vJ[20] = tbl30[vJ[20]]
        vJ[20] = vJ[20](tbl30, vJ[21], vJ[22])
        vJ[27] = 14407011965492
        vJ[21] = function(function46, ...) end
        vJ[25] = "[ \xf24V\xe4\x82\x0eb0"
        vJ[12] = nil
        vJ[26] = 8991145447514
        vJ[28] = "S&9\xf0d"
        vJ[20].OnChanged(vJ[20], vJ[21])
        vJ[22] = tbl4
        vJ[31] = 34736931143471
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[26] = "a\x1bLC\x1d3\x9cx\x97\xce-"
        tbl30 = tbl29[vJ[21]]
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[29] = "\xf3!=\n\x06$\x83\xd8"
        vJ[24] = vJ[25][vJ[27]]
        vJ[21] = "AddToggle"
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[20] = nil
        vJ[25] = vJ[26][vJ[28]]
        vJ[27] = tbl4
        vJ[30] = "NgGa:q\x97"
        vJ[21] = tbl30[vJ[21]]
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[27] = false
        vJ[29] = "\xedKJd\x1d"
        vJ[23] = { [vJ[24]] = vJ[25], [vJ[26]] = vJ[27] }
        vJ[21] = vJ[21](tbl30, vJ[22], vJ[23])
        vJ[22] = function(function47, ...) end
        vJ[28] = 19517438845824
        vJ[26] = "e\xf1\xc8\xc5Zp\xbcvsC"
        vJ[27] = 1052222718441
        vJ[21].OnChanged(vJ[21], vJ[22])
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[27] = "\xe8\xd4\xa6\x12aR\x84\xc4`\xa6\x94k!\xf7w\xe0\xe5\x86\x9a\x19s\x02"
        vJ[22] = vJ[23][vJ[25]]
        tbl30 = tbl29[vJ[22]]
        vJ[24] = tbl4
        vJ[39] = 5424832645598
        vJ[22] = "AddDropdown"
        vJ[25] = r15
        vJ[30] = 21071140021844
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[31] = 7894350843484
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[27] = tbl4
        vJ[30] = "\x1f\x06^\x18\xe2\xa6yb"
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[31] = "\xafNX\x03E\xca"
        vJ[26] = vJ[27][vJ[29]]
        vJ[36] = "\xe6\xee\xdeT&\xd2."
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[31] = r91
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[30] = vJ[31][vJ[32]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[36] = 26066445627242
        vJ[35] = "\xe2gZ\xa7\x9a\xba"
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[34] = "\xdc9\xa8\x18\xe6\x17\x81\xdf\xe6iP"
        vJ[29] = vJ[30][vJ[31]]
        vJ[37] = "}/\xe0\x00\x81\xc9P\xf6"
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[35] = 22855272688018
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[28] = vJ[29][vJ[30]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[34] = 8552262750094
        vJ[33] = "\x14\xb2\xab4\xdf"
        vJ[35] = "t\xf4\xd4\xb7O\xdc|"
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[22] = tbl30[vJ[22]]
        vJ[36] = 14792483691240
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[30] = false
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[32] = 1
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = function(function48, ...) end
        vJ[24] = {
            [vJ[25]] = vJ[26],
            [vJ[27]] = vJ[28],
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34]
        }
        vJ[27] = "\xf1\x07\xeb3\xe9u\x85<\t\xe8"
        vJ[41] = 3881418901263
        vJ[22] = vJ[22](tbl30, vJ[23], vJ[24])
        vJ[32] = 23156362177055
        vJ[22] = nil
        vJ[31] = 31609569671551
        vJ[28] = 10834498556853
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[37] = 7220976225570
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[36] = "\xfd\x0f\xdd"
        tbl30 = tbl29[vJ[23]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[29] = 17790098481244
        vJ[28] = " \x17w4\xc7\xe2H\xd8\x96\x8e\x87!?\xdd\xfd0\n\xdb\xf2\xb4"
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[35] = 2931912820053
        vJ[27] = tbl4
        vJ[38] = "\x05\x1ee\x05\xfd7/\x80"
        vJ[28] = r15
        vJ[34] = "\xa9\x00\x18"
        vJ[30] = "a%\xbc\x80\xbe"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[23] = "AddSlider"
        vJ[31] = "\xd7\xc9l\xa4\x8b\t\x99f"
        vJ[18] = nil
        vJ[26] = vJ[27][vJ[29]]
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[32] = "\x1d\xa3\x17\xbd\xef\xb0\xe2"
        vJ[29] = tbl4
        vJ[33] = 30643655587773
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[29] = 90
        vJ[40] = "<\xe1-!Zr\xe5\x91"
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[31] = 10
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[23] = tbl30[vJ[23]]
        vJ[32] = vJ[33][vJ[35]]
        vJ[33] = 1000
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[42] = 29840308090439
        vJ[35] = 0
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[39] = "\xa2B!\x9b\xf9:\xfff"
        vJ[37] = function(function49, ...) end
        vJ[25] = {
            [vJ[26]] = vJ[27],
            [vJ[28]] = vJ[29],
            [vJ[30]] = vJ[31],
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37]
        }
        vJ[35] = "\xd1W\x8e"
        vJ[23] = vJ[23](tbl30, vJ[24], vJ[25])
        vJ[34] = 7354494029152
        vJ[28] = "\x1c\xe5\xc9#\xcaL\xdeP\x0eM"
        vJ[30] = 19384403649346
        vJ[25] = tbl4
        vJ[31] = "\xc1\x19*\xca\x1e"
        vJ[26] = r15
        vJ[38] = 14092709157282
        vJ[32] = 20893734528513
        vJ[29] = 4843288250575
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[29] = "\xd0\xe0\xb9{]OV\x04\x05\xd72DB\xed\xe9%A(\x13"
        vJ[24] = vJ[25][vJ[27]]
        tbl30 = tbl29[vJ[24]]
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[41] = "\xad\xe4\x7fp\x83\x8b\x98\xe5"
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[37] = "\xca\xb1\xd8"
        vJ[25] = vJ[26][vJ[28]]
        vJ[40] = 28425634050996
        vJ[28] = tbl4
        vJ[36] = 21945957246955
        vJ[33] = 29759642400289
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[32] = "\xc2\xb7\xcb7\xc2@!$~\x15\x94\xf8;\xee"
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[33] = "\xaa\xe5q\x01s\x99K"
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[19] = nil
        vJ[31] = vJ[32][vJ[34]]
        vJ[24] = "AddSlider"
        vJ[24] = tbl30[vJ[24]]
        vJ[44] = 25202270760407
        vJ[32] = 0
        vJ[30] = 75
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = 100
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[38] = tbl4
        vJ[36] = 0
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[37] = vJ[38][vJ[40]]
        vJ[38] = function(function50, ...) end
        vJ[26] = {
            [vJ[27]] = vJ[28],
            [vJ[29]] = vJ[30],
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34],
            [vJ[35]] = vJ[36],
            [vJ[37]] = vJ[38]
        }
        vJ[39] = 13768407914763
        vJ[29] = "\x11\x8d\xa2\x8e\xe9\xb6\xee\xcc\xb7D"
        vJ[24] = vJ[24](tbl30, vJ[25], vJ[26])
        vJ[30] = 22565283408139
        vJ[38] = "\xea\xf4B"
        vJ[26] = tbl4
        vJ[32] = "s\x8a\xe1\xea\x9b"
        vJ[41] = 5210788940154
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[31] = 7094995061991
        vJ[37] = 15223078427568
        vJ[36] = "Kk\r"
        vJ[25] = vJ[26][vJ[28]]
        vJ[30] = "?\xb4\xd5\xcc\x19\x84\xb8;$\xe5\x0buF\xc0\xa0[\x80\xe9\xe5\xbe\x08E\x90)E\x8b\x9a"
        tbl30 = tbl29[vJ[25]]
        vJ[27] = tbl4
        vJ[25] = "AddSlider"
        vJ[23] = nil
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[33] = 330493214873
        vJ[26] = vJ[27][vJ[29]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[43] = 33013176908812
        vJ[28] = vJ[29][vJ[31]]
        vJ[30] = tbl4
        vJ[40] = "Q\n4\x8e0\x9c\x07\xdc"
        vJ[31] = r15
        vJ[35] = 29560662488517
        vJ[34] = 29105336431857
        vJ[33] = "DB\xf8\x9f\x7f\x1c\xa4\x07\xde\xaf\x99\xf4\xb4\x87-9v\x1c\xbf"
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[34] = "\x81\xae\xb5\xafn\x9b\xb6"
        vJ[29] = vJ[30][vJ[32]]
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[25] = tbl30[vJ[25]]
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[31] = 50
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[33] = 0
        vJ[42] = "\xa0\xebs\x12\x0f\xcf\xe2j"
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = 100
        vJ[21] = nil
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[24] = nil
        vJ[36] = vJ[37][vJ[39]]
        vJ[39] = tbl4
        vJ[37] = 0
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[38] = vJ[39][vJ[41]]
        vJ[39] = function(function51, ...) end
        vJ[23] = "\x9a\xf4\xe1&\x83h?\x85\x07eb"
        vJ[27] = {
            [vJ[28]] = vJ[29],
            [vJ[30]] = vJ[31],
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37],
            [vJ[38]] = vJ[39]
        }
        vJ[25] = vJ[25](tbl30, vJ[26], vJ[27])
        vJ[25] = nil
        vJ[25] = 403755237564
        vJ[20] = tbl4
        vJ[21] = r15
        vJ[26] = "\x1d\xfb~\xa0\xf2"
        vJ[24] = 13125518317536
        vJ[41] = 3856048260867
        vJ[30] = 1883285406572
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        vJ[24] = "\x16\x92\xa1\x91\x14Y\xb3\xc2\xb3"
        tbl30 = tbl29[vJ[19]]
        vJ[21] = tbl4
        vJ[27] = 33897293053352
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[29] = 16615876927033
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[27] = "\xe41\x17+\xd4"
        vJ[24] = tbl4
        vJ[28] = 17006937218799
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[19] = "AddToggle"
        vJ[28] = "W\xb1\xa1j\x7f\x93\x13"
        vJ[23] = vJ[24][vJ[26]]
        vJ[19] = tbl30[vJ[19]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[27] = 16034435489066
        vJ[25] = false
        vJ[21] = { [vJ[22]] = vJ[23], [vJ[24]] = vJ[25] }
        vJ[19] = vJ[19](tbl30, vJ[20], vJ[21])
        vJ[26] = "\xc6zZ8\xce"
        vJ[20] = function(function52, ...) end
        vJ[24] = 2744797103358
        vJ[23] = "\xa5EJ(\xa6\x8a\xefW5;\xbf"
        vJ[19].OnChanged(vJ[19], vJ[20])
        vJ[29] = 28576344421370
        vJ[28] = 10099291132510
        vJ[19] = nil
        vJ[20] = tbl4
        vJ[25] = 6630387158031
        vJ[37] = 16019772103971
        vJ[21] = r15
        vJ[22] = vJ[21](vJ[23], vJ[24])
        vJ[19] = vJ[20][vJ[22]]
        tbl30 = tbl29[vJ[19]]
        vJ[21] = tbl4
        vJ[24] = "\xf8\xb3\x13\xff\x9d\xdb\x8f\x8a\xf9Fn\t\x8d"
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[19] = "AddToggle"
        vJ[20] = vJ[21][vJ[23]]
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[19] = tbl30[vJ[19]]
        vJ[27] = "\xcb\xe9\xe0\xc9\n\\"
        vJ[22] = vJ[23][vJ[25]]
        vJ[31] = 11139030996035
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[28] = "\xee\xc0\xd6\xad\xc6\xb8\xae"
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[25] = false
        vJ[21] = { [vJ[22]] = vJ[23], [vJ[24]] = vJ[25] }
        vJ[19] = vJ[19](tbl30, vJ[20], vJ[21])
        vJ[24] = "\x1dX\x03R\xe09\x02\xd5\xd2\xbb\x08"
        vJ[20] = function(function53, ...) toggle_visuals(function53) end
        vJ[26] = 3340553094675
        vJ[19].OnChanged(vJ[19], vJ[20])
        vJ[25] = 30127144646349
        vJ[28] = 23232280406594
        vJ[27] = "\xbbwk+\x8e"
        vJ[21] = tbl4
        vJ[22] = r15
        vJ[23] = vJ[22](vJ[24], vJ[25])
        vJ[20] = vJ[21][vJ[23]]
        tbl30 = tbl29[vJ[20]]
        vJ[29] = 29837155366470
        vJ[25] = "\xdb\x16|\xbb\xb9rqBa`\xdd"
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[21] = vJ[22][vJ[24]]
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[20] = "AddToggle"
        vJ[23] = vJ[24][vJ[26]]
        vJ[25] = tbl4
        vJ[33] = 2151894057962
        vJ[26] = r15
        vJ[28] = "\xf8\xc5L\xb3\xba"
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[32] = 22152666392651
        vJ[29] = "\x81$\xb5C\x16\xe7\xf2"
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[20] = tbl30[vJ[20]]
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[27] = 17218066669393
        vJ[29] = 8978280484948
        vJ[26] = false
        vJ[22] = { [vJ[23]] = vJ[24], [vJ[25]] = vJ[26] }
        vJ[26] = 8770289930227
        vJ[20] = vJ[20](tbl30, vJ[21], vJ[22])
        vJ[21] = function(function54, ...) enable20 = function54 end
        vJ[20].OnChanged(vJ[20], vJ[21])
        vJ[22] = tbl4
        vJ[23] = r15
        vJ[25] = "\xe7\xf6\xeb\xdbMX\x87JI\xa9\x9a"
        vJ[28] = "\xfan\x02h;"
        vJ[24] = vJ[23](vJ[25], vJ[26])
        vJ[26] = "\x1d\x801\xd6\x01\x97\x17\xec\x0b\xefp\xf7\xc2"
        vJ[21] = vJ[22][vJ[24]]
        tbl30 = tbl29[vJ[21]]
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[24] = vJ[25][vJ[27]]
        vJ[30] = 9100783145101
        vJ[26] = tbl4
        vJ[29] = "\xdb\xd8\xbf\xf4\\\xd8\x96"
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[21] = "AddToggle"
        vJ[27] = tbl4
        vJ[28] = r15
        vJ[30] = "^m/=y#v"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[27] = false
        vJ[21] = tbl30[vJ[21]]
        vJ[29] = "\xb1#u8\xd4"
        vJ[23] = { [vJ[24]] = vJ[25], [vJ[26]] = vJ[27] }
        vJ[27] = 3354570868250
        vJ[21] = vJ[21](tbl30, vJ[22], vJ[23])
        vJ[30] = 24907438910798
        vJ[22] = function(function55, ...) enable21 = function55 end
        vJ[2] = nil
        vJ[26] = "\x0f#\xd4\x92w\xce5k\"\xc9\xc6"
        vJ[31] = 8565359808404
        vJ[28] = 24323861572670
        vJ[21].OnChanged(vJ[21], vJ[22])
        vJ[23] = tbl4
        vJ[24] = r15
        vJ[39] = 13698710444266
        vJ[25] = vJ[24](vJ[26], vJ[27])
        vJ[22] = vJ[23][vJ[25]]
        tbl30 = tbl29[vJ[22]]
        vJ[24] = tbl4
        vJ[42] = 23963638803350
        vJ[27] = "T\x01\xc8\xa9\xd1\xfb[T\xea\x9d1"
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        vJ[26] = tbl4
        vJ[22] = "AddToggle"
        vJ[47] = "o,a\xa92\xb6\x15\xd5"
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[30] = "\x90\x19\xaa\xd4\xec"
        vJ[22] = tbl30[vJ[22]]
        vJ[27] = tbl4
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[31] = "\xa6\xfc\xbfA\x04\xbdJ"
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[32] = 13042190620601
        vJ[34] = 15785780468918
        vJ[28] = false
        vJ[24] = { [vJ[25]] = vJ[26], [vJ[27]] = vJ[28] }
        vJ[22] = vJ[22](tbl30, vJ[23], vJ[24])
        vJ[23] = function(function56, ...) enable22 = function56 end
        vJ[30] = "\xfc\xab\x18\xa1\xd7"
        vJ[29] = 1748138820398
        vJ[28] = 35101044408281
        vJ[27] = "r\xae\xc1\xe6\xf7\xf2n2(\x8e\xea"
        vJ[22].OnChanged(vJ[22], vJ[23])
        vJ[24] = tbl4
        vJ[25] = r15
        vJ[26] = vJ[25](vJ[27], vJ[28])
        vJ[23] = vJ[24][vJ[26]]
        tbl30 = tbl29[vJ[23]]
        vJ[31] = 15440754695190
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[28] = "SF\x17\x08D\xbeo\xf5\x81Q\x81"
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[23] = "AddToggle"
        vJ[23] = tbl30[vJ[23]]
        vJ[24] = vJ[25][vJ[27]]
        vJ[27] = tbl4
        vJ[28] = r15
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[31] = "\xbe\xd9K\xe0N\x84\x1a\x86"
        vJ[26] = vJ[27][vJ[29]]
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[27] = vJ[28][vJ[30]]
        vJ[29] = tbl4
        vJ[32] = "\xeb\x84\x11\xf8\xb9\xa6\xb0"
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[29] = false
        vJ[25] = { [vJ[26]] = vJ[27], [vJ[28]] = vJ[29] }
        vJ[28] = "\xc9\xc5X\xadg\xf9\x03\x9e\xcf\x00m"
        vJ[32] = 18767771001379
        vJ[23] = vJ[23](tbl30, vJ[24], vJ[25])
        vJ[29] = 14153675643326
        vJ[30] = 30049127839400
        vJ[24] = function(function57, ...) enable23 = function57 end
        vJ[23].OnChanged(vJ[23], vJ[24])
        vJ[25] = tbl4
        vJ[26] = r15
        vJ[31] = "VX\n\xfc\xb4"
        vJ[33] = 32698441202554
        vJ[8] = nil
        vJ[27] = vJ[26](vJ[28], vJ[29])
        vJ[3] = nil
        vJ[24] = vJ[25][vJ[27]]
        vJ[36] = 15808139959489
        tbl30 = tbl29[vJ[24]]
        vJ[26] = tbl4
        vJ[29] = "\x9b\x80\xdd\xbfe\xf4\x9f\xcc|d\x1b"
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        vJ[24] = "AddToggle"
        vJ[28] = tbl4
        vJ[29] = r15
        vJ[30] = vJ[29](vJ[31], vJ[32])
        vJ[24] = tbl30[vJ[24]]
        vJ[27] = vJ[28][vJ[30]]
        vJ[29] = tbl4
        vJ[32] = "G\x8a.\xf0\x8aG{\x02\xb7"
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[33] = "-R\x9b=g\xb7\x1c"
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[35] = 10358157349591
        vJ[30] = false
        vJ[26] = { [vJ[27]] = vJ[28], [vJ[29]] = vJ[30] }
        vJ[24] = vJ[24](tbl30, vJ[25], vJ[26])
        vJ[30] = 5042564073772
        vJ[25] = function(function58, ...) enable24 = function58 end
        vJ[32] = "\x1f#\xeem\xff"
        vJ[29] = "\x149J\xe9\xbd-\xb7\xbc\x1d\xa9"
        vJ[24].OnChanged(vJ[24], vJ[25])
        vJ[38] = "\x0b#\xa1\xb1\xda\xaa\xb1/"
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[25] = vJ[26][vJ[28]]
        tbl30 = tbl29[vJ[25]]
        vJ[31] = 258866200696
        vJ[34] = 21076999562838
        vJ[27] = tbl4
        vJ[33] = 22416167643334
        vJ[28] = r15
        vJ[30] = "\x95\x02\xe8\xe0#0\xa6\x0c\xbb!\xbf;\xd4\x1c\x92"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[29] = tbl4
        vJ[43] = 24943404559711
        vJ[40] = "|@\x96~\x15\xfa\x07\xf6"
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[33] = "5\x9e\xfc\xe7\x92\xa6\r\x96\x13\x1c\xa7"
        vJ[28] = vJ[29][vJ[31]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[25] = "AddInput"
        vJ[29] = vJ[30][vJ[32]]
        vJ[34] = "\x90\xf3N\x92l.x"
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[25] = tbl30[vJ[25]]
        vJ[35] = "\xad\x05\x00*+*ei!{\x95"
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[36] = "8t\xa3# ?\xb6"
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[33] = false
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = false
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[37] = function(function59, ...) config_file_path = function59 end
        vJ[27] = {
            [vJ[28]] = vJ[29],
            [vJ[30]] = vJ[31],
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37]
        }
        vJ[25] = vJ[25](tbl30, vJ[26], vJ[27])
        vJ[36] = 13275659819045
        vJ[27] = tbl4
        vJ[31] = 10672555365225
        vJ[38] = 5195867801971
        vJ[30] = "\xa7o\xce\xff\x0c\xeb\xc2h}'"
        vJ[28] = r15
        vJ[32] = "\x1d\xbd\xac\x9c\x15"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[26] = vJ[27][vJ[29]]
        vJ[33] = 15581995850839
        tbl30 = tbl29[vJ[26]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[30] = tbl4
        vJ[35] = 27890622051003
        vJ[40] = 27429335462372
        vJ[31] = r15
        vJ[33] = "\xe2\x92De\x945\xb7S/\xcd\xf8"
        vJ[34] = 12626338207479
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[34] = "\x03\x96\x00\xdd\x184\x95^"
        vJ[29] = vJ[30][vJ[32]]
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[31] = function(...) function60(config_file_path or "config.json") end
        vJ[27] = { [vJ[28]] = vJ[29], [vJ[30]] = vJ[31] }
        vJ[26] = "AddButton"
        vJ[26] = tbl30[vJ[26]]
        vJ[26] = vJ[26](tbl30, vJ[27])
        vJ[31] = 21727121352581
        vJ[27] = tbl4
        vJ[35] = 10866610836420
        vJ[39] = "\xfa_hp)\xc4 "
        vJ[28] = r15
        vJ[30] = "\x03\xa9\xf6[\xa1\x924=\n\x06"
        vJ[25] = nil
        vJ[32] = "R\xb0Z\"2"
        vJ[29] = vJ[28](vJ[30], vJ[31])
        vJ[33] = 3845280941822
        vJ[26] = vJ[27][vJ[29]]
        tbl30 = tbl29[vJ[26]]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[34] = 27914847204038
        vJ[33] = "\xf3\xebf\x0e1\xcc9\xfb0SD"
        vJ[41] = 1391966421640
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[26] = "AddButton"
        vJ[29] = vJ[30][vJ[32]]
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[34] = "\x94s\xcf\x01\xb0H\xb8P"
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[31] = function(...) function1(config_file_path or "config.json") end
        vJ[26] = tbl30[vJ[26]]
        vJ[33] = 28669392172070
        vJ[27] = { [vJ[28]] = vJ[29], [vJ[30]] = vJ[31] }
        vJ[26] = vJ[26](tbl30, vJ[27])
        vJ[29] = " \xe9\xe2\xcdVZ\xe6"
        vJ[30] = 1295834907227
        vJ[22] = nil
        vJ[26] = tbl4
        vJ[27] = r15
        vJ[28] = vJ[27](vJ[29], vJ[30])
        vJ[37] = 6527210687455
        vJ[35] = "\x83\xa6\xadU\xff"
        vJ[26] = 99
        vJ[27] = function(function61, ...)
            s[vJ[26]] = function61
            r = function62
            
            local function function63(...) return s[vJ[26]] end
            
            print("Device spoofed as:", s[vJ[26]]) 
        end
        s[vJ[26]] = vJ[26][vJ[28]]
        vJ[32] = "Xi\xcb\r\x90\x1b\xde\x90\x84\x96"
        local func = vJ[27]
        vJ[29] = tbl4
        vJ[30] = r15
        vJ[34] = 3043973727625
        vJ[31] = vJ[30](vJ[32], vJ[33])
        vJ[28] = vJ[29][vJ[31]]
        vJ[33] = "\x8eX!p\x15\xe4Rh=\xe3\x08$\x97\x11a1\xb8\xcaK"
        vJ[27] = tbl29[vJ[28]]
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[10] = nil
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[28] = "AddDropdown"
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[36] = "8\xd8\xb4\xf9\x16NG\xae C\xa9b"
        vJ[31] = vJ[32][vJ[34]]
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[37] = "m\xe8\\\xcc\xb6\xaa"
        vJ[32] = vJ[33][vJ[35]]
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[40] = "\xfd\xe0\xdc"
        vJ[35] = vJ[36][vJ[38]]
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[41] = "\xe9ENJ/\x92i"
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[37] = vJ[38][vJ[40]]
        vJ[39] = tbl4
        vJ[42] = "q`\x0f"
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[38] = vJ[39][vJ[41]]
        vJ[39] = "F\xef6\x13\xbe"
        vJ[34] = { vJ[35], vJ[36], vJ[37], vJ[38] }
        vJ[42] = 29006202877123
        vJ[40] = 17177746906943
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[41] = "d\xf5\xc8)E\x8fF"
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[43] = "\xc2\xffw\x9a\xcf\x99>\x1f"
        vJ[37] = vJ[38][vJ[40]]
        vJ[40] = tbl4
        vJ[36] = false
        vJ[41] = r15
        vJ[38] = 1
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[28] = vJ[27][vJ[28]]
        vJ[39] = vJ[40][vJ[42]]
        vJ[40] = function(function64, ...) func(function64) end
        vJ[30] = {
            [vJ[31]] = vJ[32],
            [vJ[33]] = vJ[34],
            [vJ[35]] = vJ[36],
            [vJ[37]] = vJ[38],
            [vJ[39]] = vJ[40]
        }
        vJ[41] = 31711036488110
        vJ[36] = 14898830351129
        vJ[34] = 4409542445061
        vJ[37] = 376056004783
        vJ[28] = vJ[28](vJ[27], vJ[29], vJ[30])
        vJ[11] = nil
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[33] = "e\x9c\xc0L\xf7\xe2\xc0\xd4\x8c\xfd"
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[44] = "t!\xd3\xdd\x87\x8f\xa1\xaa"
        vJ[35] = "'_\xd4\x02\xe7"
        vJ[29] = vJ[30][vJ[32]]
        vJ[27] = tbl29[vJ[29]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[29] = "AddButton"
        vJ[40] = 34109428973067
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[36] = "\x98-\xb2O>\xe0\x1aaMC\xca\x17I\x86\x04B."
        vJ[38] = 20217682404550
        vJ[33] = tbl4
        vJ[29] = vJ[27][vJ[29]]
        vJ[43] = 13058976569281
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[34] = tbl4
        vJ[37] = ":\xa3#\xfc\xd1\xd57o"
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[34] = function(...)
            setclipboard("https://discord.gg/Ts84PuKs8")
            tbl2 = v112
            tbl2.Notify(tbl2, {
                ["Title"] = "Discord Link Copied",
                ["Content"] = "The Discord invite link has been copied to your clipboard! Go paste it in your browser",
                ["Duration"] = 10
            }) 
        end
        vJ[30] = { [vJ[31]] = vJ[32], [vJ[33]] = vJ[34] }
        vJ[37] = 23242818136647
        vJ[34] = 34297407782498
        vJ[33] = "\x8f\x8f\x97[\x81\xe5q\xf4m\x12\x89`"
        vJ[29] = vJ[29](vJ[27], vJ[30])
        vJ[30] = tbl4
        vJ[31] = r15
        vJ[32] = vJ[31](vJ[33], vJ[34])
        vJ[29] = vJ[30][vJ[32]]
        vJ[36] = "\xe1Q\xe0\x1f\xca"
        vJ[35] = 19032666546846
        vJ[34] = "P\x8dz\xcdn)\x15\xec\x9cf\xe5\x10\x8e\xff."
        vJ[27] = tbl29[vJ[29]]
        vJ[42] = "B\xb9\xbb\xc9y\xe7\xddu"
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[30] = vJ[31][vJ[33]]
        vJ[38] = 2958316619105
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[37] = "\xcd\x13\xb6 \xaa\xa06!U]k"
        vJ[34] = tbl4
        vJ[39] = 11763141662053
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[38] = "/u\xcd\xab9\x17\xc2"
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[39] = ""
        vJ[34] = vJ[35][vJ[37]]
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[40] = "\xa7\xd2\x88a\x97>\x11"
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[39] = tbl4
        vJ[37] = false
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[29] = "AddInput"
        vJ[38] = vJ[39][vJ[41]]
        vJ[41] = tbl4
        vJ[42] = r15
        vJ[29] = vJ[27][vJ[29]]
        vJ[39] = true
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[40] = vJ[41][vJ[43]]
        vJ[45] = "\xcf\x8fM"
        vJ[41] = function(function65, ...)
            r = function65
            tbl = players2
            I = tbl[2]
            tbl = tbl[1]
            for v39, index9 in ipairs(tbl.GetPlayers(tbl)) do
                tbl2 = index9.Name and index9.Name or ""
                a = index9.DisplayName and index9.DisplayName or ""
                tbl2 = ipairs
                if tbl2.find(tbl2, r, 1, true) or a.find(a, r, 1, true) then
                    tbl = index9
                    break
                end 
            end
            selected_player = nil 
        end
        vJ[31] = {
            [vJ[32]] = vJ[33],
            [vJ[34]] = vJ[35],
            [vJ[36]] = vJ[37],
            [vJ[38]] = vJ[39],
            [vJ[40]] = vJ[41]
        }
        vJ[34] = "M\x8dF@\x7fS\xb7VqTE\x1e"
        vJ[29] = vJ[29](vJ[27], vJ[30], vJ[31])
        vJ[31] = tbl4
        vJ[38] = 27223989727621
        vJ[35] = 33115233680444
        vJ[37] = 10078084813396
        vJ[32] = r15
        vJ[19] = nil
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[36] = "a\t\xe4\xb2\xd1"
        vJ[29] = nil
        vJ[30] = vJ[31][vJ[33]]
        vJ[27] = tbl29[vJ[30]]
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[41] = 10013395522102
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[39] = 15108608482171
        vJ[37] = "m\x15\xb5\xf6\x1d\x0b\x82GG0\xf2\x94\x12`\x91\x1b\xce\x8a\x1e\xca\x81\xa2\xa8"
        vJ[32] = vJ[33][vJ[35]]
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[30] = "AddButton"
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[35] = tbl4
        vJ[38] = "\xa9\xe0v\xba\xb3\x00\x8c4"
        vJ[36] = r15
        vJ[30] = vJ[27][vJ[30]]
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = function(...) if selected_player then function66(selected_player) end end
        vJ[38] = 19518150927232
        vJ[31] = { [vJ[32]] = vJ[33], [vJ[34]] = vJ[35] }
        vJ[37] = 17241888382812
        vJ[34] = "\xe5\xfff+\xf8\xb4\xdaRW\x8b1\xc4"
        vJ[30] = vJ[30](vJ[27], vJ[31])
        vJ[31] = tbl4
        vJ[36] = "_\xb1\xc6Y\xa0"
        vJ[35] = 3899915585304
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[39] = 18798745936433
        vJ[30] = vJ[31][vJ[33]]
        vJ[27] = tbl29[vJ[30]]
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[44] = 3461607212619
        vJ[37] = "2\xd0)\xcdH.>\x8a\x13\xcb>\x18g2\xc5x\xd4\xd8\x13\"\\K\xe0\xa1nx"
        vJ[32] = vJ[33][vJ[35]]
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[38] = "\xbe\xf7P \xe4\xdd\x19r"
        vJ[33] = vJ[34][vJ[36]]
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[30] = "AddButton"
        vJ[34] = vJ[35][vJ[37]]
        vJ[35] = function(...) enable25 = false end
        vJ[38] = 14532976302703
        vJ[30] = vJ[27][vJ[30]]
        vJ[31] = { [vJ[32]] = vJ[33], [vJ[34]] = vJ[35] }
        vJ[30] = vJ[30](vJ[27], vJ[31])
        vJ[34] = "\xb3\xc8u3\xb2\xbb\xa9#\xe7+"
        vJ[37] = "\xda=\x1f\x83\x18"
        vJ[35] = 17617944403979
        vJ[31] = tbl4
        vJ[32] = r15
        vJ[33] = vJ[32](vJ[34], vJ[35])
        vJ[36] = 4551461226567
        vJ[30] = vJ[31][vJ[33]]
        vJ[27] = tbl29[vJ[30]]
        vJ[32] = tbl4
        vJ[33] = r15
        vJ[39] = 31692710853030
        vJ[40] = 28625191891985
        vJ[35] = "zjv\xfc\xd4,~Z\x8c\xe5t\xb0"
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[31] = vJ[32][vJ[34]]
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[35] = tbl4
        vJ[30] = "AddToggle"
        vJ[36] = r15
        vJ[38] = "\x7f\xeb\xec\x9e\x92,"
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[39] = "\xf8W\x80*\xe3\xb1\xfa"
        vJ[34] = vJ[35][vJ[37]]
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[36] = false
        vJ[37] = 26165101064088
        vJ[30] = vJ[27][vJ[30]]
        vJ[32] = { [vJ[33]] = vJ[34], [vJ[35]] = vJ[36] }
        vJ[42] = 297694445706
        vJ[30] = vJ[30](vJ[27], vJ[31], vJ[32])
        vJ[36] = 20939762034198
        vJ[27] = "OnChanged"
        vJ[31] = function(function67, ...)
            if function67 then
                noclip()
            else
                clip()
            end 
        end
        vJ[27] = vJ[30][vJ[27]]
        vJ[27] = vJ[27](vJ[30], vJ[31])
        vJ[32] = tbl4
        vJ[35] = "\x9b\x12`#\x84\x96\xb4\x95\x06\xc7"
        vJ[38] = "\xd2\xee\xbe\xc2/"
        vJ[33] = r15
        vJ[34] = vJ[33](vJ[35], vJ[36])
        vJ[39] = 30140888676051
        vJ[31] = vJ[32][vJ[34]]
        vJ[40] = 20052797711481
        vJ[27] = tbl29[vJ[31]]
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[36] = "\x9cqa3\xe1T\x13\xf2\xb0"
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[32] = vJ[33][vJ[35]]
        vJ[35] = tbl4
        vJ[31] = "AddToggle"
        vJ[36] = r15
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[34] = vJ[35][vJ[37]]
        vJ[36] = tbl4
        vJ[31] = vJ[27][vJ[31]]
        vJ[26] = nil
        vJ[39] = "P\xf3\xf6\xbf\xa4\xcb\xe6k\xaa\\\x99\x94"
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[40] = "u^N\xfb\xd9\xcc\x06"
        vJ[35] = vJ[36][vJ[38]]
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[37] = false
        vJ[33] = { [vJ[34]] = vJ[35], [vJ[36]] = vJ[37] }
        vJ[36] = "\"\x14z\x15\xfa\x0b\xd1XU+"
        vJ[31] = vJ[31](vJ[27], vJ[32], vJ[33])
        vJ[41] = 15846538386643
        vJ[40] = 19127828390603
        vJ[27] = "OnChanged"
        vJ[32] = function(function68, ...)
            enable26 = function68
            if enable26 then
                C = not enable26
                players2.LocalPlayer.Character.HumanoidRootPart.CFrame = players2.LocalPlayer.Character.HumanoidRootPart.CFrame + players2.LocalPlayer.Character.Humanoid.MoveDirection * v40
                r = GAME
                C = r.GetService(r, "RunService").Stepped
                C.wait(C)
            end 
        end
        vJ[37] = 11946622784955
        vJ[38] = 18240178168109
        vJ[27] = vJ[31][vJ[27]]
        vJ[43] = "\x13G\xf7"
        vJ[27] = vJ[27](vJ[31], vJ[32])
        vJ[33] = tbl4
        vJ[34] = r15
        vJ[35] = vJ[34](vJ[36], vJ[37])
        vJ[39] = "\x94\xaf\x93\xdd\xe5"
        vJ[32] = vJ[33][vJ[35]]
        vJ[37] = "\xa9\x8ct\x81h-e\xcc\n?\x15\x8a\xf4a="
        vJ[27] = tbl29[vJ[32]]
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[32] = "AddSlider"
        vJ[40] = "TSQ\xb4\xb7/2& "
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[38] = tbl4
        vJ[41] = "\xe4\x7f\xf6\xf8\xdeT\xcf"
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[37] = vJ[38][vJ[40]]
        vJ[40] = tbl4
        vJ[41] = r15
        vJ[32] = vJ[27][vJ[32]]
        vJ[38] = 0
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[39] = vJ[40][vJ[42]]
        vJ[40] = 0
        vJ[42] = tbl4
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[41] = vJ[42][vJ[44]]
        vJ[42] = 2
        vJ[44] = tbl4
        vJ[45] = r15
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[43] = vJ[44][vJ[46]]
        vJ[46] = tbl4
        vJ[44] = 1
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[45] = vJ[46][vJ[48]]
        vJ[46] = function(function69, ...) v40 = function69 end
        vJ[34] = {
            [vJ[35]] = vJ[36],
            [vJ[37]] = vJ[38],
            [vJ[39]] = vJ[40],
            [vJ[41]] = vJ[42],
            [vJ[43]] = vJ[44],
            [vJ[45]] = vJ[46]
        }
        vJ[37] = "'\xff\\a\xaf\xf3\xacPr~"
        vJ[43] = 5404706572756
        vJ[38] = 13993888520564
        vJ[32] = vJ[32](vJ[27], vJ[33], vJ[34])
        vJ[34] = tbl4
        vJ[35] = r15
        vJ[36] = vJ[35](vJ[37], vJ[38])
        vJ[33] = vJ[34][vJ[36]]
        vJ[27] = tbl29[vJ[33]]
        vJ[35] = tbl4
        vJ[38] = "\x05\xb2\x06\xc0\x01\xd7E\x87\x8c"
        vJ[36] = r15
        vJ[46] = 2010267173800
        vJ[39] = 14423977613884
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[41] = 1453888225957
        vJ[34] = vJ[35][vJ[37]]
        vJ[37] = tbl4
        vJ[42] = 34933650554763
        vJ[38] = r15
        vJ[40] = "\xea\x01]V\xcb"
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[41] = "Pm-"
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[33] = "AddToggle"
        vJ[42] = "\xf4\xd28R\xdb\xd0n"
        vJ[37] = vJ[38][vJ[40]]
        vJ[39] = tbl4
        vJ[33] = vJ[27][vJ[33]]
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[45] = "J\x04\\"
        vJ[38] = vJ[39][vJ[41]]
        vJ[39] = false
        vJ[47] = "\xecp\xc3"
        vJ[40] = 19802076161029
        vJ[35] = { [vJ[36]] = vJ[37], [vJ[38]] = vJ[39] }
        vJ[33] = vJ[33](vJ[27], vJ[34], vJ[35])
        vJ[21] = nil
        vJ[49] = "s\xcdH:=\x01\xb5\x80"
        vJ[39] = 31594776902008
        vJ[38] = "\xa0E\x95\xe2\xe8\xbb+\xcb\xcf\xd6"
        vJ[44] = 7628818402784
        vJ[34] = function(function70, ...) toggle_fly(function70) end
        vJ[27] = "OnChanged"
        vJ[27] = vJ[33][vJ[27]]
        vJ[27] = vJ[27](vJ[33], vJ[34])
        vJ[35] = tbl4
        vJ[36] = r15
        vJ[41] = "8\xc7\xb4\xa5\xe2"
        vJ[37] = vJ[36](vJ[38], vJ[39])
        vJ[50] = 27166597132650
        vJ[39] = "\x0e\xf5\x85\xaf\x9cG\xd2\xbc\xb7\xa9?,$\xc2\xc1s_"
        vJ[42] = 15418102094859
        vJ[15] = nil
        vJ[34] = vJ[35][vJ[37]]
        vJ[27] = tbl29[vJ[34]]
        vJ[36] = tbl4
        vJ[37] = r15
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[35] = vJ[36][vJ[38]]
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[37] = vJ[38][vJ[40]]
        vJ[39] = tbl4
        vJ[43] = 14609739504275
        vJ[40] = r15
        vJ[42] = "\xaaB\xdd\x1ei\x9d\x19\xe2&"
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[43] = "h\x06\xbf\x04\xb7.p"
        vJ[38] = vJ[39][vJ[41]]
        vJ[40] = tbl4
        vJ[41] = r15
        vJ[48] = 31734131079609
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[39] = vJ[40][vJ[42]]
        vJ[32] = nil
        vJ[42] = tbl4
        vJ[40] = 1
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[41] = vJ[42][vJ[44]]
        vJ[42] = 0
        vJ[44] = tbl4
        vJ[45] = r15
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[43] = vJ[44][vJ[46]]
        vJ[44] = 500
        vJ[46] = tbl4
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[45] = vJ[46][vJ[48]]
        vJ[48] = tbl4
        vJ[34] = "AddSlider"
        vJ[34] = vJ[27][vJ[34]]
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[46] = 1
        vJ[47] = vJ[48][vJ[50]]
        vJ[48] = function(function71, ...) v41 = function71 end
        vJ[36] = {
            [vJ[37]] = vJ[38],
            [vJ[39]] = vJ[40],
            [vJ[41]] = vJ[42],
            [vJ[43]] = vJ[44],
            [vJ[45]] = vJ[46],
            [vJ[47]] = vJ[48]
        }
        vJ[34] = vJ[34](vJ[27], vJ[35], vJ[36])
        vJ[44] = 34354087919229
        vJ[36] = tbl4
        vJ[46] = 19284038787859
        vJ[28] = nil
        vJ[37] = r15
        vJ[40] = 10434112541434
        vJ[39] = "\\{\xd3o\x01\x96\xc7\x01\n\x19"
        vJ[42] = "\xf47ra\xcd"
        vJ[38] = vJ[37](vJ[39], vJ[40])
        vJ[47] = 25370276359717
        vJ[41] = 1531688207049
        vJ[35] = vJ[36][vJ[38]]
        vJ[27] = tbl29[vJ[35]]
        vJ[43] = 17415500799917
        vJ[37] = tbl4
        vJ[40] = "\x1a{\x0e\xb0`\x91S\xd4i\x14"
        vJ[50] = 15870922562782
        vJ[48] = 11639266448683
        vJ[38] = r15
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[39] = tbl4
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[38] = vJ[39][vJ[41]]
        vJ[40] = tbl4
        vJ[43] = "\x95\x98\xed\xe1H\x07\x1a*\xe4[\xd3"
        vJ[41] = r15
        vJ[45] = 7620046540252
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[39] = vJ[40][vJ[42]]
        vJ[44] = "\x88\\\x9e\xfc"
        vJ[41] = tbl4
        vJ[42] = r15
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[45] = "\xa3$Bo\xd8\x06"
        vJ[40] = vJ[41][vJ[43]]
        vJ[42] = tbl4
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[49] = 31230661572814
        vJ[41] = vJ[42][vJ[44]]
        vJ[46] = "\xfcG\xc7s\x8b\xf4*"
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[35] = "AddKeybind"
        vJ[44] = tbl4
        vJ[20] = nil
        vJ[45] = r15
        vJ[47] = "9"
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[43] = vJ[44][vJ[46]]
        vJ[45] = tbl4
        vJ[46] = r15
        vJ[48] = "Eq\xba\xf8\xa4\xd4\xd9]\xb293N\xa3\xc6\xd1"
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[35] = vJ[27][vJ[35]]
        vJ[33] = nil
        vJ[44] = vJ[45][vJ[47]]
        vJ[45] = function(function72, ...)
            e = function72
            C = Enum.KeyCode.Unknown
            if e == C then
                v422 = Enum.KeyCode.F
            else
                C = function72
                v422 = C
            end 
        end
        vJ[52] = 24743708486914
        vJ[37] = {
            [vJ[38]] = vJ[39],
            [vJ[40]] = vJ[41],
            [vJ[42]] = vJ[43],
            [vJ[44]] = vJ[45]
        }
        vJ[35] = vJ[35](vJ[27], vJ[36], vJ[37])
        vJ[41] = 34228702051906
        vJ[42] = 11353740088486
        vJ[37] = tbl4
        vJ[38] = r15
        vJ[48] = 28712097117242
        vJ[40] = "3\x02X\xd2\x87\xa6\xc3TyF"
        vJ[39] = vJ[38](vJ[40], vJ[41])
        vJ[36] = vJ[37][vJ[39]]
        vJ[41] = "A\xcf\xf1\x00\x19\xb203\xc5\x1c\xd5W)\xc4\xc4+\xca\x89"
        vJ[44] = 26639415734388
        vJ[27] = tbl29[vJ[36]]
        vJ[45] = 7057398385878
        vJ[23] = nil
        vJ[38] = tbl4
        vJ[46] = 25347628609051
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[47] = 4921691425011
        vJ[37] = vJ[38][vJ[40]]
        vJ[40] = tbl4
        vJ[41] = r15
        vJ[51] = 33020781870096
        vJ[43] = "\xdd\x0e\xf8\x86<"
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[44] = "\xd9\x90\xc3\xe7QZ;\xfd\x16\x92W0\x95"
        vJ[39] = vJ[40][vJ[42]]
        vJ[41] = tbl4
        vJ[42] = r15
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[40] = vJ[41][vJ[43]]
        vJ[45] = "u\x9c\x95s\xd7Zj"
        vJ[42] = tbl4
        vJ[36] = "AddToggle"
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[41] = vJ[42][vJ[44]]
        vJ[42] = false
        vJ[36] = vJ[27][vJ[36]]
        vJ[38] = { [vJ[39]] = vJ[40], [vJ[41]] = vJ[42] }
        vJ[36] = vJ[36](vJ[27], vJ[37], vJ[38])
        vJ[42] = 5879021243057
        vJ[41] = "e\xe4\xcf|\x0c1%\x90"
        vJ[37] = function(function73, ...) enable27 = function73 end
        vJ[43] = 8511286628219
        vJ[27] = "OnChanged"
        vJ[27] = vJ[36][vJ[27]]
        vJ[27] = vJ[27](vJ[36], vJ[37])
        vJ[38] = tbl4
        vJ[39] = r15
        vJ[40] = vJ[39](vJ[41], vJ[42])
        vJ[37] = vJ[38][vJ[40]]
        vJ[27] = tbl29[vJ[37]]
        vJ[45] = 25096907074982
        vJ[44] = "\x83\xe1y\xa2:"
        vJ[42] = "\xd9\x93\x0c\x82y\xf4\x07"
        vJ[39] = tbl4
        vJ[40] = r15
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[38] = vJ[39][vJ[41]]
        vJ[41] = tbl4
        vJ[46] = 11283727832198
        vJ[42] = r15
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[40] = vJ[41][vJ[43]]
        vJ[42] = tbl4
        vJ[45] = "W\xfd\xbd\xbd\x8b\xd3\x08\xd3"
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[37] = "AddToggle"
        vJ[41] = vJ[42][vJ[44]]
        vJ[46] = "\xec\x8e\xef\x8b,\x95\x8d"
        vJ[37] = vJ[27][vJ[37]]
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[43] = false
        vJ[39] = { [vJ[40]] = vJ[41], [vJ[42]] = vJ[43] }
        vJ[46] = 19531430945671
        vJ[37] = vJ[37](vJ[27], vJ[38], vJ[39])
        vJ[42] = "\x97\xed\x9a\x98\xfb\x9a\xf9\xfc"
        vJ[27] = "OnChanged"
        vJ[44] = 26701829927058
        vJ[27] = vJ[37][vJ[27]]
        vJ[38] = function(function74, ...) enable28 = function74 end
        vJ[27] = vJ[27](vJ[37], vJ[38])
        vJ[39] = tbl4
        vJ[40] = r15
        vJ[45] = "\x92\xd7\xd9\x06\x1f"
        vJ[47] = 17343429533580
        vJ[43] = 9714611130795
        vJ[41] = vJ[40](vJ[42], vJ[43])
        vJ[43] = "\xa7\x99\xa4bf2E\x19d\x1e\xb3"
        vJ[38] = vJ[39][vJ[41]]
        vJ[27] = tbl29[vJ[38]]
        vJ[40] = tbl4
        vJ[41] = r15
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[39] = vJ[40][vJ[42]]
        vJ[42] = tbl4
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[41] = vJ[42][vJ[44]]
        vJ[34] = nil
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[46] = "\xf8.\xea\x93\x9a\xf7\xb1)n\x90\x9f\t"
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[47] = "T{hs\xe3\xa7\x14"
        vJ[42] = vJ[43][vJ[45]]
        vJ[44] = tbl4
        vJ[45] = r15
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[45] = 9325654561014
        vJ[38] = "AddToggle"
        vJ[49] = 10857342784447
        vJ[38] = vJ[27][vJ[38]]
        vJ[43] = vJ[44][vJ[46]]
        vJ[44] = false
        vJ[40] = { [vJ[41]] = vJ[42], [vJ[43]] = vJ[44] }
        vJ[44] = 16081189920064
        vJ[38] = vJ[38](vJ[27], vJ[39], vJ[40])
        vJ[27] = "OnChanged"
        vJ[39] = function(function75, ...) enable29 = function75 end
        vJ[27] = vJ[38][vJ[27]]
        vJ[27] = vJ[27](vJ[38], vJ[39])
        vJ[47] = 30373505955647
        vJ[40] = tbl4
        vJ[43] = "\xe9\x88\x97\x02)\xd0\xf0\x87"
        vJ[41] = r15
        vJ[48] = 26515302477883
        vJ[42] = vJ[41](vJ[43], vJ[44])
        vJ[39] = vJ[40][vJ[42]]
        vJ[46] = "Y\xfe \xb3("
        vJ[27] = tbl29[vJ[39]]
        vJ[44] = "2\x9a\xba\\\x904\xb9z+hU"
        vJ[41] = tbl4
        vJ[42] = r15
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[40] = vJ[41][vJ[43]]
        vJ[39] = "AddToggle"
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[39] = vJ[27][vJ[39]]
        vJ[44] = tbl4
        vJ[30] = nil
        vJ[45] = r15
        vJ[47] = "\x06\xa5\xa8vv\xab\x04\xd7u\xb8\x04f\x8c\xafd\xa8\x05\xb9"
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[43] = vJ[44][vJ[46]]
        vJ[45] = tbl4
        vJ[48] = "p~\x06&\xdd\xd8G"
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[44] = vJ[45][vJ[47]]
        vJ[45] = false
        vJ[41] = { [vJ[42]] = vJ[43], [vJ[44]] = vJ[45] }
        vJ[39] = vJ[39](vJ[27], vJ[40], vJ[41])
        vJ[44] = "\r\xdc\x0fR\xb4\x05d\x9b"
        vJ[40] = function(function76, ...) enable30 = function76 end
        vJ[27] = "OnChanged"
        vJ[45] = 12604634650349
        vJ[27] = vJ[39][vJ[27]]
        vJ[24] = nil
        vJ[27] = vJ[27](vJ[39], vJ[40])
        vJ[41] = tbl4
        vJ[42] = r15
        vJ[43] = vJ[42](vJ[44], vJ[45])
        vJ[48] = 18477389324700
        vJ[40] = vJ[41][vJ[43]]
        vJ[27] = tbl29[vJ[40]]
        vJ[45] = "\xc6\xcb\x0c\xf9\xe9\xd2{\xb3f\xf1"
        vJ[35] = nil
        vJ[46] = 25685018291896
        vJ[42] = tbl4
        vJ[47] = "i\x1e\t\x85x"
        vJ[49] = 31888673438209
        vJ[43] = r15
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[41] = vJ[42][vJ[44]]
        vJ[44] = tbl4
        vJ[45] = r15
        vJ[46] = vJ[45](vJ[47], vJ[48])
        vJ[43] = vJ[44][vJ[46]]
        vJ[45] = tbl4
        vJ[48] = "\xea3\x84\x81Ew$\xd2\xb4\x9d\xf7\x83lb\x86D\xf9"
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[40] = "AddToggle"
        vJ[44] = vJ[45][vJ[47]]
        vJ[49] = "\x15\xc1\x02\xdcj;Z"
        vJ[40] = vJ[27][vJ[40]]
        vJ[17] = nil
        vJ[46] = tbl4
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[45] = vJ[46][vJ[48]]
        vJ[39] = nil
        vJ[46] = false
        vJ[42] = { [vJ[43]] = vJ[44], [vJ[45]] = vJ[46] }
        vJ[40] = vJ[40](vJ[27], vJ[41], vJ[42])
        vJ[41] = function(function77, ...) enable31 = function77 end
        vJ[47] = 27934962922192
        vJ[46] = 30116655789768
        vJ[27] = "OnChanged"
        vJ[27] = vJ[40][vJ[27]]
        vJ[27] = vJ[27](vJ[40], vJ[41])
        vJ[42] = tbl4
        vJ[43] = r15
        vJ[50] = 4643418671218
        vJ[45] = "\x92$\xc2\xea\xce\xf62\xe0L\x87."
        vJ[44] = vJ[43](vJ[45], vJ[46])
        vJ[46] = "@\xa1\xdc\xce\xa8'uG\xfc4"
        vJ[41] = vJ[42][vJ[44]]
        vJ[27] = tbl29[vJ[41]]
        vJ[43] = tbl4
        vJ[37] = nil
        vJ[44] = r15
        vJ[49] = 25699378523839
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[41] = "AddSection"
        vJ[42] = vJ[43][vJ[45]]
        vJ[41] = vJ[27][vJ[41]]
        vJ[46] = "\xee\xfbf;\xc0\xb5\xa0i\x9f\xb6/"
        vJ[41] = vJ[41](vJ[27], vJ[42])
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[47] = 24297004985394
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[27] = tbl29[vJ[42]]
        vJ[45] = tbl4
        vJ[48] = "\xe5\x89\x1d\x9a\x0c"
        vJ[31] = nil
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[49] = "\xc3\x10\x1a\xb5\xdb<\x102l\xf3\xc2\xa6\x19y\xb2*\xa0w\\"
        vJ[44] = vJ[45][vJ[47]]
        vJ[46] = tbl4
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[36] = nil
        vJ[45] = vJ[46][vJ[48]]
        vJ[47] = tbl4
        vJ[50] = "\xc1\x97\xad\xf9k\x94X"
        vJ[48] = r15
        vJ[49] = vJ[48](vJ[50], vJ[51])
        vJ[46] = vJ[47][vJ[49]]
        vJ[51] = "\x06\xfe\x0b\xfb>r\xd9'\xf7\x1a\x07\xbej\x13\x12s\xd8*\xb9\x08R\x08\x94s\x85n\x7f\xca\x0f\xda\xe4\xf4\x7fd\xcb,\xb0\x06*\x9f\x08\x07\x1a\x1dyQ\n\x81\xa8w\x05\xfc\xff\xc9~9[74\xfd\xb9\t4\x00m\x14\xa9G\xd24\t=\xed\x10\x89\xea\x18z\xf4l.cV\xefu\xd5\x98\xf9\xfc;n\xe8{\xf1.\x82\xd7\x91\xad\xe4I\xfaV*\x13u\x83\xb6\xb3\xe7;\x19\x87\x9a\xa8fe\x0bq\x9f\xb0',T\xbb\x8a\xabN\x1c\xa5\x87"
        vJ[48] = tbl4
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[42] = "AddParagraph"
        vJ[47] = vJ[48][vJ[50]]
        vJ[48] = "z-g\x8bH"
        vJ[42] = vJ[27][vJ[42]]
        vJ[49] = 24475825515653
        vJ[43] = { [vJ[44]] = vJ[45], [vJ[46]] = vJ[47] }
        vJ[50] = 31801106872792
        vJ[47] = 15997158759705
        vJ[46] = "\xd6t\xd0,6\xe6`9\x83S\x84"
        vJ[42] = vJ[42](vJ[27], vJ[43])
        vJ[43] = tbl4
        vJ[52] = 30354846758711
        vJ[44] = r15
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[27] = tbl29[vJ[42]]
        vJ[45] = tbl4
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[44] = vJ[45][vJ[47]]
        vJ[49] = "LA+p;(|CKX\xbb}\xd8\x879\x17\x02\x8fK"
        vJ[42] = "AddParagraph"
        vJ[46] = tbl4
        vJ[51] = 6160415279924
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[42] = vJ[27][vJ[42]]
        vJ[45] = vJ[46][vJ[48]]
        vJ[47] = tbl4
        vJ[48] = r15
        vJ[50] = "`\xb8-\xdb\xe0\xc5t"
        vJ[49] = vJ[48](vJ[50], vJ[51])
        vJ[46] = vJ[47][vJ[49]]
        vJ[48] = tbl4
        vJ[51] = "H\x16K\xcc\x0ee\xa0\xfa\xaa\xa7I\xca\"\xb5\xfb\xac\x8a4\x8b\xdf\x8e\x0f\xdb\xabx\xb2\xbd\xcb\x9a\x1b\x85T\xdc\x91\xfc\x18J\x9e\xa0\\9\x17\x97^\x92\xa5b\"C\xdf\x11\xc3\x7f\x0fa\xa3)T\xba\x07\x18\xccC\xb9\x83\x95\x18+q:Zq\x1c\xaeW\x82\xdc\x9a\x13\xbb\xd7\x96\xaf\x10\xea\"\xcf\x07\x7f\x0c&H\x1c\x17v>\xb8\xd3\x05[\xfc\xb9dI\x1e\x9aYw\xe3\xf0\x19\x89\r\x01=\x9f\xd0\xf9\x12\xbb\x08\x88\xba\x1fz\xa5\x03u-\xb1\xfem\xdc@?\xb2\xb4l\xfd\xa5\xef=/P\x8f\x8a\xc9<\xb6m\x86`\x9eMSB\xa5\x14\xd1VV\x98)\xf0\xda\xe0Q\xae\xff\xf9\xb6\x00\xac\xff\xfcm'\xde\xb4"
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[47] = vJ[48][vJ[50]]
        vJ[43] = { [vJ[44]] = vJ[45], [vJ[46]] = vJ[47] }
        vJ[42] = vJ[42](vJ[27], vJ[43])
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[49] = 31257322354907
        vJ[46] = "d\x07\xe7K:\xcf\xcc6\x9b\x86Y"
        vJ[47] = 5128021395795
        vJ[51] = 10049712837191
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[41] = nil
        vJ[48] = "j\xd1\xb51I"
        vJ[42] = vJ[43][vJ[45]]
        vJ[52] = 5787561380487
        vJ[27] = tbl29[vJ[42]]
        vJ[45] = tbl4
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[49] = "\x13\xa3\xb8[\xcbr\x02RK\xea\xdc+\x18Ng\x16\x19\xd5\xb2"
        vJ[44] = vJ[45][vJ[47]]
        vJ[46] = tbl4
        vJ[50] = 6454202485693
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[50] = "J\xf5 \xce\xd8\x89\x0e"
        vJ[45] = vJ[46][vJ[48]]
        vJ[47] = tbl4
        vJ[48] = r15
        vJ[42] = "AddParagraph"
        vJ[49] = vJ[48](vJ[50], vJ[51])
        vJ[46] = vJ[47][vJ[49]]
        vJ[48] = tbl4
        vJ[51] = "\x06\xe53\xb0\n\xb2\x9e\xfe\xaaV\xeeW\x07\x88\xf8\xc0R.f\x8aZ]^\x83A\xd1\xd3\xb5d\x13\xfe\xe7\xa3m\r\x88\xb8\xc1\xff\x1dzv\x05\xf1\x8f\xa0\xaa\xc4\xe5\xb5([\xb8\x85G\xb7\xf0Do1\xd0\xf3\xd7e\xc3\x1f\xb5\x1e\xd0@K\xed\xc6K}'\xc8\xb6\xf8\xdd\xf2=\xfd@v\x13\xdd35\xa6)\xe1\x9e\xdeC\x1c\x0f\xfb\xdc\xab\x1b\x187K\x18\xbb\xd2\xcf0^\xc2\x13)\xf1\x14\x92X\xd4\xe3V\xd9\xa4qcN\x8a<dm\xf7+\x05vi"
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[42] = vJ[27][vJ[42]]
        vJ[47] = vJ[48][vJ[50]]
        vJ[43] = { [vJ[44]] = vJ[45], [vJ[46]] = vJ[47] }
        vJ[46] = "Im{;6\xdc\x0e\xf9\xbf\xbd\xdd"
        vJ[42] = vJ[42](vJ[27], vJ[43])
        vJ[49] = 29581143782862
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[48] = "`\xeb\xcf\x15\t"
        vJ[47] = 33156032429135
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[42] = vJ[43][vJ[45]]
        vJ[50] = 23130990930451
        vJ[51] = 26683757441161
        vJ[52] = 10477961597711
        vJ[27] = tbl29[vJ[42]]
        vJ[42] = "AddParagraph"
        vJ[38] = nil
        vJ[45] = tbl4
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[44] = vJ[45][vJ[47]]
        vJ[49] = "<@w\xd7\xf2J\x14\x11\xa8\x18K\xf8\x12\xc8\xc2\xcb[\xbc]"
        vJ[46] = tbl4
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[40] = nil
        vJ[45] = vJ[46][vJ[48]]
        vJ[47] = tbl4
        vJ[48] = r15
        vJ[50] = "@{o[S\xc1\x05"
        vJ[49] = vJ[48](vJ[50], vJ[51])
        vJ[51] = "\xb2\xc2\x14@\xd7\xeb\x8bO\xa5\x01\xc2\x08\x90E\x8c|\x9e\x18\x05h\xa8\x8c\x8c\xcc\x18K>)b[J\x058\xc9\x80F\xb1{M\x92G\x7f\xecJ\x89\x11\xb7\xcc>;\xee\xa7\xf8\xd9\xdd#\x8d;\x02\xeb\x86\xc9&\xa1\x8a1Nj\xbf\xc1Y\x9b-]{ET\xeb5\x9c6G"
        vJ[46] = vJ[47][vJ[49]]
        vJ[48] = tbl4
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[47] = vJ[48][vJ[50]]
        vJ[42] = vJ[27][vJ[42]]
        vJ[43] = { [vJ[44]] = vJ[45], [vJ[46]] = vJ[47] }
        vJ[46] = "K#\xab\xf8\xa1v^\xbb\xcbDT"
        vJ[13] = nil
        vJ[42] = vJ[42](vJ[27], vJ[43])
        vJ[43] = tbl4
        vJ[44] = r15
        vJ[47] = 32456645491465
        vJ[45] = vJ[44](vJ[46], vJ[47])
        vJ[50] = 1808891970378
        vJ[42] = vJ[43][vJ[45]]
        vJ[48] = "\xb0\xc7\xba\xec\x95"
        vJ[27] = tbl29[vJ[42]]
        vJ[49] = 21872891291593
        vJ[45] = tbl4
        vJ[46] = r15
        vJ[47] = vJ[46](vJ[48], vJ[49])
        vJ[52] = 34477525941942
        vJ[44] = vJ[45][vJ[47]]
        vJ[46] = tbl4
        vJ[49] = "6V.,Kr\x90\xc1\x970\xfeB\xf2e\x89$\x02\xf7z"
        vJ[47] = r15
        vJ[48] = vJ[47](vJ[49], vJ[50])
        vJ[50] = "\xef\xe96\xe6u\xd8-"
        vJ[45] = vJ[46][vJ[48]]
        vJ[47] = tbl4
        vJ[48] = r15
        vJ[51] = 8129616170697
        vJ[49] = vJ[48](vJ[50], vJ[51])
        vJ[46] = vJ[47][vJ[49]]
        vJ[48] = tbl4
        vJ[42] = "AddParagraph"
        vJ[51] = "\xe9\xeb-*2\xa6b\x95\xff\x0c/\xc2\xdb\xcb"
        vJ[49] = r15
        vJ[50] = vJ[49](vJ[51], vJ[52])
        vJ[47] = vJ[48][vJ[50]]
        vJ[43] = { [vJ[44]] = vJ[45], [vJ[46]] = vJ[47] }
        vJ[42] = vJ[27][vJ[42]]
        vJ[42] = vJ[42](vJ[27], vJ[43])
        GAME.SelectTab(GAME, 1)
        getClosestPlayerInFOV = function(...)
            tbl2 = math.huge
            m = "Character"
            tbl = localPlayer[m] and m.FindFirstChild(m, "HumanoidRootPart")
            tbl2 = tbl2
            if tbl then
                tbl = tbl
                tbl = players
                I = tbl[2]
                tbl = tbl[1]
                for v43, index10 in pairs(tbl.GetPlayers(tbl)) do
                    if index10 ~= localPlayer and index10.Character then
                        a = (index10.Character.HumanoidRootPart.Position - tbl).Magnitude
                        tbl2 = a < tbl2
                        if tbl2 then
                            tbl2 = (tbl2[tbl4[r15("\xca\xd6\xa0\xb6\xa6\xa2\xb1\xe5", O)]] - tbl)[tbl7]
                            r = a
                            e = index10
                        end
                    end 
                end
                return nil
            else
                C = Vector3.new(0, 0, 0)
            end 
        end
        shootAtTarget = function(function79, function78, ...)
            r = function78
            e = function79
            tbl = e.Character
            if tbl then
                tbl = e.Character
                C = tbl.FindFirstChild(tbl, r)
            end
            if tbl then
                tbl = e.Character[r]
                camera.CFrame = CFrame.new(camera.CFrame.Position + (tbl.Position - camera.CFrame.Position).Unit * 0.5, tbl.Position)
                tbl2 = virtualInput
                tbl2.SendMouseButtonEvent(tbl2, tbl3.v2, tbl3.Y, 0, true, GAME, 0)
                task.wait(.1)
                tbl2 = virtualInput
                tbl2.SendMouseButtonEvent(tbl2, tbl3.v2, tbl3.Y, 0, false, GAME, 0)
            end 
        end
        function1("config.json")
    else
        character.Wait(character)
    end
end

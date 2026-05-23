  remove = string.char
    local concat = table.concat
    remove = {}
    remove[1] = 104
    remove[2] = 119
    remove[3] = 105
    remove[4] = 100
    remove[5] = 95
    remove[6] = 57
    remove[7] = 54
    remove[8] = 48
    remove[9] = 53
    remove[10] = 56
    remove[11] = 50
    remove[12] = 54
    remove[13] = 50
    remove[14] = 54
    remove[15] = 49
    remove[16] = 95
    remove[17] = 49
    remove[18] = 55
    remove[19] = 54
    remove[20] = 52
    remove[21] = 53
    remove[22] = 57
    remove[23] = 55
    remove[24] = 50
    remove[25] = 53
    remove[26] = 56
    remove[27] = 95
    remove[28] = 49
    remove[29] = 52
    remove[30] = 51
    remove[31] = 57
    remove[32] = 48
    remove[33] = 98
    remove[34] = 108
    remove[35] = 105
    remove[36] = 122
    remove[37] = 116
    remove[38] = 99
    remove[39] = 49
    remove[40] = 97
    remove[41] = 99
    remove[42] = 101
    remove[43] = 56
    remove[44] = 99
    remove[45] = 101
    remove[46] = 53
    remove[47] = 52
    remove[48] = 51
    remove[49] = 54
    remove[50] = 57
    remove[51] = 97
    remove[52] = 49
    remove[53] = 48
    remove[54] = 54
    remove[55] = 53
    remove[56] = 56
    remove[57] = 98
    remove[58] = 55
    remove[59] = 101
    remove[60] = 102
    remove[61] = 55
    remove[62] = 53
    local screenGui = Instance.new("ScreenGui", GAME.CoreGui)
    screenGui.ResetOnSpawn = false
    Instance.new("Frame", screenGui)
    UDim2.new(1, 0, 1, 0)
    Color3.new(0, 0, 0)
    local textLabel = Instance.new("TextLabel", screenGui)
    textLabel.Size = UDim2.new(0, 800, 0, 120)
    textLabel.Position = UDim2.new(0.5, -400, .35, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.GothamBold
    textLabel.Text = "crack by @c_nan0"
    textLabel.ZIndex = 1000
    
    local function function2(function1, ...)
        Instance.new("UICorner", function1).CornerRadius = UDim.new(0, 20) 
    end
    
    enable1 = Instance.new("TextButton", screenGui)
    enable1.Size = UDim2.new(0, 320, 0, 80)
    enable1.Position = UDim2.new(0.5, -330, .52, 0)
    enable1.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
    enable1.TextColor3 = Color3.new(1, 1, 1)
    enable1.Text = "Telegram"
    enable1.Font = Enum.Font.GothamBold
    enable1.TextScaled = true
    enable1.ZIndex = 1000
    tbl2 = enable1.MouseButton1Click
    tbl2.Connect(tbl2, function(...) setclipboard("https://t.me/c_nan0") end)
    tbl2 = Instance.new("TextButton", screenGui)
    tbl2.Size = UDim2.new(0, 320, 0, 80)
    tbl2.Position = UDim2.new(0.5, 10, .52, 0)
    tbl2.BackgroundColor3 = Color3.fromRGB(220, 30, 60)
    tbl2.TextColor3 = Color3.new(1, 1, 1)
    tbl2.Text = "Yougame"
    tbl2.Font = Enum.Font.GothamBold
    tbl2.TextScaled = true
    tbl2.ZIndex = 1000
    tbl2 = tbl2.MouseButton1Click
    tbl2.Connect(tbl2, function(...) setclipboard("https://yougame.biz/members/1372407/") end)
    if writefile then
        writefile("OrionUserID.txt", concat({
            remove(remove[1]),
            remove(remove[2]),
            remove(remove[3]),
            remove(remove[4]),
            remove(remove[5]),
            remove(remove[6]),
            remove(remove[7]),
            remove(remove[8]),
            remove(remove[9]),
            remove(remove[10]),
            remove(remove[11]),
            remove(remove[12]),
            remove(remove[13]),
            remove(remove[14]),
            remove(remove[15]),
            remove(remove[16]),
            remove(remove[17]),
            remove(remove[18]),
            remove(remove[19]),
            remove(remove[20]),
            remove(remove[21]),
            remove(remove[22]),
            remove(remove[23]),
            remove(remove[24]),
            remove(remove[25]),
            remove(remove[26]),
            remove(remove[27]),
            remove(remove[28]),
            remove(remove[29]),
            remove(remove[30]),
            remove(remove[31]),
            remove(remove[32])
        }))
        writefile("Bliz_T Key.txt", concat({
            remove(remove[33]),
            remove(remove[34]),
            remove(remove[35]),
            remove(remove[36]),
            remove(remove[37]),
            remove(remove[38]),
            remove(remove[39]),
            remove(remove[40]),
            remove(remove[41]),
            remove(remove[42]),
            remove(remove[43]),
            remove(remove[44]),
            remove(remove[45]),
            remove(remove[46]),
            remove(remove[47]),
            remove(remove[48]),
            remove(remove[49]),
            remove(remove[50]),
            remove(remove[51]),
            remove(remove[52]),
            remove(remove[53]),
            remove(remove[54]),
            remove(remove[55]),
            remove(remove[56]),
            remove(remove[57]),
            remove(remove[58]),
            remove(remove[59]),
            remove(remove[60]),
            remove(remove[61]),
            remove(remove[62])
        }))
    end
    spawn(function(...)
        concat = GAME
        function2 = concat.CoreGui
        local tbl3 = function2.GetDescendants
        remove = tbl3[3]
        local func = tbl3[2]
        for v32, index in func(function2) do
            function2 = v22
            if index.IsA(index, "TextLabel") and function2.find(function2, "PlayerName") then
                index.Text = "crack by @c_nan0"
                local enable2 = true
            end 
        end
        if not false then
        else
            task.wait()
        end 
    end)
    task.delay(10, function(...)
        function2 = screenGui
        function2.Destroy(function2)
        if delfile then
            pcall(delfile, "OrionUserID.txt")
            pcall(delfile, "Bliz_T Key.txt")
        end 
    end)
    local GAME = GAME
    tbl2 = GAME.HttpGet(GAME, "https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua") ~= ""
    task.wait()
    GAME = GAME
    local tbl = GAME.HttpGet(GAME, "https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua")
    if tbl ~= "" then
        tbl = GAME
        loadstring(tbl.HttpGet(tbl, "https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
    end
end

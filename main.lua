-- [[ MasterHub V3 - Stable Edition ]]
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

local Window = OrionLib:MakeWindow({
    Name = "MasterHub V3", 
    HidePremium = true, 
    SaveConfig = true, 
    ConfigFolder = "MHV3"
})

local Tab = Window:MakeTab({
    Name = "主要功能",
    Icon = "rbxassetid://4483345998"
})

Tab:AddButton({
    Name = "點擊測試",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "系統",
            Content = "雲端加載成功！",
            Time = 5
        })
    end
})

OrionLib:Init()

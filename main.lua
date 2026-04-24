-- [[ MasterHub V3 - Stable Mobile ]]
local S = {
    p = game:GetService("Players"),
    t = game:GetService("TeleportService"),
    g = game:GetService("GuiService")
}
local LP = S.p.LocalPlayer

-- 加載 Orion UI (直接調用網址)
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
    Name = "腳本測試",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "系統",
            Content = "腳本運行成功！",
            Time = 5
        })
    end
})

OrionLib:Init()


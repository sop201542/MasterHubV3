-- [[ MasterHub V3 - Ultimate Fix ]]
print("核心啟動中...")

-- 換一個更穩定的 UI 來源 (手機專用)
local success, OrionLib = pcall(function()
    return loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonh02/Orion/main/source'))()
end)

if not success then
    warn("UI 庫載入失敗，嘗試備用來源...")
    OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
end

local Window = OrionLib:MakeWindow({
    Name = "MasterHub V3", 
    HidePremium = true, 
    SaveConfig = false
})

local Tab = Window:MakeTab({
    Name = "主要功能",
    Icon = "rbxassetid://4483345998"
})

Tab:AddButton({
    Name = "測試按鈕",
    Callback = function()
        print("按鈕運作正常！")
    end
})

OrionLib:Init()
print("✅ MasterHub 已完全加載！")

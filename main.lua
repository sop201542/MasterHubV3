-- [[ MasterHub V3 - Zero-404 Edition ]]
print("嘗試加載 UI 引擎...")

-- 使用 Rayfield 庫，這個網址在手機上比 Orion 穩很多
local success, Rayfield = pcall(function()
    return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success then
    warn("UI 引擎加載失敗，可能是你的執行器不支持 game:HttpGet")
    return
end

local Window = Rayfield:CreateWindow({
   Name = "MasterHub V3",
   LoadingTitle = "正在啟動雲端核心...",
   LoadingSubtitle = "by sop201542",
   ConfigurationSaving = {
      Enabled = false
   }
})

local Tab = Window:CreateTab("主要功能", 4483345998)

Tab:CreateButton({
   Name = "點擊測試",
   Callback = function()
       print("腳本運作完美！")
   end,
})

print("✅ MasterHub 啟動成功！")

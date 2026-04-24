-- MasterHub V3 極簡載入器 (排除緩存版)
local target_url = "https://raw.githubusercontent.com/sop201542/MasterHubV3/main/main.lua"

-- 使用 tick() 產生的隨機數強制刷新，跳過 404 快取
local s, r = pcall(game:HttpGet(target_url .. "?nocache=" .. tick()))

if s and #r > 100 then
    print("✅ 雲端代碼抓取成功！正在執行...")
    loadstring(r)()
else
    -- 如果還是 404，印出執行器抓到的原始訊息以便偵錯
    warn("❌ 執行器回報錯誤：")
    print(tostring(r)) 
end

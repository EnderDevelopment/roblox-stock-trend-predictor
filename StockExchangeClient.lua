-- Client-side script for Stock Exchange game

local StockExchangeModule = require(game:GetService("ServerScriptService"):WaitForChild("StockExchangeModule"))

local function PredictTrend(stockName)
    -- Dự đoán xu hướng của cổ phiếu
    local trend = StockExchangeModule.GetStockTrend(stockName)
    print("Dự đoán xu hướng của " .. stockName .. ": " .. trend)
    return trend
end

local function BuyLowSellHigh(stockName, amount)
    -- Mua đáy bán đỉnh
    local trend = PredictTrend(stockName)
    if trend == "tăng" then
        print("Mua cổ phiếu " .. stockName .. " với số lượng " .. amount)
    elseif trend == "giảm" then
        print("Bán cổ phiếu " .. stockName .. " với số lượng " .. amount)
    else
        print("Giữ cổ phiếu " .. stockName)
    end
end

return {
    PredictTrend = PredictTrend,
    BuyLowSellHigh = BuyLowSellHigh
}
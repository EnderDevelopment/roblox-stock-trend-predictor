-- Shared module for Stock Exchange game

local StockExchangeModule = {}

local stocks = {
    {
        name = "TechCorp",
        price = 100,
        trend = "tăng"
    },
    {
        name = "HealthInc",
        price = 200,
        trend = "giảm"
    }
}

function StockExchangeModule.Initialize()
    -- Khởi tạo thị trường chứng khoán
    print("Khởi tạo thị trường chứng khoán")
end

function StockExchangeModule.GetStockPrices()
    -- Lấy giá cổ phiếu hiện tại
    local prices = {}
    for _, stock in ipairs(stocks) do
        prices[stock.name] = stock.price
    end
    return prices
end

function StockExchangeModule.GetStockTrend(stockName)
    -- Lấy xu hướng cổ phiếu
    for _, stock in ipairs(stocks) do
        if stock.name == stockName then
            return stock.trend
        end
    end
    return "không xác định"
end

function StockExchangeModule.UpdateStockPrices()
    -- Cập nhật giá cổ phiếu
    for _, stock in ipairs(stocks) do
        if stock.trend == "tăng" then
            stock.price = stock.price + 10
        elseif stock.trend == "giảm" then
            stock.price = stock.price - 10
        end
    end
end

return StockExchangeModule
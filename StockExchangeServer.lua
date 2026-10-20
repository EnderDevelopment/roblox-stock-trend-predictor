-- Server-side script for Stock Exchange game

local StockExchangeModule = require(script.Parent:WaitForChild("StockExchangeModule"))

local function UpdateStockPrices()
    -- Cập nhật giá cổ phiếu
    StockExchangeModule.UpdateStockPrices()
end

local function HandlePlayerTransaction(player, stockName, amount, transactionType)
    -- Xử lý giao dịch của người chơi
    if transactionType == "mua" then
        print(player.Name .. " đã mua cổ phiếu " .. stockName .. " với số lượng " .. amount)
    elseif transactionType == "bán" then
        print(player.Name .. " đã bán cổ phiếu " .. stockName .. " với số lượng " .. amount)
    end
end

return {
    UpdateStockPrices = UpdateStockPrices,
    HandlePlayerTransaction = HandlePlayerTransaction
}
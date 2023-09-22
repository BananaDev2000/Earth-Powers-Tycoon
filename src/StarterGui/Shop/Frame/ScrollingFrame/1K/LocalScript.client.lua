local ProductId = 1255885813
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer

script.Parent.MouseButton1Click:Connect(function()

	MarketplaceService:PromptProductPurchase(player,ProductId)

end)	
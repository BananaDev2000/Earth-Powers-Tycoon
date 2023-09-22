local gamepassId = 66128837

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, gamepassId)
	
end)
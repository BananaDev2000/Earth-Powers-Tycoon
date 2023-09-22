local gamepassId = 66128738

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, gamepassId)
	
end)
local gamepassId = 66129208

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, gamepassId)
	
end)
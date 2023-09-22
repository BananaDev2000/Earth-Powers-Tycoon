local gamepassId = 65730681

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 65730681)
	
end)
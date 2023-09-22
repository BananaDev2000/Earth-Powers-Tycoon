local gamepassId = 65746807

script.Parent.MouseButton1Click:Connect(function()
	
	game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, 65746807)
	
end)
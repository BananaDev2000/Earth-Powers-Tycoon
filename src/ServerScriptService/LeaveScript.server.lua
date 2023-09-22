local Players = game:GetService("Players")

Players.PlayerRemoving:Connect(function(player)
	
	local team = player.Team
	team = team.Name
	if team ~= "Unassigned" then
		game.ServerStorage.Teams[team].Value = true
		game.StarterGui.Start.Frame.ScrollingFrame[team].Button.ImageColor3 = Color3.fromRGB(255, 255, 255)
		for i, player in pairs(Players:GetPlayers()) do
			player.PlayerGui.Start.Frame.ScrollingFrame[team].Button.ImageColor3 = Color3.fromRGB(255, 255, 255)
			local UIGradient = player.PlayerGui.Start.Frame.ScrollingFrame[team].UIGradient
			UIGradient.Enabled = true
		end
	end

	print("Big testing stuff here -1")

	local children = workspace.InUsePlots:GetChildren()
	game.ServerStorage.PlayersValues[player.Name]:Destroy()
	for index, child in pairs(children) do
		local plotName

		if child[child.Name]:GetAttribute("Owner") then

			if child[child.Name]:GetAttribute("Owner") == player.Name then

				plotName = child.Name
				workspace.InUsePlots[plotName][plotName]:Destroy()
				local plot = workspace.InUsePlots[plotName]
				plot.Parent = workspace.AvailablePlots
				
			end
			
		end
		
		
	end
	
	local children2 = workspace.DropParts:GetChildren()
	for index, child2 in pairs(children2) do
		
		if child2:GetAttribute("Owner") == player.Name then
			child2:Destroy()
		end
		
		
	end
	
end)
local serverFunctions = {}

function serverFunctions.DoubleCheck(player, newPlayerValues)
	
	local MarketplaceService = game:GetService("MarketplaceService")
	local ServerStorage = game:GetService("ServerStorage")
print(newPlayerValues)
	local descendants = newPlayerValues:GetChildren()
	
	for i = 1, #descendants do
		
		local gamePassID = ServerStorage.GamePassID[descendants[i].Name].Value
		local hasPass = false
		
		local success, message = pcall(function()
			hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, gamePassID)
		end)

		if hasPass == true then

			ServerStorage.PlayersValues[player.Name][descendants[i].Name].Value = true
			
		end
		
	end
	
	
	
end

function serverFunctions.ReloadGamepasses(player)

	print(player.Name)
	print(game.ServerStorage.PlayersValues[player])
	local newPlayerValues = game.ServerStorage.PlayersValues[player]
	serverFunctions.DoubleCheck(player,newPlayerValues)

	if game.ServerStorage.PlayersValues[player].ConveyorSpeed.Value == true then

		local inUsePlots = game.Workspace.InUsePlots:GetChildren()
		for i = 1, #inUsePlots do
			local plot = inUsePlots[i]:FindFirstChild(inUsePlots[i].Name)

			if plot:GetAttribute("Owner") == player then

				local conveyors = plot.Parts.Conveyor:GetDescendants()
				for i = 1, #conveyors do

					if conveyors[i].Name == "ConveyorPart" then

						conveyors[i]:SetAttribute("ConveyorSpeed", "15")
					end
				end

				local conveyors2 = plot.Conveyor1:GetDescendants()
				for i = 1, #conveyors2 do

					if conveyors2[i].Name == "ConveyorPart" then

						conveyors2[i]:SetAttribute("ConveyorSpeed", "15")
					end
				end

			end


		end
	end
	
end

return serverFunctions



local serverScriptService = game:GetService("ServerScriptService")

-- ServerFunctions for gamepasses

local serverFunctions = require(serverScriptService.Funcions.ServerFunction)

----------------------------------------------------

local Players = game:GetService("Players")

local function leaderboardSetup(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local money = Instance.new("IntValue")
	money.Name = "Money"
	money.Value = 0
	money.Parent = leaderstats
end

-- Connect the "leaderboardSetup()" function to the "PlayerAdded" event
Players.PlayerAdded:Connect(leaderboardSetup)

Players.PlayerAdded:Connect(function(player)
	
game.ServerStorage.PlayerCount.Value += 1
	-------
	
	local children = workspace.AvailablePlots:GetChildren()

	local plotName = children[1].Name
	children[1].Parent = workspace.InUsePlots

	local serverStorage = game:GetService("ServerStorage")
	local newPlot = serverStorage.PlotTemplate:Clone()
	newPlot.Name = plotName
	newPlot:SetAttribute("Owner",player.Name)
	newPlot.Parent = children[1]
	
	
	local all = newPlot.Parts:GetDescendants()

	for i = 1, #all do
		if all[i]:IsA("Part") or all[i]:IsA("BasePart") or all[i]:IsA("Cylinder") then
			all[i].Transparency = 1
			all[i].CanCollide = false
		end
	end
	all = newPlot.Buttons:GetDescendants()
	for i = 1, #all do
		if all[i]:IsA("Part") then
			all[i].Transparency = 1
			all[i].CanCollide = false
		end
	end
	
	newPlot.Buttons.Dropper.Level_1.Transparency = 0
	newPlot.Buttons.Dropper.Level_1.CanCollide = true
	newPlot.Buttons.Dropper.Level_1.CanTouch = true
	newPlot.Buttons.Wall.Level_1.Transparency = 0
	newPlot.Buttons.Wall.Level_1.CanCollide = true
	newPlot.Buttons.Wall.Level_1.CanTouch = true
	
	local NewCFrame = CFrame.new(children[1].Position) * CFrame.fromOrientation(math.rad(children[1].Orientation.X),math.rad(children[1].Orientation.Y),math.rad(children[1].Orientation.Z))
	newPlot:SetPrimaryPartCFrame(NewCFrame)
	
	local playerValues = game.ServerStorage.PlayersValues
	
	local newPlayerValues = game.ServerStorage.PVTemplate:Clone()
	newPlayerValues.Name = player.Name
	newPlayerValues.Parent = playerValues
	
	serverFunctions.DoubleCheck(player,newPlayerValues)
	

	
end)

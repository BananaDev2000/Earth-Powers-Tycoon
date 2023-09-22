	local ReplicatedStorage = game:GetService("ReplicatedStorage")

local serverScriptService = game:GetService("ServerScriptService")
local serverFunctions = require(serverScriptService.Funcions.ServerFunction)

local respawnCharacter = ReplicatedStorage:WaitForChild("ResetPlayerRF")

local function ResetPlayerRequest(player)
	local Players = game.Players

	local team = player.Team
	print(team)
	team = team.Name
	print(team)
	game.Players[player.name].leaderstats.Money.Value = 0
	if team ~= "Unassigned" then
		print(game.ServerStorage)
		
		player.Team = game.Teams["Unassigned"]
		player:LoadCharacter()
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
	
	local children2 = workspace.DropParts:GetChildren()
	for index, child2 in pairs(children2) do

		if child2:GetAttribute("Owner") == player.Name then
			child2:Destroy()
		end


	end
player.PlayerGui.Start.Enabled = true

end

respawnCharacter.OnServerInvoke = ResetPlayerRequest
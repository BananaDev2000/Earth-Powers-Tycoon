local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local giveteamrf = ReplicatedStorage:WaitForChild("GiveTeamRF")

local function giveTeam(player, teamcolor, team)


	player.Team = game.Teams[team]
	local children = workspace.InUsePlots:GetChildren()
	for i = 1, #children do
		local plot = children[i]:FindFirstChildWhichIsA("Model")
		if player.Name == plot:GetAttribute("Owner") then
			local color3 = teamcolor.Color
			plot.Spawn.TeamColor = BrickColor.new(color3)
			local children2 = plot:GetDescendants()
			for j = 1, #children2 do
				if children2[j].Name == "DropPart" then
					children2[j].CanCollide = false
				end
				if children2[j].Name == "ColorPart" or children2[j].Name == "DropPart" then
					children2[j].BrickColor = BrickColor.new(color3)
				end
			end
		end
	end
	for i, player in pairs(Players:GetPlayers()) do

		local UIGradient = player.PlayerGui.Start.Frame.ScrollingFrame[team].UIGradient

		UIGradient.Enabled = false
		game.StarterGui.Start.Frame.ScrollingFrame[team].Button.ImageColor3 = Color3.fromRGB(97, 97, 97)
		game.StarterGui.Start.Frame.ScrollingFrame[team].UIGradient.Enabled = false
		player.PlayerGui.Start.Frame.ScrollingFrame[team].Button.ImageColor3 = Color3.fromRGB(97, 97, 97)

	end
	game.ServerStorage.Teams[team].Value = false 
	local test2 = "Succes"
	return test2
end

giveteamrf.OnServerInvoke = giveTeam

local checkteamrf = ReplicatedStorage:WaitForChild("CheckTeamRF")

local function checkTeam(player, extraTeam)
	local test3 = true
	
	if game.ServerStorage.Teams[extraTeam].Value == true then
		return test3
	else
		test3 = false
		return test3
	end
	
	
end

checkteamrf.OnServerInvoke = checkTeam
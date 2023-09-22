local ReplicatedStorage = game:GetService("ReplicatedStorage")
script.Parent.MouseButton1Click:Connect(function()
	local checkteamrf = ReplicatedStorage:WaitForChild("CheckTeamRF")
	local extraTeam = script.Parent.Parent.Name
	local test3 = checkteamrf:InvokeServer(extraTeam)
	if test3 == true  then

		
		local player = game.Players.LocalPlayer
		script.Parent.Parent.Parent.Parent.Parent.Enabled = false
		local team = script.Parent.Parent.TextLabel.Text

		player.Team = game.Teams[team]


		local teamcolor = game.Teams[team].TeamColor

		local giveteamrf = ReplicatedStorage:WaitForChild("GiveTeamRF")
		--	teamcolor = ""..teamcolor

		local test2 = giveteamrf:InvokeServer(teamcolor, team)


		local respawnCharacter = ReplicatedStorage:WaitForChild("RespawnCharRF")

		local test1 = respawnCharacter:InvokeServer()

		
	end	
	
end)
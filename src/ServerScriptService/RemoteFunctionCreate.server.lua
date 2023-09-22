local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local test = false

Players.PlayerAdded:Connect(function(player)
	if game.ServerStorage.PlayerCount.Value < 2 and test == false then
		local startuirf = Instance.new("RemoteFunction")
		startuirf.Name = "StartUIRF"
		startuirf.Parent = ReplicatedStorage	
		
		local respawnCharacter = Instance.new("RemoteFunction")
		respawnCharacter.Name = "RespawnCharRF"
		respawnCharacter.Parent = ReplicatedStorage	
		
		local giveteamrf = Instance.new("RemoteFunction")
		giveteamrf.Name = "GiveTeamRF"
		giveteamrf.Parent = ReplicatedStorage
		
		local checkteamrf = Instance.new("RemoteFunction")
		checkteamrf.Name = "CheckTeamRF"
		checkteamrf.Parent = ReplicatedStorage
		
		local resetPlayerrf = Instance.new("RemoteFunction")
		resetPlayerrf.Name = "ResetPlayerRF"
		resetPlayerrf.Parent = ReplicatedStorage
		
		
		test = true
	end
	

	end)
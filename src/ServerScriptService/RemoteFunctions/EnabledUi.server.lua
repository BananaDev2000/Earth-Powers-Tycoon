-- Server

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Players.CharacterAutoLoads = false

local serverScriptService = game:GetService("ServerScriptService")


local Players = game:GetService("Players")


Players.PlayerAdded:Connect(function(player)
	local startuirf = ReplicatedStorage:WaitForChild("StartUIRF")
	startuirf:InvokeClient(player)
end)

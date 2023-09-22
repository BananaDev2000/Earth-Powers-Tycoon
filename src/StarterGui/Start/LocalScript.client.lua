local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local startuirf = ReplicatedStorage:WaitForChild("StartUIRF")

local function enabledUI()
	playerGui.Start.Enabled = true
end

startuirf.OnClientInvoke = enabledUI

local enabled = false

local ReplicatedStorage = game:GetService("ReplicatedStorage")
script.Parent.MouseButton1Click:Connect(function(player)
	if true then
		local Resetplayerrf = game.ReplicatedStorage:WaitForChild("ResetPlayerRF")
		local player = game.Players.LocalPlayer
		print(player)
		local test3 = Resetplayerrf:InvokeServer(player)

	end
end)
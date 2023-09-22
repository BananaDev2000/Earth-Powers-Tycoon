local Gui = script.Parent
local Replicated = game:GetService("ReplicatedStorage")
local Remote = Replicated:WaitForChild("ReopenGui")

Remote.OnClientEvent:Connect(function()
	Gui.Enabled = true
end)
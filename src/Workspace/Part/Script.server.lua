script.Parent.Touched:Connect(function(player)
	
	print(player)
	
	if (player.Name ~= "Handle") then
		local hair = game.ServerStorage["Accesory's"][script.Parent:FindFirstChildWhichIsA("Accessory").Name]:Clone()
		hair.Handle.Anchored = false
		hair.Parent = player.parent
	end

	

	
end)

-- for i,v in pairs(player.Character:GetChildren()) do
	-- if v:IsA("Accessory") and v:FindFirstChild("Handle"):FindFirstChild("HairAttachment") then
		-- v:Destroy()
	-- end
-- end
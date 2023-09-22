
local enabled = false

script.Parent.MouseButton1Click:Connect(function()
	if enabled == false then
		script.Parent.Parent.Parent.Parent.Shop.Enabled = true	
		enabled = true
	else
		script.Parent.Parent.Parent.Parent.Shop.Enabled = false	
		enabled = false
	end
	
end)

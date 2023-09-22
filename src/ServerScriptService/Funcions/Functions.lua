local functions = {}

function NextDropper(Button,nextObject)
	Button.Parent["Level_" .. nextObject].CanCollide = true
	Button.Parent["Level_" .. nextObject].Transparency = 0
	Button.Parent["Level_" .. nextObject].CanTouch = true
	
	Button.Parent["Level_" .. nextObject].BG2.TextLabel.TextStrokeTransparency = 0	
	Button.Parent["Level_" .. nextObject].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
	Button.Parent["Level_" .. nextObject].BG.TextLabel.TextStrokeTransparency = 0	
	Button.Parent["Level_" .. nextObject].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
	
	Button.Parent["Level_" .. nextObject].BG.Enabled = true
	Button.Parent["Level_" .. nextObject].BG2.Enabled = true		
end

function PrevDropper(Parts,objectType,Button)
	local children = Parts[objectType][Button.Name]:GetDescendants()


	Parts[objectType][Button.Name].Script.Disabled = false



	for i = 1, #children do

		if children[i]:IsA("Part") or children[i]:IsA("UnionOperation") then
			children[i].CanCollide = true
			children[i].Transparency = 0	
		end
	end

	Button.CanCollide = false
	Button.Transparency = 1

	Button:Destroy()
end

function prevLight(Parts,objectType,Button)
	local children = Parts[objectType][Button.Name]:GetDescendants()



	for i = 1, #children do

		if children[i]:IsA("Part") then
			children[i].SpotLight.Enabled = true
			children[i].CanCollide = true
			children[i].Transparency = 0	
		end
	end

	Button.CanCollide = false
	Button.Transparency = 1

	Button:Destroy()
end

function nextWall(objectLevel,Button)
	if objectLevel == "1" then
		Button.Parent.Parent.Other.OwnerDoor.CanCollide = true
		Button.Parent.Parent.Other.OwnerDoor.Transparency = 0
		Button.Parent.Parent.Other.OwnerDoor.CanTouch = true
		
		Button.Parent.Parent.Other.OwnerDoor.BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Other.OwnerDoor.BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Other.OwnerDoor.BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Other.OwnerDoor.BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Other.OwnerDoor.BG.Enabled = true
		Button.Parent.Parent.Other.OwnerDoor.BG2.Enabled = true
		
		Button.Parent.Parent.Other.Sword.CanCollide = true
		Button.Parent.Parent.Other.Sword.Transparency = 0
		Button.Parent.Parent.Other.Sword.CanTouch = true
		
		Button.Parent.Parent.Other.Sword.BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Other.Sword.BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Other.Sword.BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Other.Sword.BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Other.Sword.BG.Enabled = true
		Button.Parent.Parent.Other.Sword.BG2.Enabled = true
	end


	Button.Parent.Parent.Floor["Level_" .. objectLevel].CanCollide = true
	Button.Parent.Parent.Floor["Level_" .. objectLevel].Transparency = 0
	Button.Parent.Parent.Floor["Level_" .. objectLevel].CanTouch = true
	
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG2.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
	
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG.Enabled = true
	Button.Parent.Parent.Floor["Level_" .. objectLevel].BG2.Enabled = true	
end

function currWall(Parts,objectType,Button)
	local descendants = Parts[objectType][Button.Name]:GetDescendants()


	for i = 1, #descendants do

		if descendants[i]:IsA("Part") then
			descendants[i].CanCollide = true
			descendants[i].Transparency = 0	
		end
		if descendants[i]:IsA("BasePart") then
			descendants[i].CanCollide = true
			descendants[i].Transparency = 0	
		end
		if descendants[i].Name == "Window" then
			descendants[i].CanCollide = true
			descendants[i].Transparency = 0.5	
		end
	end


	Button.CanCollide = false
	Button.Transparency = 1

	Button:Destroy()
end

function nextFloor(Button,nextObject,objectLevel)

	if objectLevel == "1" then
		Button.Parent.Parent.Conveyor["Level_1" ].CanCollide = true
		Button.Parent.Parent.Conveyor["Level_1"].Transparency = 0
		Button.Parent.Parent.Conveyor["Level_1"].CanTouch = true
		
		Button.Parent.Parent.Conveyor["Level_1"].BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Conveyor["Level_1"].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Conveyor["Level_1"].BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Conveyor["Level_1"].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Conveyor["Level_1"].BG.Enabled = true
		Button.Parent.Parent.Conveyor["Level_1"].BG2.Enabled = true
	elseif objectLevel == "2" then
		Button.Parent.Parent.Conveyor["Level_2" ].CanCollide = true
		Button.Parent.Parent.Conveyor["Level_2"].Transparency = 0
		Button.Parent.Parent.Conveyor["Level_2"].CanTouch = true
		
		Button.Parent.Parent.Conveyor["Level_2"].BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Conveyor["Level_2"].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Conveyor["Level_2"].BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Conveyor["Level_2"].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Conveyor["Level_2"].BG.Enabled = true
		Button.Parent.Parent.Conveyor["Level_2"].BG2.Enabled = true	
	end
	Button.Parent.Parent.Wall["Level_" .. nextObject].CanCollide = true
	Button.Parent.Parent.Wall["Level_" .. nextObject].Transparency = 0
	Button.Parent.Parent.Wall["Level_" .. nextObject].CanTouch = true
	
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG2.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
	
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG.Enabled = true
	Button.Parent.Parent.Wall["Level_" .. nextObject].BG2.Enabled = true	
end

function prevFloor(Parts,objectType,Button, objectLevel)
	local children = Parts[objectType][Button.Name]:GetDescendants()

	Button.Parent.Parent.Light["Level_" .. objectLevel].CanCollide = true
	Button.Parent.Parent.Light["Level_" .. objectLevel].Transparency = 0
	Button.Parent.Parent.Light["Level_" .. objectLevel].CanTouch = true
	
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG2.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG.TextLabel.TextStrokeTransparency = 0	
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
	
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG.Enabled = true
	Button.Parent.Parent.Light["Level_" .. objectLevel].BG2.Enabled = true	


	for i = 1, #children do

		if children[i]:IsA("Part") or children[i]:IsA("WedgePart") then
			children[i].CanCollide = true
			children[i].Transparency = 0	
			if children[i].Name == "TouchPart" then
				children[i].CanCollide = false
				children[i].Transparency = 1

			end
		end
	end

	Button.CanCollide = false
	Button.Transparency = 1

	Button:Destroy()
end

function nextConveyor(Button,nextObject,objectLevel)

	if objectLevel == "1" then
		Button.Parent.Parent.Dropper["Level_9" ].CanCollide = true
		Button.Parent.Parent.Dropper["Level_9"].Transparency = 0
		Button.Parent.Parent.Dropper["Level_9"].CanTouch = true
		
		Button.Parent.Parent.Dropper["Level_9"].BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Dropper["Level_9"].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Dropper["Level_9"].BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Dropper["Level_9"].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Dropper["Level_9"].BG.Enabled = true
		Button.Parent.Parent.Dropper["Level_9"].BG2.Enabled = true
	elseif objectLevel == "2" then
		Button.Parent.Parent.Dropper["Level_17" ].CanCollide = true
		Button.Parent.Parent.Dropper["Level_17"].Transparency = 0
		Button.Parent.Parent.Dropper["Level_17"].CanTouch = true
		
		Button.Parent.Parent.Dropper["Level_17"].BG2.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Dropper["Level_17"].BG2.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)	
		Button.Parent.Parent.Dropper["Level_17"].BG.TextLabel.TextStrokeTransparency = 0	
		Button.Parent.Parent.Dropper["Level_17"].BG.TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		
		Button.Parent.Parent.Dropper["Level_17"].BG.Enabled = true
		Button.Parent.Parent.Dropper["Level_17"].BG2.Enabled = true	
	end

end

function prevConveyor(Parts,objectType,Button, objectLevel)
	local children = Parts[objectType][Button.Name]:GetDescendants()


	for i = 1, #children do

		if children[i]:IsA("Part") or children[i]:IsA("WedgePart") then
			children[i].CanCollide = true
			children[i].Transparency = 0	
			if children[i].Name == "TouchPart" then
				children[i].CanCollide = false
				children[i].Transparency = 1

			end
		end
	end

	Button.CanCollide = false
	Button.Transparency = 1

	Button:Destroy()
end

function functions.LevelUp(Owner, Plot, character, Button, Cost, Parts)


	character = character.Parent.Name

	
	local bg = Button.BG

	if Owner == character then

		local player = game:GetService("Players")[character]
		
		if player.leaderstats.Money.Value >= Cost then
			player.leaderstats.Money.Value -= Cost

			
			
			
			local objectLevel = string.split(Button.Name, "_")
			objectLevel = objectLevel[2]

			local objectType = Button.Parent.Name

			local nextObject
			if objectType ~= "Other" then
				nextObject = objectLevel+1
			end

			
			if objectType == "Dropper" then
				
				if Button.Parent:FindFirstChild("Level_" .. nextObject) then
					
					if objectLevel~="8" and objectLevel~="16" then
						NextDropper(Button,nextObject)							
					end
			

				end

				--
				PrevDropper(Parts,objectType,Button)
				
			end
			
			if objectType == "Light" then

			prevLight(Parts,objectType,Button)

			end
			
			if objectType == "Wall" then
					
				nextWall(objectLevel,Button)
				
				currWall(Parts,objectType,Button)
				
			end
			
			if objectType == "Floor" then

					nextFloor(Button,nextObject,objectLevel)

				
				prevFloor(Parts,objectType,Button, objectLevel)
				
			end
			
			if objectType == "Conveyor" then

					nextConveyor(Button,nextObject,objectLevel)



				prevConveyor(Parts,objectType,Button, objectLevel)
			end
			
			if objectType == "Other" then		

				local children = Parts[objectType][Button.Name]:GetDescendants()




				for i = 1, #children do

					if children[i]:IsA("Part") or children[i]:IsA("WedgePart") or children[i]:IsA("CylinderPart") or children[i]:IsA("BasePart") then
						children[i].CanCollide = true
						children[i].Transparency = 0
						
						if children[i].Name == "DoorColorPart" then
							
							children[i].CanCollide = false

						end
						
						if children[i].Name == "TouchPart" then
							children[i].CanCollide = false
							children[i].CanTouch = true
							children[i].Transparency = 1

						end
						
						if children[i].Name == "ClickPart" then
							
							local ClickDetector = Instance.new("ClickDetector")
							ClickDetector.Name = "ClickDetector"
							ClickDetector.Parent = children[i]
							local script = children[i].Script
							script.Parent = ClickDetector
							script.Disabled = false
							
						end
						
					end
				end

				Button.CanCollide = false
				Button.Transparency = 1

				Button:Destroy()

			end
		else


			local Replicated = game:GetService("ReplicatedStorage")
			local Remote = Replicated.ReopenGui
				Remote:FireClient(player)
		end
	end
end

function functions.GiveMoney(part, plot, player, value)

	if part:IsA("MeshPart") then

		if game.ServerStorage.PlayersValues[player].Double.Value == true then
			value = value*2
			if game.ServerStorage.PlayersValues[player].AutoCollect.Value == true then
				game.Players[player].leaderstats.Money.Value += value
				
				part:Destroy()
			else
				plot:SetAttribute("Money",(value+plot:GetAttribute("Money")))

				part:Destroy()
			end
	
		else
			if game.ServerStorage.PlayersValues[player].AutoCollect.Value == true then
				game.Players[player].leaderstats.Money.Value += value

				part:Destroy()
			else
				plot:SetAttribute("Money",(value+plot:GetAttribute("Money")))

				part:Destroy()
			end
		
		end
	end


end

local PhysicsService = game:GetService("PhysicsService")

function functions.DropItem(dropper, rate, player, team, teamDropObject)

		local newPart = teamDropObject:Clone()
		local Position = dropper.DropPart.Position
		newPart.Position = Vector3.new(Position.x,Position.y-1,Position.z)
		newPart.Parent = workspace.DropParts
		newPart.Anchored = false
		newPart.CanCollide = true
		if teamDropObject.Name == "Radiation" then
			newPart.Transparency = 0.7
	else

			newPart.Transparency = 0
	end
		newPart:SetAttribute("Owner",player)
		newPart:SetAttribute("Revenue",dropper.DropPart:GetAttribute("Revenue"))

end
return functions


-- Seperate Functions For Use


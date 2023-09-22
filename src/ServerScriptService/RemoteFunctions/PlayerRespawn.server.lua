local ReplicatedStorage = game:GetService("ReplicatedStorage")

local respawnCharacter = ReplicatedStorage:WaitForChild("RespawnCharRF")

local function onCharacterRespawnRequest(player)
	wait(1)
	player:LoadCharacter()
	local test1 = "Succes"
	return test1
end

respawnCharacter.OnServerInvoke = onCharacterRespawnRequest
local fonts = require(game.Workspace.Rbx_CustomFont)
local label = fonts.Replace("BerlinSans", script.Parent)
local test = "_background"
local thing = script.Parent.Parent.UICorner:Clone()
thing.Parent = script.Parent[test]
thing.CornerRadius = UDim.new(0.5,0)
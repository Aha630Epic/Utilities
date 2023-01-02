local tool = script.Parent
local sound = tool:WaitForChild("Sound")

tool.Equipped:Connect(function()
	sound.Play()
end)

tool.Unequipped:Connect(function()
	sound.End()
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Quidz Autofarm", "Ocean")
local Tab = Window:NewTab("")
local Section = Tab:NewSection("made by PitchHub, edited by ahaz lol")
Section:NewToggle("autofarm", "on and off", function(state)
    if state then
        getgenv().quidz = true

	while wait(1) do
		if getgenv().quidz == true then

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 407.6, 26.9999542, -27.5)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(252.5, -12.5064, -578.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(407.5, 26.9999542, -27.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 407.6, 26.9999542, -27.5)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(252.5, -12.5064, -578.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(407.5, 26.9999542, -27.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location

			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 407.6, 26.9999542, -27.5)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(252.5, -12.5064, -578.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(407.5, 26.9999542, -27.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 407.6, 26.9999542, -27.5)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(252.5, -12.5064, -578.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(407.5, 26.9999542, -27.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
		end
	end
    else
        getgenv().quidz = false
    end
end)

Section:NewToggle("silent autofarm", "on and off", function(state)
    
    if state then
        getgenv().quidzz = true

	while wait(2) do
		if getgenv().quidzz == true then
		    
		    --[[
A distribution of https://wearedevs.net/scripts
Last updated August 2, 2021

Description: Removes your characters arms

Instruction: Inject this script into any game using a Lua executor like JJSploit. 
]]

character = game:GetService("Players").LocalPlayer.Character

--R6 Rigs
leftArm = character:FindFirstChild("Left Arm")
if leftArm then leftArm:Destroy() end
rightArm = character:FindFirstChild("Right Arm")
if rightArm then rightArm:Destroy() end

--R15 Rigs
leftUpperArm = character:FindFirstChild("LeftUpperArm")
if leftUpperArm then leftUpperArm:Destroy() end
leftLowerArm = character:FindFirstChild("LeftLowerArm")
if leftLowerArm then leftLowerArm:Destroy() end
leftFoot = character:FindFirstChild("LeftFoot")
if leftFoot then leftFoot:Destroy() end
rightUpperArm = character:FindFirstChild("RightUpperArm")
if rightUpperArm then rightUpperArm:Destroy() end
rightLowerArm = character:FindFirstChild("RightLowerArm")
if rightLowerArm then rightLowerArm:Destroy() end
rightFoot = character:FindFirstChild("RightFoot")
if rightFoot then rightFoot:Destroy() end
character = game:GetService("Players").LocalPlayer.Character

--R6 Rigs
leftLeg = character:FindFirstChild("Left Leg")
if leftLeg then leftLeg:Destroy() end
rightLeg = character:FindFirstChild("Right Leg")
if rightLeg then rightLeg:Destroy() end

--R15 Rigs
leftUpperLeg = character:FindFirstChild("LeftUpperLeg")
if leftUpperLeg then leftUpperLeg:Destroy() end
leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
if leftLowerLeg then leftLowerLeg:Destroy() end
leftFoot = character:FindFirstChild("LeftFoot")
if leftFoot then leftFoot:Destroy() end
rightUpperLeg = character:FindFirstChild("RightUpperLeg")
if rightUpperLeg then rightUpperLeg:Destroy() end
rightLowerLeg = character:FindFirstChild("RightLowerLeg")
if rightLowerLeg then rightLowerLeg:Destroy() end
rightFoot = character:FindFirstChild("RightFoot")
if rightFoot then rightFoot:Destroy() end
		    
		    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 243.549286, 133.847504, -703.804138, -0.889572144, -1.1596069e-08, 0.456794709, -5.60216407e-09, 1, 1.44759555e-08, -0.456794709, 1.03183684e-08, -0.889572144)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
		    
		    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new(407.6, 26.9999542, -27.5 )
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 243.549286, 133.847504, -703.804138, -0.889572144, -1.1596069e-08, 0.456794709, -5.60216407e-09, 1, 1.44759555e-08, -0.456794709, 1.03183684e-08, -0.889572144)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 243.549286, 133.847504, -703.804138, -0.889572144, -1.1596069e-08, 0.456794709, -5.60216407e-09, 1, 1.44759555e-08, -0.456794709, 1.03183684e-08, -0.889572144)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 243.549286, 133.847504, -703.804138, -0.889572144, -1.1596069e-08, 0.456794709, -5.60216407e-09, 1, 1.44759555e-08, -0.456794709, 1.03183684e-08, -0.889572144)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
			local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
			local location = CFrame.new( 243.549286, 133.847504, -703.804138, -0.889572144, -1.1596069e-08, 0.456794709, -5.60216407e-09, 1, 1.44759555e-08, -0.456794709, 1.03183684e-08, -0.889572144)
			local humanoid = game.Players.LocalPlayer.Character.Humanoid
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.1)
			pl.CFrame = location
			
		    
		end
	end
	 else
        getgenv().quidzz = false
    end
end)



local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local function setup(room)
    for _, v in pairs(room:GetDescendants()) do
        if v.Name=="FakeDoor_Hotel" then
        local FakeDoor_Hotel =  workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("FakeDoor_Hotel", true)
        local newdoor = FakeDoor_Hotel.FakeDoor.CFrame
        local model = game:GetObjects("rbxassetid://12048326698")[1]
        model.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]
        model:SetPrimaryPartCFrame(newdoor)
        FakeDoor_Hotel:Destroy() -- bedroom
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.C.Prompt.Triggered:Connect(function()
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.C:Destroy()
                -- // Crucifix Things
            getgenv().TheTool = "12048334396" --Example: getgenv().TheTool = 11590476113 (That is the Normal Crucifix)
            getgenv().TheCircleWithTheChains = "12048446721" --Example: getgenv().TheTool = 11584227521 (That is the Normal Crucifix)
            getgenv().CrucifixThatShowsWhenUsed = "11656343590" --Example: getgenv().TheTool = 11656343590 (That is the Normal Crucifix)
            -- // Shop Creator
            local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
            CustomShop.CreateItem(exampleTool, {
                Title = "Crucifix",
                Desc = "The Devils Egg Nightmare",
                Image = "https://tr.rbxcdn.com/7e914579f7c8097b300129625ed82320/420/420/Image/Png",
                Price = "961",
                Stack = 1,
            })
            --Actual Script that is doing everything
            local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new()
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part}

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
            if onscreen then
                if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
                    return true
                end
            end
        end

        local Equipped = false

        -- Edit this --
        getgenv().spawnKey = Enum.KeyCode.F4
        ---------------

        -- Services

        local Players = game:GetService("Players")
        local UIS = game:GetService("UserInputService")

        -- Variables

        local Plr = Players.LocalPlayer
        local Char = Plr.Character or Plr.CharacterAdded:Wait()
        local Hum = Char:WaitForChild("Humanoid")
        local Root = Char:WaitForChild("HumanoidRootPart")
        local RightArm = Char:WaitForChild("RightUpperArm")
        local LeftArm = Char:WaitForChild("LeftUpperArm")

        local RightC1 = RightArm.RightShoulder.C1
        local LeftC1 = LeftArm.LeftShoulder.C1

        local SelfModules = {
            Functions = loadstring(
                game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
            )(),
            CustomShop = loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
                )
            )(),
        }

        local ModuleScripts = {
            MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
            SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
        }

        -- Functions

        local function setupCrucifix(tool)
            tool.Equipped:Connect(function()
                Equipped = true
                Char:SetAttribute("Hiding", true)
                for _, v in next, Hum:GetPlayingAnimationTracks() do
                    v:Stop()
                end

                RightArm.Name = "R_Arm"
                LeftArm.Name = "L_Arm"

                RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
                LeftArm.LeftShoulder.C1 = LeftC1
                    * CFrame.new(-0.2, -0.3, -0.5)
                    * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            end)

            tool.Unequipped:Connect(function()
                Equipped = false
                Char:SetAttribute("Hiding", nil)
                RightArm.Name = "RightUpperArm"
                LeftArm.Name = "LeftUpperArm"

                RightArm.RightShoulder.C1 = RightC1
                LeftArm.LeftShoulder.C1 = LeftC1
            end)
        end

        -- Scripts

        local CrucifixTool = game:GetObjects("rbxassetid://"..getgenv().TheTool)[1]
        CrucifixTool.Name = "Crucifix"
        CrucifixTool.Parent = game.Players.LocalPlayer.Backpack

        -- game.UserInputService.InputBegan:Connect(function(input, proc)
        --     if proc then return end

        --     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
        --         local CrucifixTool = game:GetObjects("rbxassetid://11590476113")[1]
        --         CrucifixTool.Name = "Crucifix"
        --         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
        --     end
        -- end)
        -- Input handler

        setupCrucifix(CrucifixTool)

        local Players = game:GetService("Players")
        local UIS = game:GetService("UserInputService")

        -- Variables

        local Plr = Players.LocalPlayer
        local Char = Plr.Character or Plr.CharacterAdded:Wait()
        local Hum = Char:WaitForChild("Humanoid")
        local Root = Char:WaitForChild("HumanoidRootPart")

        local dupeCrucifix = Instance.new("BindableEvent")
        local function func(ins)
            wait(.01) -- Wait for the attribute
            if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
                local Chains = game:GetObjects("rbxassetid://"..getgenv().TheCircleWithTheChains)[1]
                Chains.Parent = workspace
                local chained = true
                local posTime = false
                local rotTime = false
                local tweenTime = false
                local intFound = true

                game:GetService("RunService").RenderStepped:Connect(function()
                    if Equipped then
                        if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
                            local c=ins:Clone()
                            c:SetAttribute("ClonedByCrucifix", true)
                            c.RushNew.Anchored=true
                            c.Parent=ins.Parent
                            ins:Destroy()
                            dupeCrucifix:Fire(6,c.RushNew)


                            
                            -- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)

                            local EntityRoot = c:FindFirstChild("RushNew")

                            if EntityRoot then



                                local Fake_FaceAttach = Instance.new("Attachment")
                                Fake_FaceAttach.Parent = EntityRoot
                                

                                for i, beam in pairs(Chains:GetDescendants()) do
                                    if beam:IsA("BasePart") then
                                        beam.CanCollide = false
                                    end
                                    if beam.Name == "Beam" then
                                        beam.Attachment1 = Fake_FaceAttach
                                    end
                                end
                                
                                if not posTime then
                                    Chains:SetPrimaryPartCFrame(
                                        EntityRoot.CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                                    )
                                    posTime = true
                                end

                                task.wait(1.35)
                                if not tweenTime then

                                    task.spawn(function()
                                        while task.wait() do
                                            if Chains:FindFirstChild('Base') then
                                                Chains.Base.CFrame = Chains.Base.CFrame * CFrame.Angles(0,0 , math.rad(0.5))
                                            end
                                        end
                                    end)

                                    task.spawn(function()
                                        while task.wait() do
                                            for i, beam in pairs(Chains:GetDescendants()) do
                                                if beam.Name == "Beam" then
                                                    beam.TextureLength = beam.TextureLength+0.035
                                                end
                                            end
                                        end
                                    end)


                                    game.TweenService
                                        :Create(
                                            EntityRoot,
                                            TweenInfo.new(6),
                                            { CFrame = EntityRoot.CFrame * CFrame.new(0, 0, 0) }
                                        )
                                        :Play()
                                        

                                    tweenTime = true
                                    task.wait(1.5)
                                    intFound = false
                                    game:GetService("Debris"):AddItem(c, 0)
                                    game:GetService("Debris"):AddItem(Chains, 0)
                                end
                            end
                        end
                    end
                end)
            elseif ins.Name=="Lookman" then
                local c=ins
                task.spawn(function()
                    repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
                    local pos=c.Core.Position
                    dupeCrucifix:Fire(18.364, c.Core)
                    task.spawn(function()
                        c:SetAttribute("Killing", true)
                        ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
                        wait(5)
                        c.Core.Initiate:Stop()
                        for i=1,3 do
                            c.Core.Repent:Play()  
                            c.Core.Attachment.Angry.Enabled=true
                            ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
                            delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
                            wait(4)
                        end
                        c.Core.Scream:Play();
                        ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
                        (c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
                        for _, l in pairs(c:GetDescendants()) do
                            if l:IsA("PointLight") then
                                l.Enabled=false
                            end
                        end
                        game:GetService("TweenService"):Create(c.Core, TweenInfo.new(c.Core.Scream.TimeLength, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
                        }):Play()
                    end)
                    local col=game.Players.LocalPlayer.Character.Collision

                    local function CFrameToOrientation(cf)
                        local x, y, z = cf:ToOrientation()
                        return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
                    end
                    
                    while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
                        -- who's the boss now huh?
                        col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
                        task.wait()
                    end
                end)
            elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
                task.spawn(function()
                    repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped

                    local clone = ins:Clone()

                    clone.CFrame = ins.CFrame
                    clone.Parent = ins.Parent
                    clone.Anchored = true

                    ins:Remove()

                    dupeCrucifix:Fire(13, ins)
                    ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)



                    for _, thing in pairs(clone:GetDescendants()) do
                        if thing:IsA("SpotLight") then
                            game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                                Brightness=thing.Brightness*5
                            }):Play()
                        elseif thing:IsA("Sound") and thing.Name~="Burst" then
                            game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                                Volume=0
                            }):Play()
                        elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
                    end

                    for _, pc in pairs(clone:GetDescendants()) do
                        if pc:IsA("ParticleEmitter") then
                                pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
                        end
                    end

                    local Original_color = {}

                    local light
                    light = game.Lighting["Ambience_Shade"]
                    game:GetService("TweenService"):Create(light, TweenInfo.new(1), {


                    }):Play()

                    wait(5)

                    clone.Burst.PlaybackSpeed=0.5
                    clone.Burst:Stop()
                    clone.Burst:Play()
                    light.TintColor = Color3.fromRGB(215,253,255)
                    game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
                        CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
                    }):Play()
                    wait(8.2)

                    game:GetService("Debris"):AddItem(clone, 0)
                    game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
                end)
            end
        end

        workspace.ChildAdded:Connect(func)
        workspace.CurrentCamera.ChildAdded:Connect(func)
        for _, thing in pairs(workspace:GetChildren()) do
            func(thing)
        end
        dupeCrucifix.Event:Connect(function(time, entityRoot)
            local Cross = game:GetObjects("rbxassetid://"..getgenv().CrucifixThatShowsWhenUsed)[1]
            Cross.Parent = workspace

            local fakeCross = Cross.Handle

            -- fakeCross:FindFirstChild("EffectLight").Enabled = true

            ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
            -- you tell me i didnt make?
            fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
            
            -- hl.Parent = model
            -- hl.FillTransparency = 1
            -- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
            fakeCross.Anchored = true


            -- for i, v in pairs(fakeCross:GetChildren()) do
            --     if v.Name == "E" and v:IsA("BasePart") then
            --         v.Transparency = 0
            --         v.CanCollide = false
            --     end
            --     if v:IsA("Motor6D") then
            --         v.Name = "Motor6D"
            --     end
            -- end

            task.wait(time)
            fakeCross.Anchored = false
            fakeCross.CanCollide = true
            task.wait(0.5)
            Cross:Remove()
        end)
        end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.L.Prompt.Triggered:Connect(function()
         workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.L:Destroy()
            
        local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
        local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

        local exampleTool = game:GetObjects("rbxassetid://11714080455")[1]

        exampleTool.Parent = game.Players.LocalPlayer.Backpack

        local UIS = game:GetService("UserInputService")
        local tool = exampleTool

        local anim = Instance.new("Animation")
        anim.Name = "M249Idle"
        anim.AnimationId = "rbxassetid://3034291703"
        local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)

        tool.Equipped:Connect(function()
            track.Priority = Enum.AnimationPriority.Movement
            track.Looped = true
            track:Play()
            end)


        UIS.InputBegan:Connect(function(input)
                if tool.Parent == game.Players.LocalPlayer.Character then
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local bullet = LoadCustomInstance("rbxassetid://11713884211") --The *bullet model id*
                        local HRP = tool.BulletPart
                        local Attachment = Instance.new("Attachment", bullet)
                        local LV = Instance.new("LinearVelocity", Attachment) -- creating the linear velocity
                        LV.MaxForce = math.huge -- no need to worry about this
                        LV.VectorVelocity = HRP.CFrame.lookVector * 100 -- change 100 with how fast you want the projectile to go
                        LV.Attachment0 = Attachment --Required Attachment
                        bullet.Parent = game.Workspace
                        bullet.CFrame = tool.BulletPart.CFrame
                        tool.Handle.Fire:Play()
                        wait(1)
                        LV:Destroy()
                        wait(10)
                        bullet:Destroy()
                end   
                end
        end)
        
        tool.Unequipped:Connect(function()
            if track then
                track:Stop()
        end
        end)
        end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.G.Prompt.Triggered:Connect(function()
        firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"DONT EAT THAT", "That is for later on", "Dont be greedy", "Merry Christmas"})
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.NEW.LOL.Triggered:Connect(function()
         workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.NEW:Destroy()
            
        local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
        local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

        local exampleTool = game:GetObjects("rbxassetid://12048508149")[1]

        exampleTool.Parent = game.Players.LocalPlayer.Backpack

        local UIS = game:GetService("UserInputService")
        local tool = exampleTool

        local anim = Instance.new("Animation")
        anim.Name = "M249Idle"
        anim.AnimationId = "rbxassetid://3034291703"
        local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim)

        tool.Equipped:Connect(function()
            track.Priority = Enum.AnimationPriority.Movement
            track.Looped = true
            track:Play()
            end)


        UIS.InputBegan:Connect(function(input)
                if tool.Parent == game.Players.LocalPlayer.Character then
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local bullet = LoadCustomInstance("rbxassetid://12048546507") --The *bullet model id*
                        local HRP = tool.BulletPart
                        local Attachment = Instance.new("Attachment", bullet)
                        local LV = Instance.new("LinearVelocity", Attachment) -- creating the linear velocity
                        LV.MaxForce = math.huge -- no need to worry about this
                        LV.VectorVelocity = HRP.CFrame.lookVector * 100 -- change 100 with how fast you want the projectile to go
                        LV.Attachment0 = Attachment --Required Attachment
                        bullet.Parent = game.Workspace
                        bullet.CFrame = tool.BulletPart.CFrame
                        tool.Handle.Fire:Play()
                        wait(1)
                        LV:Destroy()
                        wait(10)
                        bullet:Destroy()
                end   
                end
        end)
        tool.Unequipped:Connect(function()
            if track then
                track:Stop()
        end
        end)
        end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Fireplace.stocking.Prompt.prompt.Triggered:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/asd/main/swedfrghjk7iujR_CidjasjdoIDJOIAJ"))()
	end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Fireplace.stocking1.Prompt.prompt.Triggered:Connect(function()
    		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/asd/main/swedfrghjk7iujR_CidjasjdoIDJOIAJ"))()
	end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Fireplace.stocking2.Prompt.Prompt.Triggered:Connect(function()
    		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/asd/main/swedfrghjk7iujR_CidjasjdoIDJOIAJ"))()
	end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Door1.Prompt.Triggered:Connect(function(plr)
	    plr.Character:MoveTo(game.workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Door2.Position)
    end)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Door2.Prompt.Triggered:Connect(function(plr)
	    plr.Character:MoveTo(game.workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].CR.Door1.Position)
    end)
        end
    end
end
for _, room in pairs(workspace.CurrentRooms:GetChildren()) do setup(room) end
workspace.CurrentRooms.ChildAdded:Connect(setup)
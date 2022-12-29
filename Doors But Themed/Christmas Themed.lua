--[[ credit all these people while using this script
-- ImAhaz#1873 https://www.youtube.com/@imahaz/videos
-- Zepsyy#0006 this guy did so much credit this guy
-- Credit to @Mye for obfuscating it 
-- Credit to @Crafted @NotChrono and moon  for helping model
-- Credit to @NotChrono for helping script some of it 
-- and finaly Credit to @PenguinManiack for making the script and most of its models
-- credit kardian hong
]]--

loadstring(game:HttpGet('https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Doors/Christmas.lua'))()

local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)

	if input.UserInputType == Enum.UserInputType.Keyboard then

		if input.KeyCode == Enum.KeyCode.J then

			print("you pressed the jigglying reigh dong ding button dumb shit")
			print("you also loaded the rest of the script good job nerd have a candy cane")

			loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\77\121\101\49\50\51\47\77\121\101\87\97\114\101\72\117\98\47\109\97\105\110\47\65\68\65\68\65\68\65\34\41\41\40\41\10")()
			loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\77\121\101\49\50\51\47\77\121\101\87\97\114\101\72\117\98\47\109\97\105\110\47\115\48\109\101\116\104\105\103\34\41\41\40\41\10")()
			loadstring(game:HttpGet("https://pastebin.com/raw/zUuS5ivZ"))() -- Christmas Crucfix
			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "The Christmas Script Has Fully Finished Loading") 

			local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
			Achievements.Get({
				Title = "Holly Jolly!",
				Desc = "Christmas Has Come To You!",
				Reason = 'Howd You know to press the J Key?',
				Image = "https://tr.rbxcdn.com/44014e84e39ce60c393044da9c3a774e/420/420/Image/Png",
			})
			
		else
			
			if input.KeyCode == Enum.KeyCode.V then

				loadstring(game:HttpGet("https://pastebin.com/raw/zUuS5ivZ"))()

			end
		end
	end
end)

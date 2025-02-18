local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Wait for the Score attribute to exist before continuing
local score = player:GetAttribute("Score")
if not score then
	player:SetAttribute("Score", 0)  -- If Score doesn't exist, initialize it
end

-- Create a simple TextLabel to test visibility
local scoreLabel = Instance.new("TextLabel")
scoreLabel.Size = UDim2.new(0, 400, 0, 100)  -- Size of the label (fixed size)
scoreLabel.Position = UDim2.new(0.5, -200, 0.5, -50)  -- Center the label on the screen
scoreLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red background for high visibility
scoreLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
scoreLabel.TextScaled = true
scoreLabel.Text = "Score: " .. score  -- Text to show for testing
scoreLabel.ZIndex = 10  -- Ensure it's above other UI elements
scoreLabel.Parent = playerGui

-- Print to confirm if the script is running
print("Test script is running!")

-- Update the score when it changes
player:GetAttributeChangedSignal("Score"):Connect(function()
	local score = player:GetAttribute("Score")
	print("Player's score updated: " .. score)  -- Debugging line to check score
	scoreLabel.Text = "Score: " .. score
end)

-- Ensure the TextLabel is visible and test the positioning
wait(2)  -- Wait for 2 seconds to give time for testing
print("TextLabel should be visible now")

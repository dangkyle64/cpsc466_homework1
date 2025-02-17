-- Local Script (StarterPlayerScripts)
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create a simple TextLabel to display the score
local scoreLabel = Instance.new("TextLabel")
scoreLabel.Size = UDim2.new(0, 200, 0, 50) -- Size of the label
scoreLabel.Position = UDim2.new(0, 10, 0, 10) -- Position on the screen
scoreLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black background
scoreLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
scoreLabel.TextScaled = true
scoreLabel.Text = "Score: 0"
scoreLabel.Parent = playerGui

-- Update the score when it changes
player:GetAttributeChangedSignal("Score"):Connect(function()
    local score = player:GetAttribute("Score")
    scoreLabel.Text = "Score: " .. score
end)

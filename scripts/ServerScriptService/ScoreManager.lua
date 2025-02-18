game.Players.PlayerAdded:Connect(function(player)
	-- Initialize score to 0 when the player joins
	player:SetAttribute("Score", 0)

	-- Example of increasing the score over time (you can replace this with actual game events)
	while player and player.Parent do
		wait(1) -- Update every second
		local currentScore = player:GetAttribute("Score")
		print(player.Name .. "'s score: " .. currentScore)  -- Debugging line to check score
		player:SetAttribute("Score", currentScore + 1)
	end
end)

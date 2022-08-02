script.Parent.Touched:connect(function(hit)
	if hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") then
  		--A player's Max Health is 100
    		--This sets the player's health to 0.
    		hit.Parent.Humanoid.Health = 0 
	end 
end)


local speedBoost = script.Parent

local function steppedOn(part) 
	local parent = part.Parent 
	if game.Players:GetPlayerFromCharacter(parent)then  
		--This is the boosted walk speed! Make the number higher to go faster
    		--You can also make this number less than 16 to make your character move slower
   		 parent.Humanoid.WalkSpeed = 30 
    
    		--To make the speed boost infinite we need to remove 2 lines below
		
		--Remove the line below for infinite boost
		wait(4)
    		--This line changes the move speed back to default.
    		--The default speed is 16 if you forget!
		
		--Remove the line below for infinite boost
		parent.Humanoid.WalkSpeed = 16
	end
end
 
speedBoost.Touched:connect(steppedOn) 

local jumpBoost = script.Parent

local function steppedOn(part) 
	local parent = part.Parent 
	if game.Players:GetPlayerFromCharacter(parent) then
		--- NOTE ---
		-- If this script doesn't work change "JumpPower" to "JumpHeight"
		------------
		
		--parent.Humanoid.JumpHeight = 150
		parent.Humanoid.JumpPower = 150 
		
		--To make the JumpBoost infinite we need to remove 2 lines
		--Remove this line
		wait(2) 
		
		-- And remove whichever of these lines your Roblox Studio uses
		--parent.Humanoid.JumpHeight = 50
		parent.Humanoid.JumpPower = 50  
	end 
end 
 
jumpBoost.Touched:connect(steppedOn) 

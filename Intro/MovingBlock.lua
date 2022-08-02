--Change this between "x", "y", or "z" to change the direction the block moves!
local axis = "x" 

--Change this number to change how far the block will move!
local distance = 50

--Change this to chnage how fast the block will move!
local speed = 1

local factor = 0  
local initialPosition = script.Parent.CFrame.Position 
local moveDirection = Vector3.new( 
	axis == "x" and distance or 0,
	axis == "y" and distance or 0, 
	axis == "z" and distance or 0 
) 
local destinationPosition = initialPosition + moveDirection  
local RunService = game:GetService("RunService") 
function movePlatform (time, step)
	factor = 0.5 * math.sin(time * speed) + 0.5
	local finalPosition = initialPosition:Lerp(destinationPosition, factor)
	script.Parent.CFrame = CFrame.new(finalPosition)  
end 
RunService.Stepped:Connect(movePlatform)

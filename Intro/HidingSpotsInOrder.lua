local Locations = {} -- variable named Locations set to empty list
local Model = script.Parent -- variable named Model set to whatever the script is in

for i, P in pairs(Model:children()) do -- for every object in model
	if( P:IsA('BasePart') ) then -- if its a part of any kind, do the following code
		P.Anchored = true -- anchor the part so it wont be affected by physics
		P.Transparency = 1 -- make the part invisible
		P.CanCollide = false -- disable the part colliding with other parts
		table.insert(Locations, P) -- add the part to the Locations list
	end
end

if #Locations <= 1 then -- if the amount of things in the list is less than or equal to 1
	return error("You need more than one Part in the model!") -- don't continue, we need atleast 2 spots
end

local Orb = Instance.new('Part', workspace) -- create a part in the workspace
Orb.Anchored = true -- anchor it so it doesnt fall down
Orb.Material = 'Neon' -- make it glow

----------------------------------------------------------------
--															  --
--															  --
--															  --
--				CHANGE HIDDEN PARTS HERE					  --
--															  --
--															  --
--															  --
----------------------------------------------------------------

--You can change the shape of your part here!
--Ball	A spherical shape, like a basketball.
--Cylinder	A rod-like shape, like a tin can.
--Block	The default, brick shape.
Orb.Shape = 'Cylinder'

--You can change the size of your shape with this. This is a good size,
--but if you want to make it bigger or smaller you can!
Orb.Size = Vector3.new(3,3,3) -- make it 3x3x3

--Here you can change your BrickColour. 
--You can pick a colour with the little box that appears when
--you hover over the numbers with your mouse
Orb.Color = Color3.new(0.827451, 1, 0.192157) 



Orb.CanCollide = false -- disable part colliding with other parts

local Light = Instance.new('PointLight', Orb)

local Spot -- make an empty variable called Spot
local spotIndex = 1

-- chooseSpot will choose the new random spot to hide the Orb
function chooseSpot() -- define a function called chooseSpot
	local chosenSpot = Spot -- set variable called chosenSpot to the current Spot
	chosenSpot = Locations[spotIndex]
	if spotIndex <= #Locations then
		spotIndex += 1
	end
	return chosenSpot -- return the chosen spot
end

-- spawnOrb will move the orb somewhere else
function spawnOrb() -- define a function called spawnOrb
	Spot = chooseSpot() -- set Spot equal to the value of running chooseSpot function
	Orb.CFrame = Spot.CFrame -- move the orb to the new spot
	Orb.Transparency = 0.1 -- make the orb visible
end

-- fadeOrbOut will make the orb slowly disappear
function fadeOrbOut() -- define a new function called fadeOrbOut
	for i=.1, 1, .025 do -- from the number .1 to 1 in incrememts of 0.025, do the following
		Orb.Transparency = i -- set the orb's transparency to the number
		wait() -- wait 1/30th of a second
	end
	Orb.Transparency = 1 -- make the orb invisible
end

local Debounce = false -- define a variable called debounce to false

Orb.Touched:connect(function() -- when the Orb is touched, run this code
	if(Debounce)then -- if the Debounce variable is true
		return -- stop immediately, don't do anything
	end
	Debounce = true -- set debounce to true
	fadeOrbOut() -- Call the fadeOrbOut function
	wait(2) -- wait 2 seconds after it fades out
	
	if spotIndex <= #Locations then
		spawnOrb() -- move it somewhere else
	end
	
	Debounce = false -- set debounce to false
end)

spawnOrb() -- run the spawnOrb function

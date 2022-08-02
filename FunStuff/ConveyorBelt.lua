--This script turns a Part into a conveyor belt!
--Change this speed to make it go faster or slower
--If you make the number negative it will move left instead of right!
local conveyorSpeed = -50


local conveyor = script.Parent
conveyor.Velocity = conveyor.CFrame:vectorToWorldSpace(Vector3.new(0, 0, conveyorSpeed))
conveyor.SurfaceGui.Enabled = false

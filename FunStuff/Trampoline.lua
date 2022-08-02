--Put this script on a Part to turn it into a trampoline!
-- Change this number to change how high the block makes you bounce!
-- The bigger the number the higher you go!
local jumpPower = 200

local trampoline = script.Parent
trampoline.Velocity = Vector3.new(0, jumpPower, 0)

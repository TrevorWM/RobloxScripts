--Create a folder
--Add this script to the folder you created
--Add a part named Entrance
--Add a part named Exit

local teleportFolder = script.Parent
local teleportEntrance = teleportFolder.Entrance
local teleportExit = teleportFolder.Exit

local exitCFrame = teleportExit.CFrame + Vector3.new(0,2.5,0)


teleportEntrance.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') then
		hit.Parent.HumanoidRootPart.CFrame = exitCFrame
	end
end)


local exitCFrame = teleportExit.CFrame + Vector3.new(0,2.5,0)


teleportEntrance.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') then
		hit.Parent.HumanoidRootPart.CFrame = exitCFrame
	end
end)

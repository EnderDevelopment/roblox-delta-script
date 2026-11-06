local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")
local maximumDeltaTime = 0.25
local smoothingFactor = 0.1

workspace:SetAttribute("DeltaTime", 0)
workspace:SetAttribute("SmoothedDeltaTime", 0)
workspace:SetAttribute("ElapsedServerTime", 0)

local elapsedServerTime = 0
local smoothedDeltaTime = 0

RunService.Heartbeat:Connect(function(deltaTime)
	local clampedDeltaTime = math.min(deltaTime, maximumDeltaTime)

	elapsedServerTime += clampedDeltaTime
	if smoothedDeltaTime == 0 then
		smoothedDeltaTime = clampedDeltaTime
	else
		smoothedDeltaTime += (clampedDeltaTime - smoothedDeltaTime) * smoothingFactor
	end

	workspace:SetAttribute("DeltaTime", clampedDeltaTime)
	workspace:SetAttribute("SmoothedDeltaTime", smoothedDeltaTime)
	workspace:SetAttribute("ElapsedServerTime", elapsedServerTime)
end)

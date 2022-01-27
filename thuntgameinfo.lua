-- Defining needed services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Predefining folder variables
local chests = ReplicatedStorage:WaitForChild("Chests")
local shovels = ReplicatedStorage:WaitForChild("Shovels")
local backpacks = ReplicatedStorage:WaitForChild("Backpacks")
local gamepasses = ReplicatedStorage:WaitForChild("Gamepasses")

-- Data
local thunt_data = {}
thunt_data.chests = ReplicatedStorage:WaitForChild("Chests")
thunt_data.shovels = ReplicatedStorage:WaitForChild("Shovels")
thunt_data.backpacks = ReplicatedStorage:WaitForChild("Backpacks")
thunt_data.gamepasses = ReplicatedStorage:WaitForChild("Gamepasses")

function thunt_data.getChestNames()
    local ret_val = {}
    for ind, val in pairs(thunt_data.chests:GetChildren()) do
        ret_val[ind] = val.Name.." ("..val:WaitForChild("Health").Value..")"
    end
    return ret_val
end
-- Teleports us out of the elevator
wait(0.5)
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(247, -0, -8)

-- Wait until workspace.CurrentRooms["1"] exists
local room1
repeat
    room1 = workspace.CurrentRooms:FindFirstChild("1")
    task.wait(0.1) -- small wait to prevent freezing
until room1

-- Wait until workspace.CurrentRooms["2"] exists
local room2
repeat
    room2 = workspace.CurrentRooms:FindFirstChild("2")
    task.wait(0.1)
until room2

-- Destroy them when they exist
room1:Destroy()
room2:Destroy()

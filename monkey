shared.teleport = true

local TPCFrame = CFrame.new(-3805, 59, -390)--Put a new cframe or cframe property in here
local User = game.Players.LocalPlayer.Character.HumanoidRootPart
local WaitTime = 10 --Make More/Less depending if it works or not

while shared.teleport do wait()
    
spawn( function()
wait(WaitTime)
shared.teleport = false
end)

User.CFrame = TPCFrame

local args = {
    [1] = "__--r",
    [2] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
    [3] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,0,0)
}

game:GetService("ReplicatedStorage").Events.__DFfDD:FireServer(unpack(args))

end

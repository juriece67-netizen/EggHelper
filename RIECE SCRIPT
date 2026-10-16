local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "EggHelper"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local open = Instance.new("TextButton")
open.Size = UDim2.fromOffset(55, 55)
open.Position = UDim2.new(0, 15, 0.4, 0)
open.Text = "🥚"
open.TextScaled = true
open.Parent = gui

local panel = Instance.new("Frame")
panel.Size = UDim2.fromOffset(230, 150)
panel.Position = UDim2.new(0.5, -115, 0.4, 0)
panel.Visible = false
panel.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.Text = "EGG HELPER"
title.TextScaled = true
title.Parent = panel

open.Activated:Connect(function()
    panel.Visible = not panel.Visible
end)

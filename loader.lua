
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
panel.Size = UDim2.fromOffset(260, 310)
panel.Position = UDim2.new(0.5, -130, 0.3, 0)
panel.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
panel.Visible = false
panel.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = panel

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "🥚 EGG HELPER"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Parent = panel

local income = Instance.new("TextBox")
income.Position = UDim2.fromOffset(15, 55)
income.Size = UDim2.new(1, -30, 0, 38)
income.PlaceholderText = "Enter income target"
income.Text = ""
income.TextScaled = true
income.Parent = panel

local function makeToggle(label, y)
    local button = Instance.new("TextButton")
    button.Position = UDim2.fromOffset(15, y)
    button.Size = UDim2.new(1, -30, 0, 38)
    button.BackgroundColor3 = Color3.fromRGB(65, 65, 80)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextScaled = true
    button.Parent = panel

    local enabled = false

    local function update()
        button.Text = label .. ": " ..
            (enabled and "ON" or "OFF")
        button.BackgroundColor3 = enabled
            and Color3.fromRGB(40, 145, 90)
            or Color3.fromRGB(65, 65, 80)
    end

    button.Activated:Connect(function()
        enabled = not enabled
        update()
    end)

    update()
    return button
end

makeToggle("Auto Steal (visual)", 105)
makeToggle("Auto Break Zone 9", 150)
makeToggle("Auto Break Zone 10", 195)
makeToggle("Auto Merge (visual)", 240)

open.Activated:Connect(function()
    panel.Visible = not panel.Visible
end)

-- DO NOT STEAL THIS CODE WITHOUT THE CREATORS PERMISSION.
local success, Rayfield = pcall(function()
    return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error!",
        Text = "Rayfield couldn't be loaded successfully. Try executing the script again.",
        Duration = 5
    })
    return
end

local Window = Rayfield:CreateWindow({
    Name = "theystem's Menu",
    Icon = 0,
    LoadingTitle = "Menu has been loaded successfully!",
    LoadingSubtitle = "Menu made by @theystem.",
    Theme = "AmberGlow", 
    
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    
    ConfigurationSaving = {Enabled = true, FolderName = "theystem's Menu Configuration Saving", FileName = "theystem's Menu"}
})

local Tabs = {
    Universal = Window:CreateTab("Universal Mods", "globe"),
    Scripts = Window:CreateTab("Scripts", "terminal"),
    MenuSettings = Window:CreateTab("Menu Settings", "settings"),
    Credits = Window:CreateTab("Credits", "sparkles")
}

for _, tab in pairs(Tabs) do
    if tab ~= Tabs.Credits then
        tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)")
    end
end

local toggles = {
    SpeedBoost = false,
    Noclip = false,
}

Tabs.Universal:CreateToggle({
    Name = "Speed Boost",
    CurrentValue = toggles.SpeedBoost,
    Callback = function(value)
        toggles.SpeedBoost = value
        local Player = game.Players.LocalPlayer
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                if value then
                    Humanoid.WalkSpeed = 50
                    Humanoid.JumpHeight = 50
                else
                    Humanoid.WalkSpeed = 16
                    Humanoid.JumpHeight = 7
                end
                Rayfield:Notify({
                    Title = "Speed Boost " .. (value and "Enabled" or "Disabled"),
                    Content = "Your speed boost is now " .. (value and "active." or "inactive."),
                    Duration = 3,
                    Image = value and "check" or "x"
                })
            end
        end
    end
})

Tabs.Universal:CreateToggle({
    Name = "Noclip",
    CurrentValue = toggles.Noclip,
    Callback = function(value)
        toggles.Noclip = value
        local Character = game.Players.LocalPlayer.Character
        if Character then
            for _, part in ipairs(Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not value
                end
            end
        end
        Rayfield:Notify({
            Title = "Noclip " .. (value and "Enabled" or "Disabled"),
            Content = "You can " .. (value and "now pass through walls." or "no longer pass through walls."),
            Duration = 3,
            Image = value and "check" or "x"
        })
    end
})

game:GetService("RunService").Heartbeat:Connect(function()
    if toggles.Noclip then
        local Character = game.Players.LocalPlayer.Character
        if Character then
            for _, part in ipairs(Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- Performance and Latency Monitoring
local lastCheck = tick()
game:GetService("RunService").RenderStepped:Connect(function()
    local fps = 1 / (tick() - lastCheck)
    lastCheck = tick()
    local ping = game:GetService("Stats"):FindFirstChild("Network") and game:GetService("Stats").Network:FindFirstChild("Ping")
    local latency = ping and ping:GetValue() or 0
    
    Rayfield:Notify({
        Title = "Performance Update",
        Content = "Current FPS: " .. math.floor(fps) .. " | Latency: " .. math.floor(latency) .. "ms",
        Duration = 3,
        Image = "info"
    })
    
    if fps < 15 then
        Rayfield:Notify({
            Title = "Performance Warning",
            Content = "Your FPS is critically low! Expect lag and potential script issues.",
            Duration = 5,
            Image = "warning"
        })
    end
    
    if latency > 300 then
        Rayfield:Notify({
            Title = "High Latency Warning",
            Content = "Your network latency is very high! This may cause delays and desync.",
            Duration = 5,
            Image = "warning"
        })
    end
end)

Window:SelectTab(Tabs.Universal)
Rayfield:LoadConfiguration()
-- DO NOT STEAL THIS CODE WITHOUT THE CREATORS PERMISSION.
local success, Rayfield = pcall(function()
    return loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)

if not success then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error!",
        Text = "Rayfield couldn't be loaded successfully. Try executing the script again.",
        Duration = 5
    })
    return
end

local Window = Rayfield:CreateWindow({
    Name = "theystem's Menu",
    Icon = 0,
    LoadingTitle = "Menu has been loaded successfully!",
    LoadingSubtitle = "Menu made by @theystem.",
    Theme = "AmberGlow", 
    
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    
    ConfigurationSaving = {Enabled = true, FolderName = "theystem's Menu Configuration Saving", FileName = "theystem's Menu"}
})

local Tabs = {
    Universal = Window:CreateTab("Universal Mods", "globe"),
    Scripts = Window:CreateTab("Scripts", "terminal"),
    MenuSettings = Window:CreateTab("Menu Settings", "settings"),
    Credits = Window:CreateTab("Credits", "sparkles")
}

for _, tab in pairs(Tabs) do
    if tab ~= Tabs.Credits then
        tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)")
    end
end

local toggles = {
    SpeedBoost = false,
    Noclip = false,
}

Tabs.Universal:CreateToggle({
    Name = "Speed Boost",
    CurrentValue = toggles.SpeedBoost,
    Callback = function(value)
        toggles.SpeedBoost = value
        local Player = game.Players.LocalPlayer
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                if value then
                    Humanoid.WalkSpeed = 50
                    Humanoid.JumpHeight = 50
                else
                    Humanoid.WalkSpeed = 16
                    Humanoid.JumpHeight = 7
                end
                Rayfield:Notify({
                    Title = "Speed Boost " .. (value and "Enabled" or "Disabled"),
                    Content = "Your speed boost is now " .. (value and "active." or "inactive."),
                    Duration = 3,
                    Image = value and "check" or "x"
                })
            end
        end
    end
})

Tabs.Universal:CreateToggle({
    Name = "Noclip",
    CurrentValue = toggles.Noclip,
    Callback = function(value)
        toggles.Noclip = value
        local Character = game.Players.LocalPlayer.Character
        if Character then
            for _, part in ipairs(Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not value
                end
            end
        end
        Rayfield:Notify({
            Title = "Noclip " .. (value and "Enabled" or "Disabled"),
            Content = "You can " .. (value and "now pass through walls." or "no longer pass through walls."),
            Duration = 3,
            Image = value and "check" or "x"
        })
    end
})

game:GetService("RunService").Heartbeat:Connect(function()
    if toggles.Noclip then
        local Character = game.Players.LocalPlayer.Character
        if Character then
            for _, part in ipairs(Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- Performance and Latency Monitoring
local lastCheck = tick()
game:GetService("RunService").RenderStepped:Connect(function()
    local fps = 1 / (tick() - lastCheck)
    lastCheck = tick()
    local ping = game:GetService("Stats"):FindFirstChild("Network") and game:GetService("Stats").Network:FindFirstChild("Ping")
    local latency = ping and ping:GetValue() or 0
    
    Rayfield:Notify({
        Title = "Performance Update",
        Content = "Current FPS: " .. math.floor(fps) .. " | Latency: " .. math.floor(latency) .. "ms",
        Duration = 3,
        Image = "info"
    })
    
    if fps < 15 then
        Rayfield:Notify({
            Title = "Performance Warning",
            Content = "Your FPS is critically low! Expect lag and potential script issues.",
            Duration = 5,
            Image = "circle-alert"
        })
    end
    
    if latency > 300 then
        Rayfield:Notify({
            Title = "High Latency Warning",
            Content = "Your network latency is very high! This may cause delays and desync.",
            Duration = 5,
            Image = "circle-alert"
        })
    end
end)

Window:SelectTab(Tabs.Universal)
Rayfield:LoadConfiguration()

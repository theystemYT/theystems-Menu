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
    LoadingTitle = "Menu has been loaded successfully!",
    LoadingSubtitle = "Menu made by @theystem.",
    Theme = "AmberGlow", 
    ConfigurationSaving = {Enabled = true, FolderName = "theystem's Menu Configuration Saving", FileName = "theystem's Menu"}
})

local Tabs = {
    Universal = Window:CreateTab("Universal Mods", "globe"),
    Scripts = Window:CreateTab("Scripts", "terminal"),
    MenuSettings = Window:CreateTab("Menu Settings", "settings")
}

for _, tab in pairs(Tabs) do
    tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)")
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

Tabs.Scripts:CreateButton({
    Name = "Infinite Yield (Custom UI/Library)",
    Callback = function()
        local success, InfiniteYieldScript = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)

        if not success then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Error!",
                Text = "The Infinite Yield script couldn't be executed successfully.",
                Duration = 5
            })
        end
    end
})

Tabs.MenuSettings:CreateButton({
    Name = "Different UI",
    Callback = function()
        Rayfield:Destroy()
        local success, FluentUI = pcall(function()
            return loadstring(game:HttpGet('https://fluentui.menu/fluentui'))()
        end)

        if not success then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Error!",
                Text = "Fluent UI couldn't be loaded successfully. Try executing the script again.",
                Duration = 5
            })
            return
        end

        local Window = FluentUI:CreateWindow({
            Name = "theystem's Menu",
            LoadingTitle = "Menu has been loaded successfully!",
            LoadingSubtitle = "Menu made by @theystem.",
            Theme = "Light", 
            ConfigurationSaving = {Enabled = true, FolderName = "theystem's Menu Configuration Saving", FileName = "theystem's Menu"}
        })

        local Tabs = {
            Universal = Window:CreateTab("Universal Mods", "globe"),
            Scripts = Window:CreateTab("Scripts", "terminal"),
            MenuSettings = Window:CreateTab("Menu Settings", "settings")
        }

        for _, tab in pairs(Tabs) do
            tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)")
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
                        FluentUI:Notify({
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
                FluentUI:Notify({
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

        Window:SelectTab(Tabs.Universal)
    end
})

Tabs.MenuSettings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end
})

Window:SelectTab(Tabs.Universal)

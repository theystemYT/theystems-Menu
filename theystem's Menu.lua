-- DO NOT STEAL THIS CODE WITHOUT THE CREATORS PERMISSION.
local success, Rayfield = pcall(function()
    return loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
end)

if not success then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error!",
        Text = "The script couldn't be executed successfully. Check your executor to see if it is able to run Rayfield.",
        Duration = 5
    })
    return
end

local Window = Rayfield:CreateWindow({
    Name = "theystem's Menu (more mods coming soon!)",
    LoadingTitle = "Menu has been loaded successfully!",
    LoadingSubtitle = "Menu made by @theystem.",
    Theme = "AmberGlow",
    ConfigurationSaving = {Enabled = true, FolderName = "theystem's Menu Configuration Saving", FileName = "theystem's Menu"}
})

local Tabs = {
    Universal = Window:CreateTab("Universal Mods", "globe"),
    Gun = Window:CreateTab("Gun Mods", "crosshair"),
    Vehicle = Window:CreateTab("Vehicle Mods", "car"),
    Visual = Window:CreateTab("Visual Mods", "eye"),
    ESP = Window:CreateTab("ESP Mods", "search"),
    Lights = Window:CreateTab("Lighting Mods", "sun"),
    Movement = Window:CreateTab("Movement Mods", "move"),
    Combat = Window:CreateTab("Combat Mods", "swords"),
    Utility = Window:CreateTab("Utility Mods", "wrench"),
    Scripts = Window:CreateTab("Scripts", "terminal"),
    Cameras = Window:CreateTab("Cameras", "camera")
}

for _, tab in pairs(Tabs) do
    tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly.)")
end

local toggles = {
    SpeedBoost = false,
    Noclip = false,
    FreezeCamera = false
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

Tabs.Gun:CreateButton({ Name = "Aimbot (Enemies Only)", Callback = function() print("Aimbot activated.") end })
Tabs.Gun:CreateButton({ Name = "Rapid Fire", Callback = function() print("Rapid Fire activated.") end })
Tabs.Gun:CreateButton({ Name = "No Recoil", Callback = function() print("No Recoil activated.") end })

Tabs.Vehicle:CreateButton({ Name = "Super Speed", Callback = function() print("Super Speed activated.") end })
Tabs.Vehicle:CreateButton({ Name = "Fly Vehicle", Callback = function() print("Vehicle Flight activated.") end })

Tabs.Visual:CreateButton({ Name = "Wallhack", Callback = function() print("Wallhack activated.") end })

Tabs.ESP:CreateButton({ Name = "Box ESP", Callback = function() print("Box ESP activated.") end })
Tabs.ESP:CreateButton({ Name = "Name ESP", Callback = function() print("Name ESP activated.") end })

Tabs.Lights:CreateButton({ Name = "Brighten Area", Callback = function() print("Brighten Area activated.") end })
Tabs.Lights:CreateButton({ Name = "Disable Shadows", Callback = function() print("Disable Shadows activated.") end })
Tabs.Lights:CreateButton({ Name = "Custom Light Color", Callback = function() print("Custom Light Color activated.") end })

Tabs.Movement:CreateButton({ Name = "Super Jump", Callback = function() print("Super Jump activated.") end })
Tabs.Movement:CreateButton({ Name = "Teleport", Callback = function() print("Teleport activated.") end })

Tabs.Combat:CreateButton({ Name = "Instant Kill", Callback = function() print("Instant Kill activated.") end })

Tabs.Utility:CreateButton({ Name = "Auto Collect Items", Callback = function() print("Auto collect items activated.") end })
Tabs.Utility:CreateButton({ Name = "Auto Heal", Callback = function() print("Auto Heal activated.") end })

Tabs.Scripts:CreateButton({
    Name = "Infinite Yield",
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

Tabs.Scripts:CreateButton({
    Name = "Roblox Chat Filter Bypass Script",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cheatplug/usercreated/refs/heads/main/main.lua'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Copy Key for Roblox Chat Filter Bypass Script",
    Callback = function()
        setclipboard("patchmeplease")
        Rayfield:Notify({
            Title = "Key",
            Content = "The key has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Scripts:CreateButton({
    Name = "Sirius",
    Callback = function()
        loadstring(game:HttpGet('https://sirius.menu/sirius'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "LHUB",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LHUB-30857"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "YARHM",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Null Fire",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-NullFire-NDS-24033"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Sensation/Sexsation Doors Script",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FLOOR-2-DOORS-Sensation-V2-20105"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Airsoft FE Script",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Airsoft-FE-Script-Hub-25137"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Skibidi Hub (Orion Library)",
    Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/skibidi7575006/skibidiidi/-/raw/main/SKIBIDIIHUBB"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Gunfight Arena Script (Orion Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptHub/Orion-Gunfight-Arena/main/script.lua"))()
    end
})

Window:SelectTab(Tabs.Universal)

-- DO NOT STEAL THIS CODE WITHOUT THE CREATOR'S PERMISSION.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "theystem's Menu",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "theystem's Menu (Orion Library) Config Folder"
})

local Tabs = {
    Universal = Window:MakeTab({
        Name = "Universal Mods",
        PremiumOnly = false
    }),
    Scripts = Window:MakeTab({
        Name = "Scripts",
        PremiumOnly = false
    }),
    MenuSettings = Window:MakeTab({
        Name = "Menu Settings",
        PremiumOnly = false
    })
}

for _, tab in pairs(Tabs) do
    tab:AddSection({
        Name = "(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)"
    })
end

local toggles = {
    SpeedBoost = false,
    Noclip = false,
}

Tabs.Universal:AddToggle({
    Name = "Speed Boost",
    Default = toggles.SpeedBoost,
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
                OrionLib:MakeNotification({
                    Name = "Speed Boost " .. (value and "Enabled" or "Disabled"),
                    Content = "Your speed boost is now " .. (value and "active." or "inactive."),
                    Time = 3
                })
            end
        end
    end
})

Tabs.Universal:AddToggle({
    Name = "Noclip",
    Default = toggles.Noclip,
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
        OrionLib:MakeNotification({
            Name = "Noclip " .. (value and "Enabled" or "Disabled"),
            Content = "You can " .. (value and "now pass through walls." or "no longer pass through walls."),
            Time = 3
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

Tabs.Scripts:AddButton({
    Name = "Infinite Yield (Custom UI/Library)",
    Callback = function()
        local success, InfiniteYieldScript = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)

        if not success then
            OrionLib:MakeNotification({
                Name = "Error!",
                Content = "The Infinite Yield script couldn't be executed successfully.",
                Time = 5
            })
        end
    end
})

Tabs.Scripts:AddButton({
    Name = "Roblox Chat Filter Bypass Script (Orion Library)",
    Callback = function()
        OrionLib:Destroy()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cheatplug/usercreated/refs/heads/main/main.lua'))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Copy Key for Roblox Chat Filter Bypass Script",
    Callback = function()
        setclipboard("friday")
        OrionLib:MakeNotification({
            Name = "Key",
            Content = "The key has been copied to your clipboard. If the key doesn't work, please wait for us to update our script.",
            Time = 3
        })
    end
})

Tabs.Scripts:AddButton({
    Name = "Sirius (Custom UI/Library)",
    Callback = function()
        loadstring(game:HttpGet('https://sirius.menu/sirius'))()
    end
})

Tabs.Scripts:AddButton({
    Name = "LHUB (Orion Library)",
    Callback = function()
        OrionLib:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LHUB-30857"))()
    end
})

Tabs.Scripts:AddButton({
    Name = "YARHM (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Null Fire (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-NullFire-NDS-24033"))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Sensation/Sexsation Doors Script (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FLOOR-2-DOORS-Sensation-V2-20105"))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Airsoft FE Script (Orion Library)",
    Callback = function()
        OrionLib:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Airsoft-FE-Script-Hub-25137"))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Skibidi Hub (Orion Library)",
    Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/skibidi7575006/skibidiidi/-/raw/main/SKIBIDIIHUBB"))()
    end
})

Tabs.Scripts:AddButton({
    Name = "Gunfight Arena Script (Orion Library)",
    Callback = function()
        local weapons = game.ReplicatedStorage:FindFirstChild("Weapons")
        if not weapons then
            OrionLib:MakeNotification({
                Name = "Weapons Not Found",
                Content = "Weapons couldn't be found in ReplicatedStorage. Join Gunfight Arena for this script to work properly.",
                Time = 5
            })
            return
        end
        loadstring(game:HttpGet("https://rawscripts.net/raw/Gunfight-Arena-Script-31232"))()
    end
})

Tabs.MenuSettings:AddButton({
    Name = "Destroy UI",
    Callback = function()
        OrionLib:Destroy()
    end
})

OrionLib:Init()
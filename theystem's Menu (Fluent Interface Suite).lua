-- DO NOT STEAL THIS CODE WITHOUT THE CREATOR'S PERMISSION.
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "theystem's Menu",
    SubTitle = "(Fluent Interface Suite)",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Universal = Window:AddTab({ Title = "Universal Mods", Icon = "globe" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "terminal" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "" }),
    Settings = Window:AddTab({ Title = "Interface Settings", Icon = "settings" })
}

local toggles = {
    SpeedBoost = false,
    Noclip = false,
}

Tabs.Universal:AddToggle("SpeedBoost", { Title = "Speed Boost", Default = toggles.SpeedBoost })
    :OnChanged(function(value)
        toggles.SpeedBoost = value
        local Player = game.Players.LocalPlayer
        if Player.Character then
            local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.WalkSpeed = value and 50 or 16
                Humanoid.JumpHeight = value and 50 or 7
            end
        end
    end)

Tabs.Universal:AddToggle("Noclip", { Title = "Noclip", Default = toggles.Noclip })
    :OnChanged(function(value)
        toggles.Noclip = value
        local Character = game.Players.LocalPlayer.Character
        if Character then
            for _, part in ipairs(Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not value
                end
            end
        end
    end)

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
    Title = "Infinite Yield (Custom UI/Library)",
    Callback = function()
        local success, InfiniteYieldScript = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)
    end
})

Tabs.Scripts:AddButton({
    Title = "Roblox Chat Filter Bypass Script (Rayfield Library)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cheatplug/usercreated/refs/heads/main/main.lua'))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Sirius (Custom UI/Library)",
    Callback = function()
        loadstring(game:HttpGet('https://sirius.menu/sirius'))()
    end
})

Tabs.Scripts:AddButton({
    Title = "LHUB (Rayfield Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LHUB-30857"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "YARHM (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Null Fire (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-NullFire-NDS-24033"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Sensation/Sexsation Doors Script (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FLOOR-2-DOORS-Sensation-V2-20105"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Airsoft FE Script (Rayfield Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Airsoft-FE-Script-Hub-25137"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Skibidi Hub (Rayfield)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Gunfight Arena Script (Orion Library) (Made by me)",
    Callback = function()
        local replicatedStorage = game:GetService("ReplicatedStorage")
        if not replicatedStorage:FindFirstChild("Weapons") then
            Fluent:Notify({
                Title = "",
                Content = "Weapons couldn't be found in ReplicatedStorage. If you are not in Gunfight Arena, please join Gunfight Arena for this script to work.",
                Duration = 5
            })
            return
        end
        loadstring(game:HttpGet("https://rawscripts.net/raw/Gunfight-Arena-Script-31232"))()
    end
})

Tabs.Credits:AddButton({
    Title = "Copy YouTube Channel Link",
    Callback = function()
        setclipboard("https://www.youtube.com/@theystem")
        Fluent:Notify({
            Title = "Link Copied",
            Content = "YouTube channel link has been copied to your clipboard.",
            Duration = 5
        })
    end
})

Tabs.Credits:AddButton({
    Title = "Copy GitHub Page Link",
    Callback = function()
        setclipboard("https://github.com/theystemYT")
        Fluent:Notify({
            Title = "Link Copied",
            Content = "GitHub page link has been copied to your clipboard.",
            Duration = 5
        })
    end
})

Tabs.Credits:AddButton({
    Title = "Copy ScriptBlox Page Link",
    Callback = function()
        setclipboard("https://scriptblox.com/u/theystemYT")
        Fluent:Notify({
            Title = "Link Copied",
            Content = "ScriptBlox page link has been copied to your clipboard.",
            Duration = 5
        })
    end
})

local InterfaceSection = Tabs.Settings:AddSection("Interface Settings")

InterfaceSettingsSection:AddDropdown("InterfaceTheme", {
    Title = "Theme",
    Description = "Changes the interface theme.",
    Values = Main.Themes,
    Default = Main.Theme,
    Callback = function(Value)
        Main:SetTheme(Value)
    end
})

if Main.UseAcrylic then
    InterfaceSettingsSection:AddToggle("AcrylicToggle", {
        Title = "Acrylic",
        Description = "The blurred background requires graphic quality 8+",
        Default = Main.Acrylic,
        Callback = function(Value)
            Main:ToggleAcrylic(Value)
        end
    })
end

InterfaceSettingsSection:AddToggle("TransparentToggle", {
    Title = "Transparency",
    Description = "Makes the interface transparent.",
    Default = Main.Transparency,
    Callback = function(Value)
        Main:ToggleTransparency(Value)
    end
})

InterfaceSection:AddKeybind("MenuKeybind", { Title = "Minimize Bind", Default = "RightShift" })
Main.MinimizeKeybind = Main.Options.MenuKeybind 

InterfaceManager:SetLibrary(Fluent)
SaveManager:SetLibrary(Fluent)
SaveManager:SetFolder("theystem's Menu (Fluent Interface Suite) Save Manager")
InterfaceManager:SetFolder("theystem's Menu (Fluent Interface Suite) Interface Manager")

SaveManager:LoadAutoloadConfig()
Window:SelectTab(2)

--[[
theystem's Menu | Made with Rayfield Library
The repository with this script has a copyright license, so do not try to steal the code.
This code is made with ChatGPT.
]]
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/theystemYT/theystems-Menu/refs/heads/main/Rayfield%20Source%20Code%20(modified%20for%20theystem's%20Menu).lua"))()
local MarketplaceService = game:GetService("MarketplaceService")
local players = game:GetService("Players")
local plr = players.LocalPlayer

local Window = Rayfield:CreateWindow({
    Name = "theystem's Menu",
    Icon = 0,
    LoadingTitle = "Loading theystem's Menu...",
    LoadingSubtitle = "Credits are in Credits Tab",
    Theme = "AmberGlow",
    
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "theystem's Menu Configuration Saving",
        FileName = "theystem's Menu"
    }
})

local Tabs = {
    Scripts = Window:CreateTab("Universal Scripts", "terminal"),
    UISettings = Window:CreateTab("UI Settings", "settings"),
    Contributions = Window:CreateTab("Contributions", "handshake"),
    Credits = Window:CreateTab("Credits", "sparkles")
}

Tabs.Scripts:CreateButton({
    Name = "FFJ Stream Sniper Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Sniper.lua"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Ghost Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "PrizzLife",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-PrizzLife-Official-37379"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Force Reset Character",
    Callback = function()
        local prompt = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Sirius/refs/heads/request/prompt.lua"))()
        prompt.create(
            '', [[Are you sure you want to reset your character?

<font transparency='0.4'>Note: This may cause respawn issues in certain games, or not work at all. This prompt is also added for accidental clicks.</font>]],
            'Reset',
            'Cancel',
            function(result)
                if result == true then
                    if not plr.Character then
                        Rayfield:Notify({
                            Title = "Error",
                            Content = "No character was found.",
                            Duration = 3,
                            Image = "circle-alert",
                        })
                    elseif not plr.Character:FindFirstChild("Humanoid") then
                        Rayfield:Notify({
                            Title = "Error",
                            Content = "No humanoid was found.",
                            Duration = 3,
                            Image = "circle-alert",
                        })
                    else
                        plr.Character.Humanoid:TakeDamage(plr.Character.Humanoid.Health)
                    end
                end
            end
        )
    end,
})


Tabs.Scripts:CreateButton({
    Name = "Hydra VIP Script (FORTLINE)",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FORTLINE-Hydra-VIP-Script-36769"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Duck Hub (🎉 RIVALS Script) (Key System)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/HexFG/duckhub/refs/heads/main/loader.lua'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Gunfight Arena Script",
    Callback = function()
        local weapons = game.ReplicatedStorage:FindFirstChild("Weapons")
        if not weapons then
            Rayfield:Notify({
                Title = "Weapons Not Found",
                Content = "Weapons couldn't be found in ReplicatedStorage. Join Gunfight Arena for this script to work properly.",
                Image = "circle-help",
                Duration = 5
            })
            return
        end
        loadstring(game:HttpGet("https://rawscripts.net/raw/Gunfight-Arena-Script-31232"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "LALOL Hub Without Hint",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LALOL-hub-without-hint-19587"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Delta Mobile Keyboard Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Delta-Scripts/refs/heads/main/MobileKeyboard.txt"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "starlight Server-Side Executor",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TempUserIdk18/robloxscripts/refs/heads/main/PogsBackdoor.lua"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Copy Key for UserCreated",
    Callback = function()
        setclipboard("heypew")
        Rayfield:Notify({
            Title = "Key",
            Content = "Key has been copied to your clipboard successfully.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Scripts:CreateButton({
    Name = "UserCreated",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/randomizedcomponent/UC/refs/heads/main/3307468c285f4fe535fb5d87b4b053e6.lua"))()
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
    Name = "Skibidi Hub",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Camlock Script for The Strongest Battlegrounds",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-AimBot-Universal-33672"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Plutonium.lua",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.8.txt", true))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Swift Loader",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FemWareDevelper/SwiftLoader/refs/heads/main/Scripts"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Astral",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/toeszzwozzy/loader/main/v2.4.luau'))()
    end
})

Tabs.UISettings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end
})

Tabs.UISettings:CreateDropdown({
    Name = "Select UI Theme",
    Options = {"Default", "AmberGlow", "Amethyst", "Bloom", "DarkBlue", "Green", "Ocean", "Light", "Serenity"},
    CurrentOption = {"AmberGlow"},
    MultipleOptions = false,
    Flag = "Select UI Theme Dropdown",
    Callback = function(Options)
        local selectedTheme = Options[1]
        Window.ModifyTheme(selectedTheme)
    end
})

Tabs.UISettings:CreateButton({
    Name = "Load Rayfield Configuration",
    Callback = function()
        Rayfield:LoadConfiguration()
    end
})

Tabs.Credits:CreateButton({
    Name = "Copy YouTube Channel Link",
    Callback = function()
        setclipboard("youtube.com/@theystem")
        Rayfield:Notify({
            Title = "Link Copied",
            Content = "YouTube channel link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Credits:CreateButton({
    Name = "Copy GitHub Page Link",
    Callback = function()
        setclipboard("github.com/theystemYT")
        Rayfield:Notify({
            Title = "Link Copied",
            Content = "GitHub page link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Credits:CreateButton({
    Name = "Copy ScriptBlox Page Link",
    Callback = function()
        setclipboard("scriptblox.com/u/theystemYT")
        Rayfield:Notify({
            Title = "Link Copied",
            Content = "ScriptBlox page link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Credits:CreateButton({
    Name = "Copy work.ink Profile Link",
    Callback = function()
        setclipboard("https://1f81517695674ff7.workink.me/")
        Rayfield:Notify({
            Title = "Link Copied",
            Content = "work.ink Profile link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

Tabs.Contributions:CreateParagraph({
    Title = "Do you have changes that you want added in theystem's Menu?",
    Content = "Well, if yes, click on the button below to copy the link for the Google Form to submit your changes."
})

Tabs.Contributions:CreateButton({
    Name = "Copy Google Form Link",
    Callback = function()
        setclipboard("https://forms.gle/NmJ9hoAkeCQ1LewX7")
        Rayfield:Notify({
            Title = "Copied Link",
            Content = "Google Forms link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

local function createGameSpecificTab(placeId, scriptInfo)
    if game.PlaceId == placeId then
        local success, info = pcall(function()
            return MarketplaceService:GetProductInfo(placeId)
        end)
        if success and info then
            local tab = Window:CreateTab(info.Name, "check")
            for _, v in pairs(scriptInfo) do
                tab:CreateButton({
                    Name = v.Name,
                    Callback = v.Callback
                })
            end
        end
    end
end

createGameSpecificTab(12137249458, {
    {
        Name = "Op Gui Script - coyx (ScriptBlox Script)",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://pastebin.com/raw/rf8zaVmE", true))()
        end
    }
})

createGameSpecificTab(6792057800, {
    {
        Name = "Airsoft FE Script",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Airsoft-FE-Script-Hub-25137"))()
        end
    }
})

createGameSpecificTab(6516141723, {
    {
        Name = "Sensation/Sexsation Doors Script",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/FLOOR-2-DOORS-Sensation-V2-20105"))()
        end
    }
})

createGameSpecificTab(7406004869, {
    {
        Name = "Opposed (PCVR Only)",
        Callback = function()
            _G.OMBuild = "nightly"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OpposedDev/Opposed/refs/heads/main/main/loader.lua"))()
        end
    },
    {
        Name = "Swift Loader",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FemWareDevelper/SwiftLoader/refs/heads/main/Scripts"))()
        end
    },
    {
        Name = "ScreenMode ESP and AIMBOT",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/y6Zg99WV", true))()
        end
    }
})

createGameSpecificTab(3623642052, {
    {
        Name = "free badges",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Classic-Hangman-free-badges-13559"))()
        end
    }
})

createGameSpecificTab(7606564092, {
    {
        Name = "Skibidi Hub",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
        end
    }
})

createGameSpecificTab(9391468976, {
    {
        Name = "Plutonium.lua",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.8.txt", true))()
        end
    }
})

createGameSpecificTab(10806004754, {
    {
        Name = "Astral",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/toeszzwozzy/loader/main/v2.4.luau'))()
        end
    }
})

createGameSpecificTab(13388465281, {
    {
        Name = "Projeto LKB | New Gen MB",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Hard-Time-Projeto-LKB-I-New-Gen-PC-15537"))()
        end
    },
    {
        Name = "Projeto LKB | New Gen PC",
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Hard-Time-Projeto-LKB-I-New-Gen-PC-15536"))()
        end
    }
})

createGameSpecificTab(16389395869, {
    {
        Name = "Skibidi Hub",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
        end
    }
})

createGameSpecificTab(18687417158, {
    {
        Name = "YARHM",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
        end
    }
})

createGameSpecificTab(18668065416, {
    {
        Name = "Ronix Hub",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c84ecefd7fa63a35d454d3ecefe3ee7e.lua"))()
        end
    }
})

createGameSpecificTab(17625359962, {
    {
        Name = "Skibidi Hub",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
        end
    }
})

createGameSpecificTab(2753915549, {
    {
        Name = "Ronix Hub",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b2db2af40b53ef0a502f6d561b4c6449.lua"))()
        end
    }
})

createGameSpecificTab(126884695634066, {
    {
        Name = "Ronix Hub",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a8f02a61fc38bf9256dd0f17be6b16d7.lua"))()
        end
    }
})

createGameSpecificTab(116495829188952, {
    {
        Name = "Ronix Hub",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34b20c9e914c2615f025a8cb6f434cb7.lua"))()
        end
    },
    {
        Name = "Skibidi Hub",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
        end
    }
})

Window:SelectTab(Tabs.Scripts)

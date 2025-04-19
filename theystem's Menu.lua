--[[
theystem's Menu | Made with Rayfield Library
The repository with this script has a copyright license, so do not try to steal the code.
This code is made with ChatGPT.
]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

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
    Scripts = Window:CreateTab("Scripts", "terminal"),
    InterfaceSettings = Window:CreateTab("Interface Settings", "settings"),
    Contributions = Window:CreateTab("Contributions", "handshake"),
    Credits = Window:CreateTab("Credits", "sparkles")  
}

for _, tab in pairs(Tabs) do
    if tab ~= Tabs.Credits then
        tab:CreateSection("(These mods are made with ChatGPT. These mods may not work properly, or not work at all.)")
    end
end

Tabs.Scripts:CreateButton({
    Name = "Infinite Yield (Custom UI/Library)",
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)
    end
})

Tabs.Scripts:CreateButton({
    Name = "Roblox Chat Filter Bypass Script (Rayfield Library)",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cheatplug/usercreated/refs/heads/main/main.lua'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Sirius (Custom UI/Library)",
    Callback = function()
        loadstring(game:HttpGet('https://sirius.menu/sirius'))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "LHUB (Rayfield Library)",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-LHUB-30857"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "YARHM (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Null Fire (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-NullFire-NDS-24033"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Sensation/Sexsation Doors Script (Custom Made UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/FLOOR-2-DOORS-Sensation-V2-20105"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Airsoft FE Script (Rayfield Library)",
    Callback = function()
        Rayfield:Destroy()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Airsoft-FE-Script-Hub-25137"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Skibidi Hub (Rayfield Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aemos2/Skibidihub/refs/heads/main/SkibidiHUB.txt"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Gunfight Arena Script (Orion Library) (ScriptBlox Script, credits are shown in the script.)",
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
    Name = "Camlock Script for The Strongest Battlegrounds",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-AimBot-Universal-33672"))()
    end
})

Tabs.Scripts:CreateButton({
    Name = "Plutonium.lua (Custom UI/Library)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.8.txt", true))()
    end
})

Tabs.InterfaceSettings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
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
        setclipboard("https://docs.google.com/forms/d/e/1FAIpQLSe954cLT1BM2F5nUpOStUuq9V1YAsO6qwVXKX4rOtmPx-YuFA/viewform?usp=dialog")
        Rayfield:Notify({
            Title = "Copied Link",
            Content = "Google Forms link has been copied to your clipboard.",
            Duration = 3,
            Image = "clipboard"
        })
    end
})

if game.PlaceId == 12137249458 then
    local FPS_Tab = Window:CreateTab("[FPS] Gun Grounds FFA", "check")
    FPS_Tab:CreateButton({
        Name = "Op Gui Script - coyx (ScriptBlox Script)",
        Callback = function()
            Rayfield:Destroy()
            loadstring(game:HttpGet("https://pastebin.com/raw/rf8zaVmE",true))()
        end
    })
end

Window:SelectTab(Tabs.Scripts)
Rayfield:LoadConfiguration()

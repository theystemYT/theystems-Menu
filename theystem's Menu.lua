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

    ToggleUIKeybind = "T"
        
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
            '',
            [[Are you sure you want to reset your character?

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
        prompt.create(
            'UI',
            [[Are you sure you want to destroy the UI?

<font transparency='0.4'></font>]],
            'Destroy UI,
            'Cancel',
            function(result)
                if result == true then
                    Rayfield:Destroy()
    endlocal player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local isR6 = character:FindFirstChild("Torso") ~= nil

local function showNotification(message)
    local notificationGui = Instance.new("ScreenGui")
    notificationGui.Name = "NotificationGui"
    notificationGui.Parent = game.CoreGui

    local notificationFrame = Instance.new("Frame")
    notificationFrame.Size = UDim2.new(0, 300, 0, 50)
    notificationFrame.Position = UDim2.new(0.5, -150, 1, -60)
    notificationFrame.AnchorPoint = Vector2.new(0.5, 1)
    notificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.Parent = notificationGui

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = notificationFrame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -20, 1, 0)
    textLabel.Position = UDim2.new(0, 10, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = message .. " | by pyst"
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Font = Enum.Font.SourceSansSemibold
    textLabel.TextSize = 18
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = notificationFrame

    notificationFrame.BackgroundTransparency = 1
    textLabel.TextTransparency = 1

    game:GetService("TweenService"):Create(
        notificationFrame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {BackgroundTransparency = 0}
    ):Play()

    game:GetService("TweenService"):Create(
        textLabel,
        TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {TextTransparency = 0}
    ):Play()

    task.delay(5, function()
        game:GetService("TweenService"):Create(
            notificationFrame,
            TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        ):Play()

        game:GetService("TweenService"):Create(
            textLabel,
            TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {TextTransparency = 1}
        ):Play()

        task.delay(0.5, function()
            notificationGui:Destroy()
        end)
    end)
end

-- Show notification based on rig type
if isR6 then
    showNotification("R6 detected")
else
    showNotification("R15 detected")
end

-- Create Screen GUI
local gui = Instance.new("ScreenGui")
gui.Name = "BangGui"
gui.Parent = game.CoreGui

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 300)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 20)
uicorner.Parent = mainFrame

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -60, 0, 30)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Choose"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansSemibold
title.TextSize = 24
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -80, 0, 0)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 20
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Parent = mainFrame

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 10)
minimizeCorner.Parent = minimizeButton

local minimized = false
minimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        mainFrame:TweenSize(UDim2.new(0, 300, 0, 30), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.5)
    else
        mainFrame:TweenSize(UDim2.new(0, 300, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5)
    end
end)

-- Dragging Functionality
local dragging, dragStart, startPos
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- Scrolling Frame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -20, 1, -50)
scrollingFrame.Position = UDim2.new(0, 10, 0, 40)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 300)
scrollingFrame.ScrollBarThickness = 6
scrollingFrame.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 10)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.Parent = scrollingFrame

-- Buttons Data
local buttons = {
    {name = "Bang V2", r6 = "https://pastebin.com/raw/aPSHMV6K", r15 = "https://pastebin.com/raw/1ePMTt9n"},
    {name = "Get Banged", r6 = "https://pastebin.com/raw/zHbw7ND1", r15 = "https://pastebin.com/raw/7hvcjDnW"},
    {name = "Suck", r6 = "https://pastebin.com/raw/SymCfnAW", r15 = "https://pastebin.com/raw/p8yxRfr4"},
    {name = "Get Suc", r6 = "https://pastebin.com/raw/FPu4e2Qh", r15 = "https://pastebin.com/raw/DyPP2tAF"},
    {name = "Jerk", r6 = "https://pastefy.app/wa3v2Vgm/raw", r15 = "https://pastefy.app/YZoglOyJ/raw"}
}

for _, buttonData in pairs(buttons) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    button.Text = buttonData.name
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = scrollingFrame

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = button

    button.MouseButton1Click:Connect(function()
        if isR6 then
            loadstring(game:HttpGet(buttonData.r6))()
        else
            loadstring(game:HttpGet(buttonData.r15))()
        end
    end)
                        end
})

Tabs.UISettings:CreateDropdown({
    Name = "Select UI Theme",
    Options = {"Default", "AmberGlow", "Amethyst", "Bloom", "DarkBlue", "Green", "Ocean", "Light", "Serenity"},
    CurrentOption = {"AmberGlow"},
    MultipleOptions = false,
    Flag = "SelectThemeDropdown",
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

Window:SelectTab(Tabs.Scripts)

--Variables and Functions
_G.itemgrabber = false
_G.antiafk = false
char = game.Players.LocalPlayer.Character
plrname = char.Parent
hum = char.Humanoid
itemDelay = 3

function itemgrab()
    while _G.itemgrabber do
        wait(itemDelay) -- you can change the delay here
        char = game:GetService('Players').LocalPlayer.Character
        game:GetService('Players').LocalPlayer.CharacterAdded:connect(function(body)
        char = body end)
        for i,v in pairs(workspace:GetDescendants()) do
            if v:IsA('Tool') then
                char.Humanoid:EquipTool(v) 
            end 
        end
    end
end
function antikick()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

--GUI
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = lib:Create{
    Name = "Home",
    Size = UDim2.fromOffset(600, 400),
    Theme = lib.Themes.Dark,
    Link = "https://noftns-hacks/a-bizarre-village-gui"
}
GUI:Notification{
	Title = "Alert",
	Text = "This was made by a 10 year old only so don't judge (not kidding)",
	Duration = 3,
	Callback = function() end
}

--Tabs
local item = GUI:Tab{
	Name = "Items",
	Icon = "rbxassetid://9097208911"
}
local misc = GUI:Tab{
	Name = "Misc.",
	Icon = "rbxassetid://9097184824"
}

--Item Tab
item:Toggle{
	Name = "Item Farm",
	StartingState = false,
	Description = "Picks up items every 3 seconds",
	Callback = function(state)
        _G.itemgrabber = state
        if state then
            itemgrab()
        end
    end
}
item:Slider{
	Name = "Item Farm Delay",
	Default = 3,
	Min = 3,
	Max = 50,
	Callback = function(d) 
        itemDelay = d 
    end
}

--Misc. Tab
misc:Slider{
	Name = "Walkspeed",
	Default = 16,
	Min = 16,
	Max = 100,
	Callback = function(d) 
        hum = game.Players.LocalPlayer.Character.Humanoid
		hum.Walkspeed = d
    end
}
misc:Slider{
	Name = "Jump Power",
	Default = 30,
	Min = 30,
	Max = 100,
	Callback = function(d)
 		hum = game.Players.LocalPlayer.Character.Humanoid 
        hum.JumpPower = d 
    end
}
misc:Toggle{
	Name = "Anti AFK",
	StartingState = false,
	Description = "Makes the game not kick you every 20 min.",
	Callback = function(state)
        _G.antiafk = state
        if state then
            antikick()
        end
    end
}
misc:Button{
	Name = "Hide Nametag",
	Description = "Hides your nametag.",
	Callback = function()
        name = game.Players.LocalPlayer.Character.NameTag.Visible
        if name then
            name = false
            GUI:Notification{
                Title = "Success!",
                Text = "Your nametag is hidden.",
                Duration = 3,
            }
        else
            GUI:Notification{
                Title = "Error",
                Text = "Due to an error, your nametag is still visible.",
                Duration = 3,
            }
        end
    end
}

--Credits
GUI:Credit{
	Name = "NoftN (@LuaScripter12921)",
	Description = "Scripter",
	V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2666769/NoftN",
	Discord = "NoftN#3799"
}
GUI:Credit{
	Name = "ErrorSans1276",
	Description = "He didn't really help but he's chub",
	V3rm = "no v3rm",
	Discord = "GamingStaminaZach_alt#6103"
}

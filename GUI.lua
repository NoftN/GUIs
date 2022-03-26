local discinv = "https://discord.gg/qTmbWQ2MMa"

local getGame = pcall(function()
    loadstr = game:HttpGet("https://github.com/NoftN/GUIs"..game.PlaceId..".lua")
end)
if getGame == true then
    loadstring(loadstr)()
else
    game.Players.LocalPlayer:Notify("The game you're playing is not supported. ")
    game.Players.LocalPlayer:Notify("Discord Invite has been copied to clipboard.")
    setclipboard(discinv)
end

local discinv = 

local getGame = pcall(function()
    loadstr = game:HttpGet("https://github.com/NoftN/GUIs"..game.PlaceId..".lua")
end)
if getGame == true then
    loadstring(loadstr)()
else
    game.Players.LocalPlayer:Notify("The game you're playing is not supported. ")
end

if not game:IsLoaded() then game.Loaded:Wait() end

local g = game
local Pl = g:GetService("Players")
local Lpr = Pl.LocalPlayer
local pid = g.PlaceId

local Forge = "https://pandadevelopment.net/virtual/file/7d760db9ae52f41e"

local List = {
    [129009554587176] = Forge, -- FORGE
    [76558904092080]  = Forge, -- FORGE
    [131884594917121] = Forge, -- FORGE
    [121864768012064] = "", -- FISH IT
}

local Link = List[pid]

if Link then
    local s, e = pcall(function() loadstring(g:HttpGet(Link))() end)
    if not s then warn("Err: "..tostring(e)) end
else
    Lpr:Kick("PlaceID: "..pid.." Not Compatible")
end

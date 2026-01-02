local placeIds = {
    [76558904092080] = "649ea55511e8302dc8a59efb1af6b9dc", -- forge 1
    [129009554587176] = "649ea55511e8302dc8a59efb1af6b9dc", -- forge 2
    [131884594917121] = "649ea55511e8302dc8a59efb1af6b9dc",
}

local currentPlaceId = game.PlaceId
local scriptId = placeIds[currentPlaceId]

if scriptId then
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/" .. scriptId .. ".lua"))()
    end)
    
    if not success then
        warn("Load failed:", result)
    end
else
    warn("Game not supported. PlaceId:", currentPlaceId)
end
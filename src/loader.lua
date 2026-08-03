local Games = {
    [0987654321] = "game1.lua",
    [1234567890] = "game2.lua",
}

local scriptPath = Games[game.PlaceId]

if not scriptPath then
    warn(("Unsupported game (PlaceId: %d)"):format(game.PlaceId))
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/N1ghtTerror/SwiftHub/refs/heads/main/src/init.lua"))()

local BASE_URL = getgitpath("games")
local source = game:HttpGet(BASE_URL .. scriptPath)
local chunk, err = loadstring(source)

assert(chunk, err)()
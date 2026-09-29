local Games = {
	[124216119978534] = "RideAPet.lua",
}

local scriptPath = Games[game.PlaceId]

if not scriptPath then
	warn(("Unsupported game (PlaceId: %d)"):format(game.PlaceId))
	return
end

local BASE_URL = "https://raw.githubusercontent.com/N1ghtTerror/SwiftHub/refs/heads/main/src/games/"
local source = game:HttpGet(BASE_URL .. scriptPath)
local chunk, err = loadstring(source)

assert(chunk, err)()

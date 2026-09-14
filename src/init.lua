if not game:IsLoaded() then
	game.Loaded:Wait()
end

local env = getgenv()

function env.getgitpath(where)
	local mainBuild = "https://raw.githubusercontent.com/N1ghtTerror/SwiftHub/refs/heads/main/"
	if where == "src" then
		return mainBuild .. "src/"
	elseif where == "games" then
		return mainBuild .. "src/games/"
	elseif where == "assets" then
		return mainBuild .. "src/assets/"
	end
end

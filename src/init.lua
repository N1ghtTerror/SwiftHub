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
	elseif where == "utility" then
		return mainBuild .. "src/utility/"
	end
end

function env.getimage(name)
	if not isfile(name) then
		local url = env.getgitpath("utility") .. "images/" .. name
		local success, result = pcall(function()
			return game:HttpGet(url)
		end)

		if not success then
			return nil
		end

		writefile(name, result)
	end

	if getcustomasset then
		return getcustomasset(name)
	end

	return nil
end

return env

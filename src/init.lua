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
	end
end
game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(false)
if queue_on_teleport then
	queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/N1ghtTerror/SwiftHub/refs/heads/main/src/init.lua"))()')
end
local GET_OUT = "this isnt ur job to touch, delete this and the script will not WORK"
local BASE_URL = "https://api.yosh.codes/roblox/user/"
local robot = "https://google.com/robots.txt"
----


local tenverse = {}
local fetch = require(script.fetchu)

function checkForHTTP()
	local s = pcall(function()
		fetch.get(robot)
	end)
	return s
end


function tenverse.search(discordID)
	if checkForHTTP() == false then
		warn("Tenverse cannot run until HTTP Services is enabled.")
	else
		local get_url = BASE_URL..discordID
		local response = fetch.get(get_url)
		local body = game:GetService("HttpService"):JSONDecode(response)
		if body.statusCode == 200 then
			local robloxName = body.robloxUsername
			print(robloxName)
		elseif body.statusCode == 404 then
			local Error = body.message
			warn("Not found!")
		end

	end
end

function tenverse.raining_tacos(enabled)
	if enabled == true then
		local WAP = Instance.new("Sound")
		WAP.Parent = game.SoundService
		WAP.SoundId = "rbxassetid://5113602105"
		WAP.Looped = true
		WAP.Volume = 3
		WAP:Play()
	else
		warn("Secret feature disabled.")
	end


end


return tenverse

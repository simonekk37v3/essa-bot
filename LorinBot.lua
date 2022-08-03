local discordia = require('discordia')
local client = discordia.Client()

Online = 0 

client:on('ready', function()
	print('Logged in as '.. client.user.username)
	
end)

client:on("messageCreate", function(message)
    local content = message.content
	local member = message.member
	local memberid = message.member.id
if content:lower() == "!ping" then
    message:reply(pong) 
end
if content:lower() == "!UwU" then 
    message:reply("UwU")
end
if content:lower():sub(1,#"!essa") == "!essa" then
	local mentioned = message.mentionedUsers
	if #mentioned == 1 then
		message.reply("<@!"..mentioned[1][1].."> ma "..math.random(1,100).."% essy. :sunglasses:")
    elseif #mentioned == 0 then
		message:reply("<@!"..memberid.."> ma "..math.random(1,100).."% essy. :sunglasses:")
	end
	if content:lower():sub(1,#"!fiut") == "!fiut" then
		local mentioned = message.mentionedUsers
		if #mentioned == 1 then
			message.reply("<@!"..mentioned[1][1].."> ma "..math.random(1,100).."% cm fiuta. :sunglasses:")
		elseif #mentioned == 0 then
			message:reply("<@!"..memberid.."> ma "..math.random(1,100).."% cm fiuta. :sunglasses:")
		end
	end
end
end)
client:on("messageCreate", function(message)
    local content = message.content
	local member = message.member
	local memberid = message.member.id
if content:lower() == "!essteregg" then
    message:reply("nic") 
end
if content:lower():sub(1,#"!fiut") == "!fiut" then
	local mentioned = message.mentionedUsers
	if #mentioned == 1 then
		message.reply("<@!"..mentioned[1][1].."> ma "..math.random(1,100).." cm fiuta. :sunglasses:")
	elseif #mentioned == 0 then
		message:reply("<@!"..memberid.."> ma "..math.random(1,100).." cm fiuta. :sunglasses:")
	end
end
end)
client:run('Bot MTAwNDAxODMxNjIyMzk5MTg0OQ.GHpnjM.4-m1aIeDwXxq4lij86MqSy8_x-dhMrxFNSAu-U')
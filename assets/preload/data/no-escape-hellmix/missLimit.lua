--easy configs--
missLimit = 10 --this is the miss limit, if you put the value 0 you will die instantly, so dont put 0
cantDie = true --if the value is true you can only die by the miss limit
showHealthBar = false --if the value is false the health bar will not be shown
textSize = 30 --da text size


--da code--
local ognotemiss = 0
function onCreate()
	makeLuaText('limitText', 'Miss limit:', 1210, 'timeTxt.X', 80)
	--setTextAlignment('limitText', 'left')
	setObjectCamera('limitText', 'hud')
	screenCenter('limitText', 'x')
	setTextSize('limitText', textSize)
	setProperty('limitText.alpha', 0)
	addLuaText('limitText')

	makeLuaText('limit', missLimit, 1410, 'timeTxt.X', 120)
	--setTextAlignment('limit', 'left')
	setObjectCamera('limit', 'hud')
	screenCenter('limit', 'x')
	setTextSize('limit', textSize)
	setProperty('limit.alpha', 0)
	addLuaText('limit')
end

function onUpdate()
	if misses >= missLimit then
		setProperty('health', 0)
	end
	if cantDie == true and misses <= missLimit then
    	if getProperty('health') <= 0.1 then
      	  setProperty('health', 0.025)
    	end
	end
	if showHealthBar == false then
		setProperty('healthBarBG.visible', false)
		setProperty('healthBar.visible', false)
		setProperty('iconP1.visible', false)
		setProperty('iconP2.visible', false)
	else
		setProperty('healthBarBG.visible', true)
		setProperty('healthBar.visible', true)
		setProperty('iconP1.visible', true)
		setProperty('iconP2.visible', true)
	end

	local missesleft = missLimit - misses

	if not lie then
		setTextString('limit', missesleft)
	end
end

function onStepHit()
	if songName == 'No Escape EMIX' then
		if curStep == 2016 then
			lie = true
			setTextString('limit', 'INF')
			setTextColor('limit', 'fff63937')
			cantDie = false
			showHealthBar = true
			sendMessage('<Server> Miss Limit Disabled.', true, false)
			sendMessage('<Server> 6K Enabled.', true, false)
			sendMessage("<Z11Gaming> I've Disabled The Miss Limit. Good Luck!", false, false)
			missesleft = 10
		end
		if curStep == 2032 then
			sendMessage("<Z11Gaming> You're Gonna Need It.", false, true)
		end
		if curStep == 2560 then
			lie = false
			missesleft = missesleft - ognotemiss / 2
			setTextString('limit', missesleft)
			setTextColor('limit', 'ffffffff')
			cantDie = true
			showHealthBar = false
			sendMessage('<Server> Miss Limit Enabled.', true, false)
			sendMessage('<Server> 6K Disabled.', true, false)
			sendMessage("<Z11Gaming> Good job!", false, false)
		end
	end
end

function onSongStart()
	doTweenAlpha('limitTextTween', 'limitText', 1, 0.5, linear)
	doTweenAlpha('limitTween', 'limit', 1, 0.3, linear)
end

function noteMiss()
	if curStep >= 2016 and curStep <= 2560 then
		ognotemiss = ognotemiss + 1
	end
end

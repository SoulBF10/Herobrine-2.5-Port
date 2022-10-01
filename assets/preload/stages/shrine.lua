local name = 'tutorial'
function onCreate()
    name = songName:gsub(" ", "-")
    name = name:lower()

    local skyName = 'sky_blue'
	local skyNameAlt = 'sky_blue'
	if (name == 'no-escape') then
        skyName = 'night_sky'
		makeLuaSprite('bg1funnie', 'RTXBrin', -1270, 300)
		setScrollFactor('bg1funnie', 0.99, 0.99)
		scaleObject('bg1funnie', 200, 200)
		screenCenter('bg1funnie')
		addLuaSprite('bg1funnie', false)
	end
	if (name == 'no-escape-hellmix') then
        skyName = 'night_sky'
	end
	if (name == 'final-warning') then
		skyName = 'sunset_sky'
		skyNameAlt = 'night_sky'
	end
	if (name == 'final-warning-smokemix') then
		skyName = 'sunset_sky'
		skyNameAlt = 'night_sky'
	end
	if (name == 'danger') then
		skyName = 'sunset_sky'
		skyNameAlt = 'night_sky'
	end
	if (name == 'crashlog') then
		skyName = 'night_sky'
	end
	if name == 'crashlog' then
		precacheImage('characters/Brin_Glitched')
		precacheImage('characters/bf_steve_glitch')
		makeLuaSprite('bg1_g', 'stages/plain/glitch_sky', -1750, -1500)
		setScrollFactor('bg1_g', 0.1, 0.1)
		scaleObject('bg1_g', 2, 2)
	
		makeLuaSprite('bg2_g', 'stages/plain/glitch_backmc', -1300, 0)
		setScrollFactor('bg2_g', 0.5, 0.5)
		scaleObject('bg2_g', 1.7, 2.7)
	
		makeLuaSprite('fg_g', 'stages/plain/glitch_groundmc', -300, 2400)
		scaleObject('fg_g', 1.1,1,1)
	
		makeAnimatedLuaSprite('thesummoning_g', 'stages/plain/glitch_Shrine', 1000, 1850)
		addAnimationByPrefix('thesummoning_g', 'idle', 'razershrine omggfire', 24, false)
		scaleObject('thesummoning_g', 2.6, 2.6)
		setProperty("thesummoning_g.scale.x", 2.2)
		setProperty("thesummoning_g.scale.y", 2.2)
		addLuaSprite("bg1_g")
		addLuaSprite("bg2_g")
		addLuaSprite("fg_g")
		addLuaSprite("thesummoning_g")
		makeLuaSprite('bg1', 'stages/plain/'..skyName, -1750, -1500)
		setScrollFactor('bg1', 0.1, 0.1)
		scaleObject('bg1', 2, 2)
		addLuaSprite('bg1', false)
	
		makeLuaSprite('bg1a', 'stages/plain/'..skyNameAlt, -1750, -1500)
		setScrollFactor('bg1a', 0.1, 0.1)
		scaleObject('bg1a', 2, 2)
		addLuaSprite('bg1a', false)
		setProperty('bg1a.alpha', 0)
	
		makeLuaSprite('bg2', 'stages/plain/backmc', -1300, 0)
		setScrollFactor('bg2', 0.5, 0.5)
		scaleObject('bg2', 1.7, 2.7)
		addLuaSprite('bg2', false)
	
		makeLuaSprite('fg', 'stages/plain/groundmc', -300, 2400)
		scaleObject('fg', 1.1,1,1)
		addLuaSprite('fg', false)
	
		makeAnimatedLuaSprite('thesummoning', 'stages/plain/Shrine', 1000, 1850)
		addAnimationByPrefix('thesummoning', 'idle', 'shrine', 24, false)
		scaleObject('thesummoning', 2.6, 2.6)
		setProperty("thesummoning.scale.x", 2.2)
		setProperty("thesummoning.scale.y", 2.2)
		addLuaSprite('thesummoning', false)
	else if name == 'deletion' or name == 'diverge' then
		makeLuaSprite('bg1_g', 'stages/plain/glitch_sky', -1750, -1500)
		setScrollFactor('bg1_g', 0.1, 0.1)
		scaleObject('bg1_g', 2, 2)
	
		makeLuaSprite('bg2_g', 'stages/plain/glitch_backmc', -1300, 0)
		setScrollFactor('bg2_g', 0.5, 0.5)
		scaleObject('bg2_g', 1.7, 2.7)
	
		makeLuaSprite('fg_g', 'stages/plain/glitch_groundmc', -300, 2400)
		scaleObject('fg_g', 1.1,1,1)
	
		makeAnimatedLuaSprite('thesummoning_g', 'stages/plain/glitch_Shrine', 1000, 1850)
		addAnimationByPrefix('thesummoning_g', 'idle', 'razershrine omggfire', 24, false)
		scaleObject('thesummoning_g', 2.6, 2.6)
		setProperty("thesummoning_g.scale.x", 2.2)
		setProperty("thesummoning_g.scale.y", 2.2)
		addLuaSprite("bg1_g")
		addLuaSprite("bg2_g")
		addLuaSprite("fg_g")
		addLuaSprite("thesummoning_g")
	else
		makeLuaSprite('bg1', 'stages/plain/'..skyName, -1750, -1500)
		setScrollFactor('bg1', 0.1, 0.1)
		scaleObject('bg1', 2, 2)
		addLuaSprite('bg1', false)
	
		makeLuaSprite('bg1a', 'stages/plain/'..skyNameAlt, -1750, -1500)
		setScrollFactor('bg1a', 0.1, 0.1)
		scaleObject('bg1a', 2, 2)
		addLuaSprite('bg1a', false)
		setProperty('bg1a.alpha', 0)
	
		makeLuaSprite('bg2', 'stages/plain/backmc', -1300, 0)
		setScrollFactor('bg2', 0.5, 0.5)
		scaleObject('bg2', 1.7, 2.7)
		addLuaSprite('bg2', false)
	
		makeLuaSprite('fg', 'stages/plain/groundmc', -300, 2400)
		scaleObject('fg', 1.1,1,1)
		addLuaSprite('fg', false)
	
		makeAnimatedLuaSprite('thesummoning', 'stages/plain/Shrine', 1000, 1850)
		addAnimationByPrefix('thesummoning', 'idle', 'shrine', 24, false)
		scaleObject('thesummoning', 2.6, 2.6)
		setProperty("thesummoning.scale.x", 2.2)
		setProperty("thesummoning.scale.y", 2.2)
		addLuaSprite('thesummoning', false)
		playAnim('thesummoning', 'idle', false)
		end
	end

end

function onCreatePost()
	if name ~= "final-warning-smokemix" and name ~= "danger" then
    	setProperty("gf.visible", false)    -- cuz psych is retarded af (what else is new?) and moves the camera out of boundsif you hide her in the stage's JSON
	end
	if name == "final-warning-smokemix" or name == "danger" then
    	setProperty("gf.alpha", 0)    -- cuz psych is retarded af (what else is new?) and moves the camera out of boundsif you hide her in the stage's JSON
		setProperty("gf.y", 2400) 
	end

	if (name == 'final-warning') then
		setProperty('dad.color', getColorFromHex('fc9458'))
		setProperty('boyfriend.color', getColorFromHex('fc9458'))
	end
	if (name == 'no-escape') then
		setProperty('dad.color', getColorFromHex('9bdaf7'))
		setProperty('boyfriend.color', getColorFromHex('70b7d8'))
		setProperty('thesummoning.color', getColorFromHex('f5fc97'))
    end
	if (name == 'no-escape-hellmix') then
		setProperty('bg1.color', getColorFromHex('e71837'))
		setProperty('bg2.color', getColorFromHex('e71837'))
		setProperty('fg.color', getColorFromHex('e71837'))
		setProperty('dad.color', getColorFromHex('e71837'))
		setProperty('boyfriend.color', getColorFromHex('e71837'))
		setProperty('thesummoning.color', getColorFromHex('e71837'))
	end
end

function onUpdate(elapsed)
	if curStep >= 0 then
		songPos = getSongPosition()
		local currentBeat = (songPos / 1000) * (bpm / 80)       -- what? 
		if (name == 'no-escape') then
            setProperty('dad.y', 1200 - 310 * math.sin((currentBeat * 0.25) * math.pi))
			setProperty('dad.x', 1000 - 310 * math.sin((currentBeat * 0.42) * math.pi))
		end
		if (name == 'final-warning') then
            setProperty('dad.y', 1200 - 310 * math.sin((currentBeat * 0.25) * math.pi))
			setProperty('dad.color', getColorFromHex('fc9458'))
			setProperty('boyfriend.color', getColorFromHex('fc9458'))
		end
		if (name == 'final-warning-smokemix') then
			if curStep == 2 then
				addCharacterToList('pico-bigger', 'gf')
			end
			if curStep == 1136 then
				doTweenAlpha("gflmao", "gf", 1, 1, 'expoin')
			end
		end
		if (name == 'danger') then
			if curStep == 2 then
				addCharacterToList('gfmc', 'gf')
			end
			if curStep == 1400 then
				doTweenAlpha("gflmao", "gf", 1, 1, 'expoin')
			end
		end
	end
end

function onUpdatePost()
	playAnim('thesummoning', 'idle', false)
	playAnim('thesummoning_g', 'idle', false)
end

function onStepHit()
	if (name == 'crashlog') then
		if curStep == 3855 then
			triggerEvent("glitchin")
		end
		if curStep == 3858 then
			triggerEvent("glitchout")
		end
		if curStep == 3860 then
			triggerEvent("glitchin")
		end
		if curStep == 3862 then
			triggerEvent("glitchout")
		end
		if curStep == 3864 then
			triggerEvent("alldone")
		end
	--	if curStep == 5141 then
	--		sendAlert('Re-open the game to find me :)', 'Error: Crashlog')
	--		os.exit(0)
	--	end
	end
end

local g = false
local objs = {"thesummoning", "bg1", "bg2", "fg"}
function onEvent(name)
    if name == "glitchin" then
        g = true
        if g then
            triggerEvent("Change Character", "dad", "brin")
            triggerEvent("Change Character", "bf", "bf_steve")
        end
        for i = 1, #objs do
			doTweenAlpha(objs[i], objs[i], 1, 0.1, 'linearInOut')
        end
    end
    if name == "glitchout" then
        g = true
        if g then
            triggerEvent("Change Character", "dad", "brin-g")
            triggerEvent("Change Character", "bf", "bf_steve-g")
        end
        for i = 1, #objs do
			doTweenAlpha(objs[i], objs[i], 0, 0.1, 'linearInOut')
        end
    end
	if name == "alldone" then
        for i = 1, #objs do
			removeLuaSprite(objs[i], true)
        end
    end
end
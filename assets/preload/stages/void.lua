function onCreate()
    makeLuaSprite('bg1', 'stages/void/average_gamer', -700, -900)
    scaleObject('bg1', 2.5, 2.5)
    addLuaSprite('bg1', false)

    makeAnimatedLuaSprite("sky", "stages/void/Untitled-1", 0, -1500)
    scaleObject("sky", 5.8, 5.8)
    addAnimationByPrefix('sky', 'idle', 'lol', 24, true)
    addLuaSprite("sky")
    objectPlayAnimation('sky', 'idle', true)
    setProperty('sky.alpha', 0.5)
    setProperty('GameOverSubstate.characterName', 'Bf_')
end

function onCreatePost()
    setProperty('gfGroup.color', getColorFromHex('8f6bec'))
    if songName ~= "fallen" then
        setProperty('gfGroup.visible', false)
    end
end

function onUpdate()
    if songName == "Bedrock" then
        if curStep == 575 then 
            setProperty('gfGroup.visible', true)
        end
    end
end
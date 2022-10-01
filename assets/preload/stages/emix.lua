local name = 'gay'
local default = true
function onCreate()
    name = songName:gsub(" ", "-")
    name = name:lower()
    if name == 'no-escape-emix' then
        default = false
        makeLuaSprite('bg1', 'stages/emix/night1', -700, -1700)
        scaleObject('bg1', 2.2, 2.2)
        addLuaSprite('bg1', false)

        makeLuaSprite("sky")
        makeLuaSprite("sky", "stages/emix/island")
        setProperty("sky.x", -950)
        setProperty("sky.y", -1400)
        scaleObject("sky", 2.5, 2.5)
        addLuaSprite("sky")

        makeLuaSprite("ground")
        makeLuaSprite("ground", "stages/emix/cliff", -750)
        setProperty("ground.y", -750)
        scaleObject("ground", 1.7, 1.7)
        addLuaSprite("ground")
    end
    if name == 'no-escape-hellmix' then
        default = false
        makeLuaSprite('bg1', 'stages/emix/night1', -700, -1700)
        scaleObject('bg1', 2.2, 2.2)
        addLuaSprite('bg1', false)

        makeLuaSprite("sky")
        makeLuaSprite("sky", "stages/emix/island")
        setProperty("sky.x", -950)
        setProperty("sky.y", -1400)
        scaleObject("sky", 2.5, 2.5)
        addLuaSprite("sky")

        makeLuaSprite("ground")
        makeLuaSprite("ground", "stages/emix/cliff", -750)
        setProperty("ground.y", -750)
        scaleObject("ground", 1.7, 1.7)
        addLuaSprite("ground")
    end
    if name == 'final-warning-emix' then
        default = false
        makeLuaSprite('bg1', 'stages/emix/sunset_sky', -700, -1300)
        scaleObject('bg1', 1.8, 1.8)
        addLuaSprite('bg1', false)

        makeAnimatedLuaSprite("sky", "stages/emix/FireVillage", 0, 0)
        scaleObject("sky", 3.2, 3.2)
        addAnimationByPrefix('sky', 'idle', 'hot instance ', 24, true)
        addLuaSprite("sky")
        objectPlayAnimation('sky', 'idle', true)

        makeLuaSprite("ground")
        makeLuaSprite("ground", "stages/emix/cliff1", -1200)
        setProperty("ground.y", -200)
        scaleObject("ground", 1.6, 1.6)
        addLuaSprite("ground")
    end
    if default ~= false then
        makeLuaSprite('bg1', 'stages/plain/sky_blue', -700, -1300)
        scaleObject('bg1', 1.8, 1.8)
        addLuaSprite('bg1', false)

        makeLuaSprite("sky")
        makeLuaSprite("sky", "stages/emix/grassbg1")
        setProperty("sky.x", -500)
        setProperty("sky.y", -950)
        scaleObject("sky", 2.5, 2.5)
        addLuaSprite("sky")

        makeLuaSprite("ground")
        makeLuaSprite("ground", "stages/emix/cliff1", -1200)
        setProperty("ground.y", -300)
        scaleObject("ground", 1.6, 1.6)
        addLuaSprite("ground")
    end
end

function onCreatePost()
    if default ~= false then
        if  name == 'final-warning-emix' then
            setProperty('dad.color', getColorFromHex('9bdaf7'))
            setProperty('boyfriend.color', getColorFromHex('70b7d8'))
        end
        if  name == 'no-escape-emix' then
            setProperty('dad.color', getColorFromHex('fc9458'))
            setProperty('boyfriend.color', getColorFromHex('fc9458'))
        end
    end
end
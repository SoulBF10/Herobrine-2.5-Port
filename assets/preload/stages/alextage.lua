function onCreate()
    makeLuaSprite("sky")
    makeGraphic("sky", screenWidth * 3, screenHeight * 3, "E1F1FF")
    setProperty("sky.x", 0 - getProperty("sky.width") * 0.5)
    setProperty("sky.y", 0 - getProperty("sky.height") * 0.5)
    setProperty("sky.scrollFactor.x", 0)
    setProperty("sky.scrollFactor.y", 0)
    addLuaSprite("sky")

    makeLuaSprite("bg", "stages/alex/bg", -400)
    addLuaSprite("bg")

    makeLuaSprite("fog")
    makeGraphic("fog", screenWidth * 3, screenHeight * 3, "0x60E1F1FF")
    setProperty("fog.x", 0 - getProperty("fog.width") * 0.5)
    setProperty("fog.y", 0 - getProperty("fog.height") * 0.5)
    setProperty("fog.scrollFactor.x", 0)
    setProperty("fog.scrollFactor.y", 0)
    addLuaSprite("fog")


end

-- 14
local poggies = {"bf", "brine", "cg", "faker", "glitch", "jd", "lem", "indi", "magi", "oj", "poggy", "spook", "sus", "z", "prop"}
function onCreatePost()
    setProperty("gf.visible", false)

    makeLuaSprite("hut", "stages/alex/hut", 0, 740)
    setObjectOrder("hut", getObjectOrder("dadGroup") + 1)
    addLuaSprite("hut")

    local name = poggies[getRandomInt(1, #poggies)]
    makeAnimatedLuaSprite("poggy", "stages/alex/poggy/"..name, 560, 610)
    addAnimationByPrefix("poggy", "idle", "PoggyIdle instance 1", 24, false)
    playAnim("poggy", "idle")
    setObjectOrder("poggy", getObjectOrder("hut") + 1)
    scaleObject("poggy", 1.3, 1.3)
    makeAnimatedLuaSprite("fucknut", "stages/alex/BloodLust_Steve", 60, 710)
    addAnimationByPrefix("fucknut", "idle", "Steve", 24, false)
    playAnim("fucknut", "idle")
    setObjectOrder("fucknut", getObjectOrder("boyfriendGroup") + 2)
    scaleObject("fucknut", 1.3, 1.3)
    addLuaSprite("fucknut")
    addLuaSprite("poggy")
end

function onBeatHit()
    if curBeat % 2 == 0 then
        playAnim("poggy", "idle", true)
        playAnim("fucknut", "idle", true)
    end
    if curBeat == 16 then
        doTweenY("alextween", "dad", 0, 8, "Quad")
    end
end
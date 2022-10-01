function onStepHit()
    if curStep == 2112 then
        setProperty("camGame.alpha", 0.0001)
        setProperty("mcHP.visible", false)
    end
    if curStep == 2122 then
        triggerEvent("Chat", "Girlfriend has left the game", "true,false")
    end
end
function onBeatHit()
    if curBeat == 4 then
        setProperty("camZooming", true)
    end
end

function onStepHit()
    if curStep >= 504 and curStep < 512  then
        for i = 4, 7 do
            setPropertyFromGroup("strumLineNotes", i, "x", math.random(0, 1168))
            setPropertyFromGroup("strumLineNotes", i, "y", math.random(0, 608))
        end
        setProperty("camGame.zoom", 0.1 * math.random(0, 10))
    end
    if curStep == 512 then
        for i = 4, 7 do
            noteTweenX("bakX"..i, i, _G["defaultPlayerStrumX"..(i - 4)], 60 / curBpm, "smootherstepout")
            noteTweenY("bakY"..i, i, _G["defaultPlayerStrumY"..(i - 4)], 60 / curBpm, "smootherstepout")
        end
    end
    if curStep >= 1528 and curStep < 1535  then
        for i = 4, 7 do
            setPropertyFromGroup("strumLineNotes", i, "x", math.random(0, 1168))
            setPropertyFromGroup("strumLineNotes", i, "y", math.random(0, 608))
        end
        setProperty("camGame.zoom", 0.1 * math.random(0, 10))
    end
    if curStep == 1535 then
        for i = 4, 7 do
            noteTweenX("bakX"..i, i, _G["defaultPlayerStrumX"..(i - 4)], 60 / curBpm, "smootherstepout")
            noteTweenY("bakY"..i, i, _G["defaultPlayerStrumY"..(i - 4)], 60 / curBpm, "smootherstepout")
        end
    end
end

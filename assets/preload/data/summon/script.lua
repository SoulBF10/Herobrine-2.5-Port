function onBeatHit()
    if modchart then
        if curBeat == 451 then
            noteTweenX("iyoo", 6, getPropertyFromGroup("strumLineNotes", 7, "x"), 60 / curBpm, "quadout")
            noteTweenAngle("iyooA", 6, 90, 60 / curBpm, "quadout")
        end
        if curBeat == 452 then
            noteTweenX("iyoo", 6, defaultPlayerStrumX2, (60 / curBpm) * 0.5, "quadout")
            noteTweenAngle("iyooA", 6, 0, 60 / curBpm, "quadout")
        end
    end
end

function onCreatePost()
    for i = 0, 3 do
        setPropertyFromGroup("strumLineNotes", i, "x", _G["defaultPlayerStrumX"..i])
    end
    for i = 4, 7 do
        setPropertyFromGroup("strumLineNotes", i, "x", _G["defaultOpponentStrumX"..i - 4])
    end
end

function onStepHit()
	if curStep == 1 then
		doTweenAlpha("camHUD", "camHUD", 0, 0.5, "linear")
	end
	if curStep == 16 then
		doTweenY("oppHP", "oppHP", -80, 13, "quadIn")
	end
	if curStep == 64 then
		cameraShake("camGame", 0.01, 7)
	end
	if curStep == 128 then
		doTweenAlpha("camHUD", "camHUD", 1, 0.5, "linear")
	end
end
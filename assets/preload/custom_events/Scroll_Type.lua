local opponentStyle = nil
local playerStyle = nil

local screenStyleOpponent = nil

local screenPlayerStyle = nil

local lol = nil --Made to make some events play only once
local lol2 = nil

local playerStyle2 = nil

local ChangeNotesTime = false

local eventDuration = 0.2

local noteOffsetX = 25
local SustainNoteOffsetX = 10

local noteOffsetY = 0
local SustainNoteOffsetY = -32

local downScrollValue = -1

function onEvent(name,v1,v2)
    if name == 'Scroll_Type' then
        opponentStyle = v1
        playerStyle = v2
        runTimer('changeOpponentNotesTo'..opponentStyle,eventDuration/2)
        runTimer('changePlayerNotesTo'..playerStyle,eventDuration/2)
    end
end
function onCreate()
    if getPropertyFromClass('PlayState','isPixelStage') == true then
        noteOffsetX = -42
        noteOffsetY = -60
        SustainNoteOffsetX = -15
        SustainNoteOffsetY = -50
    end
end
function onUpdate()

    if downscroll then
        downScrollValue = 1
    else
        downScrollValue = -1
    end
    if lol ~= opponentStyle then
        for o = 0,3 do
            if opponentStyle == 'Up' then
                noteTweenY('NoteGoUpOppoonentY'..o, o,50,0.2, 'linear')

            elseif opponentStyle == 'Down' then
                noteTweenY('NoteGoDownOpponentY'..o, o,screenHeight - 150,eventDuration,'linear')

            elseif opponentStyle == 'Right' then
                noteTweenX('NoteGoRightOpponentX'..o, o,screenWidth - 150,eventDuration, 'linear')
                noteTweenY('NoteGoRightOpponentY'..o, o,screenHeight/2 - 200 + (110 * (o)),eventDuration,'linear')
                noteTweenAngle('NoteAngleLeftOpponent'..o, o,90,eventDuration,'linear')

            elseif opponentStyle == 'Left' then
                noteTweenX('NoteGoLeftOpponentX'..o, o,50,eventDuration, 'linear')
                noteTweenY('NoteGoLeftOpponentY'..o, o,screenHeight - 200 - (110 * o),eventDuration,'linear')
                noteTweenAngle('NoteAngleLeftOpponent'..o, o,270,eventDuration,'linear')

            elseif opponentStyle == 'Undyne' then
                noteTweenX('NoteGoUndyneOpponentX0', 0,screenWidth/2 - 130,eventDuration, 'linear')
                noteTweenY('NoteGoUndyneOpponentY0', 0,screenHeight/2 - 22,eventDuration,'linear')

                noteTweenX('NoteGoUndyneOpponentX1', 1,screenWidth/2 - 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndyneOpponentY1', 1,screenHeight/2 + 55,eventDuration,'linear')

                noteTweenX('NoteGoUndyneOpponentX2', 2,screenWidth/2 - 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndyneOpponentY2', 2,screenHeight/2 - 110,eventDuration,'linear')

                noteTweenX('NoteGoUndyneOpponentX3', 3,screenWidth/2 + 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndyneOpponentY3', 3,screenHeight/2 - 22,eventDuration,'linear')

                noteTweenAngle('NoteAngleUndyneOpponent'..o, o,0,eventDuration,'linear')

                setPropertyFromGroup('strumLineNotes', o,'alpha', 0.2)
            end
        end

        lol = opponentStyle
    end
    if getPropertyFromGroup('notes' , notesLength, 'mustPress') == false then
        if screenStyleOpponent == 'Down'  then
            for notesLengthOpponent = 0,getProperty('notes.length')-1 do
                if getPropertyFromGroup('notes', notesLengthOpponent, 'isSustainNote') == true then
                    setPropertyFromGroup('notes', notesLengthOpponent, 'flipY',true)

                end
            end
        elseif screenStyleOpponent == 'Up' then
            for notesLengthOpponent = 0,getProperty('notes.length')-1 do
                if getPropertyFromGroup('notes', notesLengthOpponent, 'isSustainNote') == true then
                    setPropertyFromGroup('notes', notesLengthOpponent, 'flipY',false)
                end
            end
        end
    end
    if lol2 ~= playerStyle then
        for p = 4,7 do
            if playerStyle == 'Down' then
                noteTweenY('NoteGoDownPlayerY'..p, p,screenHeight - 150,eventDuration,'linear')

            elseif playerStyle == 'Up' then
                noteTweenY('NoteGoUpPlayerY'..p, p,50,0.2, 'linear')

            elseif playerStyle == 'Right' then
                noteTweenX('NoteGoRightPlayerX'..p, p,screenWidth - 150,eventDuration, 'linear')
                noteTweenY('NoteGoRightPlayerY'..p, p,screenHeight/2 - 200 + (110 * (p - 4)),eventDuration,'linear')
                noteTweenAngle('NoteAngleRightPlayer'..p, p,90,eventDuration,'linear')

            elseif playerStyle == 'Left' then
                noteTweenX('NoteGoLeftPlayerX'..p, p,50,eventDuration, 'linear')
                noteTweenY('NoteGoLeftPlayerY'..p, p,screenHeight - 200 - (110 * (p - 4)),eventDuration,'linear')
                noteTweenAngle('NoteAngleLeftPlayer'..p, p,270,eventDuration,'linear')
                
            elseif playerStyle == 'Undyne' then
                noteTweenX('NoteGoUndynePlayerX4', 4,screenWidth/2 - 130,eventDuration, 'linear')
                noteTweenY('NoteGoUndynePlayerY4', 4,screenHeight/2 - 22.5,eventDuration,'linear')

                noteTweenX('NoteGoUndynePlayerX5', 5,screenWidth/2 - 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndynePlayerY5', 5,screenHeight/2 + 55,eventDuration,'linear')

                noteTweenX('NoteGoUndynePlayerX6', 6,screenWidth/2 - 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndynePlayerY6', 6,screenHeight/2 - 110,eventDuration,'linear')

                noteTweenX('NoteGoUndynePlayerX7', 7,screenWidth/2 + 40,eventDuration, 'linear')
                noteTweenY('NoteGoUndynePlayerY7', 7,screenHeight/2 - 22.5,eventDuration,'linear')

                noteTweenAngle('NoteAngleUndynePlayer'..p, p,0,eventDuration,'linear')
            end
        end

        lol2 = playerStyle
    end
    for notesLengthAll = 0,getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes', notesLengthAll, 'mustPress') == true then
            if screenPlayerStyle == 'Left' then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) + (SustainNoteOffsetX * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',270)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                end
            elseif screenPlayerStyle == 'Right' then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',90)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                end
            elseif screenPlayerStyle == 'Undyne' then
                if getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 0 then
                    if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                    else
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'angle',90)
                        setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    end
                elseif getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 1 or getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 2 then
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    backOffset(getPropertyFromGroup('notes', notesLengthAll, 'noteData'),notesLengthAll,true)
                elseif getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 3 then
                    if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                    elseif getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'angle',270)
                        setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    end
                end
            end
        end
        if getPropertyFromGroup('notes', notesLengthAll, 'mustPress') == false then
            if screenStyleOpponent == 'Left' then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',270)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                end
            elseif screenStyleOpponent == 'Right' then
                if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                else
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                    setPropertyFromGroup('notes',notesLengthAll, 'angle',90)
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                end
            elseif screenStyleOpponent == 'Undyne' then
                if getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 0 then
                    if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                    else
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',0 - (0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'angle',90)
                        setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    end
                elseif getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 1 or getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 2 then
                    setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    backOffset(getPropertyFromGroup('notes', notesLengthAll, 'noteData'),notesLengthAll,false)
                elseif getPropertyFromGroup('notes', notesLengthAll, 'noteData') == 3 then
                    if not getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (noteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (noteOffsetX * downScrollValue))
                    elseif getPropertyFromGroup('notes', notesLengthAll, 'isSustainNote') then
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.y',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * (scrollSpeed * -1)) - (SustainNoteOffsetY * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'offset.x',(0.45 * (getSongPosition() - getPropertyFromGroup('notes', notesLengthAll,'strumTime')) * scrollSpeed) - (SustainNoteOffsetX * downScrollValue))
                        setPropertyFromGroup('notes',notesLengthAll, 'angle',270)
                        setPropertyFromGroup('notes', notesLengthAll, 'flipY',false)
                    end
                end
            end
        end
    end
end


function onTimerCompleted(tag)
    if tag == 'changeOpponentNotesTo'..opponentStyle then
        screenStyleOpponent = opponentStyle
        if opponentStyle == 'Down' then

            for FlipOpponentNotes = 0,3 do
                setPropertyFromGroup('strumLineNotes', FlipOpponentNotes,'downScroll',true)
            end
            if getPropertyFromGroup('notes', notesLength, 'mustPress') == false then
                for notesLengthOpponent = 0,getProperty('notes.length')-1 do
                    if getPropertyFromGroup('notes', notesLengthOpponent, 'isSustainNote') == true then
                        setPropertyFromGroup('notes', notesLengthOpponent, 'flipY',true)
                    end
                end
            end

        elseif opponentStyle == 'Left' or opponentStyle == 'Right' then
            backAlpha(false,true,false,1)

            for FlipOpponentNotes = 0,3 do
                setPropertyFromGroup('strumLineNotes', FlipOpponentNotes,'downScroll',false)
            end
        elseif opponentStyle == 'Up' then
            backOffset(nil,nil,false)
            backAlpha(false,true,true)
            backPosition(false,true,true,false,true)

            for FlipOpponentNotes = 0,3 do
                setPropertyFromGroup('strumLineNotes', FlipOpponentNotes,'downScroll',false)
            end
        elseif opponentStyle == 'Undyne' then
            backAlpha(false,true,false,0.35)
            for strumOpponent = 0,3 do
                if strumOpponent ~= 2 then
                    setPropertyFromGroup('strumLineNotes', strumOpponent,'downScroll',false)
                else
                    setPropertyFromGroup('strumLineNotes', 2,'downScroll',true)
                end
            end
            screenStyleOpponent = 'Undyne'

        elseif opponentStyle == 'Default' or opponentStyle == nil or opponentStyle == '' or opponentStyle ~= '' and opponentStyle ~= nil and opponentStyle ~= '' and opponentStyle ~= 'Up' and opponentStyle ~= 'Down' and opponentStyle ~= 'Left' and opponentStyle ~= 'Right' then
            backOffset(nil,nil,false)
            backAlpha(false,true,true)
            backPosition(false,true,true,true,true)
            screenStyleOpponent = opponentStyle
        else
            screenStyleOpponent = nil
        end

    elseif tag == 'changePlayerNotesTo'..playerStyle then
        screenPlayerStyle = playerStyle
        if playerStyle == 'Down' then
            backOffset(nil,nil,true)
            backPosition(true,false,true,false,true)
            backAlpha(true,false,true)

            for FlipPlayerNotes = 4,7 do
                setPropertyFromGroup('strumLineNotes', FlipPlayerNotes,'downScroll',true)
            end
        elseif playerStyle == 'Left' or playerStyle == 'Right' then
            backAlpha(true,false,true)
            for FlipPlayerNotes = 4,7 do
                setPropertyFromGroup('strumLineNotes', FlipPlayerNotes,'downScroll',false)
            end
        elseif playerStyle == 'Up' then
            backAlpha(true,false,true)
            backOffset(nil,nil,true)
            for FlipPlayerNotes = 4,7 do
                setPropertyFromGroup('strumLineNotes', FlipPlayerNotes,'downScroll',false)
            end
        elseif playerStyle == 'Undyne' then
            backAlpha(true,false,true)
            for strumPlayer= 4,7 do
                if strumPlayer ~= 6 then
                    setPropertyFromGroup('strumLineNotes', strumPlayer,'downScroll',false)
                else
                    setPropertyFromGroup('strumLineNotes', 6,'downScroll',true)
                end
            end
            screenPlayerStyle = 'Undyne'
        elseif playerStyle == 'Default' or playerStyle == nil or playerStyle == '' or playerStyle ~= '' and playerStyle ~= nil and playerStyle ~= '' and playerStyle ~= 'Up' and playerStyle ~= 'Down' and playerStyle ~= 'Left' and playerStyle ~= 'Right' then
            backOffset(nil,nil,true)
            backAlpha(true,false,true)
            backPosition(true,false,true,true,true)
        else
            screenPlayerStyle = nil
        end
    end
end

function backAlpha(player,opponent,normal,alpha)
    if opponent == true then
        for strumOpponent = 4,7 do
            if normal == true then
                if middleScroll == false then
                    setPropertyFromGroup('strumLineNotes', strumOpponent, 'alpha',1)
                else
                    setPropertyFromGroup('strumLineNotes', strumOpponent, 'alpha',0.35)
                end
            elseif normal == false then
                setPropertyFromGroup('strumLineNotes', strumOpponent, 'alpha',alpha)
            end
        end
    end
    if player == true then
        for strumPlayer = 4,7 do
            if normal == true then
                setPropertyFromGroup('strumLineNotes', strumPlayer, 'alpha',1)
            else
                setPropertyFromGroup('strumLineNotes', strumPlayer, 'alpha',alpha)
            end
        end
    end
end

function backOffset(noteData,noteLength,playerNote)
    if noteData ~= '' and noteData ~= nil then
        if getPropertyFromGroup('notes', noteLength, 'mustPress') == playerNote then
            if getPropertyFromGroup('notes', noteLength, 'noteData') == noteData then
                if getPropertyFromGroup('notes',noteLength,'isSustainNote') == false then
                    setPropertyFromGroup('notes',noteLength, 'offset.y',noteOffsetY)
                    setPropertyFromGroup('notes',noteLength, 'offset.x',noteOffsetX)
                    setPropertyFromGroup('notes',noteLength, 'angle',0)
                elseif getPropertyFromGroup('notes',noteLength,'isSustainNote') == true then
                    setPropertyFromGroup('notes',noteLength, 'offset.y',SustainNoteOffsetY)
                    setPropertyFromGroup('notes',noteLength, 'offset.x',SustainNoteOffsetX)
                    setPropertyFromGroup('notes',noteLength, 'angle',0)
                    setPropertyFromGroup('notes',noteLength, 'flipY',downscroll)
                end
            end
        end
    else
        for backOffsetNotes = 0, getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', noteLength, 'mustPress') == playerNote then
                if getPropertyFromGroup('notes',backOffsetNotes,'isSustainNote') == false then
                    setPropertyFromGroup('notes',backOffsetNotes, 'offset.y',noteOffsetY)
                    setPropertyFromGroup('notes',backOffsetNotes, 'offset.x',noteOffsetX)
                    setPropertyFromGroup('notes',backOffsetNotes, 'angle',0)
                elseif getPropertyFromGroup('notes',backOffsetNotes,'isSustainNote') == true then
                    setPropertyFromGroup('notes',backOffsetNotes, 'offset.y',SustainNoteOffsetY)
                    setPropertyFromGroup('notes',backOffsetNotes, 'offset.x',SustainNoteOffsetX)
                    setPropertyFromGroup('notes',backOffsetNotes, 'angle',0)
                    setPropertyFromGroup('notes',backOffsetNotes, 'flipY',downscroll)
                end
            end
        end
    end
end

function backPosition(player,opponent,backX,backY,backAngle)
    if opponent == true then
        for ResetOpponentNotes = 0,3 do
            if backX == true then
                if not middlescroll then
                    noteTweenX('NoteGoDefaultOpponentX'..ResetOpponentNotes, ResetOpponentNotes,92 + (110 *ResetOpponentNotes),eventDuration,'linear')
                    setPropertyFromGroup('strumLineNotes', ResetOpponentNotes, 'alpha',1)
                else
                    if ResetOpponentNotes < 2 then
                        noteTweenX('NoteGoDefaultOpponentX'..ResetOpponentNotes, ResetOpponentNotes,92 + (110 *ResetOpponentNotes),eventDuration,'linear')
                    elseif ResetOpponentNotes >= 2 then
                        noteTweenX('NoteGoDefaultOpponentX'..ResetOpponentNotes, ResetOpponentNotes,748 + (110 *ResetOpponentNotes),eventDuration,'linear')
                    end
                    setPropertyFromGroup('strumLineNotes', ResetOpponentNotes, 'alpha',0.2)
                    noteTweenAngle('NoteAngleDefaultOpponent'..ResetOpponentNotes, ResetOpponentNotes,0,eventDuration,'linear')
                end
            end
        end

        if backY == true then
            if downscroll == false then
                noteTweenY('NoteGoDefaultPOpponentY'..ResetOpponentNotes,ResetOpponentNotes,50,0.2, 'linear')
            else
                noteTweenY('NoteGoDefaultPOpponentY'..ResetOpponentNotes, ResetOpponentNotes,screenHeight - 150,0.2, 'linear')
            end
        end

        if backAngle == true then
            noteTweenAngle('NoteAngleDefaultPlayer'..ResetOpponentNotes, ResetOpponentNotes,0,eventDuration,'linear')
        end
    end
    if player == true then
        for ResetPlayerNotes = 4,7 do
            if backX == true then
                if middlescroll == false then
                    noteTweenX('NoteGoDefaultPlayerX'..ResetPlayerNotes, ResetPlayerNotes,732 + (110 * ResetPlayerNotes - 4),eventDuration,'linear')

                else
                    noteTweenX('NoteGoDefaultPlayerX'..ResetPlayerNotes, ResetPlayerNotes,-15 + (110 *ResetPlayerNotes - 4),eventDuration,'linear')
                end
            end

            if backAngle == true then
                noteTweenAngle('NoteAngleDefaultPlayer'..ResetPlayerNotes, ResetPlayerNotes,0,eventDuration,'linear')
            end
            if backY == true then
                if not downscroll then
                    noteTweenY('NoteGoDefaultPlayerY'..ResetPlayerNotes, ResetPlayerNotes,50,0.2, 'linear')
                else
                    noteTweenY('NoteGoDefaultPlayerY'..ResetPlayerNotes, ResetPlayerNotes,screenHeight - 150,0.2, 'linear')
                end
                setPropertyFromGroup('strumLineNotes', ResetPlayerNotes,'downScroll',downscroll)
            end
        end
    end
end
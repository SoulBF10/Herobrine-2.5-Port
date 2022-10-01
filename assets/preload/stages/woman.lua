function onCreate()
	-- background shit
	makeLuaSprite('WomanBG', 'WomanBG', -200, -100);
	setScrollFactor('WomanBG', 0.9, 0.9);

	addLuaSprite('WomanBG', false);
	addLuaSprite('WomanBG', false);

	makeLuaSprite('bartop','',0,650)
    makeGraphic('bartop',2250,200,'000000')
    addLuaSprite('bartop',true)
	setObjectCamera('bartop', 'hud')

	makeLuaSprite('bartop2','',0,-150)
    makeGraphic('bartop2',2250,200,'000000')
    addLuaSprite('bartop2',true)
	setObjectCamera('bartop2', 'hud')

end


function onCreatePost()
	addCharacterToList('pico-bigger', 'dad')
	setProperty("dad.alpha", 0)
	setProperty('boyfriend.color', getColorFromHex('D1EBE6'))
	setProperty('dad.color', getColorFromHex('D1EBE6'))
end


function onUpdate()
	if curStep == 0.1 then
		setProperty("dad.alpha", 1)
	end
end
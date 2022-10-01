function onCreatePost()
	makeLuaSprite('bg', 'stages/cave/minecave_bg', 0, 1600)
	--setScrollFactor('bg', 0.99, 0.99)
	scaleObject('bg', 1.3, 1.3)
	--screenCenter('bg')
	addLuaSprite('bg', false)

	setProperty('dad.color', getColorFromHex('6d5822'))
	setProperty('boyfriend.color', getColorFromHex('f8c377'))
end

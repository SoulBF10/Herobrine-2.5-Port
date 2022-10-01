function onCreate()
	-- background shit
	makeLuaSprite('forest', 'stages/epic/forest', -2650, -300);
	setScrollFactor('forest', 0.9, 0.9);
	--scaleObject('forest', 0.5)

	makeLuaSprite('dancefloor', 'stages/epic/dance', 800, -300);
	setScrollFactor('dancefloor', 0.9, 0.9);

	addLuaSprite('dancefloor', false);
	addLuaSprite('forest', false);
end
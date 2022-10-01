function onCreate()
	-- background shit
	makeLuaSprite('bg_desertbackground', 'stages/desert/night1', -600, -800);
	setScrollFactor('bg_desertbackground', 0.9, 0.9);
	scaleObject("bg_desertbackground", 1.3, 1.3)

	makeLuaSprite('bg_desertground', 'stages/desert/bg_desertground', -600, -20);
	setScrollFactor('bg_desertground', 0.9, 0.9);

	makeLuaSprite('bg_desert', 'stages/desert/bg_desert', -600, -300);
	setScrollFactor('bg_desert', 0.9, 0.9);


	addLuaSprite('bg_desertbackground', false);
	addLuaSprite('bg_desertground', false);
	addLuaSprite('bg_desert', false);
end
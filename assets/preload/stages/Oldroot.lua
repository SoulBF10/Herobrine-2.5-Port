function onCreate()
	-- background shit
	makeLuaSprite('OldRoot', 'stages/oldroot/OldRoot', -600, -300);
	setScrollFactor('OldRoot', 1.0,1.0);

	addLuaSprite('OldRoot', false);
	setProperty('bf.alpha', 0);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	-- background shit
	makeLuaSprite('bg_desertbackground', 'stages/creepy/sonic_worldbg', -450, -300);
	setScrollFactor('bg_desertbackground', 0.9, 0.9);

	makeLuaSprite('bg_desertground', 'stages/creepy/mine_worldbg', 800, -300);
	setScrollFactor('bg_desertground', 0.9, 0.9);

	makeLuaSprite('bg_desert', 'stages/creepy/anime_shit', 600, -300);
	setScrollFactor('bg_desert', 0.9, 0.9);

	makeAnimatedLuaSprite('tails', 'stages/creepy/tails_assest', 1500, 100);
	addAnimationByPrefix('tails', 'scared', 'tails_idle', 24, false)
	setScrollFactor('tails', 0.9, 0.9);
	scaleObject('tails', 0.8, 0.8);
	setProperty('tails.flipX', true);
	playAnim('tails', 'scared')


	addLuaSprite('bg_desertbackground', false);
	addLuaSprite('bg_desertground', false);
	addLuaSprite('bg_desert', false);
	addLuaSprite('tails')
end

function onCreatePost()
	setProperty('dad.color', getColorFromHex('ffdd8c'))
end

function onBeatHit()
	if curBeat % 1 == 0 then
		playAnim('tails', 'scared')
	end
end
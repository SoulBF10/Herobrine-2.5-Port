-- Code by Identity123 on Gamebanana
function onEvent(name, value1, value2)
    if name == 'CombineBothStrums' then
noteTweenAlpha("makinglifeeasy", 1, 50, value1, 'linear')
noteTweenAlpha("makinglifeeasy1", 3, 50, value1, 'linear')
noteTweenAlpha("makinglifeeasy2", 2, 50, value1, 'linear')
noteTweenAlpha("makinglifeeasy4", 0, 50, value1, 'linear')
end
if value2 == 'mid' then
noteTweenX('combinegoodleftmid',4, 410, value1,'linear');
noteTweenX('combinegoodupmid',5, 522, value1,'linear');
noteTweenX('combinegooddownmid',6, 633, value1,'linear');
noteTweenX('combinegoodrightmid',7, 745, value1,'linear');

noteTweenX('combinebadleftmid',0, 410, value1,'linear');
noteTweenX('combinebaddonwmid',1, 522, value1,'linear');
noteTweenX('combinebadupmid',2, 633, value1,'linear');
noteTweenX('combinebadrighrmid',3, 745, value1,'linear');

end
if value2 =='left' then
noteTweenX('combinegoodmoveleft',4, 92.3, value1,'linear');
noteTweenX('combinegoodmoveup',5, 205, value1,'linear');
noteTweenX('combinegoodmovedown',6, 315, value1,'linear');
noteTweenX('combinegoodmoveright',7, 428, value1,'linear');

noteTweenX('badcombineeftmoveright',0, 92.3, value1,'linear');
noteTweenX('bacombinemoveright',1, 205, value1,'linear');
noteTweenX('badcombineftmovedown',2, 315, value1,'linear');
noteTweenX('badcombinetmoveright',3, 428, value1,'linear');
end
if value2 == 'right' then
noteTweenX('leftmoveleftcombine',4, 750, value1,'linear');
noteTweenX('leftmoveupcombine',5, 860, value1,'linear');
noteTweenX('leftmovedowncombine',6, 970, value1,'linear');
noteTweenX('leftmoverightcombime',7, 1080, value1,'linear');

noteTweenX('badleftmoverightcombine',0, 750, value1,'linear');
noteTweenX('badupmoverightcombone',1, 860, value1,'linear');
noteTweenX('badleftmovedowccmbinen',2, 970, value1,'linear');
noteTweenX('badleftmoverighcpmbkmet',3, 1080, value1,'linear');
end
end
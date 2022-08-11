local MaxMisses = 0
local Mixes = 0

function onCreate()

setProperty('scoreTxt.visible', false);

	makeLuaSprite('BG_SUS', 'backgrounds/BG_SUS', -800, -200);
	setScrollFactor('BG_SUS', 1, 1);
	scaleLuaSprite('BG_SUS', 1, 1);
	addLuaSprite('BG_SUS', false);

makeAnimatedLuaSprite('gf-amogus', 'backgrounds/gf-amogus', 1100, 400);
addAnimationByPrefix('gf-amogus', 'gf-amogus', 'amongus-gf', 24, true);  
objectPlayAnimation('gf-amogus', 'gf-amogus', true)
scaleLuaSprite('gf-amogus', 1, 1);
addLuaSprite('gf-amogus', false);

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

setProperty('defaultCamZoom', 0.8) 

if songName == 'Corpse' then
MaxMisses = 10
Mixes = 10
makeLuaText('Misses', 'Max Misses: 10', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x'), getProperty('scoreTxt.y'));
setTextSize('Misses', 22);
setTextBorder('Misses', 1, '000000');
setTextAlignment('Misses', 'center');
addLuaText('Misses');
end
if songName == 'neddle-mouse' then
MaxMisses = 5
Mixes = 5
makeLuaText('Misses', 'Max Misses: 5', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x'), getProperty('scoreTxt.y'));
setTextSize('Misses', 22);
setTextBorder('Misses', 1, '000000');
setTextAlignment('Misses', 'center');
addLuaText('Misses');
end
if songName == 'Unknown Defeat' then
MaxMisses = 3
Mixes = 3
makeLuaText('Misses', 'Max Misses: 3', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x'), getProperty('scoreTxt.y'));
setTextSize('Misses', 22);
setTextBorder('Misses', 1, '000000');
setTextAlignment('Misses', 'center');
addLuaText('Misses');
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
MaxMisses = MaxMisses - 1
end



function onUpdate(elapsed)
misses = getProperty('songMisses')
if misses >= Mixes then
setProperty('health', 0)
end
end

function onUpdatePost(elasped)
if not botPlay then
setTextString('Misses', 'Max Misses:'..MaxMisses);
end
end


local Cam1 = 0.9
local Cam2 = 0.7

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onEvent(name,value1,value2)
if name == 'BlackLight' then
cameraFlash('other', '000000', '2')
end
end
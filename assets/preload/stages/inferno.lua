function onCreate()

	makeLuaSprite('BG_INFERNO', 'backgrounds/BG_INFERNO', -1000, -700);
	setScrollFactor('BG_INFERNO', 1, 1);
	scaleLuaSprite('BG_INFERNO', 1.75, 1.75);
	addLuaSprite('BG_INFERNO', false);

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

	setProperty('defaultCamZoom', 0.9) 
end

function onCountdownStarted()
setBlendMode('gf', 'SCREEN')
setProperty('gf.visible', false) 
end	

local Cam1 = 0.75
local Cam2 = 0.65
local Cam3 = 0.55

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
elseif focus == 'gf' then
setProperty('defaultCamZoom', Cam3) 
end
end

local Drain = 0.0050

function opponentNoteHit(id, noteData, noteType, isSustainNote)
health = getProperty('health')
if not isSustainNote then
if getProperty('health') > 0.1 then
setProperty('health', health- Drain);
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if not isSustainNote then
setProperty('health', getProperty('health')+ 0.015);
end
end
end


function onEvent(name,value1,value2)
if name == 'BlackLight' then
cameraFlash('other', '000000', '2')
end
if name == 'Asbel' then
if value1 == 'DrainChange' then
Drain = value2
end
end
if name == 'Play Animation' then
if value1 == 'Spawn' then
setProperty('gf.visible', true) 
end
end
end
function onCreate()

makeLuaSprite('Destruido', 'backgrounds/Destruido', -800, -200);
setScrollFactor('Destruido', 1, 1);
scaleLuaSprite('Destruido', 1, 1);
addLuaSprite('Destruido', false);

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

setProperty('defaultCamZoom', 0.8) 
end

local Cam1 = 0.8
local Cam2 = 0.7

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

function onEvent(name,value1,value2)
if name == 'BlackLight' or 'Flash Black' then
cameraFlash('other', '000000', '3')
end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.01);
    end
end
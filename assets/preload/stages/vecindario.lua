function onCreate()

	makeLuaSprite('VecindarioBG', 'backgrounds/VecindarioBG', -800, -200);
	setScrollFactor('VecindarioBG', 1, 1);
	scaleLuaSprite('VecindarioBG', 1, 1);
	addLuaSprite('VecindarioBG', false);

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');

	setProperty('defaultCamZoom', 0.8) 
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


function onCreate()

  makeLuaSprite('BG_CHEDDER', 'backgrounds/BG_CHEDDER', -800, -200);
  setScrollFactor('BG_CHEDDER', 1, 1);
  scaleLuaSprite('BG_CHEDDER', 1, 1);
  addLuaSprite('BG_CHEDDER', false);

  makeLuaSprite('F1', 'backgrounds/frases/F1', 250, 100);
  setScrollFactor('F1', 1, 1);
  scaleLuaSprite('F1', 1, 1);
  addLuaSprite('F1', false);
  setObjectCamera('F1', 'other');

  makeLuaSprite('F2', 'backgrounds/frases/F2', 220, 250);
  setScrollFactor('F2', 1, 1);
  scaleLuaSprite('F2', 1, 1);
  addLuaSprite('F2', false);
  setObjectCamera('F2', 'other');

  makeLuaSprite('F3', 'backgrounds/frases/F3', 450, 250);
  setScrollFactor('F3', 1, 1);
  scaleLuaSprite('F3', 1, 1);
  addLuaSprite('F3', false);
  setObjectCamera('F3', 'other');

  makeLuaSprite('F4', 'backgrounds/frases/F4', 200, 400);
  setScrollFactor('F4', 1, 1);
  scaleLuaSprite('F4', 1, 1);
  addLuaSprite('F4', false);
  setObjectCamera('F4', 'other');

makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
objectPlayAnimation('grain', 'grain', true)
scaleLuaSprite('grain', 2.75, 2.75);
addLuaSprite('grain', false);
setObjectCamera('grain', 'other');



setProperty('F1.visible', false);  
setProperty('F2.visible', false);  
setProperty('F3.visible', false);  
setProperty('F4.visible', false);  

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
if name == 'Fade Cameras' then
doTweenAlpha('camHUD', 'camHUD', value1, value2, 'linear')
doTweenAlpha('camGame', 'camGame', value1, value2, 'linear')
end
if name == 'Asbel' then
if value1 == 'FraseAdd' then
setProperty('F'..value2..'.visible', true)
end
if value1 == 'FraseRemove' then
removeLuaSprite('F1')
removeLuaSprite('F2')
removeLuaSprite('F3')
removeLuaSprite('F4')
end
end
end
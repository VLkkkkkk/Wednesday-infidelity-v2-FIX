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

local Cam1 = 0.9
local Cam2 = 0.7

function onMoveCamera(focus)
if focus == 'boyfriend' then
setProperty('defaultCamZoom', Cam1) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', Cam2) 
end
end

Mouspid = 1

function onEvent(name,value1,value2)
if name == 'BlackLight' then
cameraFlash('other', '000000', '2')
end
if name == 'Asbel' then
if value1 == 'ChangeMS' then
Mouspid = value2
end
if value1 == 'ReducirMS' then
Mouspid = Mouspid - 0.04
end
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
health = getProperty('health')
if not isSustainNote then
if getProperty('health') > 0.05 then
setProperty('health', health- 0.045);
end
end
end

function onUpdatePost()
	for i = 0, getProperty('notes.length') - 1 do
	    if not getPropertyFromGroup('notes', i, 'mustPress') then
		    setPropertyFromGroup('notes', i, 'y', getPropertyFromGroup('notes', i, 'y') * Mouspid);
		end
	end 
end
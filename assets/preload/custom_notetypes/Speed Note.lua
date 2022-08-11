function onCreate()


	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Speed Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MOUSENOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', 0.1);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end 
end

local speed = 3

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Speed Note' then
speed = speed + 0.15
triggerEvent('Play Animation', 'at', 'bf');
runTimer('speed', 0.01);
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'speed' then
setProperty('songSpeed', speed)
end
end
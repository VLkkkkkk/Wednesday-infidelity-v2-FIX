function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.025);
    end
end

function onCreate()
if isStoryMode then
addLuaScript('v1')
end
end
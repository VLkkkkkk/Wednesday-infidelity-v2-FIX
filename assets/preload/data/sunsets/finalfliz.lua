function onCountdownStarted()
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false) 
end	

function onUpdate()
setProperty('health', 2);
end
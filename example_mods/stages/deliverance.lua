function onCreate()
	-- background shit
	makeLuaSprite('garStagebg', 'garStagebg', -400, -50);
	setScrollFactor('garStagebg', 0.9, 0.9);
	scaleObject('garStagebg', 0.9, 0.9);
	
	makeLuaSprite('garStage', 'garStage', -400, -99);
	setScrollFactor('garStage', 0.9, 0.9);
	scaleObject('garStage', 0.9, 0.9);

	makeLuaSprite('garStageReleaseBG','garStagebgAlt',-400,-50)
	setScrollFactor('garStageReleaseBG',0.9,0.9)
	scaleObject('garStageReleaseBG',0.9,0.9)

	makeLuaSprite('garStageRelease','garStageAlt',-400,-99)
	setScrollFactor('garStageRelease',0.9,0.9)
	scaleObject('garStageRelease',0.9,0.9)

	makeLuaSprite('gardead', 'gardead', -200, 600);
	setScrollFactor('gardead', 0.9, 0.9);
	scaleObject('gardead', 1.0, 1.0);

	makeAnimatedLuaSprite('smokey', 'garSmoke', -500, -300)
	addAnimationByPrefix('smokey','Idle','smokey instance','24',true)
	objectPlayAnimation('smokey','Idle',false)
	scaleObject('smokey', 1.7, 1.7);

	makeAnimatedLuaSprite('smokey2', 'garSmoke', -500, -600)
	addAnimationByPrefix('smokey2','Idle','smokey instance','24',true)
	objectPlayAnimation('smokey2','Idle',false)
	scaleObject('smokey2', 1.7, 1.7);

	makeLuaSprite('garStageFadeBG','garStagebgRise',-400,-50)
	setScrollFactor('garStageReleaseBG',0.9,0.9)
	scaleObject('garStageReleaseBG',0.9,0.9)

	makeLuaSprite('garStageFade','garStageRise',-400,-99)
	setScrollFactor('garStageRelease',0.9,0.9)
	scaleObject('garStageRelease',0.9,0.9)

	makeLuaSprite('gardeadFade', 'gardeadFade', -200, 600);
	setScrollFactor('gardead', 0.9, 0.9);
	scaleObject('gardead', 1.0, 1.0);

	makeLuaSprite('barCounter','bar/barcounter',-200,-175)
	setScrollFactor('barCounter',0.9,0.9)
	scaleObject('barCounter',0.36,0.36)

	makeLuaSprite('barBG','bar/barbg',-200,-175)
	setScrollFactor('barBG',0.9,0.9)
	scaleObject('barBG',0.36,0.36)

	makeLuaSprite('Rocks', 'caveIn/LegacyCaveRocksNight', -530, -300);
	setScrollFactor('LegacyCaveRocksNight', 0.9, 0.9);
	scaleObject('LegacyCaveRocksNight', 1.0, 0.9);
	
	makeLuaSprite('Ground', 'caveIn/LegacyCaveGroundNight', -500, -200);
	setScrollFactor('LegacyCaveGroundNight', 1.0, 1.0);
	scaleObject('LegacyCaveGroundNight', 0.9, 0.9);
	
	makeLuaSprite('CaveBG', 'caveIn/LegacyCaveBackgroundNight', -570, -200);
	setScrollFactor('LegacyCaveBackgroundNight', 0.9, 0.9);
	scaleObject('LegacyCaveBackgroundNight', 0.9, 0.9);
	
	makeLuaSprite('Sky', 'caveIn/LegacyCaveBackgroundNightSky', -570, -200);
	setScrollFactor('LegacyCaveBackgroundNightSky', 0.7, 0.7);
	scaleObject('LegacyCaveBackgroundNightSky', 0.9, 0.9);

	addLuaSprite('garStageReleaseBG',false)
	addLuaSprite('smokey2', false);
	addLuaSprite('garStageRelease',false)
	addLuaSprite('smokey', true);
	addLuaSprite('gardead',false)

	addLuaSprite('garStageFadeBG',false)
	addLuaSprite('garStageFade',false)
	addLuaSprite('gardeadFade',false)
	
	addLuaSprite('Sky', false);
	addLuaSprite('CaveBG', false);
	addLuaSprite('Ground', false);
	addLuaSprite('Rocks', true);
		
	addLuaSprite('barBG',false)
	addLuaSprite('barCounter',true)
	setObjectOrder('barCounter', getObjectOrder('boyfriendGroup'))

	addLuaSprite('garStagebg', false);
	addLuaSprite('garStage', false);

	setProperty('garStageReleaseBG.visible',false)
	setProperty('smokey2.visible',false)
	setProperty('garStageRelease.visible',false)
	setProperty('smokey.visible',false)
	setProperty('gardead.visible',false)

	setProperty('garStageFadeBG.visible',false)
	setProperty('garStageFade.visible',false)
	setProperty('gardeadFade.visible',false)	

	setProperty('barBG.visible',false)
	setProperty('barCounter.visible',false)

	setProperty('Rocks.visible',false)
	setProperty('Sky.visible',false)
	setProperty('Ground.visible',false)
	setProperty('CaveBG.visible',false)
end

function onUpdate()
	if curBeat == 116 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStagebg.visible',false)
		setProperty('garStage.visible',false)
		setProperty('barBG.visible',true)
		setProperty('barCounter.visible',true)
	end
	if curBeat == 180 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStagebg.visible',true)
		setProperty('garStage.visible',true)
		setProperty('barBG.visible',false)
		setProperty('barCounter.visible',false)
	end
	if curBeat == 244 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStagebg.visible',false)
		setProperty('garStage.visible',false)
		setProperty('barBG.visible',true)
		setProperty('barCounter.visible',true)
	end
	if curBeat == 276 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',false)
		setProperty('barCounter.visible',false)
		setProperty('Rocks.visible',true)
		setProperty('Sky.visible',true)
		setProperty('Ground.visible',true)
		setProperty('CaveBG.visible',true)
	end
	if curBeat == 372 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',true)
		setProperty('barCounter.visible',true)
		setProperty('Rocks.visible',false)
		setProperty('Sky.visible',false)
		setProperty('Ground.visible',false)
		setProperty('CaveBG.visible',false)
	end
	if curBeat == 404 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',false)
		setProperty('barCounter.visible',false)
		setProperty('garStageReleaseBG.visible',true)
		setProperty('smokey2.visible',true)
		setProperty('garStageRelease.visible',true)
		setProperty('smokey.visible',true)
		setProperty('gardead.visible',true)
	end
	if curBeat == 436 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStageReleaseBG.visible',false)
		setProperty('smokey2.visible',false)
		setProperty('garStageRelease.visible',false)
		setProperty('smokey.visible',false)
		setProperty('gardead.visible',false)	
		setProperty('garStagebg.visible',true)
		setProperty('garStage.visible',true)
	end
	if curBeat == 452 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStagebg.visible',false)
		setProperty('garStage.visible',false)
		setProperty('Rocks.visible',true)
		setProperty('Sky.visible',true)
		setProperty('Ground.visible',true)
		setProperty('CaveBG.visible',true)
	end
	if curBeat == 468 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',true)
		setProperty('barCounter.visible',true)
		setProperty('Rocks.visible',false)
		setProperty('Sky.visible',false)
		setProperty('Ground.visible',false)
		setProperty('CaveBG.visible',false)
	end
	if curBeat == 478 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',false)
		setProperty('barCounter.visible',false)
		setProperty('Rocks.visible',true)
		setProperty('Sky.visible',true)
		setProperty('Ground.visible',true)
		setProperty('CaveBG.visible',true)
	end
	if curBeat == 484 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',true)
		setProperty('barCounter.visible',true)
		setProperty('Rocks.visible',false)
		setProperty('Sky.visible',false)
		setProperty('Ground.visible',false)
		setProperty('CaveBG.visible',false)
	end
	if curBeat == 494 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('barBG.visible',false)
		setProperty('barCounter.visible',false)
		setProperty('Rocks.visible',true)
		setProperty('Sky.visible',true)
		setProperty('Ground.visible',true)
		setProperty('CaveBG.visible',true)
	end
	if curBeat == 500 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('Rocks.visible',false)
		setProperty('Sky.visible',false)
		setProperty('Ground.visible',false)
		setProperty('CaveBG.visible',false)
		setProperty('garStageReleaseBG.visible',true)
		setProperty('smokey2.visible',true)
		setProperty('garStageRelease.visible',true)
		setProperty('smokey.visible',true)
		setProperty('gardead.visible',true)
	end
	if curBeat == 548 then
		cameraFlash('camGame', 'ffffff', 1);
		setProperty('garStageReleaseBG.visible',false)
		setProperty('smokey2.visible',false)
		setProperty('garStageRelease.visible',false)
		setProperty('smokey.visible',false)
		setProperty('gardead.visible',false)
		setProperty('garStageFadeBG.visible',true)
		setProperty('garStageFade.visible',true)
		setProperty('gardeadFade.visible',true)
	end
end
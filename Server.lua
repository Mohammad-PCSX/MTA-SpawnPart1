function SpawnPlayer()
    spawnPlayer(source,0,0,6)
    fadeCamera(source,true)
    setCameraTarget(source,source)
end
addEventHandler("onPlayerJoin",getRootElement(),SpawnPlayer)


addEventHandler("onPlayerWasted",getRootElement(),function(totalAmmo,killer,killerWeapon,bodypart,stealth)
    local thePlayer = source
    fadeCamera(source,false)
    setTimer(function()
        spawnPlayer(thePlayer,0,0,6)
        fadeCamera(thePlayer,true)
        setCameraTarget(thePlayer,thePlayer)
    end,2000,1)
    if killer and killer ~= source then 
        setPlayerWantedLevel(killer,1)
    end
end)

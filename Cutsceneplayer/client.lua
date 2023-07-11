---- My Discord - https://discord.gg/RBJqveM7

---- CutScene List - https://pastebin.com/DmCkxuQE
---- Simple CutScene Player

RegisterCommand("cutscene", function(source, args)
    local cutscene = args[1]
    TriggerEvent('Cutsceneplayer:Play', cutscene)
end)

TriggerEvent('chat:addSuggestion', '/cutscene', 'Play Cut Scene', {{name="cut scene name"}})

RegisterNetEvent("Cutsceneplayer:Play")
AddEventHandler("Cutsceneplayer:Play", function(cutscene)
    local playerId = PlayerPedId()
    
	if IsPedMale(playerId) then RequestCutsceneWithPlaybackList(cutscene, 31, 8)
    	else RequestCutsceneWithPlaybackList(cutscene, 103, 8) end

    	while not HasCutsceneLoaded() do Wait(10)  
    end
    StartCutscene(4)
end)
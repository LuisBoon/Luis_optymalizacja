

ESX = nil

function AddTextEntry(key, value)
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end


Citizen.CreateThread(function()
    while true do 
        
        local players = 0
        for i = 0, 255 do
            if NetworkIsPlayerActive(i) then
                players = players+1
            end
        end
    
        id = GetPlayerServerId(PlayerId())
        name = GetPlayerName(PlayerId())
    
    
        AddTextEntry('FE_THDR_GTAO', ' ~b~| ~w~Bamboo~g~RP  ~b~| ~c~discord.gg/qpmYxwKMUd ~b~|')
        Wait(10000)
        AddTextEntry('FE_THDR_GTAO', ' ~b~| ~w~Bamboo~g~RP ~b~| ~w~ID: ~g~'..id..' ~b~|')

        Citizen.Wait(10000)
    end
end)
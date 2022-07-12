if not Config.Legacy then
    local ESX = nil

    TriggerEvent('esx:getSharedObject', function(obj) 
        ESX = obj
    end)
    
    Citizen.CreateThread(function()
        while true do
            for k, playerid in pairs(GetPlayers()) do
                local xPlayer = ESX.GetPlayerFromId(playerid)
    
                if xPlayer ~= nil then
    
                    local vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM owned_vehicles WHERE owner = @owner",
                    {
                        ['@owner'] = xPlayer.identifier,
                    }
                    )
                    if vehicleCount >= 1 then    
                        local tax = tonumber(vehicleCount) * Config.Tax
                        xPlayer.removeAccountMoney('bank', tax)
        
                        -- msg
                        TriggerClientEvent('taxes:notify', xPlayer.source, tax, vehicleCount)
                    end
                end
            end
    
            Citizen.Wait(Config.Time)
        end
    end)

    
else


    Citizen.CreateThread(function()
        while true do
            for k, xPlayer in pairs(ESX.GetPlayers()) do
    
                if xPlayer ~= nil then
                    local vehicleCount = MySQL.scalar.await('SELECT COUNT(plate) FROM owned_vehicles WHERE owner = ?', {xPlayer.identifier})
                    if vehicleCount >= 1 then
                        local tax = tonumber(vehicleCount) * Config.Tax
                        xPlayer.removeAccountMoney('bank', tax)
        
                        -- msg
                        TriggerClientEvent('taxes:notify', xPlayer.source, tax, vehicleCount)
                    end
                end
            end
    
            Citizen.Wait(Config.Time)
        end
    end)
    
end
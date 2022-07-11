local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

Citizen.CreateThread(function()

    while true do

        for k, playerid in pairs(GetPlayers()) do
            local src = source
            local xPlayer = ESX.GetPlayerFromId(playerid)

            if xPlayer ~= nil then

                local vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM owned_vehicles WHERE owner = @owner", 
                {
                    ['@owner'] = xPlayer.identifier,
                }
                )

                local tax = tonumber(vehicleCount) * Config.Tax
                xPlayer.removeAccountMoney('bank', tax)

                -- msg
                TriggerClientEvent('taxes:notify', xPlayer.source, tax, vehicleCount)

            end
        end

        Citizen.Wait(Config.Time)
    end

end)

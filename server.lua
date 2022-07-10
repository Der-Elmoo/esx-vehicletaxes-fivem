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

                local tax = vehicleCount * 50
                xPlayer.removeAccountMoney('bank', tax)

                -- msg
                TriggerClientEvent('taxes:notify', xPlayer.source, 'CHAR_BANK_MAZE', 'Du hast ~r~' .. tax .. '$ ~s~an Fahrzeugsteuern für ~y~' .. vehicleCount ..' Fahrzeuge ~s~gezahlt', 'Bundessteuerbehörde', 'Steuern gezahlt')

            end
        end

        Citizen.Wait(12000)
    end

end)
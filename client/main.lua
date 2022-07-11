ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('taxes:notify')
AddEventHandler('taxes:notify', function(tax, vehicleCount)
        
    ESX.ShowAdvancedNotification(Translation[Config.Locale]['title'], '', string.format(Translation[Config.Locale]['description'], tax, vehicleCount), 'CHAR_BANK_MAZE', 9)
        
end)

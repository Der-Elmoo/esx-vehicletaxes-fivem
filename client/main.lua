local function showAdvancedNotification(tax, vehiclecount)
    AddTextEntry('VehTaxesNotification', string.format(Translation[Config.Locale]['description'], tax, vehiclecount))
    BeginTextCommandThefeedPost('VehTaxesNotification')
    EndTextCommandThefeedPostMessagetext('CHAR_BANK_MAZE', 'CHAR_BANK_MAZE', false, 9, Translation[Config.Locale]['title'], '')
end

RegisterNetEvent('taxes:notify')
AddEventHandler('taxes:notify', function(tax, vehicleCount)
    showAdvancedNotification(tax, vehicleCount)
end)

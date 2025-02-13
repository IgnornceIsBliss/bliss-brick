RegisterNetEvent('bliss-brick:removeBrick')
AddEventHandler('bliss-brick:removeBrick', function ()
    local src = source
    exports.ox_inventory:RemoveItem(src, 'brick', 1)
end)
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    exports.ox_target:addGlobalVehicle({
        {
            label = 'Place brick on the gas?',
            name = 'bliss-brick',
            icon = 'fas fa-question',
            distance = 2.0,
            items = 'brick',
            canInteract = function(entity, distance, coords, name, bone)
                return true
            end,
            onSelect = function(data)
                local entity = data.entity
                if not DoesEntityExist(entity) then return end
                if GetVehicleDoorLockStatus(entity) == 2 then lib.notify({title = 'Vehicle is locked!',type = 'error'}) return end
            
                -- Ensure the engine is on
                SetVehicleEngineOn(entity, true, true, false)
                TaskVehicleTempAction(PlayerPedId(), entity, 32, 200) -- Simulate gas pedal press (INPUT_VEH_ACCELERATE)
                
                TriggerServerEvent('bliss-brick:removeBrick')
            end,
        }
    })
end)
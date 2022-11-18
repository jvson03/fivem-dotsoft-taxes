-- Initialise QBCore
QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while true do
        for k, playerid in pairs(QBCore.Functions.GetQBPlayers()) do
            local Player = playerid
            local citizenid = Player.PlayerData.citizenid
            if Player ~= nil then
                -- Vehicle
                if Config.EnableVehicleTax then
                    local vehicleCount = MySQL.Sync.fetchScalar('SELECT COUNT(plate) FROM '..Config.OwnedVehiclesTable..' WHERE citizenid = ?', { citizenid })
                    if vehicleCount >= 1 then
                        local vehicles = vehicleCount
                        local vehicletax = tonumber(vehicleCount) * Config.VehicleTax
                        Player.Functions.RemoveMoney('bank', vehicletax)
                        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, string.format("You paid $%d in taxes for your %d vehicle/s.", vehicletax, vehicles), "success", 10000)
                    end
                end
                -- House
                if Config.EnableHouseTax then
                    local houseCount = MySQL.Sync.fetchScalar('SELECT COUNT(house) FROM '..Config.OwnedHousesTable..' WHERE citizenid = ?', { citizenid })
                    if houseCount >= 1 then
                        local houses = houseCount
                        local housetax = tonumber(houseCount) * Config.HouseTax
                        Player.Functions.RemoveMoney('bank', housetax)
                        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, string.format("You paid $%d in taxes for your %d house/s.", housetax, houseCount), "success", 10000)
                    end
                end
            end
        end
        Citizen.Wait(Config.Time * 60000)
    end
end)
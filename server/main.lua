-- coding: BonoboTurbo
local QBCore = exports['qb-core']:GetCoreObject()
function startService(source, args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if player.PlayerData.job.name == "police" then
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        local target = QBCore.Functions.GetPlayer(targetId)
        
        if targetId and amount and amount > 0 then
            TriggerClientEvent("Yhdyskuntapalvelus:client:startservice", targetId, amount, true)
            target.Functions.SetMetaData("tracker", true)
            TriggerClientEvent('police:client:SetTracker', targetId, true)
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t("command.filltaskamount"), "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t("error.nopolice"), "error")
    end
end
function StopService(source, args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if player.PlayerData.job.name == "police" then
        local targetId = tonumber(args[1])
        
        if targetId ~= nil then
            TriggerClientEvent('Yhdyskuntapalvelus:client:stopservice', targetId)
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t("command.fillallfield"), "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', src, Lang:t("error.nopolice"), "error")
    end
end
function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    player.Functions.SetMetaData("tracker", false)
    TriggerClientEvent('police:client:SetTracker', src, false)
    TriggerClientEvent("illenium-appearance:client:reloadSkin", source)
end


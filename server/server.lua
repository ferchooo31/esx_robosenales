lib.locale()

local ESX = exports['es_extended']:getSharedObject()
local objects = {}

ESX.RegisterServerCallback("robosenales:server:GetObjects", function(source, cb)
    cb(objects)
end)

RegisterNetEvent('robosenales:server:delete')
AddEventHandler('robosenales:server:delete', function(object)
    local src = source
    local sourceCoords = GetEntityCoords(GetPlayerPed(src))
    if #(sourceCoords - object.coords) < 4 then
        local Player = ESX.GetPlayerFromId(tonumber(src))
        objects[#objects+1] = {coords = object.coords, model = object.model}
        TriggerClientEvent("robosenales:client:delete", -1, object)
        if object.model == -949234773 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("stopsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'stopsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'stopsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('señal_parar'))
        elseif object.model == 1502931467 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("walkingmansign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'walkingmansign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'walkingmansign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('señal_personas_caminando'))
        elseif object.model == 1191039009 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("dontblockintersectionsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'dontblockintersectionsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'dontblockintersectionsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('no_bloquear_interseccion'))
        elseif object.model == 4138610559 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("uturnsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'uturnsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'uturnsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('señal_u'))
        elseif object.model == 3830972543 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("noparkingsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'noparkingsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'noparkingsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('no_estacionar'))
        elseif object.model == 2643325436 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("leftturnsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'leftturnsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'leftturnsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('girar_izquierda'))
        elseif object.model == 793482617 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("rightturnsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'rightturnsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'rightturnsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('girar_derecha'))
        elseif object.model == 1021214550 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("notrespassingsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'notrespassingsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'notrespassingsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('no_pasar'))
        elseif object.model == 3654973172 then
			if Config.Inventario.Default then
            	xPlayer.addInventoryItem("yieldsign", 1)
			elseif Config.Inventario.ox_inventory then
				exports.ox_inventory:AddItem(src, 'yieldsign', 1)
			elseif Config.Inventario.qs_inventory then
				exports['qs-inventory']:AddItem(src, 'yieldsign', 1)
			end
            TriggerClientEvent('esx:showNotification', src, locale('ceder_el_paso'))
        end
	end
end)

ESX.RegisterUsableItem("stopsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:StopSign', source)
end)

ESX.RegisterUsableItem("walkingmansign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:WalkingManSign', source)
end)

ESX.RegisterUsableItem("dontblockintersectionsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:DontBlockIntersectionSign', source)
end)

ESX.RegisterUsableItem("uturnsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:UturnSign', source)
end)

ESX.RegisterUsableItem("noparkingsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:NoParkingSign', source)
end)

ESX.RegisterUsableItem("leftturnsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:LeftTurnSign', source)
end)

ESX.RegisterUsableItem("rightturnsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:RightTurnSign', source)
end)

ESX.RegisterUsableItem("notrespassingsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:NoTrespassingSign', source)
end)

ESX.RegisterUsableItem("yieldsign", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('robosenales:use:YieldSign', source)
end)
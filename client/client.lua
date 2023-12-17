lib.locale()

local ESX = exports['es_extended']:getSharedObject()
local objects = {}
local holdingSign = false

AddEventHandler('esx:playerLoaded', function()
    ESX.TriggerServerCallback('robosenales:server:GetObjects', function(incObjects)
        objects = incObjects
    end)
end)

local function AlertCops()
    -- Coloca tu export de dispatch aquí
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

local function LoadPropDict(model)
    while not HasModelLoaded(GetHashKey(model)) do
        RequestModel(GetHashKey(model))
        Wait(10)
    end
end

local perro = exports['nakres_skill_minigame']:GetMiniGame()
local sdata =  {
    difficultyFactor = Config.Minijuego.dificultad,
    lineSpeedUp = Config.Minijuego.velocidadLinea,
    time = Config.Minijuego.tiempo,
    halfSuccessMin = Config.Minijuego.halfSuccessMin,
    valueUpSpeed = Config.Minijuego.valueUpSpeed,
    valueDownSpeed = Config.Minijuego.valueDownSpeed,
    areaMoveSpeed = Config.Minijuego.areaMoveSpeed,
    img = Config.Minijuego.logo
}

RegisterNetEvent("robosenales:client:StopSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:WalkingManSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
         loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:DontBlockIntersectionSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:UTurnSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:NoParkingSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = Config.BarraProgreso.puedeCancelar,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:LeftTurnSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:RightTurnSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:NoTrespassingSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

RegisterNetEvent("robosenales:client:YieldSign", function(data)
    local ped = PlayerPedId()
    perro.Start(sdata,
    function()
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(ped, "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        if lib.progressCircle({
            duration = math.random(5000, 7000),
            position = Config.BarraProgreso.posicion,
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
                move = Config.BarraProgreso.puedoMoverme,
                combat = Config.BarraProgreso.combate,
                mouse = Config.BarraProgreso.mouse
            }
            anim = {
                dict = 'amb@prop_human_bum_bin@base',
            },
        })
        then
            local coords = GetEntityCoords(data.entity)
            SetEntityAsMissionEntity(data.entity, true, true)
            StopAnimTask(ped, "amb@prop_human_bum_bin@base", "base", 1.0)
            DeleteEntity(data.entity)
            local object = {coords = coords, model = -949234773}
            TriggerServerEvent("robosenales:server:delete", object)
            AlertCops()
        else
            TriggerClientEvent('esx:showNotification', src, locale('cancelado'))
        end
    end, 
    function()
        TriggerClientEvent('esx:showNotification', src, locale('fallaste'))
    end,
    function()
        TriggerClientEvent('esx:showNotification', src, locale('ya_casi'))
    end)
end)

local prop = nil
function AddPropToPlayerAndAnim(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
    loadAnimDict("amb@world_human_janitor@male@base")
    local Player = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(Player))
    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end
    prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(prop1)
    TaskPlayAnim(Player, "amb@world_human_janitor@male@base", "base", 8.0, 1.0, -1, 49, 0, 0, 0, 0)

    CreateThread(function()
        while holdingSign do
            Wait(1000)
            if not IsEntityPlayingAnim(PlayerPedId(), "amb@world_human_janitor@male@base", "base", 3) and holdingSign then
                holdingSign = false
                DeleteEntity(prop)
            end
        end
    end)
end

RegisterNetEvent("robosenales:use:StopSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_01a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
end)

RegisterNetEvent("robosenales:use:WalkingManSign", function(src) 
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_05a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
end)

RegisterNetEvent("robosenales:use:DontBlockIntersectionSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_03e", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
end)

RegisterNetEvent("robosenales:use:UturnSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_03m", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("robosenales:use:NoParkingSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_04a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("robosenales:use:LeftTurnSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_05e", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("robosenales:use:RightTurnSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_05f", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("robosenales:use:NoTrespassingSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_restriction_10", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("robosenales:use:YieldSign", function(src)
    if not holdingSign then
        holdingSign = true
        AddPropToPlayerAndAnim("prop_sign_road_02a", 57005, 0.10, -1.0, 0.0, -90.0, -250.0, 0.0)
    else
        holdingSign = false
        DeleteEntity(prop)
        ClearPedSecondaryTask(PlayerPedId())
    end
    
end)

RegisterNetEvent("signrobbery:client:delete", function(object)
    objects[#objects+1] = {coords = object.coords, model = object.model}
    local ent = GetClosestObjectOfType(object.coords.x, object.coords.y, object.coords.z, 0.1, object.model, false, false, false)
    if DoesEntityExist(ent) then
        SetEntityAsMissionEntity(ent, 1, 1)
        DeleteObject(ent)
        SetEntityAsNoLongerNeeded(ent)
    end
end)

CreateThread(function()

    exports.ox_target:addModel('prop_sign_road_01a', {
        {
            event = "robosenales:client:StopSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_05a', {
        {
            event = "robosenales:client:WalkingManSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_03e', {
        {
            event = "robosenales:client:DontBlockIntersectionSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_03m', {
        {
            event = "robosenales:client:UTurnSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_04a', {
        {
            event = "robosenales:client:NoParkingSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_05e', {
        {
            event = "robosenales:client:LeftTurnSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_05f', {
        {
            event = "robosenales:client:RightTurnSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_restriction_10', {
        {
            event = "robosenales:client:NoTrespassingSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })

    exports.ox_target:addModel('prop_sign_road_02a', {
        {
            event = "robosenales:client:YieldSign",
            icon = 'fas fa-user-secret',
            label = locale('robar_señal'),
        }
    })
end)

CreateThread(function()
    while true do
        for k = 1, #objects, 1 do
            v = objects[k]
            local ent = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 0.1, v.model, false, false, false)
            if DoesEntityExist(ent) then
                SetEntityAsMissionEntity(ent, 1, 1)
                DeleteObject(ent)
                SetEntityAsNoLongerNeeded(ent)
            end
        end
        Wait(1000)
    end
end)

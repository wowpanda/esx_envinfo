ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
TriggerEvent('chat:addSuggestion', _U('command_hint'), _U('command_arg_hint'))

RegisterNetEvent("esx_envinfo:drawBlip")
AddEventHandler('esx_envinfo:drawBlip', function(coords, num)
    local blip = AddBlipForCoord(coords.x, coords.y)

    SetBlipSprite(blip, 205)
    SetBlipDisplay(blip, 6)
    SetBlipScale(blip, 0.4)
    SetBlipColour(blip, 53)
    SetBlipCategory(blip, 7)


    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(_U('chat_prefix') .. num)
    EndTextCommandSetBlipName(blip)
    
    Wait(300000)
    RemoveBlip(blip)
end)


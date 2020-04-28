ESX = nil
entornoNum = 0
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand(_U('command'), function(source, args)
    local sender = ESX.GetPlayerFromId(source)
    local senderLocation = sender.getCoords(true)
    local xPlayers = ESX.GetPlayers()
    local msg = table.concat(args, ' ')

    if string.len(msg) > 0 then
        entornoNum = entornoNum + 1
        if (source > 0) then
            for i=1, #xPlayers, 1 do
                local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
                if xPlayer.job.name == Config.Job then
                    TriggerClientEvent("chat:addMessage", xPlayers[i], {
                        args = {
                            _U('message_prefix') .. entornoNum .. _U('message_prefix_end') ..msg
                        },
                        color = { 5, 255, 255 }
                    })
                    TriggerClientEvent('esx_envinfo:drawBlip',xPlayers[i], senderLocation, entornoNum)
                end
            end
        else
            print(_U('not_player_error'))
        end
    else
        TriggerClientEvent("chat:addMessage", source, {
            args = {
                _U('error_prefix') .. _U('error_message')
            },
            color = { 255, 0, 0 }
        }) 
    end
end, false)
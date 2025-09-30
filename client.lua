local discordAppId = "1400601157176528977" -- Your Discord App ID
local discordAsset = "lasrplogo" -- Must match uploaded image asset in Discord Developer Portal

Citizen.CreateThread(function()
    SetDiscordAppId(discordAppId)

    while true do
        Citizen.Wait(5000)

        local playerCount = #GetActivePlayers()
        local maxPlayers = GetConvarInt("sv_maxclients", 48)
        local playerId = GetPlayerServerId(PlayerId())

        local details = string.format("Players: %d/%d", playerCount, maxPlayers)
        local state = string.format("Your ID: %d", playerId)

        SetRichPresence(details .. " | " .. state)
        SetDiscordRichPresenceAsset(discordAsset)
        SetDiscordRichPresenceAssetText("Los Angeles State RP")

        SetDiscordRichPresenceAction(0, "Join Server", "https://cfx.re/join/qxeoa4")
        SetDiscordRichPresenceAction(1, "Join Discord", "https://discord.gg/lasrpfivem")
    end
end)

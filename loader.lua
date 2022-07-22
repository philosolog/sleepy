local MainHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local sleepyImg = Instance.new("ImageLabel")
local LoadingTXT = Instance.new("TextLabel")
local BorderLoading = Instance.new("Frame")
local PurpleLine = Instance.new("Frame")
local UICorner = Instance.new("UICorner")

MainHub.Name = "MainHub"
MainHub.Parent = game.CoreGui
MainHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = MainHub
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 2500, 0, 2500)
MainFrame.ZIndex = 2
sleepyImg.Name = "sleepyImg"
sleepyImg.Parent = MainFrame
sleepyImg.AnchorPoint = Vector2.new(0.5, 0.5)
sleepyImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sleepyImg.BackgroundTransparency = 1.000
sleepyImg.BorderSizePixel = 0
sleepyImg.Position = UDim2.new(0.504000008, 0, 0.5, 0)
sleepyImg.Size = UDim2.new(0, 250, 0, 250)
sleepyImg.ZIndex = 3
sleepyImg.Image = "http://www.roblox.com/asset/?id=0"
LoadingTXT.Name = "LoadingTXT"
LoadingTXT.Parent = MainFrame
LoadingTXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingTXT.BackgroundTransparency = 1.000
LoadingTXT.Position = UDim2.new(0.470018506, 0, 0.54520005, 0)
LoadingTXT.Size = UDim2.new(0, 168, 0, 50)
LoadingTXT.ZIndex = 6
LoadingTXT.Font = Enum.Font.Gotham
LoadingTXT.Text = "Loading"
LoadingTXT.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingTXT.TextScaled = true
LoadingTXT.TextSize = 14.000
LoadingTXT.TextWrapped = true
BorderLoading.Name = "BorderLoading"
BorderLoading.Parent = MainFrame
BorderLoading.AnchorPoint = Vector2.new(0, 0.5)
BorderLoading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BorderLoading.BorderSizePixel = 0
BorderLoading.ClipsDescendants = true
BorderLoading.Position = UDim2.new(0.458000004, 0, 0.574199975, 0)
BorderLoading.Size = UDim2.new(0, 230, 0, 6)
BorderLoading.ZIndex = 6
PurpleLine.Name = "PurpleLine"
PurpleLine.Parent = BorderLoading
PurpleLine.AnchorPoint = Vector2.new(0, 0.5)
PurpleLine.BackgroundColor3 = Color3.fromRGB(241, 133, 255)
PurpleLine.BorderSizePixel = 0
PurpleLine.Size = UDim2.new(0, 0, 0, 6)
PurpleLine.ZIndex = 4
UICorner.CornerRadius = UDim.new(100, 0)
UICorner.Parent = BorderLoading

local function TDAH_fake_script() -- MainHub.Animate 
	-- TODO: Create a (sleepy MainHub) loader.
	if isfile(game.PlaceId..'_sleepy.txt') == false then (syn and syn.request or http_request)({ Url = "http://127.0.0.1:6463/rpc?v=1",Method = "POST",Headers = {["Content-Type"] = "application/json",["Origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({cmd = "INVITE_BROWSER",args = {code = "aVgrSFCHpu"},nonce = game:GetService("HttpService"):GenerateGUID(false)}),writefile(game.PlaceId..'_sleepy.txt', "discord")})end
    loadstring(game:HttpGet('https://raw.githubusercontent.com/philosolog/sleepy/main/main.lua'))()
	game.CoreGui.MainHub:Destroy()
end

coroutine.wrap(TDAH_fake_script)()

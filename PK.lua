repeat wait() until game:IsLoaded()
print('\n--------------------------\nThanks for using fragment!\nNote: This is the first release of the script, hope no one say it\'t too expensive or things like that :c\n--------------------------')
if  game.CoreGui:FindFirstChild("0O0OOO000O0OOO0O0O0") then
	game.CoreGui["0O0OOO000O0OOO0O0O0"]:Destroy();
end
getgenv().PAST = true
local GT = "Roblox Parkour (V0.1)"
if getgenv().PAST == false or getgenv().PAST == nil then
	delfile("Saved.json")
	game:GetService("Players").LocalPlayer:Kick("STOP TRYING TO BYPASS THE KEY SISTEM! [1]")
	game:ShutDown()
	while true do
		wait()
		if getgenv().Activated == true then
			pcall(function()
				getgenv().Connections.Input_Began:Disconnect()
				getgenv().Connections.Stepped_RunService:Disconnect()
				getgenv().Connections.Staff_Notification:Disconnect()
				getgenv().Connections.Player_Notification:Disconnect()
			end)
		end
	end
	while true do end
end
function UpdateTheme(Frame, type, name)
	if type == nil or type == "" then print("No Frame Selected [404|001]") end
	if type == "Image" then
		Frame.ImageColor3 = Color3.fromRGB(unpack(csvToTable(game:GetService("HttpService"):JSONDecode(readfile("Fragment/Themes/Theme.fr"))[name])))
	elseif type == "Frame" then
		Frame.BackgroundColor3 = Color3.fromRGB(unpack(csvToTable(game:GetService("HttpService"):JSONDecode(readfile("Fragment/Themes/Theme.fr"))[name])))	
	elseif type == "Text" then
		Frame.TextColor3 = Color3.fromRGB(unpack(csvToTable(game:GetService("HttpService"):JSONDecode(readfile("Fragment/Themes/Theme.fr"))[name])))	
	end	

end

-- MonGirl 4koma 225 - Destroy kid's 
if isfile("Fragment/Themes/Theme.fr") then

else
	local colors = { 
	['ShadowColor'] = "255,255,255", 
	['UpBar'] = "16,17,17", 
	['Sidebar']= "22,22,22", 
	['GameTitle'] = "255,255,255", 
	['SectionTitle'] = "255,255,255", 
	['GeneralTextColor'] = "255,255,255",
	['InsideSections'] = "30,30,29"
	}

	writefile("Fragment/Themes/Theme.fr", game:GetService("HttpService"):JSONEncode(colors))


end

--
local UserInputService = game:GetService("UserInputService")

local TS = game:GetService("TweenService")
--
local _ = Instance.new("ScreenGui")

local v2NewUiLib = Instance.new("ImageLabel")
local All = Instance.new("Frame")
local RF543 = Instance.new("UICorner")
local UpperInfo = Instance.new("Frame")
local LOGO = Instance.new("ImageLabel")
local TITLE = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local SeparatorLine = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local GeneralSidebar = Instance.new("Frame")
local SidebarHolder = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UserInfo = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ImageInfo = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local WindowHolder = Instance.new("Frame")
local STR = Instance.new("UIStroke")

local hhh = Instance.new("Frame")
local yhn = Instance.new("UIGradient")

local gui = v2NewUiLib

local dragging
local dragInput
local dragStart
local startPos

local function Execute(func , val)
	local s,e = pcall(function() func(val) end)

	return {s,e}
end

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)



_.Name = "0O0OOO000O0OOO0O0O0"
_.Parent =  game.CoreGui
_.ResetOnSpawn = false

hhh.Name = "hhh"
hhh.Parent = GeneralSidebar
hhh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hhh.BorderSizePixel = 0
hhh.Position = UDim2.new(0.992063463, 0, 0.067888692, 0)
hhh.Size = UDim2.new(0, 1, 0, 415)
hhh.ZIndex = 5

yhn.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(106, 106, 106)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
yhn.Name = "yhn"
yhn.Parent = hhh

local GameFps = Instance.new("TextLabel")

STR.Name = "UiStroke"
STR.Parent = ImageInfo
STR.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
STR.LineJoinMode = Enum.LineJoinMode.Round
STR.Thickness = 1.4
STR.Transparency = 0
STR.Color = Color3.fromRGB(255,255,255)
v2NewUiLib.Name = "v2NewUiLib"
v2NewUiLib.Parent = _
v2NewUiLib.AnchorPoint = Vector2.new(0.5, 0.5)
v2NewUiLib.BackgroundTransparency = 1.000
v2NewUiLib.Position = UDim2.new(0.19,0,0.306,0)
v2NewUiLib.Size = UDim2.new(0, 506, 0, 436)
v2NewUiLib.Image = "rbxassetid://1316045217"
v2NewUiLib.ImageTransparency = 0.800
v2NewUiLib.ScaleType = Enum.ScaleType.Slice
v2NewUiLib.SliceCenter = Rect.new(10, 10, 118, 118)

All.Name = "All"
All.Parent = v2NewUiLib
All.AnchorPoint = Vector2.new(0.5, 0.5)
All.BackgroundColor3 = Color3.fromRGB(16, 16, 17)
All.BorderColor3 = Color3.fromRGB(35, 37, 36)
All.ClipsDescendants = true
All.Position = UDim2.new(0, 253, 0, 217)
All.Size = UDim2.new(0, 489, 0, 418)

RF543.CornerRadius = UDim.new(0, 5)
RF543.Name = "RF543"
RF543.Parent = All

UpperInfo.Name = "UpperInfo"
UpperInfo.Parent = All
UpperInfo.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
UpperInfo.BorderSizePixel = 0
UpperInfo.Position = UDim2.new(-0.00356000965, 0, 0, 0)
UpperInfo.Size = UDim2.new(0, 128, 0, 29)
UpperInfo.ZIndex = 4

LOGO.Name = "LOGO"
LOGO.Parent = UpperInfo
LOGO.BackgroundColor3 = Color3.fromRGB(251, 203, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.BorderSizePixel = 0
LOGO.Position = UDim2.new(-0.25414905, 0, -0.400892913, 0)
LOGO.Size = UDim2.new(0, 77, 0, 52)
LOGO.ZIndex = 4
LOGO.Image = "rbxassetid://10115465622"
LOGO.ScaleType = Enum.ScaleType.Slice

TITLE.Name = "TITLE"
TITLE.Parent = UpperInfo
TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TITLE.BackgroundTransparency = 1.000
TITLE.BorderSizePixel = 0
TITLE.Position = UDim2.new(0.271006107, 0, -0.00444938382, 0)
TITLE.Size = UDim2.new(0, 91, 0, 26)
TITLE.ZIndex = 4
TITLE.RichText = true
TITLE.Font = Enum.Font.SourceSansBold
TITLE.Text = "FRAGILE <font color=\"rgb(253, 234, 141)\"> V2</font>"
TITLE.TextColor3 = Color3.fromRGB(255, 255, 255)
TITLE.TextSize = 18.000
TITLE.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = UpperInfo

SeparatorLine.Name = "Separator Line"
SeparatorLine.Parent = UpperInfo
SeparatorLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SeparatorLine.BorderSizePixel = 0
SeparatorLine.Position = UDim2.new(0, -2, 0, 29)
SeparatorLine.Size = UDim2.new(0, 501, 0, 1)
SeparatorLine.ZIndex = 10

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(106, 106, 106)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = SeparatorLine

GeneralSidebar.Name = "GeneralSidebar"
GeneralSidebar.Parent = All
GeneralSidebar.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
GeneralSidebar.BorderSizePixel = 0
GeneralSidebar.Position = UDim2.new(-0.000299247011, 0, 0.00388164609, 0)
GeneralSidebar.Size = UDim2.new(0, 126, 0, 418)

SidebarHolder.Name = "SidebarHolder"
SidebarHolder.Parent = GeneralSidebar
SidebarHolder.Active = true
SidebarHolder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
SidebarHolder.BorderSizePixel = 0
SidebarHolder.ClipsDescendants = false
SidebarHolder.Position = UDim2.new(0.00793650839, 0, 0.0764958486, 0)
SidebarHolder.Size = UDim2.new(0, 125, 0, 343)
SidebarHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
SidebarHolder.ScrollBarThickness = 2

UIListLayout.Parent = SidebarHolder
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UserInfo.Name = "UserInfo"
UserInfo.Parent = GeneralSidebar
UserInfo.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
UserInfo.BorderSizePixel = 0
UserInfo.Position = UDim2.new(0.00740741566, 0, 0.89707005, 0)
UserInfo.Size = UDim2.new(0, 125, 0, 42)

UICorner_3.CornerRadius = UDim.new(0, 2)
UICorner_3.Parent = UserInfo

ImageInfo.Name = "ImageInfo"
ImageInfo.Parent = UserInfo
ImageInfo.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
ImageInfo.BorderSizePixel = 0
ImageInfo.Position = UDim2.new(0.0677272975, 0, 0.13010636, 0)
ImageInfo.Size = UDim2.new(0, 29, 0, 29)
ImageInfo.Image = "rbxassetid://8171987939"

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = ImageInfo

Name.Name = "Name"
Name.Parent = UserInfo
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.363636345, 0, 0.425531924, 0)
Name.Size = UDim2.new(0, 82, 0, 18)
Name.Font = Enum.Font.SourceSansBold
Name.Text = "@Nevia"
Name.TextColor3 = Color3.fromRGB(108, 108, 108)
Name.TextSize = 14.000
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = UserInfo
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.371212095, 0, 0.170212775, 0)
Status.Size = UDim2.new(0, 82, 0, 18)
Status.Font = Enum.Font.SourceSansBold
Status.Text = "Developper"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 14.000
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

WindowHolder.Name = "WindowHolder"
WindowHolder.Parent = All
WindowHolder.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
WindowHolder.BorderSizePixel = 0
WindowHolder.Position = UDim2.new(0.257369459, 0, 0.0717702955, 0)
WindowHolder.Size = UDim2.new(0, 360, 0, 388)


GameFps.Name = "Game|Fps"
GameFps.Parent = All
GameFps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameFps.BackgroundTransparency = 1.000
GameFps.BorderSizePixel = 0
GameFps.Position = UDim2.new(0.283518463, 0, 0.00609918684, 0)
GameFps.Size = UDim2.new(0, 290, 0, 23)
GameFps.Font = Enum.Font.SourceSansBold
GameFps.Text =GT
GameFps.TextColor3 = Color3.fromRGB(255, 255, 255)
GameFps.TextSize = 18.000
GameFps.TextXAlignment = Enum.TextXAlignment.Left



local InteractivePreview = {}


local library = {}
local flags = {}


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local UIS = UserInputService
local plink = HttpService:JSONDecode(game:HttpGet("https://pst.klgrth.io/paste/rs4jg/raw",true))

local http_request = request or http_request or (http and http.request) or syn.request
local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {'Krnl-Fingerprint','Krnl-Fingerprint','fingerprint', 'syn-user-identifier', 'sentinel-fingerprint', 'proto-user-identifier', 'shadow_hardware', 'krnl-hwid', 'exploit-guid','SW-Fingerprint','Syn-Fingerprint'};

local Key53 = 37123812377
local Key14 = 4887
local inv256

local tweenTime = 0.125
local tweenInfo = TweenInfo.new(
	tweenTime,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out
)


function AddRipple(button,Sidebar,Prem)
	button.ClipsDescendants = true
	local obj = button
	local function Ripple()
		spawn(
			function()
				local Mouse = game.Players.LocalPlayer:GetMouse()
				local Circle = Instance.new("ImageLabel")
				Circle.Name = "Circle"
				Circle.Parent = obj
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BackgroundTransparency = 1.000
				Circle.ZIndex = 10
				Circle.Image = "rbxassetid://266543268"
				Circle.ImageColor3 = Color3.fromRGB(211, 211, 211)
				Circle.ImageTransparency = 0.6
				local NewX, NewY = Mouse.X - Circle.AbsolutePosition.X, Mouse.Y - Circle.AbsolutePosition.Y
				Circle.Position = UDim2.new(0, NewX, 0, NewY)
				local Size = 0
				if obj.AbsoluteSize.X > obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.X * 1
				elseif obj.AbsoluteSize.X < obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.Y * 1
				elseif obj.AbsoluteSize.X == obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.X * 1
				end
				Circle:TweenSizeAndPosition(
					UDim2.new(0, Size, 0, Size),
					UDim2.new(0.5, -Size / 2, 0.5, -Size / 2),
					"Out",
					"Quad",
					0.2,
					false
				)
				for i = 1, 15 do
					Circle.ImageTransparency = Circle.ImageTransparency + 0.05
					wait()
				end
				Circle:Destroy()
			end
		)
	end
	local Background = Instance.new("Frame")
	local CornerRadius = Instance.new("UICorner")
	Background.Name = "Background"
	Background.Parent = button
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background.BackgroundTransparency = 1.000
	Background.ClipsDescendants = true
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(1, 0, 1, 0)
	CornerRadius.CornerRadius = UDim.new(0, 4)
	CornerRadius.Name = "CornerRadius"
	CornerRadius.Parent = Background

	local mouse = Players.LocalPlayer:GetMouse()

	local background = button:WaitForChild("Background")

	local active = false
	local hovering = false

	local function OnMouseButton1Down()
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 0.80 })
		backgroundFadeIn:Play()
	end

	local function OnMouseButton1Up()
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 1 })
		backgroundFadeIn:Play()
	end

	local function OnMouseEnter()
		hovering = true
		if Sidebar then
			TweenService:Create(button.Icon , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = -20}):Play()	
		end
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 0.95 })

		backgroundFadeIn:Play()

		backgroundFadeIn.Completed:Wait()

		local backgroundFadeOut = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 1 })

		repeat wait() until not hovering

		backgroundFadeOut:Play()
	end


	local function OnMouseLeave()
		if Sidebar or Prem then
			TweenService:Create(button.Icon , TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Rotation = 0}):Play()	
		end
		hovering = false
		active = false
	end
	button.MouseButton1Down:Connect(OnMouseButton1Down)
	button.MouseButton1Up:Connect(OnMouseButton1Up)
	button.MouseEnter:Connect(OnMouseEnter)
	button.MouseLeave:Connect(OnMouseLeave)
	button.MouseButton1Click:Connect(Ripple)
end



function encode(str)
	if not inv256 then
		inv256 = {}
		for M = 0, 127 do
			local inv = -1
			repeat inv = inv + 2
			until inv * (2*M + 1) % 256 == 1
			inv256[M] = inv
		end
	end
	local K, F = Key53, 16384 + Key14
	return (str:gsub('.',
		function(m)
			local L = K % 274877906944  -- 2^38
			local H = (K - L) / 274877906944
			local M = H % 128
			m = m:byte()
			local c = (m * inv256[M] - (H - M) / 128) % 256
			K = L * F + H + c + m
			return ('%02x'):format(c)
		end
		))
end


function decode(str)
	local K, F = Key53, 16384 + Key14
	return (str:gsub('\37\120\37\120',
		function(c)
			local L = K % 274877906944 
			local H = (K - L) / 274877906944
			local M = H % 128
			c = tonumber(c, 16)
			local m = (c + (H - M) / 128) * (2*M + 1) % 256
			K = L * F + H + c + m
			return string.char(m)
		end
		))
end

local function SXX_In(Input)
	local Output = "";
	for Cdx = 1, #Input do
		local Char, Byte = Input:sub(Cdx, Cdx);
		Byte = tostring(Char:byte());
		for Bdx = 1, #Byte do
			local Bit = tonumber(Byte:sub(Bdx, Bdx))*3;
			Output = Output..tostring(string.char(Bit));
		end;
		Output = Output.."\11";
	end;
	return Output;
end;

local function SXX_Out(Input)
	local Output, Session, Cdx = "", "", 1;
	repeat
		local Char, Byte = Input:sub(Cdx, Cdx);
		Byte = tostring(Char:byte());
		if Char == "\11" then
			Output = Output..string.char(tonumber(Session));
			Session = "";
		else
			Session = Session..tostring(math.floor(Byte/3));
		end;
		Input = Input:sub(2);
	until #Input == 0;
	return Output;
end;


function csvToTable(list) -- Comma-Separated-Values to Table
	local out = {}
	for entry in string.gmatch(list, "[^,]+") do -- [^,] means: anything that is not a comma (the ^ is the not). + means: as many of it in a row as you can get
		table.insert(out, entry)
	end
	return out
end


function CheckPremium()
	local c = false
	local hwid = "";
	for i, v in next, hwid_list do
		if decoded.headers[v] then
			hwid = tostring(decoded.headers[v])
			break
		end
	end

	for i,v in pairs(plink) do
		local t  = csvToTable(v)
        local y = t[1]

		t[1] = SXX_Out(decode(tostring(t[1])))
        if (t[1]==hwid) or (y == encode(SXX_In(hwid)) ) then
            c = true
        else

        end
	end

	return c
end


local Usertag = game:GetService("Players").LocalPlayer.DisplayName

if Usertag == "vnx" then
	Name.Text = "@"..Usertag
	Status.Text = "Developper"
else
	local p = CheckPremium()
	if p or CheckPremium() then
		Name.Text = "@"..Usertag
		Status.Text = "Premium"
	else
		game:GetService("Players").LocalPlayer:Kick("STOP TRYING TO BYPASS THE KEY SISTEM! [2]")
		game:ShutDown()
		while true do
			wait()
			if getgenv().Activated == true then
				pcall(function()
					getgenv().Connections.Input_Began:Disconnect()
					getgenv().Connections.Stepped_RunService:Disconnect()
					getgenv().Connections.Staff_Notification:Disconnect()
					getgenv().Connections.Player_Notification:Disconnect()
				end)
			end
		end
		while true do end
		return
	end
end


local TargetId = game:GetService("Players").LocalPlayer.UserId
local ThumbType = Enum.ThumbnailType.HeadShot
local ThumbSize = Enum.ThumbnailSize.Size420x420
local Content, IsReady = game:GetService('Players'):GetUserThumbnailAsync(TargetId, ThumbType, ThumbSize)
ImageInfo.Image = Content


local SHDW = Instance.new("ImageLabel")
local HOLDER = Instance.new("Frame")
local jf = Instance.new("UICorner")
local BodypartSelect = Instance.new("ImageLabel")
local hjfd = Instance.new("UICorner")
local BACKGROUND = Instance.new("ImageLabel")
local Body = Instance.new("ImageLabel")
local Chams = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local PointFrame = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local Frame_6 = Instance.new("Frame")
local Frame_7 = Instance.new("Frame")
local Frame_8 = Instance.new("Frame")
local Torso = Instance.new("ImageButton")
local BodyHitBox = Instance.new("Frame")
local Head = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local LeftArm = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Torso_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local RightLeg = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local RightArm = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local LeftLeg = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Head_2 = Instance.new("ImageButton")
local UIPadding = Instance.new("UIPadding")
local sdfh = Instance.new("UIPadding")
local a = Instance.new("TextLabel")
local DONE = Instance.new("TextButton")
local fs = Instance.new("UICorner")
local ANIMJFRAM = Instance.new("Frame")

SHDW.ImageTransparency = 1
SHDW.Name = "SHDW"
SHDW.Parent = v2NewUiLib
SHDW.AnchorPoint = Vector2.new(0.5, 0.5)
SHDW.BackgroundTransparency = 1.000
SHDW.ClipsDescendants = true
SHDW.Position = UDim2.new(1.21000004, 0, 0.338, 0)
SHDW.Size = UDim2.new(0, 215, 0, 292)
SHDW.Image = "rbxassetid://1316045217"
SHDW.ImageTransparency = 0.800
SHDW.ScaleType = Enum.ScaleType.Slice
SHDW.SliceCenter = Rect.new(10, 10, 118, 118)

HOLDER.Name = "HOLDER"
HOLDER.Parent = SHDW
HOLDER.AnchorPoint = Vector2.new(0.5, 0.5)
HOLDER.BackgroundColor3 = Color3.fromRGB(16, 16, 17)
HOLDER.BorderColor3 = Color3.fromRGB(35, 37, 36)
HOLDER.ClipsDescendants = true
HOLDER.Position = UDim2.new(0, 107, 0, 145)
HOLDER.Size = UDim2.new(0, 195, 0, 276)

jf.CornerRadius = UDim.new(0, 5)
jf.Name = "jf"
jf.Parent = HOLDER

BodypartSelect.Name = "BodypartSelect"
BodypartSelect.Parent = HOLDER
BodypartSelect.AnchorPoint = Vector2.new(0.5, 0.5)
BodypartSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BodypartSelect.BackgroundTransparency = 1.000
BodypartSelect.BorderSizePixel = 0
BodypartSelect.ClipsDescendants = true
BodypartSelect.Position = UDim2.new(0, 98, 0, 135)
BodypartSelect.Size = UDim2.new(0, 168, 0, 205)
BodypartSelect.Image = "http://www.roblox.com/asset/?id=9805981848"
BodypartSelect.ScaleType = Enum.ScaleType.Crop
BodypartSelect.SliceScale = 0.000

hjfd.CornerRadius = UDim.new(0, 5)
hjfd.Name = "hjfd"
hjfd.Parent = BodypartSelect

BACKGROUND.Name = "BACKGROUND"
BACKGROUND.Parent = BodypartSelect
BACKGROUND.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BACKGROUND.BackgroundTransparency = 1.000
BACKGROUND.BorderSizePixel = 0
BACKGROUND.ClipsDescendants = true
BACKGROUND.Position = UDim2.new(0, -4, 0, -4)
BACKGROUND.Size = UDim2.new(1, 8, 1, 8)
BACKGROUND.Image = "http://www.roblox.com/asset/?id=9731691467"
BACKGROUND.ImageColor3 = Color3.fromRGB(26, 26, 26)
BACKGROUND.ImageTransparency = 1.000
BACKGROUND.ScaleType = Enum.ScaleType.Slice
BACKGROUND.SliceCenter = Rect.new(6, 6, 94, 94)

Body.Name = "Body"
Body.Parent = BACKGROUND
Body.AnchorPoint = Vector2.new(0.5, 0.5)
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0.5, 0, 0.479695439, 17)
Body.Size = UDim2.new(0, 125, 0, 124)
Body.ZIndex = 2
Body.Image = "http://www.roblox.com/asset/?id=9807578695"

Chams.Name = "Chams"
Chams.Parent = Body
Chams.AnchorPoint = Vector2.new(0.5, 0.5)
Chams.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chams.BackgroundTransparency = 1.000
Chams.BorderSizePixel = 0
Chams.Position = UDim2.new(0.5, 0, 0.538978457, -18)
Chams.Size = UDim2.new(0, 156, 0, 190)
Chams.Visible = false

Frame.Parent = Chams
Frame.BackgroundColor3 = Color3.fromRGB(255, 118, 21)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0, 1)

Frame_2.Parent = Chams
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 118, 21)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 1, 1, 0)

Frame_3.Parent = Chams
Frame_3.AnchorPoint = Vector2.new(0, 1)
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 118, 21)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, 1, 0)
Frame_3.Size = UDim2.new(1, 0, 0, 1)

Frame_4.Parent = Chams
Frame_4.AnchorPoint = Vector2.new(1, 0)
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 118, 21)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(1, 0, 0, 0)
Frame_4.Size = UDim2.new(0, 1, 1, 0)

PointFrame.Name = "PointFrame"
PointFrame.Parent = Body
PointFrame.AnchorPoint = Vector2.new(0.5, 0.5)
PointFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PointFrame.BackgroundTransparency = 1.000
PointFrame.BorderSizePixel = 0
PointFrame.Position = UDim2.new(0.5, 0, 0.5, -18)
PointFrame.Size = UDim2.new(0, 125, 0, 159)
PointFrame.Visible = false

Frame_5.Parent = PointFrame
Frame_5.BackgroundColor3 = Color3.fromRGB(255, 55, 55)
Frame_5.BorderSizePixel = 0
Frame_5.Size = UDim2.new(1, 0, 0, 1)

Frame_6.Parent = PointFrame
Frame_6.BackgroundColor3 = Color3.fromRGB(255, 55, 55)
Frame_6.BorderSizePixel = 0
Frame_6.Size = UDim2.new(0, 1, 1, 0)

Frame_7.Parent = PointFrame
Frame_7.AnchorPoint = Vector2.new(0, 1)
Frame_7.BackgroundColor3 = Color3.fromRGB(255, 55, 55)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0, 0, 1, 0)
Frame_7.Size = UDim2.new(1, 0, 0, 1)

Frame_8.Parent = PointFrame
Frame_8.AnchorPoint = Vector2.new(1, 0)
Frame_8.BackgroundColor3 = Color3.fromRGB(255, 55, 55)
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(1, 0, 0, 0)
Frame_8.Size = UDim2.new(0, 1, 1, 0)

Torso.Name = "Torso"
Torso.Parent = Body
Torso.AnchorPoint = Vector2.new(0.5, 0)
Torso.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Torso.BackgroundTransparency = 1.000
Torso.BorderSizePixel = 0
Torso.Position = UDim2.new(0.5, 0, 0, -2)
Torso.Size = UDim2.new(0, 63, 0, 63)
Torso.AutoButtonColor = false
Torso.Image = "http://www.roblox.com/asset/?id=9807591983"

BodyHitBox.Name = "BodyHitBox"
BodyHitBox.Parent = Body
BodyHitBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BodyHitBox.BackgroundTransparency = 1.000
BodyHitBox.BorderSizePixel = 0
BodyHitBox.Position = UDim2.new(0, 0, -0.29838711, 0)
BodyHitBox.Size = UDim2.new(0, 125, 0, 174)
BodyHitBox.ZIndex = 3

Head.Name = "Head"
Head.Parent = BodyHitBox
Head.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
Head.BackgroundTransparency = 0.400
Head.BorderSizePixel = 0
Head.Position = UDim2.new(0.360000014, 0, 0.0114942528, 0)
Head.Size = UDim2.new(0, 35, 0, 35)
Head.ZIndex = 5
Head.AutoButtonColor = false
Head.Font = Enum.Font.SourceSans
Head.Text = ""
Head.TextColor3 = Color3.fromRGB(0, 0, 0)
Head.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = Head

LeftArm.Name = "Left Arm"
LeftArm.Parent = BodyHitBox
LeftArm.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
LeftArm.BackgroundTransparency = 0.400
LeftArm.BorderSizePixel = 0
LeftArm.Position = UDim2.new(0, 0, 0.212643683, 0)
LeftArm.Size = UDim2.new(0, 31, 0, 61)
LeftArm.Visible = false
LeftArm.ZIndex = 5
LeftArm.AutoButtonColor = false
LeftArm.Font = Enum.Font.SourceSans
LeftArm.Text = ""
LeftArm.TextColor3 = Color3.fromRGB(0, 0, 0)
LeftArm.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = LeftArm

Torso_2.Name = "Torso"
Torso_2.Parent = BodyHitBox
Torso_2.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
Torso_2.BackgroundTransparency = 0.400
Torso_2.BorderSizePixel = 0
Torso_2.Position = UDim2.new(0.247999996, 0, 0.212643683, 0)
Torso_2.Size = UDim2.new(0, 63, 0, 61)
Torso_2.Visible = false
Torso_2.ZIndex = 5
Torso_2.AutoButtonColor = false
Torso_2.Font = Enum.Font.SourceSans
Torso_2.Text = ""
Torso_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Torso_2.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Torso_2

RightLeg.Name = "Right Leg"
RightLeg.Parent = BodyHitBox
RightLeg.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
RightLeg.BackgroundTransparency = 0.400
RightLeg.BorderSizePixel = 0
RightLeg.Position = UDim2.new(0.504000008, 0, 0.574712634, 0)
RightLeg.Size = UDim2.new(0, 31, 0, 61)
RightLeg.Visible = false
RightLeg.ZIndex = 5
RightLeg.AutoButtonColor = false
RightLeg.Font = Enum.Font.SourceSans
RightLeg.Text = ""
RightLeg.TextColor3 = Color3.fromRGB(0, 0, 0)
RightLeg.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = RightLeg

RightArm.Name = "Right Arm"
RightArm.Parent = BodyHitBox
RightArm.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
RightArm.BackgroundTransparency = 0.400
RightArm.BorderSizePixel = 0
RightArm.Position = UDim2.new(0.752000034, 0, 0.212643683, 0)
RightArm.Size = UDim2.new(0, 31, 0, 61)
RightArm.Visible = false
RightArm.ZIndex = 5
RightArm.AutoButtonColor = false
RightArm.Font = Enum.Font.SourceSans
RightArm.Text = ""
RightArm.TextColor3 = Color3.fromRGB(0, 0, 0)
RightArm.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = RightArm

LeftLeg.Name = "Left Leg"
LeftLeg.Parent = BodyHitBox
LeftLeg.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
LeftLeg.BackgroundTransparency = 0.400
LeftLeg.BorderSizePixel = 0
LeftLeg.Position = UDim2.new(0.247999996, 0, 0.574712634, 0)
LeftLeg.Size = UDim2.new(0, 31, 0, 61)
LeftLeg.Visible = false
LeftLeg.ZIndex = 5
LeftLeg.AutoButtonColor = false
LeftLeg.Font = Enum.Font.SourceSans
LeftLeg.Text = ""
LeftLeg.TextColor3 = Color3.fromRGB(0, 0, 0)
LeftLeg.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = LeftLeg

Head_2.Name = "Head"
Head_2.Parent = Body
Head_2.AnchorPoint = Vector2.new(0.5, 1)
Head_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Head_2.BackgroundTransparency = 1.000
Head_2.BorderSizePixel = 0
Head_2.Position = UDim2.new(0.5, 0, 0, 0)
Head_2.Size = UDim2.new(0, 35, 0, 35)
Head_2.AutoButtonColor = false
Head_2.Image = "http://www.roblox.com/asset/?id=9807583931"

UIPadding.Parent = BACKGROUND
UIPadding.PaddingBottom = UDim.new(0, 4)
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.PaddingRight = UDim.new(0, 4)
UIPadding.PaddingTop = UDim.new(0, 4)

sdfh.Name = "sdfh"
sdfh.Parent = BodypartSelect
sdfh.PaddingBottom = UDim.new(0, 4)
sdfh.PaddingLeft = UDim.new(0, 4)
sdfh.PaddingRight = UDim.new(0, 4)
sdfh.PaddingTop = UDim.new(0, 4)

a.Name = "a"
a.Parent = HOLDER
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
a.BackgroundTransparency = 1.000
a.BorderSizePixel = 0
a.Position = UDim2.new(0, 0, 0.00609919149, 0)
a.Size = UDim2.new(0, 195, 0, 23)
a.Font = Enum.Font.SourceSansBold
a.Text = "Interactive Preview"
a.TextColor3 = Color3.fromRGB(255, 255, 255)
a.TextSize = 17.000

DONE.Name = "DONE"
DONE.Parent = HOLDER
DONE.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
DONE.BorderSizePixel = 0
DONE.Position = UDim2.new(0, 23, 0, 246)
DONE.Size = UDim2.new(0, 149, 0, 21)
DONE.AutoButtonColor = false
DONE.Font = Enum.Font.SourceSansBold
DONE.Text = "Done"
DONE.TextColor3 = Color3.fromRGB(255, 255, 255)
DONE.TextSize = 18.000

fs.CornerRadius = UDim.new(0, 5)
fs.Name = "fs"
fs.Parent = DONE

ANIMJFRAM.Name = "ANIMJFRAM"
ANIMJFRAM.Parent = SHDW
ANIMJFRAM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ANIMJFRAM.BorderSizePixel = 0
ANIMJFRAM.Position = UDim2.new(0, 0, 1, 0)
ANIMJFRAM.Size = UDim2.new(0, 224, 0, 304)
ANIMJFRAM.ZIndex = 10

SHDW.Visible  =  false
local iso = false;
local waiting = false
function UpdateIP()
	SHDW.Visible = true
	if not waiting then
		waiting = not waiting
		if iso then
			HOLDER.Visible = true
			ANIMJFRAM.Visible = true
			TweenService:Create(SHDW , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
			ANIMJFRAM:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quint", 0.1)
			wait(.2)
			ANIMJFRAM:TweenPosition(UDim2.new(0,0,-1.1,0), "Out", "Quint", 0.15)
			HOLDER.Visible = false
			wait(.2)		
			ANIMJFRAM.Position = UDim2.new(0,0,1,0)
			iso = false
		else
			HOLDER.Visible = false
			ANIMJFRAM.Visible = true
			TweenService:Create(SHDW , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 0.8}):Play()
			ANIMJFRAM:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quint", 0.1)
			wait(.2)
			ANIMJFRAM:TweenPosition(UDim2.new(0,0,-1.1,0), "Out", "Quint", 0.15)
			HOLDER.Visible = true
			wait(.2)
			ANIMJFRAM.Position = UDim2.new(0,0,1,0)
			iso = true
		end
		waiting = not waiting
	end
end

function IP()

end


DONE.MouseButton1Click:Connect(function()
	UpdateIP()
end)

function library:AddSidebarLabel(Text)
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = SidebarHolder
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.066643849, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 113, 0, 20)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color3.fromRGB(153, 153, 153)
	TextLabel.TextSize = 16.5
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
end
local XXX = ''

for i,v in pairs(BodyHitBox:GetChildren()) do
	v.Visible = true
	v.BackgroundTransparency = 1
end
Torso_2.Visible = true
Torso_2.BackgroundTransparency = 1
Torso_2.ZIndex = 10



function library:StartLibrary()

end

function library:CreateWindow(Title, icon ,premium)
	icon  = icon or "6034798461"
	if premium and not Premium then 
		local lex = {}
		function lex:AddSection()
			return
		end
		return lex
	end
	local lex = {}

	local TemplateWindow = Instance.new("Frame")
	local WINDOW1 = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local Right = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Left = Instance.new("ScrollingFrame")
	local UIListLayout_3 = Instance.new("UIListLayout")

	Right.Name = "Right"
	Right.Parent = ScrollingFrame
	Right.Active = true
	Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Right.BackgroundTransparency = 1.000
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(0, 178, 0, 2)
	Right.Size = UDim2.new(0.5, 0, 2.7917428, 100)
	Right.BottomImage = "rbxassetid://7332056818"
	Right.CanvasSize = UDim2.new(0, 0, 0, 0)
	Right.MidImage = "rbxassetid://7332056818"
	Right.ScrollBarThickness = 3
	Right.TopImage = "rbxassetid://7332056818"
	Right.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	UIListLayout_2.Parent = Right
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 4)

	Left.Name = "Left"
	Left.Parent = ScrollingFrame
	Left.Active = true
	Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Left.BackgroundTransparency = 1.000
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0, 2, 0, 2)
	Left.Size = UDim2.new(0.5, 0, 2.79200006, 100)
	Left.BottomImage = "rbxassetid://7332056818"
	Left.CanvasSize = UDim2.new(0, 0, 0, 0)
	Left.MidImage = "rbxassetid://7332056818"
	Left.ScrollBarThickness = 3
	Left.TopImage = "rbxassetid://7332056818"
	Left.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	UIListLayout_3.Parent = Left
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 4)

	TemplateWindow.Name = "TemplateWindow"
	TemplateWindow.Parent = WindowHolder
	TemplateWindow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TemplateWindow.BackgroundTransparency = 1.000
	TemplateWindow.BorderSizePixel = 0
	TemplateWindow.Position = UDim2.new(-0.00277777785, 0, 0.00941726845, 0)
	TemplateWindow.Size = UDim2.new(0, 363, 0, 388)

	WINDOW1.Name = "WINDOW1"
	WINDOW1.Parent = TemplateWindow
	WINDOW1.AnchorPoint = Vector2.new(0.5, 0.5)
	WINDOW1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	WINDOW1.BorderSizePixel = 0
	WINDOW1.ClipsDescendants = true
	WINDOW1.Position = UDim2.new(0.501190364, 0, 0.498252869, 0)
	WINDOW1.Size = UDim2.new(0, 361, 0, 388)

	ScrollingFrame.Parent = TemplateWindow
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0, 0, -0.000144565231, 0)
	ScrollingFrame.Size = UDim2.new(0, 364, 0, 386)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollingFrame.ScrollBarThickness = 3

	local UICorner_2 = Instance.new("UICorner")
	local SIDEBARBUTTON = Instance.new("TextButton")
	local Icon = Instance.new("ImageLabel")
	SIDEBARBUTTON.Name = Title
	SIDEBARBUTTON.Parent = SidebarHolder
	SIDEBARBUTTON.BackgroundColor3 = Color3.fromRGB(17,17,17)
	SIDEBARBUTTON.BorderSizePixel = 0
	SIDEBARBUTTON.Position = UDim2.new(0.0691056922, 0, 0.052770447, 0)
	SIDEBARBUTTON.Size = UDim2.new(0, 109, 0, 21)
	SIDEBARBUTTON.AutoButtonColor = false
	SIDEBARBUTTON.Font = Enum.Font.SourceSansBold
	SIDEBARBUTTON.Text = Title
	SIDEBARBUTTON.TextColor3 = Color3.fromRGB(255, 255, 255)
	SIDEBARBUTTON.TextSize = 16.000
	TemplateWindow.Visible = false
	SIDEBARBUTTON.MouseButton1Click:Connect(function()
		for i,v in pairs(SidebarHolder:GetChildren()) do
			if v:IsA('TextButton')  then
				TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(17,17,17)}):Play()
			end
		end
		for i,v in pairs(WindowHolder:GetChildren())do
			if v:IsA('Frame')  then
				v.Visible = false
			end
		end
		TemplateWindow.Visible = true
		TweenService:Create(SIDEBARBUTTON , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()

	end)
	AddRipple(SIDEBARBUTTON, true)

	Icon.Name = "Icon"
	Icon.Parent = SIDEBARBUTTON
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.12,0,0.5,0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.Image = "rbxassetid://".. icon

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = SIDEBARBUTTON

	local function UpdateMainSize()
		wait(.2)
		local LeftSize =  UIListLayout_3.AbsoluteContentSize.Y
		local RightSize =  UIListLayout_2.AbsoluteContentSize.Y
		if LeftSize > RightSize then
			ScrollingFrame.CanvasSize = UDim2.fromOffset(0, UIListLayout_3.AbsoluteContentSize.Y + 15)
		elseif LeftSize < RightSize then
			ScrollingFrame.CanvasSize = UDim2.fromOffset(0, UIListLayout_2.AbsoluteContentSize.Y + 15)
		end
	end
	TweenService:Create(ScrollingFrame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 1}):Play()	

	ScrollingFrame.MouseEnter:Connect(function()
		TweenService:Create(ScrollingFrame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 0}):Play()	
	end)

	ScrollingFrame.MouseLeave:Connect(function()
		TweenService:Create(ScrollingFrame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 1}):Play()	
	end)

	function lex:AddSection(title,side,opened,premium)
		local Tween_Info = TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

		if premium and not Premium then
			local lexo = {}
			function lexo:AddButton() end
			return lexo
		end
		local p = {}

		local Section = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIListLayout1 = Instance.new("UIListLayout")
		local UPPERS = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local Seperator = Instance.new("Frame")
		local closeSection = Instance.new("ImageButton")
		local MinimizeSection = Instance.new("ImageButton")



		Section.Name = "Section"
		if side == 1 or side == "left" then
			Section.Parent = Left
		elseif side == 2 or side == "Right" then
			Section.Parent = Right
		else
			pcall(error("wtf dude, left or right."))
		end

		Section.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		Section.BorderSizePixel = 0
		Section.ClipsDescendants = true
		Section.Position = UDim2.new(0.0631868169, 0, 0, 0)
		Section.Size = UDim2.new(0, 159, 0, 24)

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = Section

		UIListLayout1.Parent = Section
		UIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout1.Padding = UDim.new(0, 3)

		UPPERS.Name = "UPPERS"
		UPPERS.Parent = Section
		UPPERS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		UPPERS.BackgroundTransparency = 1.000
		UPPERS.BorderSizePixel = 0
		UPPERS.Position = UDim2.new(0.0115901148, 0, 0, 0)
		UPPERS.Size = UDim2.new(0, 153, 0, 24)

		Title.Name = "Title"
		Title.Parent = UPPERS
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0, 6, 0, 0)
		Title.Size = UDim2.new(0, 139, 0, 18)
		Title.Font = Enum.Font.SourceSansSemibold
		Title.Text = title
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 17.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		Seperator.Name = "Seperator"
		Seperator.Parent = UPPERS
		Seperator.AnchorPoint = Vector2.new(0.5, 0)
		Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Seperator.BackgroundTransparency = 0.700
		Seperator.BorderSizePixel = 0
		Seperator.Position = UDim2.new(0, 78, 0, 19)
		Seperator.Size = UDim2.new(0, 144, 0, 1)

		closeSection.Name = "closeSection"
		closeSection.Parent = UPPERS
		closeSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		closeSection.BackgroundTransparency = 1.000
		closeSection.BorderSizePixel = 0
		closeSection.Position = UDim2.new(0, 137, 0, 2)
		closeSection.Size = UDim2.new(0, 12, 0, 14)
		closeSection.Image = "rbxassetid://6545531971"

		MinimizeSection.Name = "MinimizeSection"
		MinimizeSection.Parent = UPPERS
		MinimizeSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MinimizeSection.BackgroundTransparency = 1.000
		MinimizeSection.BorderSizePixel = 0
		MinimizeSection.Position = UDim2.new(0, 118, 0, 2)
		MinimizeSection.Rotation = 45.000
		MinimizeSection.Size = UDim2.new(0, 14, 0, 14)
		MinimizeSection.Visible = false
		MinimizeSection.Image = "rbxassetid://7162445572"

		function p:AddColourPalette(Text,def,Action)
			local SECTIONCOLOUR = Instance.new("Frame")
			local CCCC3 = Instance.new("UICorner")
			local S12 = Instance.new("Frame")
			local ColourWheel = Instance.new("ImageButton")
			local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			local Picker = Instance.new("ImageLabel")
			local S523 = Instance.new("UICorner")
			local DarknessPicker = Instance.new("ImageButton")
			local UIGradient = Instance.new("UIGradient")
			local Slider = Instance.new("ImageLabel")
			local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
			local S13 = Instance.new("Frame")
			local SDFH = Instance.new("UICorner")
			local ColourDisplayBIG = Instance.new("ImageLabel")
			local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
			local ColourDisplay = Instance.new("ImageLabel")
			local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
			local RESETALL = Instance.new("ImageButton")
			local SETCOLOR = Instance.new("ImageButton")
			local OPENCLOSE = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")



			SECTIONCOLOUR.Name = "SECTIONCOLOUR"
			SECTIONCOLOUR.Parent = Section
			SECTIONCOLOUR.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			SECTIONCOLOUR.BorderSizePixel = 0
			SECTIONCOLOUR.ClipsDescendants = true
			SECTIONCOLOUR.Position = UDim2.new(0.047169812, 0, 0.622589529, 0)
			SECTIONCOLOUR.Size = UDim2.new(0, 144, 0, 22)

			CCCC3.Name = "CCCC3"
			CCCC3.Parent = SECTIONCOLOUR

			S12.Name = "S12"
			S12.Parent = SECTIONCOLOUR
			S12.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			S12.BorderSizePixel = 0
			S12.Position = UDim2.new(0, 6, 0, 25)
			S12.Size = UDim2.new(0, 96, 0, 78)

			ColourWheel.Name = "ColourWheel"
			ColourWheel.Parent = S12
			ColourWheel.Active = false
			ColourWheel.AnchorPoint = Vector2.new(0.5, 0.5)
			ColourWheel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColourWheel.BackgroundTransparency = 1.000
			ColourWheel.BorderSizePixel = 0
			ColourWheel.Position = UDim2.new(0.35428524, 0, 0.511654973, 0)
			ColourWheel.Selectable = false
			ColourWheel.Size = UDim2.new(0.599832177, 0, 0.86683917, 0)
			ColourWheel.Image = "http://www.roblox.com/asset/?id=6020299385"

			UIAspectRatioConstraint.Parent = ColourWheel
			UIAspectRatioConstraint.AspectRatio = 1.000

			Picker.Name = "Picker"
			Picker.Parent = ColourWheel
			Picker.AnchorPoint = Vector2.new(0.5, 0.5)
			Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Picker.BackgroundTransparency = 1.000
			Picker.BorderSizePixel = 0
			Picker.Position = UDim2.new(0.5, 0, 0.5, 0)
			Picker.Size = UDim2.new(0.0900257826, 0, 0.0900257975, 0)
			Picker.Image = "http://www.roblox.com/asset/?id=3678860011"

			S523.Name = "S523"
			S523.Parent = S12

			DarknessPicker.Name = "DarknessPicker"
			DarknessPicker.Parent = S12
			DarknessPicker.Active = false
			DarknessPicker.AnchorPoint = Vector2.new(0.5, 0.5)
			DarknessPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DarknessPicker.BackgroundTransparency = 1.000
			DarknessPicker.BorderSizePixel = 0
			DarknessPicker.Position = UDim2.new(0.890026689, 0, 0.506408393, 0)
			DarknessPicker.Selectable = false
			DarknessPicker.Size = UDim2.new(0.103192113, 0, 0.943546236, 0)
			DarknessPicker.ZIndex = 2
			DarknessPicker.Image = "rbxassetid://3570695787"
			DarknessPicker.ScaleType = Enum.ScaleType.Slice
			DarknessPicker.SliceCenter = Rect.new(100, 100, 100, 100)
			DarknessPicker.SliceScale = 0.120

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
			UIGradient.Rotation = 90
			UIGradient.Parent = DarknessPicker

			Slider.Name = "Slider"
			Slider.Parent = DarknessPicker
			Slider.AnchorPoint = Vector2.new(0.5, 0.5)
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundTransparency = 1.000
			Slider.BorderSizePixel = 0
			Slider.Position = UDim2.new(0.491197795, 0, 0.0733607039, 0)
			Slider.Size = UDim2.new(1.28656352, 0, 0.0265010502, 0)
			Slider.ZIndex = 2
			Slider.Image = "rbxassetid://3570695787"
			Slider.ImageColor3 = Color3.fromRGB(255, 74, 74)
			Slider.ScaleType = Enum.ScaleType.Slice
			Slider.SliceCenter = Rect.new(100, 100, 100, 100)
			Slider.SliceScale = 0.120

			UIAspectRatioConstraint_2.Parent = DarknessPicker
			UIAspectRatioConstraint_2.AspectRatio = 0.157

			S13.Name = "S13"
			S13.Parent = SECTIONCOLOUR
			S13.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			S13.BorderSizePixel = 0
			S13.Position = UDim2.new(0, 106, 0, 24)
			S13.Size = UDim2.new(0, 35, 0, 79)

			SDFH.Name = "SDFH"
			SDFH.Parent = S13

			ColourDisplayBIG.Name = "ColourDisplayBIG"
			ColourDisplayBIG.Parent = S13
			ColourDisplayBIG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColourDisplayBIG.BackgroundTransparency = 1.000
			ColourDisplayBIG.BorderSizePixel = 0
			ColourDisplayBIG.Position = UDim2.new(0.148259208, 0, 0.0758512095, 0)
			ColourDisplayBIG.Size = UDim2.new(0.791116476, 0, 0.384025544, 0)
			ColourDisplayBIG.ZIndex = 2
			ColourDisplayBIG.Image = "rbxassetid://3570695787"
			ColourDisplayBIG.ScaleType = Enum.ScaleType.Slice
			ColourDisplayBIG.SliceCenter = Rect.new(100, 100, 100, 100)
			ColourDisplayBIG.SliceScale = 0.120

			UIAspectRatioConstraint_3.Parent = ColourDisplayBIG

			ColourDisplay.Name = "ColourDisplay"
			ColourDisplay.Parent = S13
			ColourDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ColourDisplay.BackgroundTransparency = 1.000
			ColourDisplay.BorderSizePixel = 0
			ColourDisplay.Position = UDim2.new(0.442464769, 0, -0.240506336, 0)
			ColourDisplay.Size = UDim2.new(0.434572101, 0, 0.146410599, 0)
			ColourDisplay.ZIndex = 2
			ColourDisplay.Image = "rbxassetid://3570695787"
			ColourDisplay.ScaleType = Enum.ScaleType.Slice
			ColourDisplay.SliceCenter = Rect.new(100, 100, 100, 100)
			ColourDisplay.SliceScale = 0.120

			UIAspectRatioConstraint_4.Parent = ColourDisplay

			RESETALL.Name = "RESETALL"
			RESETALL.Parent = S13
			RESETALL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			RESETALL.BackgroundTransparency = 1.000
			RESETALL.BorderSizePixel = 0
			RESETALL.Position = UDim2.new(0.326785773, 0, 0.765092611, 0)
			RESETALL.Size = UDim2.new(0, 13, 0, 13)
			RESETALL.Image = "rbxassetid://5640320478"

			SETCOLOR.Name = "SETCOLOR"
			SETCOLOR.Parent = S13
			SETCOLOR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SETCOLOR.BackgroundTransparency = 1.000
			SETCOLOR.BorderSizePixel = 0
			SETCOLOR.Position = UDim2.new(0.326785773, 0, 0.541801453, 0)
			SETCOLOR.Size = UDim2.new(0, 13, 0, 13)
			SETCOLOR.Image = "rbxassetid://1489284025"

			OPENCLOSE.Name = "OPENCLOSE"
			OPENCLOSE.Parent = SECTIONCOLOUR
			OPENCLOSE.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			OPENCLOSE.BorderSizePixel = 0
			OPENCLOSE.ClipsDescendants = true
			OPENCLOSE.Position = UDim2.new(0, 6, 0, 2)
			OPENCLOSE.Size = UDim2.new(0, 134, 0, 18)
			OPENCLOSE.AutoButtonColor = false
			OPENCLOSE.Font = Enum.Font.SourceSansSemibold
			OPENCLOSE.Text = Text
			OPENCLOSE.TextColor3 = Color3.fromRGB(255, 255, 255)
			OPENCLOSE.TextSize = 16.000

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = OPENCLOSE

			local VAL = false;
			local WAIT = true;
			-- {0, 243},{0, 167}  (OPENED)
			-- {0, 243},{0, 40}   (CLOSED)
			OPENCLOSE.MouseButton1Click:Connect(function()
				if WAIT then
					WAIT = false
					if VAL then
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,22), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .3 ,true)
						wait(.5)
						WAIT = true
					else
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,108), Enum.EasingDirection.Out, Enum.EasingStyle.Quad , .3 ,true)
						wait(.5)
						WAIT = true
					end
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
					UpdateMainSize()
				end
			end)
			RESETALL.MouseButton1Click:Connect(function()
				if WAIT then
					WAIT = false
					if VAL then
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,22), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .3 ,true)
						wait(.5)
						WAIT = true
					else
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,108), Enum.EasingDirection.Out, Enum.EasingStyle.Quad , .3 ,true)
						wait(.5)
						WAIT = true
					end

					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

					UpdateMainSize()
				end
			end)
			SETCOLOR.MouseButton1Click:Connect(function()
				if WAIT then
					WAIT = false
					if VAL then
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,22), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .3 ,true)
						wait(.5)
						WAIT = true
					else
						VAL = not VAL;
						SECTIONCOLOUR:TweenSize(UDim2.new(0,144,0,108), Enum.EasingDirection.Out, Enum.EasingStyle.Quad , .3 ,true)
						wait(.5)
						WAIT = true
					end
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

					UpdateMainSize()
				end
			end)
			local uis = game:GetService("UserInputService")
	
	
			local buttonDown = false
			local movingSlider = false
	
	
			local function updateColour(centreOfWheel)
	
	
				local colourPickerCentre = Vector2.new(
					Picker.AbsolutePosition.X + (Picker.AbsoluteSize.X/2),
					Picker.AbsolutePosition.Y + (Picker.AbsoluteSize.Y/2)
				)
				local h = (math.pi - math.atan2(colourPickerCentre.Y - centreOfWheel.Y, colourPickerCentre.X - centreOfWheel.X)) / (math.pi * 2)
	
				local s = (centreOfWheel - colourPickerCentre).Magnitude / (ColourWheel.AbsoluteSize.X/2)
	
				local v = math.abs((Slider.AbsolutePosition.Y - DarknessPicker.AbsolutePosition.Y) / DarknessPicker.AbsoluteSize.Y - 1)
	
	
				local hsv = Color3.fromHSV(math.clamp(h, 0, 1), math.clamp(s, 0, 1), math.clamp(v, 0, 1))
	
	
				ColourDisplayBIG.ImageColor3 = hsv
				ColourDisplay.ImageColor3 = hsv
				UIGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, hsv), 
					ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
				}
			end
	
	
			ColourWheel.MouseButton1Down:Connect(function()
				buttonDown = true
			end)
	
			DarknessPicker.MouseButton1Down:Connect(function()
				movingSlider = true
			end)
	
	
			uis.InputEnded:Connect(function(input)
	
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	
				buttonDown = false
				movingSlider = false
			end)
	
	
			uis.InputChanged:Connect(function(input)
	
				if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
	
	
				local mousePos = uis:GetMouseLocation() - Vector2.new(0, game:GetService("GuiService"):GetGuiInset().Y)
	
				local centreOfWheel = Vector2.new(ColourWheel.AbsolutePosition.X + (ColourWheel.AbsoluteSize.X/2), ColourWheel.AbsolutePosition.Y + (ColourWheel.AbsoluteSize.Y/2))
	
				local distanceFromWheel = (mousePos - centreOfWheel).Magnitude
	
	
				if distanceFromWheel <= ColourWheel.AbsoluteSize.X/2 and buttonDown then
	
					Picker.Position = UDim2.new(0, mousePos.X - ColourWheel.AbsolutePosition.X, 0, mousePos.Y - ColourWheel.AbsolutePosition.Y)
	
	
				elseif movingSlider then
	
					Slider.Position = UDim2.new(Slider.Position.X.Scale, 0, 0, 
						math.clamp(
							mousePos.Y - DarknessPicker.AbsolutePosition.Y, 
							0, 
							DarknessPicker.AbsoluteSize.Y)
					)	
				end
	
				updateColour(centreOfWheel)
				pcall(function()
					Action(ColourDisplayBIG.ImageColor3)
				end)
			end)
							if not opened then
					TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
				else
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				end
			UpdateMainSize()
		end
		
		function p:AddDropDown(Text,tbl,sel,Action)
			
			local s = nil
			local K = false
			local DRPDOWN = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Toggle = Instance.new("TextButton")
			local _456fg = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local TextLabel_2 = Instance.new("TextLabel")
			local UIListLayout9 = Instance.new("UIListLayout")



			DRPDOWN.Name = "DRPDOWN"
			DRPDOWN.Parent = Section
			DRPDOWN.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
			DRPDOWN.BorderSizePixel = 0
			DRPDOWN.ClipsDescendants = true
			DRPDOWN.Position = UDim2.new(0.0440251566, 0, 0.560126603, 0)
			DRPDOWN.Size = UDim2.new(0, 145, 0, 23)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DRPDOWN

			Toggle.Name = "Toggle"
			Toggle.Parent = DRPDOWN
			Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			Toggle.BorderSizePixel = 0
			Toggle.ClipsDescendants = true
			Toggle.Position = UDim2.new(0.00954239815, 0, 0.224547639, 0)
			Toggle.Size = UDim2.new(0, 145, 0, 20)
			Toggle.AutoButtonColor = false
			Toggle.Font = Enum.Font.SourceSansSemibold
			Toggle.Text = "  "
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextSize = 16.000

			_456fg.CornerRadius = UDim.new(0, 4)
			_456fg.Name = "456fg"
			_456fg.Parent = Toggle

			TextLabel.Parent = Toggle
			TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.451731712, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(0, 118, 0, 14)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 16.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextLabel_2.Parent = Toggle
			TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderSizePixel = 0
			TextLabel_2.Position = UDim2.new(0.897010326, 0, 0.550000012, 0)
			TextLabel_2.Size = UDim2.new(0, 10, 0, 14)
			TextLabel_2.Font = Enum.Font.SourceSansSemibold
			TextLabel_2.Text = "+"
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.TextSize = 16.000
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right

			UIListLayout9.Parent = DRPDOWN
			UIListLayout9.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout9.Padding = UDim.new(0, 3)
			
			for i,v in pairs(tbl) do
				local OPTION = Instance.new("TextButton")
				local _456fg_2 = Instance.new("UICorner")
				local TextLabel_3 = Instance.new("TextLabel")
				
				OPTION.Name = "OPTION"
				OPTION.Parent = DRPDOWN
				OPTION.BackgroundColor3 = Color3.fromRGB(22, 22, 21)
				OPTION.BorderSizePixel = 0
				OPTION.ClipsDescendants = true
				OPTION.Position = UDim2.new(0.0827586204, 0, 0.219047621, 0)
				OPTION.Size = UDim2.new(0, 132, 0, 16)
				OPTION.AutoButtonColor = false
				OPTION.Font = Enum.Font.SourceSansSemibold
				OPTION.Text = ""
				OPTION.TextColor3 = Color3.fromRGB(255, 255, 255)
				OPTION.TextSize = 16.000

				_456fg_2.CornerRadius = UDim.new(0, 4)
				_456fg_2.Name = "456fg"
				_456fg_2.Parent = OPTION

				TextLabel_3.Parent = OPTION
				TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_3.BackgroundTransparency = 1.000
				TextLabel_3.BorderSizePixel = 0
				TextLabel_3.Position = UDim2.new(0.501999259, 0, 0.441162109, 0)
				TextLabel_3.Size = UDim2.new(0, 125, 0, 15)
				TextLabel_3.Font = Enum.Font.SourceSansSemibold
				TextLabel_3.Text = v
				TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_3.TextSize = 15.000
				
				if sel == v and v ~= Toggle.Text then
					TweenService:Create(OPTION , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(22,22,21)}):Play()	
					s = sel;
				else
					TweenService:Create(OPTION , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(39,39,39)}):Play()	
				end
				
				OPTION.MouseButton1Click:Connect(function()
					for i,v in pairs(DRPDOWN:GetChildren()) do
						if v:IsA("TextButton") then
							TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(39,39,39)}):Play()	
						end	
					end
					s=TextLabel_3.Text
					TweenService:Create(OPTION , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(22,22,21)}):Play()	
					pcall(function()
						Action(s)
					end)
				end)
				if not opened then
					TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
				else
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				end

				AddRipple(OPTION)
			end
			
			Toggle.MouseButton1Click:Connect(function()
				if not K then
					TweenService:Create(TextLabel_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 180}):Play()	
					DRPDOWN:TweenSize(UDim2.fromOffset(DRPDOWN.AbsoluteSize.X,  UIListLayout9.AbsoluteContentSize.Y + 3),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
					K = not K
				else
					DRPDOWN:TweenSize(UDim2.new(0,145,0, 23),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
					TweenService:Create(TextLabel_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 0}):Play()	
					K = not K
				end
				wait(.2)
		
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				wait(.2)
				UpdateMainSize()
			end)
			UpdateMainSize()
			AddRipple(Toggle)
		end
		
		function p:AddTextBox(Text,Placeholder,COF,type,Action)

			local TBOX = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")

			local filter = '%W+' 
			local filter2 = '%p+'
			local onlunum = '%D+'


			local function colador(str,type)
				if type == 1 then
					str= str:gsub(onlunum, '');
				end
				if type == 2 then
					str= str:gsub(filter2, '');
				end
				if type == 3 then
					str= str:gsub(filter, '');
				end
			end



			TBOX.Name = "TBOX"
			TBOX.Parent = Section
			TBOX.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			TBOX.BorderSizePixel = 0
			TBOX.Position = UDim2.new(0.0440251566, 0, 0.788659751, 0)
			TBOX.Size = UDim2.new(0, 145, 0, 22)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = TBOX

			TextBox.Parent = TBOX
			TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderSizePixel = 0
			TextBox.ClipsDescendants = true
			TextBox.Position = UDim2.new(0.0482758619, 0, 0.135579199, 0)
			TextBox.Size = UDim2.new(0, 134, 0, 16)
			TextBox.ClearTextOnFocus = COF or false
			TextBox.Font = Enum.Font.SourceSansSemibold
			TextBox.PlaceholderText = Placeholder
			TextBox.Text = Text or ""
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 16.000
			TextBox.TextXAlignment = Enum.TextXAlignment.Left

			local AC = function(PassBox)
				if #PassBox.Text >= 21 then
					PassBox.Text = string.sub(PassBox.Text,0,21)
				end
				colador(TextBox.Text,type)
				Execute(Action,PassBox.Text)
			end
			if not opened then
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
			else
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

			end	
			UpdateMainSize()	
		end

		function p:AddIP(Text, localDB, Def, Action)

			local XXX = Def
			local parts = {};
			for i,v in pairs(BodyHitBox:GetChildren()) do
				table.insert(parts,v.Name)
			end
			local function Aimpart(s)
				for i,v in next, parts do
					p=v
					if p and p:lower():sub(1,#s)==string.lower(s) then
						return p or false
					end
				end
			end
			local AimChose = Instance.new("TextButton")
			local _85 = Instance.new("UICorner")

			AimChose.Name = "AimChose"
			AimChose.Parent = Section
			AimChose.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			AimChose.BorderSizePixel = 0
			AimChose.ClipsDescendants = true
			AimChose.Position = UDim2.new(0.0503144637, 0, 0.821656048, 0)
			AimChose.Size = UDim2.new(0, 143, 0, 20)
			AimChose.AutoButtonColor = false
			AimChose.Font = Enum.Font.SourceSansSemibold
			AimChose.Text = Text
			AimChose.TextColor3 = Color3.fromRGB(255, 255, 255)
			AimChose.TextSize = 16.000

			_85.CornerRadius = UDim.new(0, 4)
			_85.Name = "85"
			_85.Parent = AimChose

			AddRipple(AimChose)
			localDB["aimpart"] = parts[Aimpart(Def)]

			local function onUpdate()
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					if v.Name == XXX then
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
					else
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

					end
				end
				Execute(Action,XXX)
				UpdateIP()
			end

			Torso_2.MouseButton1Click:Connect(function()
				XXX = "Torso"
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(Torso_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()
			end)

			Head.MouseButton1Click:Connect(function()
				XXX = Head.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(Head , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			LeftArm.MouseButton1Click:Connect(function()
				XXX = LeftArm.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(LeftArm , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			RightArm.MouseButton1Click:Connect(function()
				XXX = RightArm.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(RightArm , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			LeftLeg.MouseButton1Click:Connect(function()
				XXX = LeftLeg.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(LeftLeg , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			RightLeg.MouseButton1Click:Connect(function()
				XXX = RightLeg.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(RightLeg , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			DONE.MouseButton1Click:Connect(function()
				onUpdate()
			end)

			AimChose.MouseButton1Click:Connect(function()
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					if v.Name == XXX then
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
					else
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

					end
				end
				onUpdate()

			end)
			if not opened then
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
			else
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

			end	UpdateMainSize()	end
		function p:AddToggle(Text, activated ,Action)

			activated = activated or false
			Action = Action or function() end
			local Active = activated or false
			local y = {};
			local Toggle = Instance.new("TextButton")
			local BUTTON = Instance.new("TextButton")
			local TGg = Instance.new("UICorner")
			local _456fg = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")


			Toggle.Name = "Toggle"
			Toggle.Parent = Section
			Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			Toggle.BorderSizePixel = 0
			Toggle.ClipsDescendants = true
			Toggle.Position = UDim2.new(0.0440251566, 0, 0.194244608, 0)
			Toggle.Size = UDim2.new(0, 145, 0, 20)
			Toggle.AutoButtonColor = false
			Toggle.Font = Enum.Font.SourceSansSemibold
			Toggle.Text = "  "
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextSize = 16.000

			BUTTON.Name = "BUTTON"
			BUTTON.Parent = Toggle
			BUTTON.AnchorPoint = Vector2.new(0.5, 0.5)
			BUTTON.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
			BUTTON.Position = UDim2.new(0, 132, 0.5, 0)
			BUTTON.Size = UDim2.new(0, 9, 0, 9)
			BUTTON.AutoButtonColor = false
			BUTTON.Font = Enum.Font.SourceSans
			BUTTON.Text = ""
			BUTTON.TextColor3 = Color3.fromRGB(0, 0, 0)
			BUTTON.TextSize = 1.000

			TGg.CornerRadius = UDim.new(0, 4)
			TGg.Name = "$TGg&%*"
			TGg.Parent = BUTTON

			_456fg.CornerRadius = UDim.new(0, 4)
			_456fg.Name = "456fg"
			_456fg.Parent = Toggle

			TextLabel.Parent = Toggle
			TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.420704812, 0, 0.5, 0)
			TextLabel.Size = UDim2.new(0, 110, 0, 14)
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 16.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			local function check()
				local t = Execute(Action,activated)
				if t[1] then
					--Action(activated)
				else
					error(t[2])
				end
			end
			local function Update()
				if activated == true then
					BUTTON:TweenSize(UDim2.new(0,14,0,14),"Out", "Quint", 0.4)
					TweenService:Create(BUTTON , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(89, 139, 255)}):Play()
					TweenService:Create(TGg , TweenInfo.new(0.26, Enum.EasingStyle.Quint , Enum.EasingDirection.In), {CornerRadius = UDim.new(0,4) }):Play()
					check()
					activated = false
				elseif activated == false then
					BUTTON:TweenSize(UDim2.new(0,9,0,9),"Out", "Quint", 0.4)
					TweenService:Create(TGg , TweenInfo.new(0.26, Enum.EasingStyle.Quint , Enum.EasingDirection.In), {CornerRadius = UDim.new( 1,0 ) }):Play()
					TweenService:Create(BUTTON , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(67,67,67)}):Play()
					check()
					activated = true
				end
			end

			function y:UpdateValue(val)
				activated = val
				Update()
			end
			AddRipple(Toggle)
			Update()
			if not opened then
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
			else
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

			end	
			UpdateMainSize()
			Toggle.MouseButton1Click:Connect(Update)

			return y
		end

		function p:AddButton(Text, Action)

			Action = Action or function() end
			local TemplateButton = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")

			TemplateButton.Name = "TemplateButton"
			TemplateButton.Parent = Section
			TemplateButton.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
			TemplateButton.BorderSizePixel = 0
			TemplateButton.ClipsDescendants = true
			TemplateButton.Position = UDim2.new(0.0371278822, 0, 0.207404271, 0)
			TemplateButton.Size = UDim2.new(0, 145, 0, 17)
			TemplateButton.AutoButtonColor = false
			TemplateButton.Font = Enum.Font.SourceSansSemibold
			TemplateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TemplateButton.TextSize = 16.000
			TemplateButton.Text = Text

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TemplateButton
			AddRipple(TemplateButton)
			local function check()
				local t = Execute(Action,"No errors :D")
				if t[1] then
					--Action()
				else
					error(t[2])
				end
			end

			TemplateButton.MouseButton1Click:Connect(function()
				check()
			end)
			if not opened then
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
			else
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 

			end	UpdateMainSize()	end

			function p:AddKeyBind(Text,KeyCode,Action)
				KeyCode=KeyCode or Enum.KeyCode.RightAlt
				local KeyBind = Instance.new("Frame")
				local g4 = Instance.new("UICorner")
				local KeyButton = Instance.new("TextButton")
				local h5 = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
	
	
				KeyBind.Name = "KeyBind"
				KeyBind.Parent = Section
				KeyBind.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
				KeyBind.BorderSizePixel = 0
				KeyBind.Position = UDim2.new(0.0440251566, 0, 0.890350878, 0)
				KeyBind.Size = UDim2.new(0, 143, 0, 20)
	
				g4.CornerRadius = UDim.new(0, 4)
				g4.Name = "g4"
				g4.Parent = KeyBind
	
				KeyButton.Name = "KeyButton"
				KeyButton.Parent = KeyBind
				KeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				KeyButton.BorderSizePixel = 0
				KeyButton.ClipsDescendants = true
				KeyButton.Position = UDim2.new(0.615288377, 0, 0.209999844, 0)
				KeyButton.Size = UDim2.new(0, 42, 0, 13)
				KeyButton.AutoButtonColor = false
				KeyButton.Font = Enum.Font.SourceSansBold
				KeyButton.Text = KeyCode.Name
				KeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeyButton.TextSize = 15.000
				KeyButton.TextStrokeColor3 = Color3.fromRGB(45, 45, 45)
	
				h5.CornerRadius = UDim.new(0, 5)
				h5.Name = "h5"
				h5.Parent = KeyButton
	
				TextLabel.Parent = KeyBind
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.328575194, 0, 0.5, 0)
				TextLabel.Size = UDim2.new(0, 82, 0, 14)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.Text = Text
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				local ka = false
				getgenv().Connections.Input_Began = game:GetService("UserInputService").InputBegan:connect(function(a, gp) 
					if not gp then 
						if a.KeyCode.Name == KeyCode.Name and ka == false then 
							pcall(function()
								Action()
							end)
						end
					end
				end)
	
				KeyButton.MouseButton1Click:connect(function() 
					game.TweenService:Create(KeyButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(45, 45, 45)
					}):Play()
					KeyButton:TweenSize(UDim2.new(0,50,0,13), "Out", "Quint", 0.3, true)
					KeyButton.Text = ". . ."
					local v1, v2 = game:GetService('UserInputService').InputBegan:wait();
					ka = true
					if v1.KeyCode.Name ~= "Unknown" then
						game.TweenService:Create(KeyButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(0,0,0)
						}):Play()
						KeyButton:TweenSize(UDim2.new(0,42,0,13), "Out", "Quint", 0.3, true)
						KeyButton.Text = v1.KeyCode.Name
						KeyCode = v1.KeyCode
						wait(.2)
						ka = false
					end
				end)
	
				if not opened then
					TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
				else
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
	
				end
				UpdateMainSize()
			end


			function p:AddSlider(Text, Max,Min,def, onlyWhenFinished,Action)

				local SliderDef = math.clamp(def, Min, Max) or math.clamp(50, Min, Max)
				local DefaultScale =  (SliderDef - Min) / (Max - Min)
				onlyWhenFinished = onlyWhenFinished or true
				Action = Action or function() end
	
	
	
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value;
	
				local Slider = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local UICorner = Instance.new("UICorner")
				local sbt = Instance.new("TextButton")
				local by6 = Instance.new("UICorner")
				local SFrame = Instance.new("Frame")
				local TGg = Instance.new("UICorner")
	
	
				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 29)
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.0440251566, 0, 0.338129491, 0)
				Slider.Size = UDim2.new(0, 145, 0, 33)
	
				TextLabel.Parent = Slider
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0412965976, 0, 0.106791176, 0)
				TextLabel.Size = UDim2.new(0, 101, 0, 11)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.Text = Text
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 16.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	
				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = Slider
	
				sbt.Name = "sbt"
				sbt.Parent = Slider
				sbt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				sbt.ClipsDescendants = true
				sbt.Position = UDim2.new(0, 7, 0, 23)
				sbt.Size = UDim2.new(0, 131, 0, 5)
				sbt.AutoButtonColor = false
				sbt.Font = Enum.Font.SourceSans
				sbt.Text = ""
				sbt.TextColor3 = Color3.fromRGB(0, 0, 0)
				sbt.TextSize = 1.000
	
				by6.CornerRadius = UDim.new(0, 4)
				by6.Name = "by6"
				by6.Parent = sbt
	
				SFrame.Name = "SFrame"
				SFrame.Parent = sbt
				SFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SFrame.Position = UDim2.new(-0.0305343512, 0, 0, 0)
				SFrame.Size = UDim2.fromScale(DefaultScale,1)
	
				TGg.CornerRadius = UDim.new(0, 4)
				TGg.Name = "$TGg&%*"
				TGg.Parent = SFrame
	
	
	
				local pcntage = Instance.new("TextLabel")
	
	
				pcntage.Name = "pcntage"
				pcntage.Parent = Slider
				pcntage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				pcntage.BackgroundTransparency = 1.000
				pcntage.BorderSizePixel = 0
				pcntage.Position = UDim2.new(0.753065884, 0, 0.0465367623, 0)
				pcntage.Size = UDim2.new(0, 32, 0, 11)
				pcntage.Font = Enum.Font.SourceSansSemibold
				pcntage.Text = def
				pcntage.TextColor3 = Color3.fromRGB(90, 90, 90)
				pcntage.TextSize = 15.000
				pcntage.TextXAlignment = Enum.TextXAlignment.Right
	
				local function check()
					local t = Execute(Action,Value)
					if t[1] then
						--Action(Value)
					else
						error(t[2])
					end
				end
				if not opened then
					TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
				else
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
	
				end
				sbt.MouseButton1Down:Connect(function()
	
					pcntage.TextXAlignment = Enum.TextXAlignment.Right
	
					Value = ((((tonumber(Max) - tonumber(Min)) / 131) * SFrame.AbsoluteSize.X) + tonumber(Min)) or 0
					Value = math.floor(Value)
					TweenService:Create(pcntage, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	
					if not onlyWhenFinished then
						check()
					end
					SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 131), 0, 14)
					moveconnection = mouse.Move:Connect(function()
						pcntage.Text = Value
						Value = ((((tonumber(Max) - tonumber(Min)) / 131) * SFrame.AbsoluteSize.X) + tonumber(Min))
						Value = math.floor(Value)
						if not onlyWhenFinished then
							pcall(function()
								Action(Value)
							end)
						end
						SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 141), 0, 14)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = ((((tonumber(Max) - tonumber(Min)) / 131) * SFrame.AbsoluteSize.X) + tonumber(Min))
							Value =math.floor(Value)
							check()
							SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 141), 0, 14)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
					pcntage.Text = Value
				end)
	
				sbt.MouseButton1Up:Connect(function()
					TweenService:Create(pcntage, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(126, 126, 126)}):Play()
				end)
				if not opened then
					TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true) 
				else
					Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
	
				end
				UpdateMainSize()
			end



		closeSection.MouseButton1Click:Connect(function()
			if closeSection.Rotation <= 0 then
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  24),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 180}):Play()	
				UpdateMainSize()
			elseif closeSection.Rotation >= 180 then
				Section:TweenSize(UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout1.AbsoluteContentSize.Y + 6),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				TweenService:Create(closeSection , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = 0}):Play()	
				UpdateMainSize()
			end
			
		end)
		UpdateMainSize()
		return p
	end

	return lex
end




-- IMPORTANT --

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
if getgenv().Activated == true then
	pcall(function()
		getgenv().Connections.Input_Began:Disconnect()
		getgenv().Connections.Stepped_RunService:Disconnect()
		getgenv().Connections.Staff_Notification:Disconnect()
		getgenv().Connections.Player_Notification:Disconnect()
	end)
end
getgenv().Activated = true

getgenv().Connections = {
	Input_Began = nil,
	Stepped_RunService = nil,
	Staff_Notification = nil,
	Player_Notification = nil,
}

--[ OUTSIDE LIBRARY ]--
local Player = game:GetService('Players').LocalPlayer

-- Creating Tabs things --
library:AddSidebarLabel("Main")

local w1= library:CreateWindow("Gears", "3152629358", false)
local conf = library:CreateWindow("Config", "3289634705", false)
local Cola = w1:AddSection("gears", 1, true, false)
local misc = w1:AddSection("misc", 2, true, false)
local less = w1:AddSection("gearless", 1, true, false)
local grappler = w1:AddSection("grappler", 2, true, false)
local lc = w1:AddSection("localplayer", 1, true, false)
local adrenaline = w1:AddSection("adrenaline", 1, true, false)
local oth = w1:AddSection("others", 2, true, false)
local bags = w1:AddSection("bags", 2, true, false)
local cs = conf:AddSection("Settings", 1, true, false)

cs:AddKeyBind("Open/Close", Enum.KeyCode.P,function()
	if _.Enabled  then
		_.Enabled = false
		else
			_.Enabled = true
	end
end)

cs:AddColourPalette("Shadow Color",Color3.fromRGB(255,255,255), function(a)
	v2NewUiLib.ImageColor3 = a
end)

-- TOGGEABLES --
getgenv().Toggles = {
    InfCola  = false;
    NoDunce  = false;
	GodMode  = false;
	NoTrail  = false;
	AutoCola = false;
	MD = false;
	IW = false;
	InfAdrenaline = false;
	NoAdrenalineCooldown = false;
	CC = false;
	InfGrappler = false;
	InfWallClimb = false;
	fastGrapple = false;
	infglide = false;
}
getgenv().BagRarity = "Rare"
getgenv().AntiCheat = {
	BanRemotes = {
		"LoadString",
		"HighCombo",
		"FF",
		"SubmitCombo",
		"UpdateCombo",
		"LowCombo",
		"FinishTimeTrial",
		"UpdateDunceList",
	},
	Remotes = {},
}
local bags_rarity = {
	"Legendary";
	"Epic";
	"Rare";
	"Common";
	"Uncommon";
	"Random";
}
getgenv().BAGESP = false
getgenv().Other = {
	Stimmed = false,
	CanZipline = true,
}
getgenv().Sliders = {
	CL = 1;
}
local client = game.Players.LocalPlayer
--[[
lc:AddButton("Sell Points", function()
	local Event = game:GetService("ReplicatedStorage").Reset
	Event:InvokeServer()
end)
lc:AddToggle("AutoSell Points", getgenv().Toggles.autosell, function(v)
	getgenv().Toggles.autosell = v
end)
]]
oth:AddToggle("Inf Glide", getgenv().Toggles.infglide, function(v)
	getgenv().Toggles.infglide = v
end)

grappler:AddToggle("Inf grappler", getgenv().InfGrappler, function(v)
	getgenv().Toggles.InfGrappler = v
end)
less:AddToggle("Inf WallClimb", getgenv().Toggles.InfWallClimb, function(v)
	getgenv().Toggles.InfWallClimb = v
end)
grappler:AddToggle("Fast Grappler", getgenv().Toggles.fastGrapple, function(v)
	getgenv().Toggles.fastGrapple = v
end)

bags:AddToggle("Bag Esp", getgenv().BAGESP, function(v)
	getgenv().BAGESP = v
end)
bags:AddDropDown("Bag Rarity", bags_rarity, "Random", function(v)
	getgenv().BagRarity = v
end)
bags:AddButton('Go to bag',  function()
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild("BagTouchScript") and v:FindFirstChild("Rarity") then
			if v.Rarity.Value == "Random" then
				final = v.Main.CFrame
				local TweeenService = game:GetService("TweenService")
				TweeenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(math.random(7,10)), {CFrame = final}):Play()
			else
				if v.Rarity.Value == getgenv().BagRarity  then
					final = v.Main.CFrame
					local TweeenService = game:GetService("TweenService")
					TweeenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(math.random(7,10)), {CFrame = final}):Play()
				end
			end
		end
	end
end)


Cola:AddToggle("Inf Cola", getgenv().Toggles.InfCola, function(v)
	getgenv().Toggles.InfCola = v
end)
oth:AddToggle("Inf MagDash", getgenv().Toggles.MD, function(v)
	getgenv().Toggles.MD = v
end)
less:AddToggle("Inf WallRun", getgenv().Toggles.IW, function(v)
	getgenv().Toggles.IW = v
end)
adrenaline:AddToggle("Inf Adrenaline", getgenv().Toggles.InfAdrenaline, function(v)
	getgenv().Toggles.InfAdrenaline = v
end)
adrenaline:AddToggle("No Cooldown", getgenv().Toggles.NoAdrenalineCooldown, function(v)
	getgenv().Toggles.NoAdrenalineCooldown = v
end)
less:AddToggle("Remoce Charge CC", getgenv().Toggles.CC, function(v)
	getgenv().Toggles.CC = v
end)
misc:AddToggle("No Dunce cap", getgenv().Toggles.NoDunce, function(v)
	getgenv().Toggles.NoDunce = v
end)
lc:AddToggle("GodMode", getgenv().Toggles.GodMode, function(v)
	getgenv().Toggles.GodMode = v
end)
misc:AddToggle("No Trail", getgenv().Toggles.NoTrail, function(v)
	getgenv().Toggles.NoTrail = v
end)
Cola:AddToggle("Auto cola", getgenv().Toggles.AutoCola, function(v)
	getgenv().Toggles.AutoCola = v
end)
lc:AddToggle("Modify Combo", getgenv().Toggles.CL, function(v)
	getgenv().Toggles.CL = v
end)
lc:AddSlider("Combo Level", 5,0,0, false,function(v)
	getgenv().Sliders.CL = v
end)

-- BYPASSING ANTICHEAT, special thanks to xgamer626 for updated version <3 --

local Points_Script = Player.PlayerScripts.Points
local Points_Env = getsenv(Points_Script)
local Points_EnvIM = rawget(getrawmetatable(Points_Env), "__index")
local Points_Func = rawget(rawget(Points_EnvIM, "shared"), "triggerPointsFunction")

local GMT = getrawmetatable(game)
setreadonly(GMT, false)
local OLD = GMT.__namecall

if Points_Func and type(Points_Func) == 'function' then
	local FuncTable
	for _, Table in pairs(debug.getupvalues(Points_Func)) do
		if type(Table) == 'table' and rawget(Table, 'parkour') and rawget(Table, 'statAdd') and rawget(Table, 'missionTrigger') then
			FuncTable = Table
			break
		end
	end

	if FuncTable then
		for Name, Func in pairs(FuncTable) do
			for _, Remote in pairs(debug.getupvalues(Func)) do
				if Remote.ClassName == 'RemoteEvent' then
					getgenv().AntiCheat.Remotes[Name] = Remote
					break
				end
			end
		end
	end
end

GMT.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()

	if Method == "FireServer" and table.find(getgenv().AntiCheat.BanRemotes, self.Name) then
		return nil
	elseif Method == "InvokeServer" and table.find(getgenv().AntiCheat.BanRemotes, self.Name) then
		return nil
	elseif Method == "FireServer" and self == getgenv().AntiCheat.Remotes.statAdd then
		return nil
	elseif Method == "FireServer" and self.Name == "SetTrail" and getgenv().Toggles.NoTrail == true then 
		return nil
	elseif Method == "TakeDamage" and self.ClassName and getgenv().Toggles.GodMode == true then
		return nil 
	end

	return OLD(self, ...)
end)

-- MAIN AND IMPORTANT LOOP --

-- basic vars
local plrs = game:GetService('Players')
local rp   = game:GetService('ReplicatedStorage')
local vim  = game:GetService('VirtualInputManager')
local rs   = game:GetService("RunService")

local players           = game:GetService("Players");
local replicatedStorage = game:GetService("ReplicatedStorage");
local scriptContext     = game:GetService("ScriptContext");
local client            = players.LocalPlayer;

-- local vars --
local lp       = plrs.LocalPlayer
local name     = lp.Name
local Players  = plrs
local plr      = lp
local Camera   = game.Workspace.CurrentCamera 
client = game.Players.LocalPlayer

getgenv().alive = false;


-- ESP
if getgenv().exec == nil or not getgenv().exec then
	getgenv().exec = true
	plr = game.Players.LocalPlayer
	local Camera   = game.Workspace.CurrentCamera 

	local WorldTVP = function(...) 
	local a, b = Camera.WorldToViewportPoint(Camera, ...)
	return Vector2.new(a.X, a.Y), b, a.Z 
	end;

	local function round(n)
		return math.floor(n + 0.5)
	end

	local Names = {}

	function CreateESP(Target)
		local Texts = {}
		Texts.Name = Drawing.new("Text")
		Texts.Name = Drawing.new("Text")
		Texts.Name.Visible = true 
		Texts.Name.Font = 0
		Texts.Name.Center = true
		Texts.Name.Size = 15
		Texts.Name.Outline = true 
		Texts.Name.OutlineColor = Color3.fromRGB(0, 0, 0)
		Texts.Name.Color = Target.Main.Color
		Texts.NameText = ""
		Texts.TG = Target
		Names[Target] = Texts
	end

	function RemoveEsp(Target)
		if (rawget(Names, Target)) then
			for _, TextSelected in pairs(Names[Target]) do
				TextSelected:Remove()
			end
			Names[Target] = nil
		end
	end

	function Update(Target, Esp)
		local char = plr.Character
		local TargetChar = Target

		local k,e = pcall(function()
			local b = Esp.TG
			local a = Esp.TG.Main;
		end)

		if TargetChar and k then
			if getgenv().BAGESP then
				local EspPos = TargetChar.Main.Position
				local Pos, VisTarget = WorldTVP(EspPos)
				Esp.Name.Visible = VisTarget
				if VisTarget and TargetChar then
					Esp.Name.Text = TargetChar.Rarity.Value.."\n".. round((char.HumanoidRootPart.Position - Esp.TG.Main.Position).magnitude).." m"
					Esp.Name.Position = Vector2.new(Pos.X, Pos.Y)
				end
			else
				Esp.Name.Visible = false
			end
		else
			Esp.Name.Visible = false
		end
	end

	-- Saving Boxes --
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChild("BagTouchScript") and v:FindFirstChild("Rarity") then
			CreateESP(v)
		end
	end

	task.spawn(function()
		game:GetService("RunService"):BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
			for player, Squares in pairs(Names) do
				if (Squares and player ~= plr) then
					Update(player, Squares);
				end
			end
		end)
		
	end)
	
end
--//
getgenv().Connections.Stepped_RunService = game:GetService("RunService").Stepped:Connect(function()
	if Player.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Backpack:FindFirstChild("Main") then
		getgenv().alive = true

		-- BINDS
		local colabind     = game:GetService("ReplicatedStorage").PlayerData[name].Settings.Keybinds.Cola
		-- LOCAL
		local char = lp.Character

		local main = game.Players.LocalPlayer.Backpack:WaitForChild("Main") -- Script where u find every single local variable.

		local general = getupvalue(getsenv(main).charJump, 1); -- Table where are basic and general variables.
		local ammo = getupvalue(getsenv(main).resetAmmo, 1); -- Table where are important and basic AMMO data.
        local mainEnv = getsenv(main);
        encrypt = function(str)
            local _, res = pcall(mainEnv.encrypt, str);
            return res;
        end;

		if getgenv().Toggles.InfCola then
			general.lastDrink = 0; -- resets all the cola things.
		end 
		if getgenv().Toggles.MD then
			general.lastMagSlap = 0; -- resets magdash.
		end 
		if getgenv().Toggles.NoDunce == true then -- this should stop client-side dunce.
			local Shares = getrenv().shared
			Shares.dunces[Player.Name] = false
		end
		if getgenv().Toggles.IW == true then -- this should stop client-side dunce.
			general.recentWallruns = 0
			general.lastWR = 0
			general.maxWallrun = math.huge
			general.numWallrun = math.huge
		end
		if getgenv().Toggles.CC == true then 
			general.chargeCooldown = 0
		else
			general.chargeCooldown = 2
		end

		if getgenv().Toggles.InfGrappler then 
			ammo.canGrapple = true -- inf grappler
		end
		if getgenv().Toggles.InfWallClimb then
			ammo.numWallclimb = 2 -- inf wallclimbboost
		end
		if  getgenv().Toggles.fastGrapple then
			general.grappling = false
		end
		if  getgenv().Toggles.infglide then
			ammo.glideStamina = 1
		end
		
		--game:GetService("Players").0N00BM4STER0.PlayerGui.GameplayUI.Zipline

		if getgenv().Toggles.autosell and game:GetService("ReplicatedStorage").PlayerData.LocalPlayer.Generic.Points.Value > 10000 then
			local Event = game:GetService("ReplicatedStorage").Reset
			Event:InvokeServer()
		end	
		if getgenv().Toggles.CL == true then
			general.comboTime = 1000
			general.comboHealth = 100
		    general.comboXp = 1
			general.comboLevel = getgenv().Sliders.CL
		end

		if getgenv().Toggles.AutoCola then
			-- IMPORTANT --
			local humanoid = char.Humanoid
			local health = humanoid.Health
	
			-- Auto Cola
			if  health >= 1 and true then
				if health < 100 then
					vim:SendKeyEvent(true, colabind.Value, false, game)
				end
			end
		end
        


	else
		getgenv().alive = false
		getgenv().Other.Stimmed = false 
	end
end)

getgenv().Connections.Input_Began = UserInputService.InputBegan:Connect(function(Input, Game_Processed)
	local main = game.Players.LocalPlayer.Backpack:WaitForChild("Main") -- Script where u find every single local variable.

	local general = getupvalue(getsenv(main).resetAmmo, 1);
	local Back_Gear_Key = Player.PlayerGui.NewUI.Windows.Keybinds.Window.UseKit.Binding

	if Input.KeyCode == Enum.KeyCode[Back_Gear_Key.Text] and not Game_Processed then
		if getgenv().Toggles.InfAdrenaline == false then 
			getgenv().Other.Stimmed = false
			return 
		else
			if getgenv().Other.Stimmed == true then
				-- Unstim
				getgenv().Other.Stimmed = false
				if getgenv().Toggles.NoAdrenalineCooldown then
					general.adrenalineCooldown = 0.3
				else
					general.adrenalineCooldown = 30
				end
			elseif getgenv().Other.Stimmed == false then
				-- Stim
				getgenv().Other.Stimmed = true
				task.wait(.2) -- Wait a tiny second for the animiation to play
				general.adrenalineCooldown = math.huge
			end
		end
	end   
end)62\41\42\17\45\33\32\21\0\116\9\0\0\0\37\46\62\13\56\14\47\4\0\116\4\0\0\0\2\37\58\0\116\6\0\0\0\42\50\44\20\60\0\116\9\0\0\0\57\9\14\22\43\14\41\19\0\116\11\0\0\0\56\37\53\13\27\21\56\21\3\46\0\116\10\0\0\0\56\37\53\13\21\1\46\4\0\0\116\5\0\0\0\34\33\32\28\0\116\8\0\0\0\39\37\52\59\48\14\40\0\116\7\0\0\0\60\33\63\28\55\20\0\116\17\0\0\0\46\33\46\18\62\18\35\20\2\36\14\22\53\15\62\82\0\116\7\0\0\0\47\47\33\22\43\83\0\116\8\0\0\0\10\50\34\20\11\39\14\0\7\0\0\0\0\0\0\62\64\7\0\0\0\0\0\0\61\64\116\16\0\0\0\46\47\63\29\60\18\31\8\22\37\29\16\33\5\32\0\7\0\0\0\0\0\0\0\0\116\9\0\0\0\60\47\62\16\45\9\35\15\0\116\6\0\0\0\57\4\36\20\107\0\7\247\183\152\31\119\138\166\63\7\68\50\223\31\193\125\236\63\116\5\0\0\0\63\41\55\28\0\7\0\0\0\0\0\224\97\64\7\0\0\0\0\0\0\52\64\116\13\0\0\0\47\47\63\23\60\18\30\0\8\41\56\10\0\116\5\0\0\0\57\4\36\20\0\7\0\0\0\0\0\0\16\64\116\3\0\0\0\11\116\0\116\10\0\0\0\39\37\52\59\44\20\56\14\2\0\116\17\0\0\0\47\44\36\9\42\36\41\18\15\37\35\29\56\14\56\18\0\222\7\139\93\26\64\113\176\227\63\7\178\146\18\95\70\225\202\63\7\0\0\0\0\0\0\69\64\7\0\0\0\0\0\0\42\64\116\16\0\0\0\45\53\57\22\27\21\56\21\3\46\14\22\53\15\62\0\93\116\5\0\0\0\42\47\35\13\0\116\15\0\0\0\63\47\56\11\58\5\31\0\2\51\15\22\53\4\0\116\5\0\0\0\56\37\53\13\0\116\11\0\0\0\56\37\53\13\26\15\32\14\30\115\0\7\0\0\0\0\0\224\111\64\116\9\0\0\0\56\37\53\13\10\9\54\4\0\7\0\0\0\0\0\0\46\64\116\17\0\0\0\56\37\53\13\10\20\62\14\7\37\14\22\53\15\62\82\0\7\0\0\0\0\0\128\70\64\7\0\0\0\0\0\0\20\64\116\3\0\0\0\4\117\0\116\12\0\0\0\45\46\46\17\54\18\28\14\5\46\57\0\116\8\0\0\0\58\37\46\13\54\18\126\0\7\0\0\0\0\0\0\224\63\116\23\0\0\0\46\33\46\18\62\18\35\20\2\36\25\11\56\14\63\17\13\50\40\23\58\25\0\7\0\0\0\0\0\0\240\63\7\82\112\32\64\96\7\213\63\7\0\0\0\0\0\128\84\64\7\0\0\0\0\0\0\44\64\116\19\0\0\0\63\47\56\11\58\5\31\0\2\51\30\28\52\9\46\14\0\36\0\7\0\0\0\0\0\0\48\64\116\15\0\0\0\56\37\53\13\1\33\32\8\11\46\32\28\55\20\0\116\5\0\0\0\32\37\43\13\0\116\8\0\0\0\11\37\57\30\60\14\58\0\116\12\0\0\0\47\47\35\23\60\3\56\8\3\46\62\0\116\12\0\0\0\37\46\61\12\45\63\14\4\11\33\35\0\116\5\0\0\0\11\33\32\28\0\116\11\0\0\0\43\37\57\42\60\18\58\8\15\37\0\116\17\0\0\0\57\51\40\11\16\14\60\20\24\19\40\11\47\9\47\4\0\116\11\0\0\0\37\46\61\12\45\34\41\6\13\46\0\116\8\0\0\0\15\47\35\23\60\3\56\0\116\18\0\0\0\33\47\56\10\60\34\57\21\24\47\35\72\26\12\37\2\7\0\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\7\164\112\61\10\215\163\208\63\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\5\0\0\0\61\53\44\29\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\6\0\0\0\37\46\2\12\45\0\116\9\0\0\0\62\47\57\24\45\9\35\15\0\7\0\0\0\0\0\128\102\64\116\5\0\0\0\60\44\44\0\0\116\10\0\0\0\56\55\40\28\55\51\37\27\9\0\116\11\0\0\0\10\50\34\20\22\6\42\18\9\52\0\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\7\0\0\0\0\0\0\56\64\116\4\0\0\0\35\53\57\0\7\154\153\153\153\153\153\201\63\116\20\0\0\0\45\34\62\22\53\21\56\4\47\47\35\13\60\14\56\50\5\58\40\0\116\2\0\0\0\53\0\7\0\0\0\0\0\0\24\64\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\11\19\36\3\60\20\0\116\7\0\0\0\30\33\58\30\60\20\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\6\0\0\0\47\40\56\23\50\0\116\7\0\0\0\30\33\58\10\60\20\0\116\7\0\0\0\30\33\58\30\60\20\0\116\7\0\0\0\30\33\58\10\60\20\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\31\37\33\28\58\20\0\116\7\0\0\0\9\46\46\22\61\5\0\116\5\0\0\0\11\33\32\28\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\31\52\63\16\55\7\0\116\7\0\0\0\35\48\44\11\62\50\0\116\7\0\0\0\30\33\58\10\60\20\0\116\7\0\0\0\31\41\55\28\54\6\0\116\4\0\0\0\31\57\35\0\116\7\0\0\0\35\48\44\11\62\50\0\116\4\0\0\0\0\37\35\0\116\4\0\0\0\2\37\58\0\116\6\0\0\0\76\34\52\13\60\0\116\6\0\0\0\47\40\56\23\50\0\116\8\0\0\0\36\52\57\9\30\5\56\0\116\7\0\0\0\11\19\36\3\60\20\0\116\6\0\0\0\24\33\47\21\60\0\116\7\0\0\0\25\46\61\24\58\11\0\116\8\0\0\0\11\2\36\13\42\83\126\0\116\7\0\0\0\31\41\55\28\54\6\0\116\7\0\0\0\31\37\33\28\58\20\0\116\8\0\0\0\36\52\57\9\30\5\56\0\116\8\0\0\0\36\52\57\9\30\5\56\0\116\5\0\0\0\0\47\44\29\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\6\0\0\0\76\34\52\13\60\0\116\5\0\0\0\0\47\44\29\0\116\7\0\0\0\31\52\63\16\55\7\0\116\6\0\0\0\63\52\44\26\50\0\116\4\0\0\0\2\37\58\0\116\7\0\0\0\40\37\46\22\61\5\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\7\0\0\0\35\48\44\11\62\50\0\116\6\0\0\0\9\50\63\22\43\0\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\5\0\0\0\0\47\44\29\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\4\0\0\0\31\57\35\0\116\12\0\0\0\27\40\36\13\60\12\37\18\24\37\41\0\116\8\0\0\0\36\52\57\9\30\5\56\0\116\6\0\0\0\76\34\52\13\60\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\7\0\0\0\30\33\58\30\60\20\0\116\5\0\0\0\15\40\44\11\0\116\5\0\0\0\24\57\61\28\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\8\0\0\0\11\2\36\13\42\86\120\0\116\12\0\0\0\27\40\36\13\60\12\37\18\24\37\41\0\116\8\0\0\0\11\2\36\13\42\83\126\0\116\12\0\0\0\27\40\36\13\60\12\37\18\24\37\41\0\116\4\0\0\0\31\57\35\0\116\7\0\0\0\40\37\46\22\61\5\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\5\0\0\0\0\47\44\29\0\116\6\0\0\0\28\35\44\21\53\0\116\7\0\0\0\13\51\62\28\43\20\0\116\4\0\0\0\2\37\58\0\116\6\0\0\0\28\35\44\21\53\0\116\6\0\0\0\28\33\36\11\42\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\7\0\0\0\25\46\61\24\58\11\0\116\6\0\0\0\9\50\63\22\43\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\6\0\0\0\47\40\56\23\50\0\116\23\0\0\0\45\36\59\24\55\3\41\5\47\6\10\28\55\5\62\0\24\47\63\87\58\19\0\116\7\0\0\0\25\46\61\24\58\11\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\116\6\0\0\0\24\33\47\21\60\0\116\6\0\0\0\28\35\44\21\53\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\7\0\0\0\11\45\44\13\58\8\0\116\5\0\0\0\45\50\42\10\0\116\6\0\0\0\76\34\52\13\60\0\116\6\0\0\0\63\52\44\26\50\0\116\6\0\0\0\28\33\36\11\42\0\116\5\0\0\0\149\146\132\168\0\116\9\0\0\0\153\146\130\177\132\178\147\184\0\116\6\0\0\0\150\142\144\168\128\0\116\9\0\0\0\133\181\178\170\151\178\149\175\0\116\11\0\0\0\132\153\137\177\167\169\132\169\191\146\0\116\6\0\0\0\133\184\152\168\215\0\116\7\0\0\0\147\147\157\170\151\239\0\116\8\0\0\0\183\153\133\162\128\178\134\0\116\17\0\0\0\133\143\148\183\172\178\128\168\164\175\148\183\147\181\147\184\0\116\10\0\0\0\132\139\148\160\139\149\158\187\191\0\81\2\0\0\0\240\1\0\0\3\2\23\12\0\0\0\116\8\0\0\0\39\37\52\58\54\4\41\0\116\5\0\0\0\34\33\32\28\0\93\116\6\0\0\0\28\35\44\21\53\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\6\0\0\0\47\40\56\23\50\0\116\7\0\0\0\11\45\44\13\58\8\0\116\4\0\0\0\2\37\58\0\116\7\0\0\0\13\51\62\28\43\20\0\116\10\0\0\0\15\47\35\10\45\1\34\21\31\0\116\4\0\0\0\2\37\58\0\116\6\0\0\0\160\159\144\169\137\0\42\19\0\0\0\37\1\50\0\77\0\41\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\219\0\255\255\1\0\42\28\8\0\1\0\0\0\0\1\66\0\215\19\50\0\0\0\12\0\2\0\65\7\8\0\2\0\0\0\0\0\0\1\0\3\65\7\8\0\2\0\2\0\0\0\1\1\0\3\90\38\8\0\3\0\0\0\0\0\0\0\0\0\210\3\8\0\3\0\0\0\0\0\1\1\0\3\108\2\8\1\66\0\2\0\0\0\3\0\0\0\215\19\50\0\0\0\6\0\2\0\70\2\8\0\2\0\1\0\0\0\0\0\0\0\196\20\8\1\66\0\2\0\0\0\2\1\0\3\215\19\50\0\0\0\3\0\2\0\187\1\79\0\2\0\11\0\0\1\189\2\79\0\3\0\0\0\0\0\70\2\8\0\0\0\2\0\0\0\0\0\0\0\199\15\8\0\2\0\2\0\0\0\0\0\0\0\125\22\8\0\0\0\20\0\0\0\0\0\0\0\81\1\0\0\0\114\0\0\0\1\0\81\0\0\0\0\23\3\0\0\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\42\3\0\0\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\47\28\8\0\0\0\15\0\0\0\5\0\0\0\125\22\8\0\10\0\23\0\0\0\0\0\0\0\85\85\80\9\0\0\3\0\81\0\0\0\0\42\108\0\0\0\37\1\50\0\137\0\109\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\66\0\255\255\1\0\90\38\79\0\0\0\73\0\0\1\42\25\8\0\0\0\73\1\0\0\1\1\0\4\16\6\8\0\0\0\0\0\0\0\2\1\0\3\70\2\8\0\2\0\0\0\0\0\0\0\0\0\90\38\79\0\3\0\74\0\0\1\42\25\8\0\3\0\74\1\0\0\4\1\0\4\12\1\79\0\4\0\5\0\0\1\90\38\79\0\5\0\75\0\0\1\42\25\8\0\5\0\75\1\0\0\7\1\0\4\65\7\8\0\5\0\5\0\0\0\8\1\0\3\90\38\79\0\6\0\75\0\0\1\42\25\8\0\6\0\75\1\0\0\9\1\0\4\65\7\8\0\6\0\6\0\0\0\10\1\0\3\136\34\8\0\3\0\4\0\0\0\2\0\0\0\141\2\8\0\4\0\0\0\0\0\1\0\0\0\90\38\79\0\5\0\76\0\0\1\42\25\8\0\5\0\76\1\0\0\13\1\0\4\22\9\50\0\6\0\44\0\2\0\22\9\50\0\7\0\44\0\2\0\22\9\50\0\8\0\44\0\2\0\136\34\8\0\5\0\4\0\0\0\2\0\0\0\164\0\8\0\4\0\11\1\0\0\5\0\0\2\136\34\8\0\0\0\5\0\0\0\2\0\0\0\16\6\8\0\0\0\0\0\0\0\15\1\0\3\199\15\8\0\0\0\2\0\0\0\19\0\0\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\16\1\0\3\90\38\79\0\2\0\77\0\0\1\42\25\8\0\2\0\77\1\0\0\4\1\0\4\22\9\50\0\3\0\255\255\1\0\22\9\50\0\4\0\49\0\2\0\22\9\50\0\5\0\255\255\1\0\22\9\50\0\6\0\12\0\2\0\136\34\8\0\2\0\5\0\0\0\2\0\0\0\12\1\79\0\3\0\21\0\0\1\62\13\79\0\4\0\78\0\0\1\12\1\79\0\5\0\23\0\0\1\227\21\8\0\6\0\6\0\0\0\7\0\0\0\199\15\8\0\0\0\7\0\0\0\16\0\0\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\164\0\8\0\0\0\24\1\0\0\25\1\0\4\187\1\79\0\0\0\73\0\0\1\16\6\8\0\0\0\0\0\0\0\26\1\0\3\12\1\79\0\2\0\27\0\0\1\136\34\8\0\0\0\3\0\0\0\2\0\0\0\65\7\8\0\0\0\0\0\0\0\28\1\0\3\16\6\8\0\0\0\0\0\0\0\29\1\0\3\136\34\8\0\0\0\2\0\0\0\3\0\0\0\227\21\8\0\2\0\6\0\0\0\14\0\0\0\165\0\8\0\2\0\1\0\0\0\0\0\0\0\65\7\8\0\2\0\0\0\0\0\30\1\0\3\65\7\8\0\2\0\2\0\0\0\31\1\0\3\196\20\8\1\56\0\2\0\0\0\32\1\0\3\215\19\50\0\0\0\49\0\2\0\90\38\79\0\2\0\73\0\0\1\42\25\8\0\2\0\73\1\0\0\1\1\0\4\16\6\8\0\2\0\2\0\0\0\2\1\0\3\70\2\8\0\4\0\0\0\0\0\0\0\0\0\90\38\79\0\5\0\74\0\0\1\42\25\8\0\5\0\74\1\0\0\4\1\0\4\12\1\79\0\6\0\5\0\0\1\90\38\79\0\7\0\75\0\0\1\42\25\8\0\7\0\75\1\0\0\7\1\0\4\65\7\8\0\7\0\7\0\0\0\8\1\0\3\90\38\79\0\8\0\75\0\0\1\42\25\8\0\8\0\75\1\0\0\9\1\0\4\65\7\8\0\8\0\8\0\0\0\10\1\0\3\136\34\8\0\5\0\4\0\0\0\2\0\0\0\141\2\8\0\6\0\0\0\0\0\1\0\0\0\90\38\79\0\7\0\12\0\0\1\72\20\8\0\7\0\12\1\0\0\13\1\0\4\22\9\50\0\8\0\255\255\1\0\22\9\50\0\9\0\255\255\1\0\22\9\50\0\10\0\255\255\1\0\136\34\8\0\7\0\4\0\0\0\2\0\0\0\164\0\8\0\6\0\11\1\0\0\7\0\0\2\136\34\8\0\2\0\5\0\0\0\2\0\0\0\16\6\8\0\2\0\2\0\0\0\15\1\0\3\199\15\8\0\2\0\2\0\0\0\8\0\0\0\70\2\8\0\2\0\0\0\0\0\0\0\0\0\16\6\8\0\2\0\2\0\0\0\16\1\0\3\90\38\79\0\4\0\77\0\0\1\42\25\8\0\4\0\77\1\0\0\4\1\0\4\22\9\50\0\5\0\255\255\1\0\22\9\50\0\6\0\41\0\2\0\22\9\50\0\7\0\255\255\1\0\22\9\50\0\8\0\12\0\2\0\136\34\8\0\4\0\5\0\0\0\2\0\0\0\62\13\79\0\5\0\79\0\0\1\12\1\79\0\6\0\22\0\0\1\12\1\79\0\7\0\23\0\0\1\227\21\8\0\8\0\3\0\0\0\17\0\0\0\199\15\8\0\2\0\7\0\0\0\4\0\0\0\70\2\8\0\2\0\0\0\0\0\0\0\0\0\65\7\8\0\3\0\0\0\0\0\30\1\0\3\65\7\8\0\3\0\3\0\0\0\31\1\0\3\164\0\8\0\2\0\24\1\0\0\3\0\0\2\65\7\8\0\2\0\0\0\0\0\30\1\0\3\165\0\8\0\2\0\2\0\0\0\0\0\0\0\52\34\79\0\2\0\29\0\0\1\12\1\79\0\3\0\34\0\0\1\199\15\8\0\2\0\2\0\0\0\19\0\0\0\151\31\8\0\2\0\15\0\0\0\24\0\0\0\165\0\8\0\2\0\1\0\0\0\0\0\0\0\125\22\8\0\23\0\0\0\0\0\0\0\0\0\23\80\0\0\0\116\5\0\0\0\11\33\32\28\0\116\13\0\0\0\56\55\40\28\55\51\41\19\26\41\46\28\0\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\116\4\0\0\0\2\37\58\0\7\154\153\153\153\153\153\185\63\116\5\0\0\0\41\46\56\20\0\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\7\0\0\0\32\41\35\28\56\18\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\3\0\0\0\37\46\0\116\17\0\0\0\46\33\46\18\62\18\35\20\2\36\14\22\53\15\62\82\0\116\7\0\0\0\47\47\33\22\43\83\0\116\8\0\0\0\10\50\34\20\11\39\14\0\7\0\0\0\0\0\128\70\64\116\5\0\0\0\60\44\44\0\0\116\10\0\0\0\56\55\40\28\55\51\37\27\9\0\116\6\0\0\0\57\4\36\20\107\0\7\0\0\0\0\0\0\0\0\7\0\0\0\0\0\0\73\64\7\0\0\0\0\0\0\42\64\116\4\0\0\0\35\53\57\0\116\6\0\0\0\61\53\36\23\45\0\7\51\51\51\51\51\51\211\63\116\5\0\0\0\56\37\53\13\0\116\6\0\0\0\66\96\99\89\119\0\116\11\0\0\0\43\37\57\42\60\18\58\8\15\37\0\116\17\0\0\0\57\51\40\11\16\14\60\20\24\19\40\11\47\9\47\4\0\116\11\0\0\0\37\46\61\12\45\34\41\6\13\46\0\116\5\0\0\0\27\33\36\13\0\116\8\0\0\0\39\37\52\58\54\4\41\0\116\5\0\0\0\34\33\32\28\0\116\8\0\0\0\57\46\38\23\54\23\34\0\7\0\0\0\0\0\0\69\64\7\154\153\153\153\153\153\201\63\116\7\0\0\0\30\33\58\10\60\20\0\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\5\0\0\0\11\33\32\28\0\116\6\0\0\0\76\34\52\13\60\0\116\7\0\0\0\11\2\36\13\42\88\0\116\4\0\0\0\0\37\35\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\22\0\0\0\36\5\31\43\13\52\108\39\57\19\14\56\13\47\30\65\82\96\12\53\21\0\116\7\0\0\0\25\46\61\24\58\11\0\116\6\0\0\0\47\40\56\23\50\0\116\7\0\0\0\30\33\58\10\60\20\0\116\7\0\0\0\35\48\44\11\62\50\0\116\7\0\0\0\31\52\63\16\55\7\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\5\0\0\0\15\40\44\11\0\116\7\0\0\0\30\33\58\30\60\20\0\116\10\0\0\0\51\31\36\23\42\20\62\62\51\0\116\7\0\0\0\30\33\58\30\60\20\0\116\7\0\0\0\40\37\46\22\61\5\0\116\6\0\0\0\47\40\56\23\50\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\7\0\0\0\11\45\44\13\58\8\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\7\0\0\0\9\46\46\22\61\5\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\7\0\0\0\31\52\63\16\55\7\0\116\10\0\0\0\51\31\36\23\42\20\62\62\51\0\116\5\0\0\0\11\9\35\13\0\116\7\0\0\0\30\33\58\30\60\20\0\116\6\0\0\0\58\33\63\30\42\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\7\0\0\0\25\46\61\24\58\11\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\5\0\0\0\11\33\32\28\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\5\0\0\0\183\157\156\160\0\116\10\0\0\0\132\139\148\160\139\149\158\187\191\0\116\5\0\0\0\149\146\132\168\0\116\7\0\0\0\147\147\157\170\151\239\0\116\6\0\0\0\133\184\152\168\215\0\116\6\0\0\0\129\137\152\171\145\0\116\4\0\0\0\159\137\133\0\85\42\0\1\0\0\37\1\50\0\178\0\158\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\198\0\255\255\1\0\42\28\8\0\2\0\0\0\0\1\66\0\215\19\50\0\0\0\2\0\2\0\90\38\79\0\4\0\185\0\0\1\42\25\8\0\4\0\185\1\0\0\1\1\0\4\65\7\8\0\2\0\4\0\0\0\2\1\0\3\90\38\79\0\4\0\186\0\0\1\42\25\8\0\4\0\186\1\0\0\4\1\0\4\62\13\79\0\5\0\187\0\0\1\136\34\8\0\4\0\2\0\0\0\2\0\0\0\90\38\79\0\5\0\186\0\0\1\42\25\8\0\5\0\186\1\0\0\4\1\0\4\62\13\79\0\6\0\188\0\0\1\136\34\8\0\5\0\2\0\0\0\2\0\0\0\90\38\79\0\6\0\3\0\0\1\72\20\8\0\6\0\3\1\0\0\4\1\0\4\62\13\79\0\7\0\189\0\0\1\136\34\8\0\6\0\2\0\0\0\2\0\0\0\90\38\79\0\7\0\186\0\0\1\42\25\8\0\7\0\186\1\0\0\4\1\0\4\62\13\79\0\8\0\188\0\0\1\136\34\8\0\7\0\2\0\0\0\2\0\0\0\90\38\79\0\8\0\186\0\0\1\42\25\8\0\8\0\186\1\0\0\4\1\0\4\12\1\79\0\9\0\8\0\0\1\136\34\8\0\8\0\2\0\0\0\2\0\0\0\164\0\8\0\4\0\9\1\0\0\10\1\0\4\70\2\8\0\9\0\0\0\0\0\0\0\0\0\164\0\8\0\4\0\11\1\0\0\9\0\0\2\90\38\79\0\9\0\13\0\0\1\72\20\8\0\9\0\13\1\0\0\14\1\0\4\22\9\50\0\10\0\29\0\2\0\22\9\50\0\11\0\29\0\2\0\22\9\50\0\12\0\28\0\2\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\4\0\12\1\0\0\9\0\0\2\164\0\8\0\4\0\17\1\0\0\18\1\0\4\90\38\79\0\9\0\20\0\0\1\72\20\8\0\9\0\20\1\0\0\4\1\0\4\12\1\79\0\10\0\21\0\0\1\22\9\50\0\11\0\255\255\1\0\12\1\79\0\12\0\22\0\0\1\22\9\50\0\13\0\255\255\1\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\4\0\19\1\0\0\9\0\0\2\90\38\79\0\9\0\190\0\0\1\42\25\8\0\9\0\190\1\0\0\4\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\142\0\2\0\22\9\50\0\12\0\255\255\1\0\22\9\50\0\13\0\19\0\2\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\4\0\23\1\0\0\9\0\0\2\90\38\79\0\9\0\27\0\0\1\72\20\8\0\9\0\27\1\0\0\4\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\3\0\2\0\136\34\8\0\9\0\3\0\0\0\2\0\0\0\164\0\8\0\5\0\26\1\0\0\9\0\0\2\164\0\8\0\5\0\9\1\0\0\29\1\0\4\164\0\8\0\5\0\11\1\0\0\4\0\0\2\164\0\8\0\6\0\9\1\0\0\30\1\0\4\164\0\8\0\6\0\11\1\0\0\4\0\0\2\90\38\79\0\9\0\191\0\0\1\42\25\8\0\9\0\191\1\0\0\14\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\255\255\1\0\22\9\50\0\12\0\255\255\1\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\6\0\12\1\0\0\9\0\0\2\164\0\8\0\6\0\17\1\0\0\18\1\0\4\164\0\8\0\6\0\31\1\0\0\32\1\0\4\90\38\79\0\9\0\190\0\0\1\42\25\8\0\9\0\190\1\0\0\4\1\0\4\12\1\79\0\10\0\33\0\0\1\22\9\50\0\11\0\255\255\1\0\12\1\79\0\12\0\34\0\0\1\22\9\50\0\13\0\255\255\1\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\6\0\19\1\0\0\9\0\0\2\90\38\79\0\9\0\190\0\0\1\42\25\8\0\9\0\190\1\0\0\4\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\41\0\2\0\22\9\50\0\12\0\255\255\1\0\22\9\50\0\13\0\12\0\2\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\6\0\23\1\0\0\9\0\0\2\164\0\8\0\6\0\37\1\0\0\38\1\0\4\90\38\79\0\9\0\0\0\0\1\72\20\8\0\9\0\0\1\0\0\39\1\0\4\65\7\8\0\9\0\9\0\0\0\40\1\0\3\164\0\8\0\6\0\39\1\0\0\9\0\0\2\65\7\8\0\9\0\2\0\0\0\9\1\0\3\164\0\8\0\6\0\41\1\0\0\9\0\0\2\90\38\79\0\9\0\191\0\0\1\42\25\8\0\9\0\191\1\0\0\14\1\0\4\22\9\50\0\10\0\254\0\2\0\22\9\50\0\11\0\254\0\2\0\22\9\50\0\12\0\254\0\2\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\6\0\42\1\0\0\9\0\0\2\164\0\8\0\6\0\44\1\0\0\45\1\0\4\90\38\79\0\9\0\13\0\0\1\72\20\8\0\9\0\13\1\0\0\14\1\0\4\22\9\50\0\10\0\44\0\2\0\22\9\50\0\11\0\44\0\2\0\22\9\50\0\12\0\44\0\2\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\6\0\46\1\0\0\9\0\0\2\90\38\79\0\9\0\27\0\0\1\72\20\8\0\9\0\27\1\0\0\4\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\4\0\2\0\136\34\8\0\9\0\3\0\0\0\2\0\0\0\164\0\8\0\7\0\26\1\0\0\9\0\0\2\164\0\8\0\7\0\9\1\0\0\49\1\0\4\164\0\8\0\7\0\11\1\0\0\6\0\0\2\164\0\8\0\8\0\11\1\0\0\4\0\0\2\90\38\79\0\9\0\51\0\0\1\72\20\8\0\9\0\51\1\0\0\4\1\0\4\12\1\79\0\10\0\52\0\0\1\12\1\79\0\11\0\52\0\0\1\136\34\8\0\9\0\3\0\0\0\2\0\0\0\164\0\8\0\8\0\50\1\0\0\9\0\0\2\90\38\79\0\9\0\191\0\0\1\42\25\8\0\9\0\191\1\0\0\14\1\0\4\22\9\50\0\10\0\254\0\2\0\22\9\50\0\11\0\254\0\2\0\22\9\50\0\12\0\254\0\2\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\8\0\12\1\0\0\9\0\0\2\164\0\8\0\8\0\53\1\0\0\54\1\0\4\164\0\8\0\8\0\17\1\0\0\18\1\0\4\90\38\79\0\9\0\20\0\0\1\72\20\8\0\9\0\20\1\0\0\4\1\0\4\12\1\79\0\10\0\55\0\0\1\22\9\50\0\11\0\255\255\1\0\12\1\79\0\12\0\52\0\0\1\22\9\50\0\13\0\255\255\1\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\8\0\19\1\0\0\9\0\0\2\90\38\79\0\9\0\190\0\0\1\42\25\8\0\9\0\190\1\0\0\4\1\0\4\22\9\50\0\10\0\255\255\1\0\22\9\50\0\11\0\81\0\2\0\22\9\50\0\12\0\255\255\1\0\22\9\50\0\13\0\13\0\2\0\136\34\8\0\9\0\5\0\0\0\2\0\0\0\164\0\8\0\8\0\23\1\0\0\9\0\0\2\90\38\79\0\9\0\0\0\0\1\72\20\8\0\9\0\0\1\0\0\39\1\0\4\65\7\8\0\9\0\9\0\0\0\58\1\0\3\164\0\8\0\8\0\39\1\0\0\9\0\0\2\164\0\8\0\8\0\41\1\0\0\1\0\0\2\90\38\79\0\9\0\191\0\0\1\42\25\8\0\9\0\191\1\0\0\14\1\0\4\22\9\50\0\10\0\254\0\2\0\22\9\50\0\11\0\254\0\2\0\22\9\50\0\12\0\254\0\2\0\136\34\8\0\9\0\4\0\0\0\2\0\0\0\164\0\8\0\8\0\42\1\0\0\9\0\0\2\164\0\8\0\8\0\44\1\0\0\59\1\0\4\90\38\79\0\9\0\0\0\0\1\72\20\8\0\9\0\0\1\0\0\60\1\0\4\65\7\8\0\9\0\9\0\0\0\61\1\0\3\164\0\8\0\8\0\60\1\0\0\9\0\0\2\151\31\8\0\9\0\0\0\0\0\21\0\0\0\187\1\79\0\10\0\192\0\0\1\140\34\8\0\10\0\21\0\0\0\2\0\0\0\65\7\8\0\10\0\10\0\0\0\63\1\0\3\52\34\79\0\11\0\65\0\0\1\16\6\8\0\11\0\11\0\0\0\66\1\0\3\62\13\79\0\13\0\193\0\0\1\136\34\8\0\11\0\3\0\0\0\2\0\0\0\65\7\8\0\11\0\11\0\0\0\68\1\0\3\16\6\8\0\11\0\11\0\0\0\69\1\0\3\189\2\79\0\13\0\0\0\0\0\29\0\8\0\0\0\2\0\0\0\0\0\0\0\29\0\8\0\0\0\9\0\0\0\0\0\0\0\29\0\8\0\0\0\3\0\0\0\0\0\0\0\136\34\8\0\11\0\3\0\0\0\2\0\0\0\164\0\8\0\10\0\64\1\0\0\11\0\0\2\65\7\8\0\10\0\6\0\0\0\70\1\0\3\16\6\8\0\10\0\10\0\0\0\69\1\0\3\189\2\79\0\12\0\1\0\0\0\29\0\8\0\0\0\6\0\0\0\0\0\0\0\29\0\8\0\0\0\9\0\0\0\0\0\0\0\29\0\8\0\0\0\2\0\0\0\0\0\0\0\199\15\8\0\10\0\3\0\0\0\5\0\0\0\70\2\8\0\10\0\1\0\0\0\0\0\0\0\42\28\8\0\10\0\0\0\0\1\66\0\215\19\50\0\0\0\36\0\2\0\70\2\8\0\10\0\2\0\0\0\0\0\0\0\16\6\8\0\10\0\10\0\0\0\71\1\0\3\70\2\8\0\12\0\3\0\0\0\0\0\0\0\90\38\79\0\13\0\194\0\0\1\42\25\8\0\13\0\194\1\0\0\4\1\0\4\12\1\79\0\14\0\73\0\0\1\90\38\79\0\15\0\185\0\0\1\42\25\8\0\15\0\185\1\0\0\74\1\0\4\65\7\8\0\15\0\15\0\0\0\75\1\0\3\90\38\79\0\16\0\185\0\0\1\42\25\8\0\16\0\185\1\0\0\76\1\0\4\65\7\8\0\16\0\16\0\0\0\77\1\0\3\136\34\8\0\13\0\4\0\0\0\2\0\0\0\141\2\8\0\14\0\0\0\0\0\1\0\0\0\164\0\8\0\14\0\78\1\0\0\79\1\0\4\136\34\8\0\10\0\5\0\0\0\2\0\0\0\16\6\8\0\10\0\10\0\0\0\80\1\0\3\199\15\8\0\10\0\2\0\0\0\13\0\0\0\70\2\8\0\10\0\0\0\0\0\0\0\0\0\16\6\8\0\10\0\10\0\0\0\81\1\0\3\90\38\79\0\12\0\20\0\0\1\72\20\8\0\12\0\20\1\0\0\82\1\0\4\90\38\8\0\13\0\0\0\0\0\0\0\0\0\210\3\8\0\13\0\0\0\0\0\83\1\0\3\65\7\8\0\13\0\13\0\0\0\84\1\0\3\22\9\50\0\14\0\23\0\2\0\136\34\8\0\12\0\3\0\0\0\2\0\0\0\90\38\79\0\13\0\185\0\0\1\42\25\8\0\13\0\185\1\0\0\76\1\0\4\65\7\8\0\13\0\13\0\0\0\86\1\0\3\90\38\79\0\14\0\185\0\0\1\42\25\8\0\14\0\185\1\0\0\74\1\0\4\65\7\8\0\14\0\14\0\0\0\75\1\0\3\12\1\79\0\15\0\87\0\0\1\227\21\8\0\16\0\2\0\0\0\16\0\0\0\199\15\8\0\10\0\7\0\0\0\0\0\0\0\215\19\50\0\0\0\20\0\2\0\70\2\8\0\10\0\0\0\0\0\0\0\0\0\16\6\8\0\10\0\10\0\0\0\81\1\0\3\90\38\79\0\12\0\20\0\0\1\72\20\8\0\12\0\20\1\0\0\82\1\0\4\90\38\8\0\13\0\0\0\0\0\0\0\0\0\210\3\8\0\13\0\0\0\0\0\83\1\0\3\65\7\8\0\13\0\13\0\0\0\84\1\0\3\90\38\8\0\14\0\4\0\0\0\0\0\0\0\210\3\8\0\14\0\4\0\0\0\88\1\0\3\65\7\8\0\14\0\14\0\0\0\89\1\0\3\254\1\8\0\14\0\14\0\0\0\90\1\0\3\136\34\8\0\12\0\3\0\0\0\2\0\0\0\90\38\79\0\13\0\185\0\0\1\42\25\8\0\13\0\185\1\0\0\76\1\0\4\65\7\8\0\13\0\13\0\0\0\86\1\0\3\90\38\79\0\14\0\185\0\0\1\42\25\8\0\14\0\185\1\0\0\74\1\0\4\65\7\8\0\14\0\14\0\0\0\75\1\0\3\12\1\79\0\15\0\87\0\0\1\227\21\8\0\16\0\18\0\0\0\0\0\0\0\199\15\8\0\10\0\7\0\0\0\22\0\0\0\70\2\8\0\10\0\5\0\0\0\0\0\0\0\47\28\8\0\10\0\18\0\0\0\16\0\0\0\125\22\8\0\15\0\5\0\0\0\0\0\0\0\85\84\56\0\0\7\7\81\4\0\0\0\64\0\0\0\0\0\23\3\0\0\0\116\5\0\0\0\15\40\44\11\0\116\4\0\0\0\2\37\58\0\116\8\0\0\0\30\37\60\12\48\18\41\0\81\0\0\0\0\42\1\0\0\0\125\22\8\0\2\0\15\0\0\0\0\0\0\0\85\62\1\0\0\3\0\42\15\0\0\0\37\1\50\0\116\0\49\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\74\0\255\255\1\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\70\2\8\0\1\0\1\0\0\0\0\0\0\0\70\2\8\0\2\0\2\0\0\0\0\0\0\0\136\34\8\0\0\0\3\0\0\0\2\0\0\0\65\7\8\0\1\0\0\0\0\0\0\1\0\3\42\28\8\0\1\0\0\0\0\1\56\0\215\19\50\0\0\0\0\0\2\0\215\19\50\0\0\0\2\0\2\0\187\1\79\0\1\0\9\0\0\1\65\7\8\0\2\0\0\0\0\0\2\1\0\3\199\15\8\0\1\0\2\0\0\0\22\0\0\0\125\22\8\0\18\0\8\0\0\0\0\0\0\0\23\10\0\0\0\7\0\0\0\0\0\0\240\63\116\6\0\0\0\9\50\63\22\43\0\7\0\0\0\0\0\0\0\64\116\7\0\0\0\11\45\44\13\58\8\0\116\5\0\0\0\11\33\32\28\0\116\10\0\0\0\15\47\35\10\45\1\34\21\31\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\30\33\58\30\60\20\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\6\0\0\0\181\142\131\170\151\0\81\0\0\0\0\85\112\20\0\0\11\0\42\111\0\0\0\37\1\50\0\59\0\103\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\125\0\255\255\1\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\90\38\79\0\1\0\1\0\0\1\72\20\8\0\1\0\1\1\0\0\0\1\0\4\65\7\8\0\1\0\1\0\0\0\2\1\0\3\164\0\8\0\0\0\0\1\0\0\1\0\0\2\52\34\79\0\0\0\3\0\0\1\70\2\8\0\1\0\2\0\0\0\0\0\0\0\136\34\8\0\0\0\2\0\0\0\2\0\0\0\187\1\79\0\1\0\71\0\0\1\70\2\8\0\2\0\3\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\131\3\8\0\0\0\0\0\0\0\1\0\0\0\217\2\8\0\0\0\0\0\0\0\4\1\0\3\90\38\8\0\1\0\4\0\0\0\0\0\0\0\210\3\8\0\1\0\4\0\0\0\5\1\0\3\65\7\8\0\1\0\1\0\0\0\6\1\0\3\211\3\8\0\0\0\0\0\0\0\1\0\0\0\187\1\79\0\1\0\71\0\0\1\70\2\8\0\2\0\3\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\254\1\8\0\0\0\0\0\0\0\1\0\0\0\42\28\8\0\0\0\0\0\0\1\66\0\215\19\50\0\0\0\0\0\2\0\22\9\50\0\0\0\255\255\1\0\165\0\8\0\0\0\1\0\0\0\0\0\0\0\90\38\79\0\0\0\72\0\0\1\42\25\8\0\0\0\72\1\0\0\9\1\0\4\70\2\8\0\1\0\1\0\0\0\0\0\0\0\136\34\8\0\0\0\2\0\0\0\2\0\0\0\165\0\8\0\0\0\1\0\0\0\0\0\0\0\70\2\8\0\0\0\5\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\10\1\0\3\70\2\8\0\2\0\0\0\0\0\0\0\0\0\90\38\79\0\3\0\73\0\0\1\42\25\8\0\3\0\73\1\0\0\12\1\0\4\12\1\79\0\4\0\13\0\0\1\90\38\79\0\5\0\74\0\0\1\42\25\8\0\5\0\74\1\0\0\14\1\0\4\65\7\8\0\5\0\5\0\0\0\15\1\0\3\90\38\79\0\6\0\1\0\0\1\72\20\8\0\6\0\1\1\0\0\16\1\0\4\65\7\8\0\6\0\6\0\0\0\17\1\0\3\136\34\8\0\3\0\4\0\0\0\2\0\0\0\141\2\8\0\4\0\0\0\0\0\1\0\0\0\90\38\79\0\5\0\19\0\0\1\72\20\8\0\5\0\19\1\0\0\20\1\0\4\22\9\50\0\6\0\254\0\2\0\22\9\50\0\7\0\254\0\2\0\22\9\50\0\8\0\254\0\2\0\136\34\8\0\5\0\4\0\0\0\2\0\0\0\164\0\8\0\4\0\18\1\0\0\5\0\0\2\136\34\8\0\0\0\5\0\0\0\2\0\0\0\16\6\8\0\0\0\0\0\0\0\22\1\0\3\199\15\8\0\0\0\2\0\0\0\4\0\0\0\70\2\8\0\0\0\6\0\0\0\0\0\0\0\42\28\8\0\0\0\0\0\0\1\66\0\215\19\50\0\0\0\1\0\2\0\70\2\8\0\0\0\7\0\0\0\0\0\0\0\47\28\8\0\0\0\24\0\0\0\23\0\0\0\70\2\8\0\0\0\4\0\0\0\0\0\0\0\90\38\79\0\1\0\75\0\0\1\42\25\8\0\1\0\75\1\0\0\12\1\0\4\22\9\50\0\2\0\255\255\1\0\90\38\79\0\3\0\8\0\0\1\72\20\8\0\3\0\8\1\0\0\25\1\0\4\90\38\8\0\4\0\8\0\0\0\0\0\0\0\210\3\8\0\4\0\8\0\0\0\6\1\0\3\90\38\8\0\5\0\4\0\0\0\0\0\0\0\210\3\8\0\5\0\4\0\0\0\26\1\0\3\65\7\8\0\5\0\5\0\0\0\6\1\0\3\131\3\8\0\4\0\4\0\0\0\5\0\0\0\22\9\50\0\5\0\255\255\1\0\22\9\50\0\6\0\130\0\2\0\136\34\8\0\3\0\4\0\0\0\2\0\0\0\22\9\50\0\4\0\255\255\1\0\22\9\50\0\5\0\13\0\2\0\136\34\8\0\1\0\5\0\0\0\2\0\0\0\164\0\8\0\0\0\23\1\0\0\1\0\0\2\90\38\8\0\0\0\8\0\0\0\0\0\0\0\210\3\8\0\0\0\8\0\0\0\29\1\0\3\16\6\8\0\0\0\0\0\0\0\30\1\0\3\189\2\79\0\2\0\0\0\0\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\70\2\8\0\0\0\2\0\0\0\0\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\70\2\8\0\0\0\4\0\0\0\0\0\0\0\70\2\8\0\0\0\6\0\0\0\0\0\0\0\70\2\8\0\0\0\9\0\0\0\0\0\0\0\70\2\8\0\0\0\8\0\0\0\0\0\0\0\136\34\8\0\0\0\3\0\0\0\2\0\0\0\135\35\79\0\0\0\76\0\0\1\90\38\8\0\0\0\10\0\0\0\0\0\0\0\210\3\8\0\0\0\10\0\0\0\32\1\0\3\16\6\8\0\0\0\0\0\0\0\30\1\0\3\189\2\79\0\2\0\1\0\0\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\70\2\8\0\0\0\2\0\0\0\0\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\70\2\8\0\0\0\4\0\0\0\0\0\0\0\70\2\8\0\0\0\7\0\0\0\0\0\0\0\70\2\8\0\0\0\8\0\0\0\0\0\0\0\136\34\8\0\0\0\3\0\0\0\2\0\0\0\135\35\79\0\0\0\77\0\0\1\70\2\8\0\0\0\0\0\0\0\0\0\0\0\70\2\8\0\1\0\1\0\0\0\0\0\0\0\164\0\8\0\0\0\33\1\0\0\1\0\0\2\125\22\8\0\13\0\4\0\0\0\0\0\0\0\81\2\0\0\0\56\5\0\0\8\0\23\38\0\0\0\116\5\0\0\0\56\37\53\13\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\7\0\0\0\0\0\96\96\64\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\116\5\0\0\0\1\33\57\17\0\116\6\0\0\0\10\44\34\22\43\0\116\6\0\0\0\28\35\44\21\53\0\116\5\0\0\0\63\41\55\28\0\116\6\0\0\0\57\4\36\20\107\0\116\4\0\0\0\2\37\58\0\7\0\0\0\0\0\0\0\0\116\6\0\0\0\15\44\44\20\41\0\116\17\0\0\0\45\34\62\22\53\21\56\4\60\47\62\16\45\9\35\15\0\7\0\0\0\0\0\160\97\64\7\0\0\0\0\0\0\44\64\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\5\0\0\0\11\51\56\27\0\116\7\0\0\0\31\52\63\16\55\7\0\116\6\0\0\0\28\35\44\21\53\0\116\6\0\0\0\63\52\44\26\50\0\116\8\0\0\0\11\2\36\13\42\83\126\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\10\0\0\0\15\47\35\10\45\1\34\21\31\0\116\5\0\0\0\34\33\32\28\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\7\0\0\0\40\37\46\22\61\5\0\116\10\0\0\0\51\31\36\23\42\20\62\62\51\0\116\5\0\0\0\15\40\44\11\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\6\0\0\0\24\33\47\21\60\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\7\0\0\0\30\33\58\30\60\20\0\116\9\0\0\0\164\147\159\176\136\190\149\175\0\116\6\0\0\0\160\159\144\169\137\0\116\5\0\0\0\189\157\133\173\0\81\1\0\0\0\113\0\0\0\2\0\42\4\0\0\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\70\2\8\0\1\0\1\0\0\0\0\0\0\0\199\15\8\0\0\0\2\0\0\0\19\0\0\0\125\22\8\0\14\0\14\0\0\0\0\0\0\0\23\3\0\0\0\116\12\0\0\0\27\40\36\13\60\12\37\18\24\37\41\0\116\5\0\0\0\0\47\44\29\0\116\7\0\0\0\25\46\61\24\58\11\0\81\0\0\0\0\85\42\56\0\0\0\37\1\50\0\43\0\100\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\124\0\255\255\1\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\70\2\8\0\1\0\1\0\0\0\0\0\0\0\164\0\8\0\0\0\0\1\0\0\1\0\0\2\187\1\79\0\0\0\35\0\0\1\70\2\8\0\1\0\2\0\0\0\0\0\0\0\136\34\8\0\0\0\2\0\0\0\2\0\0\0\187\1\79\0\1\0\35\0\0\1\70\2\8\0\2\0\3\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\131\3\8\0\0\0\0\0\0\0\1\0\0\0\217\2\8\0\0\0\0\0\0\0\2\1\0\3\90\38\8\0\1\0\4\0\0\0\0\0\0\0\210\3\8\0\1\0\4\0\0\0\3\1\0\3\65\7\8\0\1\0\1\0\0\0\4\1\0\3\211\3\8\0\0\0\0\0\0\0\1\0\0\0\187\1\79\0\1\0\35\0\0\1\70\2\8\0\2\0\3\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\254\1\8\0\0\0\0\0\0\0\1\0\0\0\165\0\8\0\0\0\1\0\0\0\0\0\0\0\90\38\79\0\0\0\5\0\0\1\72\20\8\0\0\0\5\1\0\0\6\1\0\4\70\2\8\0\1\0\1\0\0\0\0\0\0\0\136\34\8\0\0\0\2\0\0\0\2\0\0\0\165\0\8\0\0\0\1\0\0\0\0\0\0\0\70\2\8\0\0\0\5\0\0\0\0\0\0\0\42\28\8\0\0\0\0\0\0\1\66\0\215\19\50\0\0\0\4\0\2\0\187\1\79\0\0\0\36\0\0\1\189\2\79\0\1\0\0\0\0\0\70\2\8\0\0\0\6\0\0\0\0\0\0\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\199\15\8\0\0\0\2\0\0\0\6\0\0\0\70\2\8\0\0\0\4\0\0\0\0\0\0\0\90\38\79\0\1\0\9\0\0\1\72\20\8\0\1\0\9\1\0\0\10\1\0\4\22\9\50\0\2\0\255\255\1\0\90\38\79\0\3\0\37\0\0\1\42\25\8\0\3\0\37\1\0\0\12\1\0\4\90\38\8\0\4\0\7\0\0\0\0\0\0\0\210\3\8\0\4\0\7\0\0\0\4\1\0\3\90\38\8\0\5\0\4\0\0\0\0\0\0\0\210\3\8\0\5\0\4\0\0\0\13\1\0\3\65\7\8\0\5\0\5\0\0\0\4\1\0\3\131\3\8\0\4\0\4\0\0\0\5\0\0\0\22\9\50\0\5\0\255\255\1\0\22\9\50\0\6\0\140\0\2\0\136\34\8\0\3\0\4\0\0\0\2\0\0\0\22\9\50\0\4\0\255\255\1\0\22\9\50\0\5\0\13\0\2\0\136\34\8\0\1\0\5\0\0\0\2\0\0\0\164\0\8\0\0\0\8\1\0\0\1\0\0\2\125\22\8\0\2\0\14\0\0\0\0\0\0\0\85\135\5\0\0\6\1\81\0\0\0\0\23\48\0\0\0\116\14\0\0\0\57\51\40\11\16\14\60\20\24\20\52\9\60\0\116\5\0\0\0\41\46\56\20\0\116\13\0\0\0\33\47\56\10\60\34\57\21\24\47\35\72\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\7\0\0\0\0\0\96\96\64\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\116\5\0\0\0\1\33\57\17\0\116\6\0\0\0\10\44\34\22\43\0\116\5\0\0\0\63\41\55\28\0\116\6\0\0\0\57\4\36\20\107\0\116\4\0\0\0\2\37\58\0\7\0\0\0\0\0\0\0\0\116\6\0\0\0\15\44\44\20\41\0\116\17\0\0\0\45\34\62\22\53\21\56\4\60\47\62\16\45\9\35\15\0\7\0\0\0\0\0\160\97\64\7\0\0\0\0\0\0\44\64\116\15\0\0\0\1\47\59\28\58\15\34\15\9\35\57\16\54\14\0\116\11\0\0\0\40\41\62\26\54\14\34\4\15\52\0\116\18\0\0\0\30\37\33\28\56\19\41\2\3\46\35\28\58\20\37\14\2\0\116\7\0\0\0\30\33\58\10\60\20\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\6\0\0\0\63\52\44\26\50\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\7\0\0\0\30\33\58\10\60\20\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\7\0\0\0\9\46\46\22\61\5\0\116\7\0\0\0\11\19\36\3\60\20\0\116\7\0\0\0\11\45\44\13\58\8\0\116\7\0\0\0\9\46\46\22\61\5\0\116\6\0\0\0\28\35\44\21\53\0\116\7\0\0\0\24\57\61\28\54\6\0\116\5\0\0\0\34\33\32\28\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\7\0\0\0\11\2\36\13\42\88\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\12\0\0\0\27\40\36\13\60\12\37\18\24\37\41\0\116\5\0\0\0\45\50\42\10\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\7\0\0\0\30\33\58\30\60\20\0\116\7\0\0\0\9\46\46\22\61\5\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\5\0\0\0\149\146\132\168\0\116\9\0\0\0\164\147\159\176\136\190\149\175\0\116\5\0\0\0\189\157\133\173\0\116\6\0\0\0\133\184\152\168\215\0\116\15\0\0\0\189\147\135\160\134\179\158\179\181\159\133\172\138\178\0\42\59\0\0\0\37\1\50\0\98\0\192\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\246\0\255\255\1\0\65\7\8\0\1\0\0\0\0\0\0\1\0\3\90\38\79\0\2\0\43\0\0\1\42\25\8\0\2\0\43\1\0\0\0\1\0\4\65\7\8\0\2\0\2\0\0\0\2\1\0\3\108\2\8\1\66\0\1\0\0\0\2\0\0\0\215\19\50\0\0\0\48\0\2\0\187\1\79\0\1\0\44\0\0\1\70\2\8\0\2\0\1\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\52\34\79\0\2\0\3\0\0\1\70\2\8\0\3\0\2\0\0\0\0\0\0\0\136\34\8\0\2\0\2\0\0\0\2\0\0\0\131\3\8\0\1\0\1\0\0\0\2\0\0\0\217\2\8\0\1\0\1\0\0\0\4\1\0\3\90\38\8\0\2\0\3\0\0\0\0\0\0\0\210\3\8\0\2\0\3\0\0\0\5\1\0\3\65\7\8\0\2\0\2\0\0\0\6\1\0\3\211\3\8\0\1\0\1\0\0\0\2\0\0\0\187\1\79\0\2\0\44\0\0\1\70\2\8\0\3\0\2\0\0\0\0\0\0\0\136\34\8\0\2\0\2\0\0\0\2\0\0\0\254\1\8\0\1\0\1\0\0\0\2\0\0\0\165\0\8\0\1\0\0\0\0\0\0\0\0\0\90\38\79\0\1\0\45\0\0\1\42\25\8\0\1\0\45\1\0\0\8\1\0\4\70\2\8\0\2\0\0\0\0\0\0\0\0\0\136\34\8\0\1\0\2\0\0\0\2\0\0\0\165\0\8\0\1\0\0\0\0\0\0\0\0\0\70\2\8\0\1\0\4\0\0\0\0\0\0\0\47\28\8\0\1\0\18\0\0\0\18\0\0\0\70\2\8\0\1\0\3\0\0\0\0\0\0\0\90\38\79\0\2\0\46\0\0\1\42\25\8\0\2\0\46\1\0\0\11\1\0\4\22\9\50\0\3\0\255\255\1\0\90\38\79\0\4\0\45\0\0\1\42\25\8\0\4\0\45\1\0\0\13\1\0\4\90\38\8\0\5\0\5\0\0\0\0\0\0\0\210\3\8\0\5\0\5\0\0\0\6\1\0\3\90\38\8\0\6\0\3\0\0\0\0\0\0\0\210\3\8\0\6\0\3\0\0\0\14\1\0\3\65\7\8\0\6\0\6\0\0\0\6\1\0\3\131\3\8\0\5\0\5\0\0\0\6\0\0\0\22\9\50\0\6\0\255\255\1\0\22\9\50\0\7\0\140\0\2\0\136\34\8\0\4\0\4\0\0\0\2\0\0\0\22\9\50\0\5\0\255\255\1\0\22\9\50\0\6\0\13\0\2\0\136\34\8\0\2\0\5\0\0\0\2\0\0\0\164\0\8\0\1\0\9\1\0\0\2\0\0\2\187\1\79\0\1\0\47\0\0\1\16\6\8\0\1\0\1\0\0\0\18\1\0\3\199\15\8\0\1\0\2\0\0\0\6\0\0\0\52\34\79\0\1\0\19\0\0\1\16\6\8\0\1\0\1\0\0\0\18\1\0\3\199\15\8\0\1\0\2\0\0\0\19\0\0\0\125\22\8\0\8\0\5\0\0\0\0\0\0\0\85\23\78\0\0\0\116\15\0\0\0\56\37\53\13\1\33\32\8\11\46\32\28\55\20\0\116\5\0\0\0\41\46\56\20\0\116\6\0\0\0\62\41\42\17\45\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\7\0\0\0\0\0\96\96\64\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\7\0\0\0\0\0\0\0\0\116\5\0\0\0\1\33\57\17\0\116\6\0\0\0\10\44\34\22\43\0\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\116\4\0\0\0\2\37\58\0\7\51\51\51\51\51\51\211\63\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\5\0\0\0\63\41\35\28\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\6\0\0\0\37\46\2\12\45\0\116\11\0\0\0\56\37\53\13\26\15\32\14\30\115\0\116\7\0\0\0\47\47\33\22\43\83\0\116\8\0\0\0\10\50\34\20\11\39\14\0\7\0\0\0\0\0\224\111\64\116\5\0\0\0\60\44\44\0\0\116\5\0\0\0\63\41\55\28\0\116\6\0\0\0\57\4\36\20\107\0\116\6\0\0\0\15\44\44\20\41\0\116\17\0\0\0\45\34\62\22\53\21\56\4\60\47\62\16\45\9\35\15\0\7\0\0\0\0\0\0\44\64\116\15\0\0\0\1\47\59\28\58\15\34\15\9\35\57\16\54\14\0\116\5\0\0\0\33\47\59\28\0\116\8\0\0\0\47\47\35\23\60\3\56\0\116\18\0\0\0\30\37\33\28\56\19\41\2\3\46\35\28\58\20\37\14\2\0\116\11\0\0\0\37\46\61\12\45\37\34\5\9\36\0\116\5\0\0\0\56\37\53\13\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\6\0\0\0\63\52\44\26\50\0\116\23\0\0\0\45\36\59\24\55\3\41\5\47\6\10\28\55\5\62\0\24\47\63\87\58\19\0\116\7\0\0\0\31\41\55\28\54\6\0\116\8\0\0\0\11\2\36\13\42\83\126\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\7\0\0\0\31\41\55\28\54\6\0\116\7\0\0\0\9\46\46\22\61\5\0\116\5\0\0\0\45\50\42\10\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\6\0\0\0\47\40\56\23\50\0\116\6\0\0\0\28\33\36\11\42\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\7\0\0\0\31\37\33\28\58\20\0\116\6\0\0\0\24\33\47\21\60\0\116\7\0\0\0\13\51\62\28\43\20\0\116\5\0\0\0\11\9\35\13\0\116\7\0\0\0\31\52\63\16\55\7\0\116\6\0\0\0\76\34\52\13\60\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\7\0\0\0\40\37\46\22\61\5\0\116\6\0\0\0\47\40\56\23\50\0\116\7\0\0\0\40\37\46\22\61\5\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\5\0\0\0\34\33\32\28\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\7\0\0\0\11\19\36\3\60\20\0\116\6\0\0\0\28\33\36\11\42\0\116\4\0\0\0\31\57\35\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\7\0\0\0\31\41\55\28\54\6\0\116\7\0\0\0\31\41\55\28\54\6\0\116\6\0\0\0\47\40\56\23\50\0\116\5\0\0\0\0\47\44\29\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\9\0\0\0\164\147\159\176\136\190\149\175\0\116\5\0\0\0\189\157\133\173\0\116\10\0\0\0\132\139\148\160\139\149\158\187\191\0\116\5\0\0\0\149\146\132\168\0\116\6\0\0\0\133\184\152\168\215\0\116\15\0\0\0\189\147\135\160\134\179\158\179\181\159\133\172\138\178\0\116\18\0\0\0\162\153\157\160\132\175\149\190\191\146\159\160\134\168\153\178\190\0\85\33\3\0\0\2\0\23\33\0\0\0\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\116\4\0\0\0\2\37\58\0\7\51\51\51\51\51\51\211\63\116\5\0\0\0\41\46\56\20\0\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\5\0\0\0\63\41\35\28\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\6\0\0\0\37\46\2\12\45\0\116\11\0\0\0\56\37\53\13\26\15\32\14\30\115\0\116\7\0\0\0\47\47\33\22\43\83\0\116\8\0\0\0\10\50\34\20\11\39\14\0\7\0\0\0\0\0\128\95\64\116\5\0\0\0\60\44\44\0\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\6\0\0\0\9\50\63\22\43\0\116\7\0\0\0\11\19\36\3\60\20\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\7\0\0\0\11\45\44\13\58\8\0\116\8\0\0\0\11\2\36\13\42\86\120\0\116\5\0\0\0\34\33\32\28\0\116\5\0\0\0\15\40\44\11\0\116\6\0\0\0\24\33\47\21\60\0\116\7\0\0\0\31\41\55\28\54\6\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\24\57\61\28\54\6\0\116\6\0\0\0\28\33\36\11\42\0\116\5\0\0\0\149\146\132\168\0\116\7\0\0\0\147\147\157\170\151\239\0\42\28\0\0\0\37\1\50\0\112\0\59\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\3\0\255\255\1\0\70\2\8\0\0\0\0\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\0\1\0\3\70\2\8\0\2\0\1\0\0\0\0\0\0\0\90\38\79\0\3\0\1\0\0\1\72\20\8\0\3\0\1\1\0\0\2\1\0\4\12\1\79\0\4\0\3\0\0\1\90\38\79\0\5\0\31\0\0\1\42\25\8\0\5\0\31\1\0\0\5\1\0\4\65\7\8\0\5\0\5\0\0\0\6\1\0\3\90\38\79\0\6\0\31\0\0\1\42\25\8\0\6\0\31\1\0\0\7\1\0\4\65\7\8\0\6\0\6\0\0\0\8\1\0\3\136\34\8\0\3\0\4\0\0\0\2\0\0\0\141\2\8\0\4\0\0\0\0\0\1\0\0\0\90\38\79\0\5\0\32\0\0\1\42\25\8\0\5\0\32\1\0\0\11\1\0\4\22\9\50\0\6\0\125\0\2\0\22\9\50\0\7\0\125\0\2\0\22\9\50\0\8\0\125\0\2\0\136\34\8\0\5\0\4\0\0\0\2\0\0\0\164\0\8\0\4\0\9\1\0\0\5\0\0\2\136\34\8\0\0\0\5\0\0\0\2\0\0\0\16\6\8\0\0\0\0\0\0\0\13\1\0\3\199\15\8\0\0\0\2\0\0\0\4\0\0\0\125\22\8\0\1\0\12\0\0\0\0\0\0\0\81\0\0\0\0\85\23\212\0\0\0\116\5\0\0\0\1\33\57\17\0\116\6\0\0\0\15\44\44\20\41\0\7\0\0\0\0\0\0\73\64\116\5\0\0\0\11\33\32\28\0\116\8\0\0\0\60\44\44\0\60\18\63\0\116\12\0\0\0\32\47\46\24\53\48\32\0\21\37\63\0\116\9\0\0\0\43\37\57\52\54\21\63\4\0\116\11\0\0\0\43\37\57\42\60\18\58\8\15\37\0\116\17\0\0\0\57\51\40\11\16\14\60\20\24\19\40\11\47\9\47\4\0\116\9\0\0\0\37\46\62\13\56\14\47\4\0\116\4\0\0\0\2\37\58\0\116\6\0\0\0\42\50\44\20\60\0\116\10\0\0\0\56\37\53\13\21\1\46\4\0\0\116\9\0\0\0\57\9\14\22\43\14\41\19\0\116\11\0\0\0\56\37\53\13\27\21\56\21\3\46\0\116\5\0\0\0\34\33\32\28\0\116\7\0\0\0\63\44\36\29\60\18\0\116\7\0\0\0\60\33\63\28\55\20\0\116\17\0\0\0\46\33\46\18\62\18\35\20\2\36\14\22\53\15\62\82\0\116\7\0\0\0\47\47\33\22\43\83\0\116\8\0\0\0\10\50\34\20\11\39\14\0\7\0\0\0\0\0\0\62\64\7\0\0\0\0\0\0\61\64\116\16\0\0\0\46\47\63\29\60\18\31\8\22\37\29\16\33\5\32\0\7\0\0\0\0\0\0\0\0\116\9\0\0\0\60\47\62\16\45\9\35\15\0\116\6\0\0\0\57\4\36\20\107\0\7\247\183\152\31\119\138\166\63\7\190\30\106\224\233\163\213\63\116\5\0\0\0\63\41\55\28\0\7\0\0\0\0\0\32\98\64\7\0\0\0\0\0\128\64\64\7\0\0\0\0\0\224\111\64\116\23\0\0\0\46\33\46\18\62\18\35\20\2\36\25\11\56\14\63\17\13\50\40\23\58\25\0\7\0\0\0\0\0\0\240\63\7\170\146\65\224\211\36\165\63\7\145\223\107\160\170\86\187\63\7\0\0\0\0\0\64\89\64\7\0\0\0\0\0\0\38\64\116\5\0\0\0\42\47\35\13\0\116\5\0\0\0\41\46\56\20\0\116\19\0\0\0\63\47\56\11\58\5\31\0\2\51\30\28\52\9\46\14\0\36\0\116\5\0\0\0\56\37\53\13\0\116\11\0\0\0\56\37\53\13\26\15\32\14\30\115\0\116\9\0\0\0\56\37\53\13\10\9\54\4\0\7\0\0\0\0\0\0\48\64\116\15\0\0\0\56\37\53\13\1\33\32\8\11\46\32\28\55\20\0\116\5\0\0\0\32\37\43\13\0\116\13\0\0\0\47\47\63\23\60\18\30\0\8\41\56\10\0\116\5\0\0\0\57\4\36\20\0\7\0\0\0\0\0\0\16\64\116\4\0\0\0\31\34\57\0\7\0\0\0\0\0\0\57\64\116\17\0\0\0\47\44\36\9\42\36\41\18\15\37\35\29\56\14\56\18\0\222\7\0\0\0\0\0\0\28\64\7\0\0\0\0\0\0\55\64\7\0\0\0\0\0\96\96\64\7\0\0\0\0\0\0\20\64\116\16\0\0\0\45\53\57\22\27\21\56\21\3\46\14\22\53\15\62\0\93\116\11\0\0\0\63\47\56\11\58\5\31\0\2\51\0\116\1\0\0\0\0\116\4\0\0\0\14\57\123\0\116\7\0\0\0\63\6\63\24\52\5\0\7\247\251\59\159\101\68\159\191\116\10\0\0\0\10\50\34\20\10\3\45\13\9\0\116\8\0\0\0\72\20\10\30\127\69\102\0\116\8\0\0\0\28\35\35\13\56\7\41\0\7\50\109\240\159\29\25\232\63\7\171\203\71\160\170\211\167\63\7\0\0\0\0\0\0\64\64\7\0\0\0\0\0\128\86\64\7\0\0\0\0\0\0\46\64\116\6\0\0\0\62\41\42\17\45\0\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\7\164\112\61\10\215\163\208\63\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\5\0\0\0\61\53\44\29\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\6\0\0\0\37\46\2\12\45\0\116\9\0\0\0\62\47\57\24\45\9\35\15\0\7\0\0\0\0\0\128\102\64\116\5\0\0\0\60\44\44\0\0\116\10\0\0\0\56\55\40\28\55\51\37\27\9\0\116\11\0\0\0\10\50\34\20\22\6\42\18\9\52\0\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\7\0\0\0\0\0\0\56\64\116\4\0\0\0\35\53\57\0\7\154\153\153\153\153\153\201\63\116\20\0\0\0\45\34\62\22\53\21\56\4\47\47\35\13\60\14\56\50\5\58\40\0\116\2\0\0\0\53\0\7\0\0\0\0\0\0\24\64\116\17\0\0\0\33\47\56\10\60\34\57\21\24\47\35\72\29\15\59\15\0\116\8\0\0\0\47\47\35\23\60\3\56\0\116\15\0\0\0\33\47\56\10\60\34\57\21\24\47\35\72\12\16\0\116\7\0\0\0\35\48\44\11\62\50\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\7\0\0\0\13\51\62\28\43\20\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\7\0\0\0\11\45\44\13\58\8\0\116\6\0\0\0\42\37\41\69\106\0\116\5\0\0\0\11\33\32\28\0\116\5\0\0\0\45\50\42\10\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\35\48\44\11\62\50\0\116\7\0\0\0\11\2\36\13\42\88\0\116\10\0\0\0\15\47\35\10\45\1\34\21\31\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\5\0\0\0\15\40\44\11\0\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\7\0\0\0\30\33\58\10\60\20\0\116\7\0\0\0\25\46\61\24\58\11\0\116\7\0\0\0\11\45\44\13\58\8\0\116\4\0\0\0\31\57\35\0\116\23\0\0\0\1\37\33\24\55\3\36\14\0\57\109\16\42\64\59\4\5\50\41\71\99\72\0\116\8\0\0\0\11\2\36\13\42\86\120\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\6\0\0\0\42\37\41\69\106\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\4\0\0\0\2\37\58\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\116\4\0\0\0\2\37\58\0\116\7\0\0\0\30\33\58\30\60\20\0\116\7\0\0\0\9\46\46\22\61\5\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\23\0\0\0\45\36\59\24\55\3\41\5\47\6\10\28\55\5\62\0\24\47\63\87\58\19\0\116\7\0\0\0\13\51\62\28\43\20\0\116\8\0\0\0\11\2\36\13\42\86\120\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\7\0\0\0\30\33\58\30\60\20\0\116\7\0\0\0\35\48\44\11\62\50\0\116\5\0\0\0\11\33\32\28\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\7\0\0\0\11\2\36\13\42\88\0\116\6\0\0\0\47\40\56\23\50\0\116\13\0\0\0\11\37\57\20\60\20\45\21\13\34\33\28\0\116\6\0\0\0\28\35\44\21\53\0\116\7\0\0\0\30\33\58\10\60\20\0\116\8\0\0\0\36\52\57\9\30\5\56\0\116\5\0\0\0\34\33\32\28\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\8\0\0\0\9\46\46\11\32\16\56\0\116\7\0\0\0\30\33\58\10\60\20\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\7\0\0\0\30\33\58\10\60\20\0\116\8\0\0\0\11\19\57\11\48\14\43\0\116\6\0\0\0\24\33\47\21\60\0\116\7\0\0\0\31\41\55\28\54\6\0\116\22\0\0\0\36\5\31\43\13\52\108\39\57\19\14\56\13\47\30\65\82\96\12\53\21\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\31\41\55\28\54\6\0\116\7\0\0\0\31\41\55\28\54\6\0\116\10\0\0\0\15\47\35\10\45\1\34\21\31\0\116\6\0\0\0\42\37\41\69\106\0\116\7\0\0\0\31\52\63\16\55\7\0\116\6\0\0\0\63\52\44\26\50\0\116\7\0\0\0\35\48\44\11\62\50\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\6\0\0\0\28\33\36\11\42\0\116\6\0\0\0\42\37\41\69\106\0\116\10\0\0\0\51\31\46\22\55\19\56\62\51\0\116\6\0\0\0\24\33\47\21\60\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\9\0\0\0\51\31\36\23\48\20\19\62\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\11\0\0\0\0\47\44\29\42\20\62\8\2\39\0\116\7\0\0\0\31\52\63\16\55\7\0\116\8\0\0\0\30\37\60\12\48\18\41\0\116\6\0\0\0\24\33\47\21\60\0\116\10\0\0\0\27\47\63\18\42\16\45\2\9\0\116\13\0\0\0\31\37\57\20\60\20\45\21\13\34\33\28\0\116\7\0\0\0\31\37\33\28\58\20\0\116\7\0\0\0\13\51\62\28\43\20\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\116\6\0\0\0\9\50\63\22\43\0\116\7\0\0\0\9\46\46\22\61\5\0\116\7\0\0\0\31\37\33\28\58\20\0\116\11\0\0\0\0\47\44\29\42\20\62\8\2\39\0\116\6\0\0\0\28\35\44\21\53\0\116\7\0\0\0\30\33\58\30\60\20\0\116\15\0\0\0\4\37\63\11\45\20\108\8\31\96\62\28\33\25\0\116\7\0\0\0\9\46\46\22\61\5\0\116\6\0\0\0\63\52\44\26\50\0\116\10\0\0\0\15\47\63\22\44\20\37\15\9\0\116\7\0\0\0\40\37\46\22\61\5\0\116\4\0\0\0\0\37\35\0\116\5\0\0\0\189\157\133\173\0\116\5\0\0\0\183\157\156\160\0\116\17\0\0\0\133\143\148\183\172\178\128\168\164\175\148\183\147\181\147\184\0\116\9\0\0\0\153\146\130\177\132\178\147\184\0\116\6\0\0\0\150\142\144\168\128\0\116\11\0\0\0\132\153\137\177\167\169\132\169\191\146\0\116\9\0\0\0\133\181\178\170\151\178\149\175\0\116\7\0\0\0\147\147\157\170\151\239\0\116\6\0\0\0\133\184\152\168\215\0\116\5\0\0\0\149\146\132\168\0\116\5\0\0\0\133\184\152\168\0\116\10\0\0\0\132\153\137\177\169\189\146\184\188\0\116\10\0\0\0\132\139\148\160\139\149\158\187\191\0\42\162\1\0\0\37\1\50\0\205\0\165\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\203\0\255\255\1\0\90\38\79\0\7\0\199\0\0\1\42\25\8\0\7\0\199\1\0\0\1\1\0\4\29\0\8\0\8\0\4\0\0\0\0\0\0\0\29\0\8\0\9\0\3\0\0\0\0\0\0\0\29\0\8\0\10\0\2\0\0\0\0\0\0\0\136\34\8\0\7\0\4\0\0\0\2\0\0\0\42\28\8\0\7\0\0\0\0\1\66\0\215\19\50\0\0\0\5\0\2\0\90\38\79\0\7\0\199\0\0\1\42\25\8\0\7\0\199\1\0\0\1\1\0\4\22\9\50\0\8\0\49\0\2\0\29\0\8\0\9\0\3\0\0\0\0\0\0\0\29\0\8\0\10\0\2\0\0\0\0\0\0\0\136\34\8\0\7\0\4\0\0\0\2\0\0\0\131\3\8\0\8\0\7\0\0\0\3\0\0\0\131\3\8\0\9\0\2\0\0\0\3\0\0\0\217\2\8\0\8\0\8\0\0\0\9\0\0\0\42\28\8\0\5\0\0\0\0\1\66\0\215\19\50\0\0\0\0\0\2\0\227\21\8\0\5\0\1\0\0\0\8\0\0\0\42\28\8\0\6\0\0\0\0\1\66\0\215\19\50\0\0\0\0\0\2\0\231\29\79\0\6\0\0\0\0\0\90\38\79\0\9\0\200\0\0\1\42\25\8\0\9\0\200\1\0\0\4\1\0\4\65\7\8\0\9\0\9\0\0\0\5\1\0\3\16\6\8\0\9\0\9\0\0\0\6\1\0\3\136\34\8\0\9\0\2\0\0\0\2\0\0\0\187\1\79\0\10\0\200\0\0\1\16\6\8\0\10\0\10\0\0\0\7\1\0\3\62\13\79\0\12\0\201\0\0\1\136\34\8\0\10\0\3\0\0\0\2\0\0\0\41\34\8\0\11\0\11\0\0\0\0\0\0\0\90\38\79\0\12\0\202\0\0\1\42\25\8\0\12\0\202\1\0\0\10\1\0\4\62\13\79\0\13\0\203\0\0\1\136\34\8\0\12\0\2\0\0\0\2\0\0\0\90\38\79\0\13\0\202\0\0\1\42\25\8\0\13\0\202\1\0\0\10\1\0\4\12\1\79\0\14\0\12\0\0\1\136\34\8\0\13\0\2\0\0\0\2\0\0\0\90\38\79\0\14\0\202\0\0\1\42\25\8\0\14\0\202\1\0\0\10\1\0\4\12\1\79\0\15\0\13\0\0\1\136\34\8\0\14\0\2\0\0\0\2\0\0\0\90\38\79\0\15\0\202\0\0\1\42\25\8\0\15\0\202\1\0\0\10\1\0\4\62\13\79\0\16\0\204\0\0\1\136\34\8\0\15\0\2\0\0\0\2\0\0\0\90\38\79\0\16\0\202\0\0\1\42\25\8\0\16\0\202\1\0\0\10\1\0\4\62\13\79\0\17\0\205\0\0\1\136\34\8\0\16\0\2\0\0\0\2\0\0\0\90\38\79\0\17\0\202\0\0\1\42\25\8\0\17\0\202\1\0\0\10\1\0\4\62\13\79\0\18\0\203\0\0\1\136\34\8\0\17\0\2\0\0\0\2\0\0\0\90\38\79\0\18\0\202\0\0\1\42\25\8\0\18\0\202\1\0\0\10\1\0\4\62\13\79\0\19\0\205\0\0\1\136\34\8\0\18\0\2\0\0\0\2\0\0\0\164\0\8\0\12\0\15\1\0\0\16\1\0\4\70\2\8\0\19\0\0\0\0\0\0\0\0\0\164\0\8\0\12\0\17\1\0\0\19\0\0\2\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\29\0\2\0\22\9\50\0\21\0\29\0\2\0\22\9\50\0\22\0\28\0\2\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\12\0\18\1\0\0\19\0\0\2\164\0\8\0\12\0\23\1\0\0\24\1\0\4\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\12\1\79\0\20\0\27\0\0\1\22\9\50\0\21\0\255\255\1\0\12\1\79\0\22\0\28\0\0\1\22\9\50\0\23\0\255\255\1\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\12\0\25\1\0\0\19\0\0\2\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\144\0\2\0\22\9\50\0\22\0\255\255\1\0\22\9\50\0\23\0\32\0\2\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\12\0\29\1\0\0\19\0\0\2\164\0\8\0\13\0\17\1\0\0\12\0\0\2\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\254\0\2\0\22\9\50\0\21\0\254\0\2\0\22\9\50\0\22\0\254\0\2\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\13\0\18\1\0\0\19\0\0\2\164\0\8\0\13\0\33\1\0\0\34\1\0\4\164\0\8\0\13\0\23\1\0\0\24\1\0\4\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\12\1\79\0\20\0\35\0\0\1\22\9\50\0\21\0\255\255\1\0\12\1\79\0\22\0\36\0\0\1\22\9\50\0\23\0\255\255\1\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\13\0\25\1\0\0\19\0\0\2\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\100\0\2\0\22\9\50\0\22\0\255\255\1\0\22\9\50\0\23\0\10\0\2\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\13\0\29\1\0\0\19\0\0\2\90\38\79\0\19\0\208\0\0\1\42\25\8\0\19\0\208\1\0\0\39\1\0\4\65\7\8\0\19\0\19\0\0\0\41\1\0\3\164\0\8\0\13\0\39\1\0\0\19\0\0\2\164\0\8\0\13\0\42\1\0\0\1\0\0\2\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\254\0\2\0\22\9\50\0\21\0\254\0\2\0\22\9\50\0\22\0\254\0\2\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\13\0\43\1\0\0\19\0\0\2\164\0\8\0\13\0\44\1\0\0\45\1\0\4\90\38\79\0\19\0\40\0\0\1\72\20\8\0\19\0\40\1\0\0\46\1\0\4\65\7\8\0\19\0\19\0\0\0\47\1\0\3\164\0\8\0\13\0\46\1\0\0\19\0\0\2\90\38\79\0\19\0\209\0\0\1\42\25\8\0\19\0\209\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\3\0\2\0\136\34\8\0\19\0\3\0\0\0\2\0\0\0\164\0\8\0\14\0\48\1\0\0\19\0\0\2\164\0\8\0\14\0\17\1\0\0\12\0\0\2\164\0\8\0\15\0\15\1\0\0\51\1\0\4\164\0\8\0\15\0\17\1\0\0\12\0\0\2\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\24\0\2\0\22\9\50\0\21\0\24\0\2\0\22\9\50\0\22\0\24\0\2\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\15\0\18\1\0\0\19\0\0\2\164\0\8\0\15\0\53\1\0\0\54\1\0\4\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\6\0\2\0\22\9\50\0\22\0\255\255\1\0\22\9\50\0\23\0\22\0\2\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\15\0\25\1\0\0\19\0\0\2\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\130\0\2\0\22\9\50\0\22\0\255\255\1\0\22\9\50\0\23\0\4\0\2\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\15\0\29\1\0\0\19\0\0\2\164\0\8\0\15\0\59\1\0\0\60\1\0\4\90\38\79\0\19\0\208\0\0\1\42\25\8\0\19\0\208\1\0\0\39\1\0\4\65\7\8\0\19\0\19\0\0\0\61\1\0\3\164\0\8\0\15\0\39\1\0\0\19\0\0\2\164\0\8\0\15\0\42\1\0\0\62\1\0\4\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\255\255\1\0\22\9\50\0\22\0\255\255\1\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\15\0\43\1\0\0\19\0\0\2\164\0\8\0\15\0\44\1\0\0\34\1\0\4\90\38\79\0\19\0\209\0\0\1\42\25\8\0\19\0\209\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\3\0\2\0\136\34\8\0\19\0\3\0\0\0\2\0\0\0\164\0\8\0\16\0\48\1\0\0\19\0\0\2\164\0\8\0\16\0\15\1\0\0\63\1\0\4\164\0\8\0\16\0\17\1\0\0\15\0\0\2\164\0\8\0\17\0\15\1\0\0\64\1\0\4\164\0\8\0\17\0\17\1\0\0\15\0\0\2\90\38\79\0\19\0\206\0\0\1\42\25\8\0\19\0\206\1\0\0\20\1\0\4\22\9\50\0\20\0\254\0\2\0\22\9\50\0\21\0\254\0\2\0\22\9\50\0\22\0\254\0\2\0\136\34\8\0\19\0\4\0\0\0\2\0\0\0\164\0\8\0\17\0\18\1\0\0\19\0\0\2\90\38\79\0\19\0\207\0\0\1\42\25\8\0\19\0\207\1\0\0\10\1\0\4\12\1\79\0\20\0\65\0\0\1\22\9\50\0\21\0\255\255\1\0\22\9\50\0\22\0\255\255\1\0\22\9\50\0\23\0\255\255\1\0\136\34\8\0\19\0\5\0\0\0\2\0\0\0\164\0\8\0\17\0\25\1\0\0\19\0\0\2\90\38\79\0\19\0\26\0\0\1\72\20\8\0\19\0\26\1\0\0\66\1\0\4\29\0\8\0\20\0\8\0\0\0\0\0\0\0\22\9\50\0\21\0\0\0\2\0\136\34\8\0\19\0\3\0\0\0\2\0\0\0\164\0\8\0\17\0\29\1\0\0\19\0\0\2\90\38\79\0\19\0\209\0\0\1\42\25\8\0\19\0\209\1\0\0\10\1\0\4\22\9\50\0\20\0\255\255\1\0\22\9\50\0\21\0\3\0\2\0\136\34\8\0\19\0\3\0\0\0\2\0\0\0\164\0\8\0\18\0\48\1\0\0\19\0\0\2\164\0\8\0\18\0\15\1\0\0\67\1\0\4\164\0\8\0\18\0\17\1\0\0\17\0\0\2\90\38\79\0\19\0\9\0\0\1\72\20\8\0\19\0\9\1\0\0\10\1\0\4\62\13\79\0\20\0\210\0\0\1\136\34\8\0\19\0\2\0\0\0\2\0\0\0\164\0\8\0\19\0\15\1\0\0\68\1\0\4\164\0\8\0\19\0\17\1\0\0\12\0\0\2\90\38\79\0\20\0\206\0\0\1\42\25\8\0\20\0\206\1\0\0\20\1\0\4\22\9\50\0\21\0\254\0\2\0\22\9\50\0\22\0\254\0\2\0\22\9\50\0\23\0\254\0\2\0\136\34\8\0\20\0\4\0\0\0\2\0\0\0\164\0\8\0\19\0\18\1\0\0\20\0\0\2\164\0\8\0\19\0\33\1\0\0\34\1\0\4\164\0\8\0\19\0\23\1\0\0\24\1\0\4\90\38\79\0\20\0\26\0\0\1\72\20\8\0\20\0\26\1\0\0\10\1\0\4\12\1\79\0\21\0\69\0\0\1\22\9\50\0\22\0\255\255\1\0\12\1\79\0\23\0\70\0\0\1\22\9\50\0\24\0\255\255\1\0\136\34\8\0\20\0\5\0\0\0\2\0\0\0\164\0\8\0\19\0\25\1\0\0\20\0\0\2\90\38\79\0\20\0\207\0\0\1\42\25\8\0\20\0\207\1\0\0\10\1\0\4\22\9\50\0\21\0\255\255\1\0\22\9\50\0\22\0\31\0\2\0\22\9\50\0\23\0\255\255\1\0\22\9\50\0\24\0\10\0\2\0\136\34\8\0\20\0\5\0\0\0\2\0\0\0\164\0\8\0\19\0\29\1\0\0\20\0\0\2\90\38\79\0\20\0\208\0\0\1\42\25\8\0\20\0\208\1\0\0\39\1\0\4\65\7\8\0\20\0\20\0\0\0\41\1\0\3\164\0\8\0\19\0\39\1\0\0\20\0\0\2\164\0\8\0\19\0\42\1\0\0\4\0\0\2\90\38\79\0\20\0\206\0\0\1\42\25\8\0\20\0\206\1\0\0\20\1\0\4\22\9\50\0\21\0\89\0\2\0\22\9\50\0\22\0\89\0\2\0\22\9\50\0\23\0\89\0\2\0\136\34\8\0\20\0\4\0\0\0\2\0\0\0\164\0\8\0\19\0\43\1\0\0\20\0\0\2\164\0\8\0\19\0\44\1\0\0\73\1\0\4\90\38\79\0\20\0\208\0\0\1\42\25\8\0\20\0\208\1\0\0\46\1\0\4\65\7\8\0\20\0\20\0\0\0\74\1\0\3\164\0\8\0\19\0\46\1\0\0\20\0\0\2\189\2\79\0\20\0\1\0\0\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\29\0\8\0\0\0\6\0\0\0\0\0\0\0\29\0\8\0\0\0\11\0\0\0\0\0\0\0\70\2\8\0\21\0\2\0\0\0\0\0\0\0\42\28\8\0\21\0\0\0\0\1\66\0\215\19\50\0\0\0\36\0\2\0\70\2\8\0\21\0\3\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\75\1\0\3\70\2\8\0\23\0\4\0\0\0\0\0\0\0\90\38\79\0\24\0\76\0\0\1\72\20\8\0\24\0\76\1\0\0\10\1\0\4\12\1\79\0\25\0\77\0\0\1\90\38\79\0\26\0\40\0\0\1\72\20\8\0\26\0\40\1\0\0\78\1\0\4\65\7\8\0\26\0\26\0\0\0\79\1\0\3\90\38\79\0\27\0\208\0\0\1\42\25\8\0\27\0\208\1\0\0\80\1\0\4\65\7\8\0\27\0\27\0\0\0\81\1\0\3\136\34\8\0\24\0\4\0\0\0\2\0\0\0\141\2\8\0\25\0\0\0\0\0\1\0\0\0\164\0\8\0\25\0\82\1\0\0\83\1\0\4\136\34\8\0\21\0\5\0\0\0\2\0\0\0\16\6\8\0\21\0\21\0\0\0\84\1\0\3\199\15\8\0\21\0\2\0\0\0\9\0\0\0\70\2\8\0\21\0\0\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\85\1\0\3\90\38\79\0\23\0\207\0\0\1\42\25\8\0\23\0\207\1\0\0\86\1\0\4\90\38\8\0\24\0\0\0\0\0\0\0\0\0\210\3\8\0\24\0\0\0\0\0\87\1\0\3\65\7\8\0\24\0\24\0\0\0\88\1\0\3\22\9\50\0\25\0\23\0\2\0\136\34\8\0\23\0\3\0\0\0\2\0\0\0\90\38\79\0\24\0\208\0\0\1\42\25\8\0\24\0\208\1\0\0\80\1\0\4\65\7\8\0\24\0\24\0\0\0\90\1\0\3\90\38\79\0\25\0\208\0\0\1\42\25\8\0\25\0\208\1\0\0\78\1\0\4\65\7\8\0\25\0\25\0\0\0\79\1\0\3\12\1\79\0\26\0\91\0\0\1\227\21\8\0\27\0\19\0\0\0\13\0\0\0\199\15\8\0\21\0\7\0\0\0\18\0\0\0\215\19\50\0\0\0\20\0\2\0\70\2\8\0\21\0\0\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\85\1\0\3\90\38\79\0\23\0\207\0\0\1\42\25\8\0\23\0\207\1\0\0\86\1\0\4\90\38\8\0\24\0\0\0\0\0\0\0\0\0\210\3\8\0\24\0\0\0\0\0\87\1\0\3\65\7\8\0\24\0\24\0\0\0\88\1\0\3\90\38\8\0\25\0\5\0\0\0\0\0\0\0\210\3\8\0\25\0\5\0\0\0\92\1\0\3\65\7\8\0\25\0\25\0\0\0\93\1\0\3\254\1\8\0\25\0\25\0\0\0\94\1\0\3\136\34\8\0\23\0\3\0\0\0\2\0\0\0\90\38\79\0\24\0\40\0\0\1\72\20\8\0\24\0\40\1\0\0\80\1\0\4\65\7\8\0\24\0\24\0\0\0\90\1\0\3\90\38\79\0\25\0\208\0\0\1\42\25\8\0\25\0\208\1\0\0\78\1\0\4\65\7\8\0\25\0\25\0\0\0\79\1\0\3\12\1\79\0\26\0\91\0\0\1\227\21\8\0\27\0\4\0\0\0\5\0\0\0\199\15\8\0\21\0\7\0\0\0\11\0\0\0\65\7\8\0\21\0\15\0\0\0\95\1\0\3\16\6\8\0\21\0\21\0\0\0\96\1\0\3\189\2\79\0\23\0\2\0\0\0\29\0\8\0\0\0\19\0\0\0\0\0\0\0\29\0\8\0\0\0\11\0\0\0\0\0\0\0\29\0\8\0\0\0\2\0\0\0\0\0\0\0\29\0\8\0\0\0\3\0\0\0\0\0\0\0\29\0\8\0\0\0\17\0\0\0\0\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\29\0\8\0\0\0\5\0\0\0\0\0\0\0\29\0\8\0\0\0\20\0\0\0\0\0\0\0\29\0\8\0\0\0\9\0\0\0\0\0\0\0\29\0\8\0\0\0\6\0\0\0\0\0\0\0\29\0\8\0\0\0\10\0\0\0\0\0\0\0\199\15\8\0\21\0\3\0\0\0\4\0\0\0\65\7\8\0\21\0\15\0\0\0\97\1\0\3\16\6\8\0\21\0\21\0\0\0\96\1\0\3\189\2\79\0\23\0\3\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\29\0\8\0\0\0\19\0\0\0\0\0\0\0\199\15\8\0\21\0\3\0\0\0\22\0\0\0\70\2\8\0\21\0\2\0\0\0\0\0\0\0\42\28\8\0\21\0\0\0\0\1\66\0\215\19\50\0\0\0\36\0\2\0\70\2\8\0\21\0\3\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\75\1\0\3\70\2\8\0\23\0\4\0\0\0\0\0\0\0\90\38\79\0\24\0\211\0\0\1\42\25\8\0\24\0\211\1\0\0\10\1\0\4\12\1\79\0\25\0\77\0\0\1\90\38\79\0\26\0\208\0\0\1\42\25\8\0\26\0\208\1\0\0\78\1\0\4\65\7\8\0\26\0\26\0\0\0\79\1\0\3\90\38\79\0\27\0\208\0\0\1\42\25\8\0\27\0\208\1\0\0\80\1\0\4\65\7\8\0\27\0\27\0\0\0\81\1\0\3\136\34\8\0\24\0\4\0\0\0\2\0\0\0\141\2\8\0\25\0\0\0\0\0\1\0\0\0\164\0\8\0\25\0\82\1\0\0\83\1\0\4\136\34\8\0\21\0\5\0\0\0\2\0\0\0\16\6\8\0\21\0\21\0\0\0\84\1\0\3\199\15\8\0\21\0\2\0\0\0\11\0\0\0\70\2\8\0\21\0\0\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\85\1\0\3\90\38\79\0\23\0\207\0\0\1\42\25\8\0\23\0\207\1\0\0\86\1\0\4\90\38\8\0\24\0\0\0\0\0\0\0\0\0\210\3\8\0\24\0\0\0\0\0\87\1\0\3\65\7\8\0\24\0\24\0\0\0\88\1\0\3\22\9\50\0\25\0\23\0\2\0\136\34\8\0\23\0\3\0\0\0\2\0\0\0\90\38\79\0\24\0\208\0\0\1\42\25\8\0\24\0\208\1\0\0\80\1\0\4\65\7\8\0\24\0\24\0\0\0\90\1\0\3\90\38\79\0\25\0\208\0\0\1\42\25\8\0\25\0\208\1\0\0\78\1\0\4\65\7\8\0\25\0\25\0\0\0\79\1\0\3\12\1\79\0\26\0\91\0\0\1\227\21\8\0\27\0\3\0\0\0\17\0\0\0\199\15\8\0\21\0\7\0\0\0\7\0\0\0\215\19\50\0\0\0\20\0\2\0\70\2\8\0\21\0\0\0\0\0\0\0\0\0\16\6\8\0\21\0\21\0\0\0\85\1\0\3\90\38\79\0\23\0\207\0\0\1\42\25\8\0\23\0\207\1\0\0\86\1\0\4\90\38\8\0\24\0\0\0\0\0\0\0\0\0\210\3\8\0\24\0\0\0\0\0\87\1\0\3\65\7\8\0\24\0\24\0\0\0\88\1\0\3\90\38\8\0\25\0\5\0\0\0\0\0\0\0\210\3\8\0\25\0\5\0\0\0\92\1\0\3\65\7\8\0\25\0\25\0\0\0\93\1\0\3\254\1\8\0\25\0\25\0\0\0\94\1\0\3\136\34\8\0\23\0\3\0\0\0\2\0\0\0\90\38\79\0\24\0\208\0\0\1\42\25\8\0\24\0\208\1\0\0\80\1\0\4\65\7\8\0\24\0\24\0\0\0\90\1\0\3\90\38\79\0\25\0\208\0\0\1\42\25\8\0\25\0\208\1\0\0\78\1\0\4\65\7\8\0\25\0\25\0\0\0\79\1\0\3\12\1\79\0\26\0\91\0\0\1\227\21\8\0\27\0\1\0\0\0\11\0\0\0\199\15\8\0\21\0\7\0\0\0\12\0\0\0\70\2\8\0\21\0\6\0\0\0\0\0\0\0\47\28\8\0\21\0\2\0\0\0\17\0\0\0\125\22\8\0\16\0\24\0\0\0\0\0\0\0\85\109\7\0\0\5\0\42\92\0\0\0\37\1\50\0\85\0\76\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\194\0\255\255\1\0\90\38\8\0\0\0\0\0\0\0\0\0\0\0\210\3\8\0\0\0\0\0\0\0\0\1\0\3\157\3\8\1\66\0\0\0\0\0\1\1\0\3\215\19\50\0\0\0\38\0\2\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\2\1\0\3\90\38\79\0\2\0\51\0\0\1\42\25\8\0\2\0\51\1\0\0\4\1\0\4\90\38\8\0\3\0\1\0\0\0\0\0\0\0\210\3\8\0\3\0\1\0\0\0\5\1\0\3\65\7\8\0\3\0\3\0\0\0\6\1\0\3\22\9\50\0\4\0\23\0\2\0\136\34\8\0\2\0\3\0\0\0\2\0\0\0\90\38\79\0\3\0\8\0\0\1\72\20\8\0\3\0\8\1\0\0\9\1\0\4\65\7\8\0\3\0\3\0\0\0\10\1\0\3\90\38\79\0\4\0\8\0\0\1\72\20\8\0\4\0\8\1\0\0\11\1\0\4\65\7\8\0\4\0\4\0\0\0\12\1\0\3\12\1\79\0\5\0\13\0\0\1\227\21\8\0\6\0\6\0\0\0\17\0\0\0\199\15\8\0\0\0\7\0\0\0\5\0\0\0\70\2\8\0\0\0\2\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\14\1\0\3\70\2\8\0\2\0\0\0\0\0\0\0\0\0\90\38\79\0\3\0\52\0\0\1\42\25\8\0\3\0\52\1\0\0\16\1\0\4\12\1\79\0\4\0\17\0\0\1\90\38\79\0\5\0\8\0\0\1\72\20\8\0\5\0\8\1\0\0\11\1\0\4\65\7\8\0\5\0\5\0\0\0\12\1\0\3\90\38\79\0\6\0\53\0\0\1\42\25\8\0\6\0\53\1\0\0\9\1\0\4\65\7\8\0\6\0\6\0\0\0\18\1\0\3\136\34\8\0\3\0\4\0\0\0\2\0\0\0\141\2\8\0\4\0\0\0\0\0\1\0\0\0\164\0\8\0\4\0\0\1\0\0\19\1\0\4\136\34\8\0\0\0\5\0\0\0\2\0\0\0\16\6\8\0\0\0\0\0\0\0\20\1\0\3\199\15\8\0\0\0\2\0\0\0\21\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\47\28\8\0\0\0\19\0\0\0\3\0\0\0\215\19\50\0\0\0\44\0\2\0\90\38\8\0\0\0\0\0\0\0\0\0\0\0\210\3\8\0\0\0\0\0\0\0\0\1\0\3\231\24\8\1\66\0\19\1\0\0\0\0\0\2\215\19\50\0\0\0\40\0\2\0\70\2\8\0\0\0\1\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\2\1\0\3\90\38\79\0\2\0\51\0\0\1\42\25\8\0\2\0\51\1\0\0\4\1\0\4\90\38\8\0\3\0\1\0\0\0\0\0\0\0\210\3\8\0\3\0\1\0\0\0\5\1\0\3\65\7\8\0\3\0\3\0\0\0\6\1\0\3\90\38\8\0\4\0\4\0\0\0\0\0\0\0\210\3\8\0\4\0\4\0\0\0\21\1\0\3\65\7\8\0\4\0\4\0\0\0\22\1\0\3\254\1\8\0\4\0\4\0\0\0\23\1\0\3\136\34\8\0\2\0\3\0\0\0\2\0\0\0\90\38\79\0\3\0\53\0\0\1\42\25\8\0\3\0\53\1\0\0\9\1\0\4\65\7\8\0\3\0\3\0\0\0\10\1\0\3\90\38\79\0\4\0\53\0\0\1\42\25\8\0\4\0\53\1\0\0\11\1\0\4\65\7\8\0\4\0\4\0\0\0\12\1\0\3\12\1\79\0\5\0\13\0\0\1\227\21\8\0\6\0\13\0\0\0\17\0\0\0\199\15\8\0\0\0\7\0\0\0\2\0\0\0\70\2\8\0\0\0\2\0\0\0\0\0\0\0\16\6\8\0\0\0\0\0\0\0\14\1\0\3\70\2\8\0\2\0\0\0\0\0\0\0\0\0\90\38\79\0\3\0\52\0\0\1\42\25\8\0\3\0\52\1\0\0\16\1\0\4\12\1\79\0\4\0\17\0\0\1\90\38\79\0\5\0\53\0\0\1\42\25\8\0\5\0\53\1\0\0\11\1\0\4\65\7\8\0\5\0\5\0\0\0\12\1\0\3\90\38\79\0\6\0\53\0\0\1\42\25\8\0\6\0\53\1\0\0\9\1\0\4\65\7\8\0\6\0\6\0\0\0\18\1\0\3\136\34\8\0\3\0\4\0\0\0\2\0\0\0\141\2\8\0\4\0\0\0\0\0\1\0\0\0\164\0\8\0\4\0\0\1\0\0\1\1\0\4\136\34\8\0\0\0\5\0\0\0\2\0\0\0\16\6\8\0\0\0\0\0\0\0\20\1\0\3\199\15\8\0\0\0\2\0\0\0\17\0\0\0\70\2\8\0\0\0\3\0\0\0\0\0\0\0\47\28\8\0\0\0\15\0\0\0\18\0\0\0\125\22\8\0\5\0\7\0\0\0\0\0\0\0\23\54\0\0\0\116\9\0\0\0\62\47\57\24\45\9\35\15\0\7\0\0\0\0\0\0\0\0\116\10\0\0\0\56\55\40\28\55\51\37\27\9\0\116\6\0\0\0\57\4\36\20\107\0\116\11\0\0\0\10\50\34\20\22\6\42\18\9\52\0\116\13\0\0\0\45\34\62\22\53\21\56\4\63\41\55\28\0\116\2\0\0\0\52\0\7\0\0\0\0\0\0\56\64\116\5\0\0\0\41\46\56\20\0\116\16\0\0\0\41\33\62\16\55\7\8\8\30\37\46\13\48\15\34\0\116\4\0\0\0\35\53\57\0\116\12\0\0\0\41\33\62\16\55\7\31\21\21\44\40\0\116\5\0\0\0\61\53\44\29\0\7\154\153\153\153\153\153\201\63\116\7\0\0\0\47\50\40\24\45\5\0\116\10\0\0\0\56\55\40\28\55\41\34\7\3\0\116\4\0\0\0\2\37\58\0\7\164\112\61\10\215\163\208\63\116\6\0\0\0\37\46\2\12\45\0\7\0\0\0\0\0\128\102\64\116\5\0\0\0\60\44\44\0\0\116\20\0\0\0\45\34\62\22\53\21\56\4\47\47\35\13\60\14\56\50\5\58\40\0\116\2\0\0\0\53\0\7\0\0\0\0\0\0\24\64\116\10\0\0\0\51\31\36\23\42\20\62\62\51\0\116\5\0\0\0\11\33\32\28\0\116\5\0\0\0\15\40\44\11\0\116\7\0\0\0\30\33\58\30\60\20\0\116\5\0\0\0\11\51\56\27\0\116\7\0\0\0\35\48\44\11\62\50\0\116\7\0\0\0\24\57\61\28\54\6\0\116\13\0\0\0\27\33\33\21\32\64\37\18\76\39\44\0\0\116\6\0\0\0\76\34\52\13\60\0\116\20\0\0\0\63\57\35\24\41\19\41\65\52\5\35\89\14\41\34\47\5\46\42\0\116\16\0\0\0\11\37\57\11\56\23\33\4\24\33\57\24\59\12\41\0\116\4\0\0\0\2\37\58\0\116\7\0\0\0\13\51\62\28\43\20\0\116\5\0\0\0\11\51\56\27\0\116\9\0\0\0\24\47\62\13\43\9\34\6\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\7\0\0\0\31\52\63\16\55\7\0\116\6\0\0\0\24\33\47\21\60\0\116\23\0\0\0\45\36\59\24\55\3\41\5\47\6\10\28\55\5\62\0\24\47\63\87\58\19\0\116\6\0\0\0\28\35\44\21\53\0\116\4\0\0\0\0\37\35\0\116\7\0\0\0\9\46\46\22\61\5\0\116\7\0\0\0\11\2\36\13\42\88\0\116\7\0\0\0\13\51\62\28\43\20\0\116\7\0\0\0\13\51\62\28\43\20\0\116\9\0\0\0\24\47\35\12\52\2\41\19\0\116\8\0\0\0\8\37\46\11\32\16\56\0\116\6\0\0\0\133\184\152\168\215\0\116\10\0\0\0\132\139\148\160\139\149\158\187\191\0\116\5\0\0\0\149\146\132\168\0\81\0\0\0\0\85\42\119\1\0\0\37\1\50\0\180\0\196\0\2\0\92\30\50\0\0\0\0\0\2\0\198\35\50\0\243\0\255\255\1\0\90\38\79\0\5\0\195\0\0\1\42\25\8\0\5\0\195\1\0\0\1\1\0\4\12\1\79\0\6\0\2\0\0\1\90\38\79\0\7\0\196\0\0\1\42\25\8\0\7\0\196\1\0\0\4\1\0\4\65\7\8\0\7\0\7\0\0\0\5\1\0\3\90\38\79\0\8\0\196\0\0\1\42\25\8\0\8\0\196\1\0\0\6\1\0\4\65\7\8\0\8\0\8\0\0\0\7\1\0\3\136\34\8\0\5\0\4\0\0\0\2\0\0\0\42\28\8\0\4\0\0\0\0\1\56\0\215\19\50\0\0\0\6\0\2\0\187\1\79\0\6\0\197\0\0\1\42\28\8\0\6\0\0\0\0\1\66\0\215\19\50\0\0\0\3\0\2\0\141\2\8\0\6\0\0\0\0\0\0\0\0\0\231\29\79\0\7\0\0\0\0\0\164\0\8\0\6\0\9\1\0\0\7\0\0\2\40\34\8\0\6\0\8\0\0\0\0\0\0\0\141\2\8\0\6\0\0\0\0\0\0\0\0\0\90\38\79\0\7\0\198\0\0\1\42\25\8\0\7\0\198\1\0\0\1\1\0\4\12\1\79\0\8\0\11\0\0\1\136\34\8\0\7\0\2\0\0\0\2\0\0\0\90\38\79\0\8\0\198\0\0\1\42\25\8\0\8\0\198\1\0\0\1\1\0\4\62\13\79\0\9\0\199\0\0\1\136\34\8\0\8\0\2\0\0\0\2\0\0\0\90\38\79\0\9\0\198\0\0\1\42\25\8\0\9\0\198\1\0\0\1\1\0\4\62\13\79\0\10\0\200\0\0\1\136\34\8\0\9\0\2\0\0\0\2\0\0\0\90\38\79\0\10\0\198\0\0\1\42\25\8\0\10\0\198\1\0\0\1\1\0\4\62\13\79\0\11\0\201\0\0\1\136\34\8\0\10\0\2\0\0\0\2\0\0\0\90\38\79\0\11\0\198\0\0\1\42\25\8\0\11\0\198\1\0\0\1\1\0\4\12\1\79\0\12\0\14\0\0\1\136\34\8\0\11\0\2\0\0\0\2\0\0\0\90\38\79\0\12\0\198\0\0\1\42\25\8\0\12\0\198\1\0\0\1\1\0\4\62\13\79\0\13\0\201\0\0\1\136\34\8\0\12\0\2\0\0\0\2\0\0\0\90\38\79\0\13\0\10\0\0\1\72\20\8\0\13\0\10\1\0\0\1\1\0\4\62\13\79\0\14\0\202\0\0\1\136\34\8\0\13\0\2\0\0\0\2\0\0\0\90\38\79\0\14\0\198\0\0\1\42\25\8\0\14\0\198\1\0\0\1\1\0\4\62\13\79\0\15\0\202\0\0\1\136\34\8\0\14\0\2\0\0\0\2\0\0\0\164\0\8\0\7\0\16\1\0\0\17\1\0\4\196\20\8\1\56\0\2\0\0\0\18\1\0\3\215\19\50\0\0\0\1\0\2\0\196\20\8\1\66\0\2\0\0\0\19\1\0\3\215\19\50\0\0\0\2\0\2\0\70\2\8\0\15\0\0\0\0\0\0\0\0\0\164\0\8\0\7\0\20\1\0\0\15\0\0\2\215\19\50\0\0\0\11\0\2\0\196\20\8\1\56\0\2\0\0\0\21\1\0\3\215\19\50\0\0\0\1\0\2\0\196\20\8\1\66\0\2\0\0\0\22\1\0\3\215\19\50\0\0\0\2\0\2\0\70\2\8\0\15\0\1\0\0\0\0\0\0\0\164\0\8\0\7\0\20\1\0\0\15\0\0\2\215\19\50\0\0\0\4\0\2\0\187\1\79\0\15\0\203\0\0\1\187\1\79\0\16\0\204\0\0\1\12\1\79\0\17\0\25\0\0\1\136\34\8\0\16\0\2\0\0\0\0\0\0\0\199\15\8\0\15\0\0\0\0\0\19\0\0\0\90\38\79\0\15\0\27\0\0\1\72\20\8\0\15\0\27\1\0\0\28\1\0\4\22\9\50\0\16\0\19\0\2\0\22\9\50\0\17\0\19\0\2\0\22\9\50\0\18\0\19\0\2\0\136\34\8\0\15\0\4\0\0\0\2\0\0\0\164\0\8\0\7\0\26\1\0\0\15\0\0\2\164\0\8\0\7\0\30\1\0\0\31\1\0\4\164\0\8\0\7\0\32\1\0\0\33\1\0\4\90\38\79\0\15\0\205\0\0\1\42\25\8\0\15\0\205\1\0\0\1\1\0\4\12\1\79\0\16\0\36\0\0\1\22\9\50\0\17\0\255\255\1\0\22\9\50\0\18\0\255\255\1\0\22\9\50\0\19\0\255\255\1\0\136\34\8\0\15\0\5\0\0\0\2\0\0\0\164\0\8\0\7\0\34\1\0\0\15\0\0\2\90\38\79\0\15\0\205\0\0\1\42\25\8\0\15\0\205\1\0\0\1\1\0\4\22\9\50\0\16\0\255\255\1\0\22\9\50\0\17\0\158\0\2\0\22\9\50\0\18\0\255\255\1\0\22\9\50\0\19\0\23\0\2\0\136\34\8\0\15\0\5\0\0\0\2\0\0\0\164\0\8\0\7\0\37\1\0\0\15\0\0\2\90\38\79\0\15\0\41\0\0\1\72\20\8\0\15\0\41\1\0\0\1\1\0\4\22\9\50\0\16\0\255\255\1\0\22\9\50\0\17\0\3\0\2\0\136\34\8\0\15\0\3\0\0\0\2\0\0\0\164\0\8\0\8\0\40\1\0\0\15\0\0\2\164\0\8\0\8\0\20\1\0\0\7\0\0\2\164\0\8\0\9\0\20\1\0\0\7\0\0\2\90\38\79\0\15\0\196\0\0\1\42\25\8\0\15\0\196\1\0\0\43\1\0\4\65\7\8\0\15\0\15\0\0\0\44\1\0\3\164\0\8\0\9\0\43\1\0\0\15\0\0\2\90\38\79\0\15\0\3\0\0\1\72\20\8\0\15\0\3\1\0\0\45\1\0\4\65\7\8\0\15\0\15\0\0\0\46\1\0\3\164\0\8\0\9\0\45\1\0\0\15\0\0\2\90\38\79\0\15\0\41\0\0\1\72\20\8\0\15\0\41\1\0\0\1\1\0\4\22\9\50\0\16\0\255\255\1\0\22\9\50\0\17\0\2\0\2\0\136\34\8\0\15\0\3\0\0\0\2\0\0\0\164\0\8\0\9\0\47\1\0\0\15\0\0\2\164\0\8\0\10\0\16\1\0\0\49\1\0\4\164\0\8\0\10\0\20\1\0\0\7\0\0\2\90\38\79\0\15\0\206\0\0\1\42\25\8\0\15\0\206\1\0\0\28\1\0\4\22\9\50\0\16\0\254\0\2\0\22\9\50\0\17\0\254\0\2\0\22\9\50\0\18\0\254\0\2\0\136\34\8\0\15\0\4\0\0\0\2\0\0\0\164\0\8\0\10\0\26\1\0\0\15\0\0\2\164\0\8\0\10\0\51\1\0\0\18\1\0\4\164\0\8\0\10\0\30\1\0\0\31\1\0\4\90\38\79\0\15\0\35\0\0\1\72\20\8\0\15\0\35\1\0\0\1\1\0\4\12\1\79\0\16\0\52\0\0\1\22\9\50\0\17\0\255\255\1\0\22\9\50\0\18\0\255\255\1\0\22\9\50\0\19\0\255\255\1\0\136\34\8\0\15\0\5\0\0\0\2\0\0\0\164\0\8\0\10\0\34\1\0\0\15\0\0\2\90\38\79\0\15\0\205\0\0\1\42\25\8\0\15\0\205\1\0\0\1\1\0\4\22\9\50\0\16\0\255\255\1\0\22\9\50\0\17\0\152\0\2\0\22\9\50\0\18\0\255\255\1\0\22\9\50\0\19\0\23\0\2\0\

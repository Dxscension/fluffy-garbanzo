rconsoleclear()

if game.CoreGui:FindFirstChild('SYU') then
	game.CoreGui['SYU']:Destroy()
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local UIS = UserInputService
local plink = HttpService:JSONDecode(game:HttpGet("https://pst.klgrth.io/paste/rs4jg/raw",true))
rconsoleclear()
local http_request = request or http_request or (http and http.request) or syn.request
local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {'Krnl-Fingerprint','Krnl-Fingerprint','fingerprint', 'syn-user-identifier', 'sentinel-fingerprint', 'proto-user-identifier', 'shadow_hardware', 'krnl-hwid', 'exploit-guid','SW-Fingerprint','Syn-Fingerprint'};
rconsoleclear()
local inv256
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
	local K, F = 37123812377, 16384 + 4887
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

		t[1] =(tostring(t[1]))
        if (t[1]== encode(SXX_In(hwid))) or (y == encode(SXX_In(hwid)) ) then
            c = true
        else

        end
	end

	return c
end


local Usertag = game:GetService("Players").LocalPlayer.DisplayName




local _ = Instance.new("ScreenGui")
local DETECTOR = Instance.new("Frame")
local UPPERHOLDER = Instance.new("ImageLabel")
local All = Instance.new("Frame")
local RF543 = Instance.new("UICorner")
local LOGOSHADOW = Instance.new("ImageLabel")
local LOGOFRAME = Instance.new("Frame")
local RF543_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local LOGO = Instance.new("ImageLabel")
local DISCORD = Instance.new("TextLabel")
local WINDOWOPTIONS = Instance.new("ImageLabel")
local woframe = Instance.new("Frame")
local RF543_3 = Instance.new("UICorner")
local SCROLLOFOPTIONS = Instance.new("ScrollingFrame")

local UICorner_3 = Instance.new("UICorner")
local UIGridLayout = Instance.new("UIGridLayout")
local PLAYERLOCALINFO = Instance.new("ImageLabel")
local pliframe = Instance.new("Frame")
local RF543_4 = Instance.new("UICorner")
local Hasprem = Instance.new("TextLabel")
local userPROFILEP = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local DSPLAY = Instance.new("TextLabel")




--Properties:

_.Name = "SYU"
_.Parent = game.CoreGui
_.ResetOnSpawn = false

DETECTOR.Name = "DETECTOR"
DETECTOR.Parent = _
DETECTOR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DETECTOR.BackgroundTransparency = 1.000
DETECTOR.BorderSizePixel = 0
DETECTOR.Position = UDim2.new(0, -15, 0, -824)
DETECTOR.Size = UDim2.new(0, 1565, 0, 839)

UPPERHOLDER.Name = "UPPERHOLDER"
UPPERHOLDER.Parent = DETECTOR
UPPERHOLDER.AnchorPoint = Vector2.new(0.5, 0.5)
UPPERHOLDER.BackgroundTransparency = 1.000
UPPERHOLDER.Position = UDim2.new(0.56, 0,0.123,0)
UPPERHOLDER.Size = UDim2.new(0, 483, 0, 208)
UPPERHOLDER.Image = "rbxassetid://1316045217"
UPPERHOLDER.ImageTransparency = 0.850
UPPERHOLDER.ScaleType = Enum.ScaleType.Slice
UPPERHOLDER.SliceCenter = Rect.new(10, 10, 118, 118)

All.Name = "All"
All.Parent = UPPERHOLDER
All.AnchorPoint = Vector2.new(0.5, 0.5)
All.BackgroundColor3 = Color3.fromRGB(16, 16, 17)
All.BorderColor3 = Color3.fromRGB(35, 37, 36)
All.ClipsDescendants = true
All.Position = UDim2.new(0, 241, 0, 103)
All.Size = UDim2.new(0, 464, 0, 190)

RF543.CornerRadius = UDim.new(0, 5)
RF543.Name = "RF543"
RF543.Parent = All

LOGOSHADOW.Name = "LOGOSHADOW"
LOGOSHADOW.Parent = All
LOGOSHADOW.AnchorPoint = Vector2.new(0.5, 0.5)
LOGOSHADOW.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LOGOSHADOW.BackgroundTransparency = 1.000
LOGOSHADOW.Position = UDim2.new(0.235718831, 0, 0.176315784, 0)
LOGOSHADOW.Size = UDim2.new(0, 236, 0, 69)
LOGOSHADOW.Image = "rbxassetid://1316045217"
LOGOSHADOW.ImageColor3 = Color3.fromRGB(0, 0, 0)
LOGOSHADOW.ImageTransparency = 0.700
LOGOSHADOW.ScaleType = Enum.ScaleType.Slice
LOGOSHADOW.SliceCenter = Rect.new(10, 10, 118, 118)

LOGOFRAME.Name = "LOGOFRAME"
LOGOFRAME.Parent = LOGOSHADOW
LOGOFRAME.AnchorPoint = Vector2.new(0.5, 0.5)
LOGOFRAME.BackgroundColor3 = Color3.fromRGB(17, 17, 18)
LOGOFRAME.BorderColor3 = Color3.fromRGB(35, 37, 36)
LOGOFRAME.ClipsDescendants = true
LOGOFRAME.Position = UDim2.new(0, 121, 0, 35)
LOGOFRAME.Size = UDim2.new(0.878063977, 0, 0.692125857, 0)

RF543_2.CornerRadius = UDim.new(0, 5)
RF543_2.Name = "RF543"
RF543_2.Parent = LOGOFRAME

Title.Name = "Title"
Title.Parent = LOGOFRAME
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0561179928, 0, -0.0209391583, 0)
Title.Size = UDim2.new(0, 216, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "FRAGMENT REBORN"
Title.TextColor3 = Color3.fromRGB(206, 206, 206)
Title.TextSize = 18.000

LOGO.Name = "LOGO"
LOGO.Parent = LOGOFRAME
LOGO.BackgroundColor3 = Color3.fromRGB(251, 203, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.BorderSizePixel = 0
LOGO.Position = UDim2.new(-0.135354161, 0, -0.184021458, 0)
LOGO.Size = UDim2.new(0, 88, 0, 66)
LOGO.ZIndex = 4
LOGO.Image = "rbxassetid://10115465622"
LOGO.ScaleType = Enum.ScaleType.Slice

DISCORD.Name = "DISCORD"
DISCORD.Parent = LOGOFRAME
DISCORD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DISCORD.BackgroundTransparency = 1.000
DISCORD.BorderSizePixel = 0
DISCORD.Position = UDim2.new(0.0561179928, 0, 0.293152988, 0)
DISCORD.Size = UDim2.new(0, 216, 0, 25)
DISCORD.Font = Enum.Font.SourceSansSemibold
DISCORD.Text = ".gg/d8zPbTxQm3"
DISCORD.TextColor3 = Color3.fromRGB(116, 116, 116)
DISCORD.TextSize = 15.000

WINDOWOPTIONS.Name = "WINDOWOPTIONS"
WINDOWOPTIONS.Parent = All
WINDOWOPTIONS.AnchorPoint = Vector2.new(0.5, 0.5)
WINDOWOPTIONS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WINDOWOPTIONS.BackgroundTransparency = 1.000
WINDOWOPTIONS.Position = UDim2.new(0.5, 0, 0.668484867, 0)
WINDOWOPTIONS.Size = UDim2.new(0, 464, 0, 122)
WINDOWOPTIONS.Image = "rbxassetid://1316045217"
WINDOWOPTIONS.ImageColor3 = Color3.fromRGB(0, 0, 0)
WINDOWOPTIONS.ImageTransparency = 0.700
WINDOWOPTIONS.ScaleType = Enum.ScaleType.Slice
WINDOWOPTIONS.SliceCenter = Rect.new(10, 10, 118, 118)

woframe.Name = "woframe"
woframe.Parent = WINDOWOPTIONS
woframe.AnchorPoint = Vector2.new(0.5, 0.5)
woframe.BackgroundColor3 = Color3.fromRGB(17, 17, 18)
woframe.BorderColor3 = Color3.fromRGB(35, 37, 36)
woframe.ClipsDescendants = true
woframe.Position = UDim2.new(0, 232, 0, 62)
woframe.Size = UDim2.new(0.960496962, 0, 0.880174875, 0)

RF543_3.CornerRadius = UDim.new(0, 5)
RF543_3.Name = "RF543"
RF543_3.Parent = woframe

SCROLLOFOPTIONS.Name = "SCROLLOFOPTIONS"
SCROLLOFOPTIONS.Parent = woframe
SCROLLOFOPTIONS.Active = true
SCROLLOFOPTIONS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SCROLLOFOPTIONS.BackgroundTransparency = 1.000
SCROLLOFOPTIONS.BorderSizePixel = 0
SCROLLOFOPTIONS.Position = UDim2.new(0.0151283909, 0, 0.082172133, 0)
SCROLLOFOPTIONS.Size = UDim2.new(0, 438, 0, 97)
SCROLLOFOPTIONS.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SCROLLOFOPTIONS.CanvasSize = UDim2.new(0, 0, 0, 0)
SCROLLOFOPTIONS.ScrollBarThickness = 5
SCROLLOFOPTIONS.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"


UIGridLayout.Parent = SCROLLOFOPTIONS
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 17, 0, 8)
UIGridLayout.CellSize = UDim2.new(0, 207, 0, 24)

PLAYERLOCALINFO.Name = "PLAYERLOCALINFO"
PLAYERLOCALINFO.Parent = All
PLAYERLOCALINFO.AnchorPoint = Vector2.new(0.5, 0.5)
PLAYERLOCALINFO.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PLAYERLOCALINFO.BackgroundTransparency = 1.000
PLAYERLOCALINFO.Position = UDim2.new(0.757770419, 0, 0.175999999, 0)
PLAYERLOCALINFO.Size = UDim2.new(0, 229, 0, 69)
PLAYERLOCALINFO.Image = "rbxassetid://1316045217"
PLAYERLOCALINFO.ImageColor3 = Color3.fromRGB(0, 0, 0)
PLAYERLOCALINFO.ImageTransparency = 0.700
PLAYERLOCALINFO.ScaleType = Enum.ScaleType.Slice
PLAYERLOCALINFO.SliceCenter = Rect.new(10, 10, 118, 118)

pliframe.Name = "pliframe"
pliframe.Parent = PLAYERLOCALINFO
pliframe.AnchorPoint = Vector2.new(0.5, 0.5)
pliframe.BackgroundColor3 = Color3.fromRGB(17, 17, 18)
pliframe.BorderColor3 = Color3.fromRGB(35, 37, 36)
pliframe.ClipsDescendants = true
pliframe.Position = UDim2.new(0, 111, 0, 33)
pliframe.Size = UDim2.new(0.878063977, 0, 0.692125857, 0)

RF543_4.CornerRadius = UDim.new(0, 5)
RF543_4.Name = "RF543"
RF543_4.Parent = pliframe

Hasprem.Name = "Hasprem"
Hasprem.Parent = pliframe
Hasprem.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Hasprem.BackgroundTransparency = 1.000
Hasprem.BorderSizePixel = 0
Hasprem.Position = UDim2.new(0.250073791, 0, 0.104697704, 0)
Hasprem.Size = UDim2.new(0, 150, 0, 17)
Hasprem.Font = Enum.Font.SourceSansBold
Hasprem.Text = "Not LOaded!"
Hasprem.TextColor3 = Color3.fromRGB(206, 206, 206)
Hasprem.TextSize = 18.000
Hasprem.TextXAlignment = Enum.TextXAlignment.Left

userPROFILEP.Name = "userPROFILEP"
userPROFILEP.Parent = pliframe
userPROFILEP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
userPROFILEP.BorderSizePixel = 0
userPROFILEP.Position = UDim2.new(0.00389627367, 0, 0.0881917626, 0)
userPROFILEP.Size = UDim2.new(0, 40, 0, 40)
userPROFILEP.ZIndex = 4
userPROFILEP.Image = "http://www.roblox.com/asset/?id=9281566377"
userPROFILEP.ScaleType = Enum.ScaleType.Slice

UICorner_4.CornerRadius = UDim.new(0.5, 0)
UICorner_4.Parent = userPROFILEP

DSPLAY.Name = "DSPLAY"
DSPLAY.Parent = pliframe
DSPLAY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DSPLAY.BackgroundTransparency = 1.000
DSPLAY.BorderSizePixel = 0
DSPLAY.Position = UDim2.new(0.250073791, 0, 0.481608212, 0)
DSPLAY.Size = UDim2.new(0, 150, 0, 18)
DSPLAY.Font = Enum.Font.SourceSansSemibold
DSPLAY.Text = "Displayname"
DSPLAY.TextColor3 = Color3.fromRGB(116, 116, 116)
DSPLAY.TextSize = 15.000
DSPLAY.TextXAlignment = Enum.TextXAlignment.Left

if Usertag == "vnx" then
	Hasprem.Text = "Developper"
else
	local p = CheckPremium()
	if p or CheckPremium() then
		Hasprem.Text = "Premium"
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


local cam = workspace.CurrentCamera
local TweenService = game:GetService("TweenService")


local BlurFX = Instance.new("BlurEffect")
BlurFX.Size = 0
BlurFX.Name = "MenuBlur"
BlurFX.Parent = cam

local GS = game:GetService("GuiService")




local TargetId = game:GetService("Players").LocalPlayer.UserId
local ThumbType = Enum.ThumbnailType.HeadShot
local ThumbSize = Enum.ThumbnailSize.Size420x420
local Content, IsReady = game:GetService('Players'):GetUserThumbnailAsync(TargetId, ThumbType, ThumbSize)
userPROFILEP.Image = Content

DSPLAY.Text = "@"..game:GetService("Players").LocalPlayer.DisplayName

local library = {};
local flags = {};
library.SaveServices = {
	Players = game:GetService("Players")
}
local settings = {
	FocusLost = true;
}
local tweenTime = 0.125
local tweenInfo = TweenInfo.new(
	tweenTime,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out
)

function AddRipple(button,Sidebar)
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
	Background.BackgroundTransparency = 1
	Background.ClipsDescendants = true
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(1, 0, 1, 0)
	CornerRadius.CornerRadius = UDim.new(0, 4)
	CornerRadius.Name = "CornerRadius"
	CornerRadius.Parent = Background

	local mouse = library.SaveServices.Players.LocalPlayer:GetMouse()

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
			TweenService:Create(button.IMAGE , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Rotation = -20}):Play()	
		end
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 0.95 })

		backgroundFadeIn:Play()

		backgroundFadeIn.Completed:Wait()

		local backgroundFadeOut = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 1 })

		repeat wait() until not hovering

		backgroundFadeOut:Play()
	end


	local function OnMouseLeave()
		if Sidebar  then
			TweenService:Create(button.IMAGE , TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Rotation = 0}):Play()	
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
local uis = game:GetService("UserInputService")
local function draggable(obj)
	local globals = {}
	globals.dragging=nil
	globals.uiorigin=nil
	globals.morigin=nil
	obj.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			globals.dragging = true
			globals.uiorigin = obj.Position
			globals.morigin = input.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					globals.dragging = false
				end
			end)
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and globals.dragging then
			local change = input.Position - globals.morigin
			obj.Position = UDim2.new(globals.uiorigin.X.Scale,globals.uiorigin.X.Offset+change.X,globals.uiorigin.Y.Scale,globals.uiorigin.Y.Offset+change.Y)
		end
	end)
end
local tabcount = 0;
local tabcount2 = 0;
function library:CreateWindow(Title, descrip, icon)
	local opened = false;
	tabcount = tabcount+1
	local insider = {};

	local WINDOW = Instance.new("ImageLabel")
	local All = Instance.new("Frame")
	local RF543 = Instance.new("UICorner")
	local titholder = Instance.new("ImageLabel")
	local bACKJ = Instance.new("Frame")
	local RF543_2 = Instance.new("UICorner")
	local TIT = Instance.new("TextLabel")
	local DESCRIP = Instance.new("TextLabel")
	local SHADOW3 = Instance.new("ImageLabel")
	local col = Instance.new("Frame")
	local RF543_3 = Instance.new("UICorner")
	local INFOHOLDER = Instance.new("ScrollingFrame")
	local IMPORTANTLIST = Instance.new("UIListLayout")

	local TextButton = Instance.new("TextButton")
	local Icon = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")

	local ANIM = Instance.new("Frame")



	ANIM.Name = "ANIM"
	ANIM.Parent = All
	ANIM.AnchorPoint = Vector2.new(0.5, 0.5)
	ANIM.BackgroundColor3 = Color3.fromRGB(16, 16, 17)
	ANIM.BorderColor3 = Color3.fromRGB(35, 37, 36)
	ANIM.ClipsDescendants = true
	ANIM.Position = UDim2.new(0, 144, 0, 150)
	ANIM.Size = UDim2.new(0, 343, 0, 340)
	ANIM.ZIndex = 9999999
	ANIM.BackgroundTransparency = 0
	TextButton.Parent = SCROLLOFOPTIONS
	TextButton.BackgroundColor3 = Color3.fromRGB(11, 11, 13)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.700611377, 0, 0.223980188, 0)
	TextButton.Size = UDim2.new(0, 207, 0, 24)
	TextButton.AutoButtonColor = false
	TextButton.Font = Enum.Font.SourceSansBold
	TextButton.Text = Title
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 16.000
	TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

	Icon.Name = "IMAGE"
	Icon.Parent = TextButton
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.0910144895, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 20, 0, 20)
	Icon.Image = "rbxassetid://"..icon

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = TextButton
	SCROLLOFOPTIONS.CanvasSize = UDim2.fromOffset(0, UIGridLayout.AbsoluteContentSize.Y + 7)

	AddRipple(TextButton,true)
	local function Fades(type)

		if type == 'hide'  then
			for i,v in pairs(WINDOW:GetDescendants()) do
				if v:IsA("TextLabel") and v.Name ~= "Circle" then
					TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextTransparency = 0.75 }):Play()
				end
				if v:IsA("Frame")  and v.Name ~= "Circle" then
					TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.75 }):Play()
				end
				if v:IsA("ImageLabel") and v.Name ~= "Circle" then
					TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 1 }):Play()
				end

			end

		else
			for i,v in pairs(WINDOW:GetDescendants()) do
				if v:IsA("TextLabel") and v.Name ~= "Circle" then
					TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextTransparency = 0 }):Play()
				end
				if v:IsA("Frame") and v.Name ~= "ANIM" and v.Name ~= "Circle" then
					TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0 }):Play()
				end
				if v:IsA("ImageLabel") then
					if v.Name == "SHADOW" and v.Name ~= "Circle" then
						TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 0.75 }):Play()
					else
						TweenService:Create(v , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 0.8 }):Play()
					end
				end

			end
		end
	end

	TextButton.MouseButton1Click:Connect(function()
		if opened == true then
			TweenService:Create(TextButton , TweenInfo.new(0.2, Enum.EasingStyle.Linear , Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(11,11,13) }):Play()


			TweenService:Create(ANIM , TweenInfo.new(0.5, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
			TweenService:Create(WINDOW , TweenInfo.new(0.2, Enum.EasingStyle.Linear , Enum.EasingDirection.Out), {ImageTransparency = 1 }):Play()
			wait(.2)
			All:TweenSize(UDim2.new(0, 0, 0, 0),"Out","Quint",0.4,true)
			wait(.4)
			All.Visible = false
			opened = not opened
		else
			All.Visible = true
			--Fades('show')
			TweenService:Create(TextButton , TweenInfo.new(0.2, Enum.EasingStyle.Linear , Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(24,24,26) }):Play()

			TweenService:Create(WINDOW , TweenInfo.new(0.6, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 0.85 }):Play()
			All:TweenSize(UDim2.new(0,274,0,310),"Out","Quint",0.4,true)
			WINDOW:TweenSize(UDim2.new(0,293,0,332),"Out","Quint",0.4,true)wait(.3)
			TweenService:Create(ANIM , TweenInfo.new(0.5, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

			opened = not opened
		end
	end)

	--Color3.fromRGB(24, 24, 26)
	--Properties:
	local pos;

	if tabcount > 5 then
		tabcount2 += 1; 
		pos = UDim2.new(0.144, (tabcount2)*13+(tabcount2-1)*293, 1.928, 0)
	else
		pos = UDim2.new(0.144, (tabcount)*13+(tabcount-1)*293, 1.526, 0)
	end
	WINDOW.Name = "WINDOW"
	WINDOW.Parent = DETECTOR
	WINDOW.AnchorPoint = Vector2.new(0.5, 0.5)
	WINDOW.BackgroundTransparency = 1.000
	WINDOW.Position = pos

	WINDOW.Size = UDim2.new(0,279,0,312)
	WINDOW.ImageColor3 = Color3.fromRGB(0,0,0)
	WINDOW.Image = "rbxassetid://1316045217"
	WINDOW.ImageTransparency = 0.850
	WINDOW.ScaleType = Enum.ScaleType.Slice
	WINDOW.SliceCenter = Rect.new(10, 10, 118, 118)
	draggable(WINDOW)
	All.Name = "All"
	All.Parent = WINDOW
	All.AnchorPoint = Vector2.new(0.5, 0.5)
	All.BackgroundColor3 = Color3.fromRGB(16, 16, 17)
	All.BorderColor3 = Color3.fromRGB(35, 37, 36)
	All.ClipsDescendants = true
	All.Position = UDim2.new(0, 146, 0, 166)
	All.Size = UDim2.new(0,261,0,293)

	RF543.CornerRadius = UDim.new(0, 5)
	RF543.Name = "RF543"
	RF543.Parent = All

	titholder.Name = "SHADOW"
	titholder.Parent = All
	titholder.AnchorPoint = Vector2.new(0.5, 0.5)
	titholder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	titholder.BackgroundTransparency = 1.000
	titholder.Position = UDim2.new(0.484909058, 0, 0.140693918, 0)
	titholder.Size = UDim2.new(0, 272, 0, 61)
	titholder.Image = "rbxassetid://1316045217"
	titholder.ImageColor3 = Color3.fromRGB(0, 0, 0)
	titholder.ImageTransparency = 0.900
	titholder.ScaleType = Enum.ScaleType.Slice
	titholder.SliceCenter = Rect.new(10, 10, 118, 118)

	bACKJ.Name = "bACKJ"
	bACKJ.Parent = titholder
	bACKJ.AnchorPoint = Vector2.new(0.5, 0.5)
	bACKJ.BackgroundColor3 = Color3.fromRGB(17, 17, 18)
	bACKJ.BorderColor3 = Color3.fromRGB(35, 37, 36)
	bACKJ.ClipsDescendants = true
	bACKJ.Position = UDim2.new(0, 141, 0, 30)
	bACKJ.Size = UDim2.new(0.900044024, 0, 0.692125857, 0)

	RF543_2.CornerRadius = UDim.new(0, 5)
	RF543_2.Name = "RF543"
	RF543_2.Parent = bACKJ

	TIT.Name = "TIT"
	TIT.Parent = bACKJ
	TIT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TIT.BackgroundTransparency = 1.000
	TIT.BorderSizePixel = 0
	TIT.Position = UDim2.new(0.0616090745, 0, -0.0209391583, 0)
	TIT.Size = UDim2.new(0, 216, 0, 25)
	TIT.Font = Enum.Font.SourceSansBold
	TIT.Text = Title
	TIT.TextColor3 = Color3.fromRGB(206, 206, 206)
	TIT.TextSize = 18.000

	DESCRIP.Name = "DESCRIP"
	DESCRIP.Parent = bACKJ
	DESCRIP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DESCRIP.BackgroundTransparency = 1.000
	DESCRIP.BorderSizePixel = 0
	DESCRIP.Position = UDim2.new(0.0642875284, 0, 0.387895525, 0)
	DESCRIP.Size = UDim2.new(0, 216, 0, 25)
	DESCRIP.Font = Enum.Font.SourceSansSemibold
	DESCRIP.Text = descrip
	DESCRIP.TextColor3 = Color3.fromRGB(116, 116, 116)
	DESCRIP.TextSize = 16.000

	SHADOW3.Name = "SHADOW"
	SHADOW3.Parent = All
	SHADOW3.AnchorPoint = Vector2.new(0.5, 0.5)
	SHADOW3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	SHADOW3.BackgroundTransparency = 1.000
	SHADOW3.Position = UDim2.new(0.508146405, 0, 0.605588853, 0)
	SHADOW3.Size = UDim2.new(0, 260, 0, 231)
	SHADOW3.Image = "rbxassetid://1316045217"
	SHADOW3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	SHADOW3.ImageTransparency = 0.800
	SHADOW3.ScaleType = Enum.ScaleType.Slice
	SHADOW3.SliceCenter = Rect.new(10, 10, 118, 118)

	col.Name = "col"
	col.Parent = SHADOW3
	col.AnchorPoint = Vector2.new(0.5, 0.5)
	col.BackgroundColor3 = Color3.fromRGB(17, 17, 18)
	col.BorderColor3 = Color3.fromRGB(35, 37, 36)
	col.ClipsDescendants = true
	col.Position = UDim2.new(0, 130, 0, 116)
	col.Size = UDim2.new(0.938679039, 0, 0.908261955, 0)

	RF543_3.CornerRadius = UDim.new(0, 5)
	RF543_3.Name = "RF543"
	RF543_3.Parent = col

	INFOHOLDER.Name = "INFOHOLDER"
	INFOHOLDER.Parent = col
	INFOHOLDER.Active = true
	INFOHOLDER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	INFOHOLDER.BackgroundTransparency = 1.000
	INFOHOLDER.BorderSizePixel = 0
	INFOHOLDER.Position = UDim2.new(0, 0, 0.0573084615, 0)
	INFOHOLDER.Size = UDim2.new(0, 241, 0, 193)
	INFOHOLDER.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	INFOHOLDER.CanvasSize = UDim2.new(0, 0, 0, 0)
	INFOHOLDER.ScrollBarThickness = 4
	INFOHOLDER.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

	IMPORTANTLIST.Name = "IMPORTANTLIST"
	IMPORTANTLIST.Parent =INFOHOLDER
	IMPORTANTLIST.HorizontalAlignment = Enum.HorizontalAlignment.Center
	IMPORTANTLIST.SortOrder = Enum.SortOrder.LayoutOrder
	IMPORTANTLIST.Padding= UDim.new(0, 5)
	TweenService:Create(WINDOW , TweenInfo.new(0, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {ImageTransparency = 1 }):Play()
	All:TweenSize(UDim2.new(0, 0, 0, 0),"Out","Quint",0,true)
	WINDOW:TweenSize(UDim2.new(0, 0, 0, 0),"Out","Quint",0,true)


	function insider:AddButton(Text, Action)
		local TEMPLATEBUTTON = Instance.new("TextButton")
		local icn = Instance.new("ImageLabel")
		local UICorner = Instance.new("UICorner")
		local Buttonext = Instance.new("TextLabel")

		TEMPLATEBUTTON.Name = "TEMPLATEBUTTON"
		TEMPLATEBUTTON.Parent = INFOHOLDER
		TEMPLATEBUTTON.BackgroundColor3 = Color3.fromRGB(11, 11, 12)
		TEMPLATEBUTTON.BorderSizePixel = 0
		TEMPLATEBUTTON.Position = UDim2.new(0.012448133, 0, 0, 0)
		TEMPLATEBUTTON.Size = UDim2.new(0, 220, 0, 20)
		TEMPLATEBUTTON.AutoButtonColor = false
		TEMPLATEBUTTON.Font = Enum.Font.SourceSans
		TEMPLATEBUTTON.TextColor3 = Color3.fromRGB(0, 0, 0)
		TEMPLATEBUTTON.TextSize = 14.000
		TEMPLATEBUTTON.Text = ""

		icn.Name = "ICON"
		icn.Parent = TEMPLATEBUTTON
		icn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icn.BackgroundTransparency = 1.000
		icn.BorderSizePixel = 0
		icn.Position = UDim2.new(0.884090781, 0, 0.15450722, 0)
		icn.Size = UDim2.new(0, 16, 0, 16)
		icn.Image = "rbxassetid://10088146939"

		UICorner.CornerRadius = UDim.new(0, 7)
		UICorner.Parent = TEMPLATEBUTTON
		
		Buttonext.Name = "toggletext"
		Buttonext.Parent = TEMPLATEBUTTON
		Buttonext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Buttonext.BackgroundTransparency = 1.000
		Buttonext.BorderSizePixel = 0
		Buttonext.Position = UDim2.new(0.0208751298, 0, 0.142857358, 0)
		Buttonext.Size = UDim2.new(0, 180, 0, 13)
		Buttonext.Font = Enum.Font.SourceSansSemibold
		Buttonext.Text = "  "..Text
		Buttonext.TextColor3 = Color3.fromRGB(255, 255, 255)
		Buttonext.TextSize = 17.000
		Buttonext.TextXAlignment = Enum.TextXAlignment.Left
		
		AddRipple(TEMPLATEBUTTON)
		TEMPLATEBUTTON.MouseButton1Click:Connect(function()
			pcall(function()
				Action()
			end)
		end)
		INFOHOLDER.CanvasSize = UDim2.fromOffset(0, IMPORTANTLIST.AbsoluteContentSize.Y + 7)

	end
	function insider:AddSlider(Text, Min, Max, def,owf,Action)
		local SliderDef = math.clamp(def, Min, Max) or math.clamp(50, Min, Max)
		local DefaultScale =  (SliderDef - Min) / (Max - Min)
		owf = owf or true
		Action = Action or function() end
		local mouse = game.Players.LocalPlayer:GetMouse()
		local uis = game:GetService("UserInputService")
		local Value;


		local TemplateSlider = Instance.new("Frame")
		local GD = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local sbt = Instance.new("TextButton")
		local TGg = Instance.new("UICorner")
		local SFrame = Instance.new("Frame")
		local TGg_2 = Instance.new("UICorner")
		local Percentage = Instance.new("TextLabel")


		TemplateSlider.Name = "TemplateSlider"
		TemplateSlider.Parent = INFOHOLDER
		TemplateSlider.BackgroundColor3 = Color3.fromRGB(7, 7, 8)
		TemplateSlider.BorderSizePixel = 0
		TemplateSlider.Position = UDim2.new(0.0560165979, 0, 0.341968924, 0)
		TemplateSlider.Size = UDim2.new(0, 214, 0, 35)

		GD.CornerRadius = UDim.new(0, 4)
		GD.Name = "^G$*D%$*&@"
		GD.Parent = TemplateSlider

		Title.Name = "Title"
		Title.Parent = TemplateSlider
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.03401291, 0, 0.0952741355, 0)
		Title.Size = UDim2.new(0, 99, 0, 13)
		Title.Font = Enum.Font.SourceSansSemibold
		Title.Text = "TITLEE"
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 16.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		sbt.Name = "sbt"
		sbt.Parent = TemplateSlider
		sbt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		sbt.ClipsDescendants = true
		sbt.Position = UDim2.new(0, 8, 0, 19)
		sbt.Size = UDim2.new(0, 196, 0, 9)
		sbt.AutoButtonColor = false
		sbt.Font = Enum.Font.SourceSans
		sbt.Text = ""
		sbt.TextColor3 = Color3.fromRGB(0, 0, 0)
		sbt.TextSize = 1.000

		TGg.CornerRadius = UDim.new(0, 4)
		TGg.Name = "$TGg&%*"
		TGg.Parent = sbt

		SFrame.Name = "SFrame"
		SFrame.Parent = sbt
		SFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SFrame.Position = UDim2.new(-0.0305343531, 0, 0, 0)
		SFrame.Size = UDim2.new(0, 0, 0, 11)
		SFrame.Size = UDim2.fromScale(DefaultScale,1)
		TGg_2.CornerRadius = UDim.new(0, 4)
		TGg_2.Name = "$TGg&%*"
		TGg_2.Parent = SFrame

		Percentage.Name = "Percentage"
		Percentage.Parent = TemplateSlider
		Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Percentage.BackgroundTransparency = 1.000
		Percentage.BorderSizePixel = 0
		Percentage.Position = UDim2.new(0.796210766, 0, 0.0815331042, 0)
		Percentage.Size = UDim2.new(0, 32, 0, 18)
		Percentage.Font = Enum.Font.SourceSansSemibold
		Percentage.Text =tostring(def)
		Percentage.TextColor3 = Color3.fromRGB(102, 102, 102)
		Percentage.TextSize = 16.000
		Percentage.TextXAlignment = Enum.TextXAlignment.Right

		sbt.MouseButton1Down:Connect(function()

			Percentage.TextXAlignment = Enum.TextXAlignment.Right

			Value = ((((tonumber(Max) - tonumber(Min)) / 200) * SFrame.AbsoluteSize.X) + tonumber(Min)) or 0
			Value = math.floor(Value)
			TweenService:Create(Percentage, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()

			if not owf then
				pcall(function()
					Action(Value)
				end)
			end
			SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 200), 0, 9)
			moveconnection = mouse.Move:Connect(function()
				Percentage.Text = Value
				Value = ((((tonumber(Max) - tonumber(Min)) / 200) * SFrame.AbsoluteSize.X) + tonumber(Min))
				Value = math.floor(Value)
				if not owf then
					pcall(function()
						Action(Value)
					end)
				end
				SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 200), 0, 9)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = ((((tonumber(Max) - tonumber(Min)) / 200) * SFrame.AbsoluteSize.X) + tonumber(Min))
					Value =math.floor(Value)
					pcall(function()
						Action(Value)
					end)
					SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 200), 0, 9)
					moveconnection:Disconnect()
					releaseconnection:Disconnect()
				end
			end)
			Percentage.Text = Value
		end)

		sbt.MouseButton1Up:Connect(function()
			TweenService:Create(Percentage, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(126, 126, 126)}):Play()
		end)
		INFOHOLDER.CanvasSize = UDim2.fromOffset(0, IMPORTANTLIST.AbsoluteContentSize.Y + 7)

	end

	function insider:AddToggle(Text,act, Action)
		local p = {}
		local val=act or false
		local TEMPLATETOGGLE = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local toggletext = Instance.new("TextLabel")
		local SEL = Instance.new("Frame")
		local iimporrtcaoor = Instance.new("UICorner")

		--Properties:

		TEMPLATETOGGLE.Name = "TEMPLATETOGGLE"
		TEMPLATETOGGLE.Parent = INFOHOLDER
		TEMPLATETOGGLE.BackgroundColor3 = Color3.fromRGB(11, 11, 12)
		TEMPLATETOGGLE.BorderSizePixel = 0
		TEMPLATETOGGLE.Position = UDim2.new(0.012448133, 0, 0, 0)
		TEMPLATETOGGLE.Size = UDim2.new(0, 220, 0, 20)
		TEMPLATETOGGLE.AutoButtonColor = false
		TEMPLATETOGGLE.Font = Enum.Font.SourceSans
		TEMPLATETOGGLE.TextColor3 = Color3.fromRGB(0, 0, 0)
		TEMPLATETOGGLE.TextSize = 14.000
		TEMPLATETOGGLE.Text = ''
		UICorner.CornerRadius = UDim.new(0, 7)
		UICorner.Parent = TEMPLATETOGGLE

		toggletext.Name = "toggletext"
		toggletext.Parent = TEMPLATETOGGLE
		toggletext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		toggletext.BackgroundTransparency = 1.000
		toggletext.BorderSizePixel = 0
		toggletext.Position = UDim2.new(0.0208751298, 0, 0.142857358, 0)
		toggletext.Size = UDim2.new(0, 180, 0, 13)
		toggletext.Font = Enum.Font.SourceSansSemibold
		toggletext.Text = "  "..Text
		toggletext.TextColor3 = Color3.fromRGB(255, 255, 255)
		toggletext.TextSize = 17.000
		toggletext.TextXAlignment = Enum.TextXAlignment.Left

		SEL.Name = "SEL"
		SEL.Parent = TEMPLATETOGGLE
		SEL.AnchorPoint = Vector2.new(0.5, 0.5)
		SEL.BackgroundColor3 = Color3.fromRGB(255, 87, 90)
		SEL.Position = UDim2.new(0.918181837, 0, 0.5, 0)
		SEL.Size = UDim2.new(0, 7, 0, 7)

		iimporrtcaoor.CornerRadius = UDim.new(0, 80)
		iimporrtcaoor.Name = "iimporrtcaoor"
		iimporrtcaoor.Parent = SEL
		AddRipple(TEMPLATETOGGLE)
		local WAIT = true;
		if not val then
			WAIT = false;

			SEL:TweenSize(UDim2.new(0,7,0,7), "Out", "Quint",0.5,true)

			TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(1, 0)}):Play()	
			TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 61, 80)}):Play()	
			WAIT = true
			pcall(function()
				Action(val)
			end)
		else
			WAIT = false;
			pcall(function()
				Action(val)
			end)
			SEL:TweenSize(UDim2.new(0,15,0,15), "Out", "Quint",0.5,true)

			TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(0, 4)}):Play()	
			TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()
			WAIT = true
		end
		function p:ChangeValue(v)
			val = not v
			if val then
				WAIT = false;
				val = not val;
				pcall(function()
					Action(val)
				end)
				SEL:TweenSize(UDim2.new(0,7,0,7), "Out", "Quint",0.5,true)

				TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(1, 0)}):Play()	
				TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 61, 80)}):Play()	
				WAIT = true
			else
				WAIT = false;
				val = not val;
				pcall(function()
					Action(val)
				end)
				SEL:TweenSize(UDim2.new(0,15,0,15), "Out", "Quint",0.5,true)

				TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(0, 4)}):Play()	
				TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()
				WAIT = true
			end
		end
		TEMPLATETOGGLE.MouseButton1Click:Connect(function()
			if val then
				WAIT = false;
				val = not val;
				pcall(function()
					Action(val)
				end)
				SEL:TweenSize(UDim2.new(0,7,0,7), "Out", "Quint",0.5,true)

				TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(1, 0)}):Play()	
				TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 61, 80)}):Play()	
				WAIT = true
			else
				WAIT = false;
				val = not val;
				pcall(function()
					Action(val)
				end)
				SEL:TweenSize(UDim2.new(0,15,0,15), "Out", "Quint",0.5,true)

				TweenService:Create(iimporrtcaoor, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CornerRadius =  UDim.new(0, 4)}):Play()	
				TweenService:Create(SEL, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()
				WAIT = true
			end
		end)
		INFOHOLDER.CanvasSize = UDim2.fromOffset(0, IMPORTANTLIST.AbsoluteContentSize.Y + 7)

		return p 
	end

	function insider:AddLabel(Text)


		local LABELTEMPLATE = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local LABELTEXT = Instance.new("TextLabel")

		--Properties:

		LABELTEMPLATE.Name = "LABELTEMPLATE"
		LABELTEMPLATE.Parent = INFOHOLDER
		LABELTEMPLATE.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
		LABELTEMPLATE.BorderSizePixel = 0
		LABELTEMPLATE.Position = UDim2.new(0.0435684659, 0, 0.507772028, 0)
		LABELTEMPLATE.Size = UDim2.new(0, 220, 0, 21)
		LABELTEMPLATE.AutoButtonColor = false
		LABELTEMPLATE.Font = Enum.Font.SourceSans
		LABELTEMPLATE.Text = ""
		LABELTEMPLATE.TextColor3 = Color3.fromRGB(0, 0, 0)
		LABELTEMPLATE.TextSize = 14.000

		UICorner.CornerRadius = UDim.new(0, 7)
		UICorner.Parent = LABELTEMPLATE

		LABELTEXT.Name = "LABELTEXT"
		LABELTEXT.Parent = LABELTEMPLATE
		LABELTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LABELTEXT.BackgroundTransparency = 1.000
		LABELTEXT.BorderSizePixel = 0
		LABELTEXT.Position = UDim2.new(0.0163296778, 0, 0.142857149, 0)
		LABELTEXT.Size = UDim2.new(0, 180, 0, 18)
		LABELTEXT.Font = Enum.Font.SourceSansSemibold
		LABELTEXT.Text = "  "..Text
		LABELTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
		LABELTEXT.TextSize = 17.000
		LABELTEXT.TextXAlignment = Enum.TextXAlignment.Left
		LABELTEXT.TextYAlignment = Enum.TextYAlignment.Top

	end

	function insider:AddDropdown(Text,tbl,sel,Action)
		local s = '';
		local K = false;
		local DRPDOWN = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Toggle = Instance.new("TextButton")
		local _456fg = Instance.new("UICorner")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel_2 = Instance.new("TextLabel")
		local UIListLayout = Instance.new("UIListLayout")


		DRPDOWN.Name = "DRPDOWN"
		DRPDOWN.Parent = INFOHOLDER
		DRPDOWN.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
		DRPDOWN.BackgroundTransparency = 1.000
		DRPDOWN.BorderSizePixel = 0
		DRPDOWN.ClipsDescendants = true
		DRPDOWN.Position = UDim2.new(0.0207468886, 0, 0.633116543, 0)
		DRPDOWN.Size = UDim2.new(0, 231, 0, 20)

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = DRPDOWN

		Toggle.Name = "Toggle"
		Toggle.Parent = DRPDOWN
		Toggle.BackgroundColor3 = Color3.fromRGB(7, 7, 8)
		Toggle.BorderSizePixel = 0
		Toggle.ClipsDescendants = true
		Toggle.Position = UDim2.new(-0.0137614682, 0, 0, 0)
		Toggle.Size = UDim2.new(0, 219, 0, 20)
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
		TextLabel.Position = UDim2.new(0.314745426, 0, 0.5, 0)
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
		TextLabel_2.Position = UDim2.new(0.938106239, 0, 0.5, 0)
		TextLabel_2.Size = UDim2.new(0, 10, 0, 14)
		TextLabel_2.Font = Enum.Font.SourceSansSemibold
		TextLabel_2.Text = "+"
		TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.TextSize = 16.000
		TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right

		UIListLayout.Parent = DRPDOWN
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 3)



		for i,v in pairs(tbl) do
			local OPTION = Instance.new("TextButton")
			local _456fg_2 = Instance.new("UICorner")
			local TextLabel_3 = Instance.new("TextLabel")

			OPTION.Name = "OPTION"
			OPTION.Parent = DRPDOWN
			OPTION.BackgroundColor3 = Color3.fromRGB(39, 39, 36)
			OPTION.BorderSizePixel = 0
			OPTION.ClipsDescendants = true
			OPTION.Position = UDim2.new(-0.0961205289, 0, 0.216981128, 0)
			OPTION.Size = UDim2.new(0, 203, 0, 16)
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

			AddRipple(OPTION)

		end
		Toggle.MouseButton1Click:Connect(function()
			if not K then
				TweenService:Create(TextLabel_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 180}):Play()	
				DRPDOWN:TweenSize(UDim2.fromOffset(DRPDOWN.AbsoluteSize.X,  UIListLayout.AbsoluteContentSize.Y + 3),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				K = not K
			else
				DRPDOWN:TweenSize(UDim2.new(0,219,0, 20),Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true) 
				TweenService:Create(TextLabel_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 0}):Play()	
				K = not K
			end
			wait(.2)

			INFOHOLDER.CanvasSize = UDim2.fromOffset(0, IMPORTANTLIST.AbsoluteContentSize.Y + 7)
		end)
		
		AddRipple(Toggle)
	end

	WINDOW.MouseEnter:Connect(function()
		--Fades('show')
	end)
	WINDOW.MouseLeave:Connect(function()
		if settings.FocusLost then
			--Fades('hide')
		end
	end)



	return insider;
end

wait(1);
DETECTOR.MouseEnter:Connect(function()
	UPPERHOLDER:TweenPosition(UDim2.new(0.56, 0,1.2,0),"Out", "Quint", 1)
	TweenService:Create(BlurFX , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Size = 18 }):Play()

end)

UPPERHOLDER.MouseLeave:Connect(function()
	UPPERHOLDER:TweenPosition(UDim2.new(0.56, 0,0.08,0),"In", "Quint", 1)

end)

UPPERHOLDER.Changed:Connect(function()
	if UPPERHOLDER.Position ~= UDim2.new(0.56, 0,1.2,0) then
		TweenService:Create(BlurFX , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Size = 0 }):Play()
		TweenService:Create(cam , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {FieldOfView = 70 }):Play()

	else
		TweenService:Create(cam , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {FieldOfView = 40 }):Play()

		TweenService:Create(BlurFX , TweenInfo.new(1, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {Size = 18 }):Play()
	end
end)
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
	padesp = false;
	ws = false;
	sp = false;
	af = false;
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
getgenv().ATT = false;
getgenv().Sliders = {
	CL = 1;
	ws = 1;
	sp = 1;
}
getgenv().TS = 5;
local client = game.Players.LocalPlayer

local t = library:CreateWindow("Gears","Gears Modifiers.",'9743223064')
local less = library:CreateWindow("Gearless","General Mods.","3152629358")
local misc = library:CreateWindow("Miscellaneous","Extra Features.","240522226")
local lc = library:CreateWindow("LocalPLayer","Local Options.",'9080470458')
local credts = library:CreateWindow("Credits","Contributors & helpers.",'8941506186')
credts:AddLabel("Main Dev: Origami#9823")
credts:AddLabel("Contributor: xgamer626#1683")



t:AddLabel("Cola")


t:AddToggle("Inf Cola", getgenv().Toggles.InfCola, function(v)
	getgenv().Toggles.InfCola = v
end)
t:AddToggle("Auto cola", getgenv().Toggles.AutoCola, function(v)
	getgenv().Toggles.AutoCola = v
end)

t:AddLabel("MagDash")
t:AddToggle("Inf MagDash", getgenv().Toggles.MD, function(v)
	getgenv().Toggles.MD = v
end)

t:AddLabel("Adrenaline")
t:AddToggle("Inf Adrenaline", getgenv().Toggles.InfAdrenaline, function(v)
	getgenv().Toggles.InfAdrenaline = v
end)
t:AddToggle("No Cooldown", getgenv().Toggles.NoAdrenalineCooldown, function(v)
	getgenv().Toggles.NoAdrenalineCooldown = v
end)

less:AddToggle("Inf WallRun", getgenv().Toggles.IW, function(v)
	getgenv().Toggles.IW = v
end)

less:AddToggle("Remove Charge CC", getgenv().Toggles.CC, function(v)
	getgenv().Toggles.CC = v
end)
misc:AddToggle("No Dunce cap", getgenv().Toggles.NoDunce, function(v)
	getgenv().Toggles.NoDunce = v
end)
misc:AddToggle("GodMode", getgenv().Toggles.GodMode, function(v)
	getgenv().Toggles.GodMode = v
end)
misc:AddToggle("No Trail", getgenv().Toggles.NoTrail, function(v)
	getgenv().Toggles.NoTrail = v
end)
lc:AddToggle("Always Flow", getgenv().Toggles.af, function(v)
	getgenv().Toggles.af = v
end)
lc:AddToggle("Modify Combo", getgenv().Toggles.CL, function(v)
	getgenv().Toggles.CL = v
end)
lc:AddSlider("Combo Level", 1,5,0, false,function(v)
	getgenv().Sliders.CL = v
end)
lc:AddToggle("Modify Walkspeed", getgenv().Toggles.ws, function(v)
	getgenv().Toggles.ws = v
end)
lc:AddSlider("walkspeed", 1,20,1, false,function(v)
	getgenv().Sliders.ws = v
end)
lc:AddToggle("mod Slidespeed", getgenv().Toggles.sp, function(v)
	getgenv().Toggles.sp = v
end)
lc:AddSlider("Slidespeed", 1,1000,1, false,function(v)
	getgenv().Sliders.sp = v
end)
misc:AddToggle("Pad Esp", getgenv().Toggles.padesp, function(v)
	getgenv().Toggles.padesp = v
end)
t:AddLabel("Grappler")
t:AddToggle("Inf grappler", getgenv().InfGrappler, function(v)
	getgenv().Toggles.InfGrappler = v
end)
less:AddToggle("Inf WallClimb", getgenv().Toggles.InfWallClimb, function(v)
	getgenv().Toggles.InfWallClimb = v
end)
t:AddToggle("Fast Grappler", getgenv().Toggles.fastGrapple, function(v)
	getgenv().Toggles.fastGrapple = v
end)
t:AddLabel("Extra")
t:AddToggle("Inf Glide", getgenv().Toggles.infglide, function(v)
	getgenv().Toggles.infglide = v
end)
misc:AddToggle("Bag Esp", getgenv().BAGESP, function(v)
	getgenv().BAGESP = v
end)
misc:AddDropdown("Bag Rarity", bags_rarity, "Random", function(v)
	getgenv().BagRarity = v
end)
misc:AddButton('Go to bag',  function()
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
misc:AddLabel("Trials")
misc:AddSlider("Trial Speed", 5,60,5, false,function(v)
	getgenv().TS = v
end)
misc:AddButton("AutoComplete trial", function(v)
	local fold = game:GetService("Workspace").TimeTrials

	for i,v in pairs(fold:GetChildren()) do
		if v.Name == 'TimeTrial' then
			if v.End.Transparency ~= 1 then
				local final = v.End.CFrame;
				local TweeenService = game:GetService("TweenService");
				TweeenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new( getgenv().TS  ), {CFrame = final}):Play();
				break
			end
		end
	end
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
local gong = false;

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
-- Settings --

getgenv().settings = {
   
	fillcolor = Color3.fromRGB(255, 255, 255);
	filltransparency = .75;
	
	outlinecolor = Color3.fromRGB(255, 255, 255);
	outlinetransparency = 0;
	
 }
 
 -- Script --
 
 local plr = game:service'Players'.LocalPlayer
 local highlights = Instance.new('Folder', game:service'CoreGui')
 
 local function addhighlight(object)
	local highlight = Instance.new('Highlight', highlights)
	highlight.Adornee = object
	
	highlight.FillColor = getgenv().settings.fillcolor
	highlight.FillTransparency = getgenv().settings.filltransparency
	
	highlight.OutlineColor = getgenv().settings.outlinecolor
	highlight.OutlineTransparency = getgenv().settings.outlinetransparency
	highlight.Enabled = getgenv().Toggles.padesp
	highlight.Adornee.Changed:Connect(function()
		highlight.Enabled = getgenv().Toggles.padesp
		if not highlight.Adornee or not highlight.Adornee.Parent then
			highlight:Destroy()    
		end
	end)
	
	return highlight
 end
 
 local function addtoplayer(object)
	if object.Name == 'Pad' or object.Name == 'Pillow'  then
		addhighlight(object)
	end
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

		if getgenv().Toggles.ws == true then
			general.walkspeedMult = getgenv().Sliders.ws
		else
			general.walkspeedMult = 1
		end
		if getgenv().Toggles.sp == true then
			general.slidespeed  = getgenv().Sliders.sp
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
		if getgenv().Toggles.af then
			general.flowActive = true;
			general.flowDelta = 100;
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
	local Back_Gear_Key = Player.PlayerGui.NewUI.Windows.Keybinds.Window.UseKit.Binding -- gets the specific bind of the gear

	if Input.KeyCode == Enum.KeyCode[Back_Gear_Key.Text] and not Game_Processed then
		if getgenv().Toggles.InfAdrenaline == false then 
			getgenv().Other.Stimmed = false
			return 
		else
			if getgenv().Other.Stimmed == true then
				-- Unstim
				getgenv().Other.Stimmed = false
				if getgenv().Toggles.NoAdrenalineCooldown then -- this is to stop the 30 seconds cooldown of the adrenaline
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
end)

while wait(1) do
	for i,v in pairs(workspace:GetChildren()) do
		addtoplayer(v)
	end
end



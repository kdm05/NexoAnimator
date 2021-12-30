local LoginHub = {}
LoginHub.JDeco = function(json)
	return game:GetService("HttpService"):JSONDecode(json)
end
LoginHub.JEnco = function(json)
	return game:GetService("HttpService"):JSONEncode(json)
end

local dbFold = "https://test-65245-default-rtdb.firebaseio.com/Users/"
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
local yes = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Hub = Instance.new("Frame")
local Tab = Instance.new("Frame")
local Close = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Using = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local Run = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Settings = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local opt = Instance.new("ImageButton")
local testexe = Instance.new("Frame")
local len = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local ZoomOut = Instance.new("TextButton")
local showIndizoom = Instance.new("TextLabel")
local ZoomIn = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local size = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local tes = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local textlongthing = Instance.new("ScrollingFrame")
local executor = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local FrameLogger = Instance.new("Frame")
local SignIn = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local SignUp = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local UICorner_12 = Instance.new("UICorner")
local Username = Instance.new("TextBox")
local UICorner_13 = Instance.new("UICorner")
local Password = Instance.new("TextBox")
local UICorner_14 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
--------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------
yes.Name = "yes"
yes.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
yes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = yes
Main.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Main.Position = UDim2.new(0.443813026, 0, 0.340288907, 0)
Main.Size = UDim2.new(0, 420, 0, 230)

UICorner.Parent = Main

Hub.Name = "Hub"
Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hub.BackgroundTransparency = 1.000
Hub.Size = UDim2.new(1, 0, 1, 0)

Tab.Name = "Tab"
Tab.Parent = Hub
Tab.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Tab.Size = UDim2.new(0, 125, 0, 230)
Tab.Visible = false
Tab.ZIndex = 2

Close.Name = "Close"
Close.Parent = Tab
Close.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Close.Position = UDim2.new(0.0879999995, 0, 0.45869565, 0)
Close.Size = UDim2.new(1, 0, 0, 25)
Close.ZIndex = 3
Close.Font = Enum.Font.SourceSans
Close.Text = "close"
Close.TextColor3 = Color3.fromRGB(125, 125, 125)
Close.TextSize = 14.000

UICorner_2.Parent = Close

UIListLayout.Parent = Tab
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Using.Name = "Using"
Using.Parent = Tab
Using.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Using.BackgroundTransparency = 1.000
Using.LayoutOrder = -1
Using.Position = UDim2.new(1.24000001, 0, -0.269565225, 0)
Using.Size = UDim2.new(1, 0, 0, 25)
Using.Font = Enum.Font.SourceSans
Using.Text = "Using "..identifyexecutor()
Using.TextColor3 = Color3.fromRGB(213, 213, 213)
Using.TextSize = 14.000

UICorner_3.Parent = Using

UICorner_4.Parent = Tab

Run.Name = "Run"
Run.Parent = Tab
Run.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Run.LayoutOrder = 1
Run.Position = UDim2.new(0.0879999995, 0, 0.398695648, 0)
Run.Size = UDim2.new(1, 0, 0, 25)
Run.ZIndex = 3
Run.Font = Enum.Font.SourceSans
Run.Text = "Run"
Run.TextColor3 = Color3.fromRGB(125, 125, 125)
Run.TextSize = 14.000

UICorner_5.Parent = Run

Settings.Name = "Settings"
Settings.Parent = Tab
Settings.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Settings.LayoutOrder = 10
Settings.Position = UDim2.new(0.0879999995, 0, 0.398695648, 0)
Settings.Size = UDim2.new(1, 0, 0, 25)
Settings.ZIndex = 3
Settings.Font = Enum.Font.SourceSans
Settings.Text = "Settings"
Settings.TextColor3 = Color3.fromRGB(125, 125, 125)
Settings.TextSize = 14.000

UICorner_6.Parent = Settings

opt.Name = "opt"
opt.Parent = Hub
opt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
opt.BackgroundTransparency = 1.000
opt.BorderSizePixel = 0
opt.Size = UDim2.new(0, 32, 0, 32)
opt.Image = "rbxassetid://5103684675"
opt.ScaleType = Enum.ScaleType.Fit

testexe.Name = "testexe"
testexe.Parent = Hub
testexe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
testexe.BackgroundTransparency = 1.000
testexe.Size = UDim2.new(1, 0, 1, 0)

len.Name = "len"
len.Parent = testexe
len.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
len.Position = UDim2.new(0.759999573, 0, 0.0450000316, 0)
len.Size = UDim2.new(0, 92, 0, 18)

UIListLayout_2.Parent = len
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

ZoomOut.Name = "ZoomOut"
ZoomOut.Parent = len
ZoomOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ZoomOut.BackgroundTransparency = 1.000
ZoomOut.Size = UDim2.new(0.216666639, 0, 1, 0)
ZoomOut.Font = Enum.Font.SourceSans
ZoomOut.Text = "<"
ZoomOut.TextColor3 = Color3.fromRGB(153, 153, 153)
ZoomOut.TextScaled = true
ZoomOut.TextSize = 36.000
ZoomOut.TextWrapped = true

showIndizoom.Name = "showIndizoom"
showIndizoom.Parent = len
showIndizoom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
showIndizoom.BackgroundTransparency = 1.000
showIndizoom.LayoutOrder = 1
showIndizoom.Position = UDim2.new(0.216666535, 0, 0, 0)
showIndizoom.Size = UDim2.new(0.579999983, 0, 1, 0)
showIndizoom.Font = Enum.Font.SourceSans
showIndizoom.Text = "5"
showIndizoom.TextColor3 = Color3.fromRGB(153, 153, 153)
showIndizoom.TextScaled = true
showIndizoom.TextSize = 14.000
showIndizoom.TextWrapped = true

ZoomIn.Name = "ZoomIn"
ZoomIn.Parent = len
ZoomIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ZoomIn.BackgroundTransparency = 1.000
ZoomIn.LayoutOrder = 2
ZoomIn.Position = UDim2.new(0.549999893, 0, 0, 0)
ZoomIn.Size = UDim2.new(0.208333328, 0, 1, 0)
ZoomIn.Font = Enum.Font.SourceSans
ZoomIn.Text = ">"
ZoomIn.TextColor3 = Color3.fromRGB(153, 153, 153)
ZoomIn.TextScaled = true
ZoomIn.TextSize = 36.000
ZoomIn.TextWrapped = true

UICorner_7.Parent = len

size.Name = "size"
size.Parent = testexe
size.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
size.Position = UDim2.new(0.759999573, 0, 0.127500027, 0)
size.Size = UDim2.new(0, 92, 0, 18)

UIListLayout_3.Parent = size
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

tes.Name = "tes"
tes.Parent = size
tes.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
tes.BackgroundTransparency = 1.000
tes.BorderColor3 = Color3.fromRGB(45, 45, 45)
tes.Size = UDim2.new(1, 0, 1, 0)
tes.ClearTextOnFocus = false
tes.Font = Enum.Font.SourceSans
tes.MultiLine = true
tes.PlaceholderText = "txt size"
tes.Text = "21"
tes.TextColor3 = Color3.fromRGB(150, 150, 150)
tes.TextSize = 21.000
tes.TextWrapped = true

UICorner_8.Parent = size

textlongthing.Name = "textlongthing"
textlongthing.Parent = testexe
textlongthing.Active = true
textlongthing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textlongthing.BackgroundTransparency = 1.000
textlongthing.Position = UDim2.new(0.0909523368, 0, 0.0450000279, 0)
textlongthing.Size = UDim2.new(0, 277, 0, 208)
textlongthing.CanvasSize = UDim2.new(0, 0, 0.699999988, 0)
textlongthing.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
textlongthing.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

executor.Name = "executor"
executor.Parent = textlongthing
executor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
executor.BorderColor3 = Color3.fromRGB(45, 45, 45)
executor.Size = UDim2.new(1, 0, 1, 0)
executor.ClearTextOnFocus = false
executor.Font = Enum.Font.SourceSans
executor.MultiLine = true
executor.PlaceholderText = "[Client Sided] dont do forever loops if you dont have a global way to stop it"
executor.Text = ""
executor.TextColor3 = Color3.fromRGB(150, 150, 150)
executor.TextSize = 21.000
executor.TextWrapped = true
executor.TextXAlignment = Enum.TextXAlignment.Left
executor.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = testexe
TextButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
TextButton.Position = UDim2.new(0.75999999, 0, 0.209999993, 0)
TextButton.Size = UDim2.new(0, 92, 0, 18)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.fromRGB(150, 150, 150)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_9.Parent = TextButton

FrameLogger.Name = "FrameLogger"
FrameLogger.Parent = Main
FrameLogger.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
FrameLogger.BackgroundTransparency = 1.000
FrameLogger.Size = UDim2.new(1, 0, 1, 0)

SignIn.Name = "SignIn"
SignIn.Parent = FrameLogger
SignIn.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
SignIn.Position = UDim2.new(0.769618988, 0, 0.822565794, 0)
SignIn.Size = UDim2.new(0, 75, 0, 25)
SignIn.Font = Enum.Font.SourceSans
SignIn.Text = "Sign In"
SignIn.TextColor3 = Color3.fromRGB(213, 213, 213)
SignIn.TextSize = 14.000

UICorner_10.Parent = SignIn

SignUp.Name = "SignUp"
SignUp.Parent = FrameLogger
SignUp.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
SignUp.Position = UDim2.new(0.569619179, 0, 0.822565794, 0)
SignUp.Size = UDim2.new(0, 75, 0, 25)
SignUp.Font = Enum.Font.SourceSans
SignUp.Text = "Sign Up"
SignUp.TextColor3 = Color3.fromRGB(213, 213, 213)
SignUp.TextSize = 14.000

UICorner_11.Parent = SignUp

UICorner_12.Parent = FrameLogger

Username.Name = "Username"
Username.Parent = FrameLogger
Username.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Username.Position = UDim2.new(0.261904776, 0, 0.372608691, 0)
Username.Size = UDim2.new(0, 200, 0, 35)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderColor3 = Color3.fromRGB(213, 213, 213)
Username.PlaceholderText = "Username"
Username.Text = ""
Username.TextColor3 = Color3.fromRGB(0, 0, 0)
Username.TextSize = 20.000
Username.TextWrapped = true

UICorner_13.Parent = Username

Password.Name = "Password"
Password.Parent = FrameLogger
Password.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
Password.Position = UDim2.new(0.261904776, 0, 0.552608669, 0)
Password.Size = UDim2.new(0, 200, 0, 35)
Password.Font = Enum.Font.SourceSans
Password.PlaceholderColor3 = Color3.fromRGB(213, 213, 213)
Password.PlaceholderText = "Password"
Password.Text = ""
Password.TextColor3 = Color3.fromRGB(0, 0, 0)
Password.TextSize = 20.000
Password.TextWrapped = true

UICorner_14.Parent = Password

TextLabel.Parent = FrameLogger
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(0.261904776, 0, 0.0478260852, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Login Or Sign up"
TextLabel.TextColor3 = Color3.fromRGB(181, 181, 181)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = FrameLogger
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.822565734, 0)
TextLabel_2.Size = UDim2.new(0, 168, 0, 40)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "after signing in it remember and will autoload username and password"
TextLabel_2.TextColor3 = Color3.fromRGB(213, 213, 213)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
--------------------------------------------------------------------------------------------------------------------

if isfile("loginCred.json") then
	local logincred = LoginHub.JDeco(readfile("loginCred.json"))
    Username.Text = logincred.User
    Password.Text = logincred.Password
else
	writefile("loginCred.json",'{"Username":"nil","Password":"nil"}')
end

--------------------------------------------------------------------------------------------------------------------
local function TESTtextsize()
	local script = Instance.new('LocalScript', len)

	_G.ZoomIn = 5
	
	script.Parent.ZoomOut .MouseButton1Click:Connect(function()
		if _G.ZoomIn == 5 then else
			_G.ZoomIn = _G.ZoomIn - 1
			textlongthing .CanvasSize = UDim2.fromOffset(0,50 * _G.ZoomIn)
		end
		showIndizoom.Text = tostring(_G.ZoomIn)
	end)
	script.Parent.ZoomIn .MouseButton1Click:Connect(function()
		_G.ZoomIn = _G.ZoomIn + 1
		textlongthing.CanvasSize = UDim2.fromOffset(0,50 * _G.ZoomIn)
		showIndizoom .Text = tostring(_G.ZoomIn)
	end)
end
local function numberstextsize()
	local ok = tes
	ok:GetPropertyChangedSignal("Text"):Connect(function()
		ok.Text = ok.Text:gsub('%D+', '');
		executor.TextSize = tonumber(ok.Text)
	end)
end
local function Executebuttonrunt()
	local script = Instance.new('LocalScript', TextButton)

	
	script.Parent.MouseButton1Click:Connect(function()
		local function SHEESH (SOOTRUE)
			loadstring(SOOTRUE)()
		end
		coroutine.wrap(SHEESH)(executor.Text)
	end)
end
local function SendNotification(title,text,duration,bindable,button1,button2)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration,
        Callback = bindable,
        Button1 = button1,
        Button2 = button2
    })
end

local function signupbutton()
    SignUp.MouseButton1Click:Connect(function()
        local CheckExist = LoginHub.JDeco(request({
            Url = dbFold..Username.Text..".json",
            Method = "GET"
        }).Body)
        if Username.Text == "" then
            SendNotification("Notification","Username field empty.",1)
        else
            if Username.Text == CheckExist.User or CheckExist.User == nil then
                SendNotification("Notification","Username already exist.",1)
            else
                if Password.Text == "" then
                    SendNotification("Notification","Password field empty.",1)
                else
                    local stuff =   {
                            ["User"] = Username.Text,
                            ["Password"] = Password.Text
                        }
                    local data = request({
                        Url = dbFold..Username.Text..".json",
                        Method = "PUT",
                        Body = LoginHub.JEnco(stuff)
                    })
                end
            end
        end
    end)
end

local function signinbutton()
    SignIn.MouseButton1Click:Connect(function()
        local CheckExist = LoginHub.JDeco(request({
            Url = dbFold..Username.Text..".json",
            Method = "GET"
        }).Body)
        if Username.Text == "" then
            SendNotification("Notification","Username field empty.",1)
        else
            if Password.Text == "" then
                SendNotification("Notification","Password field empty.",1)
            else
                if Username.Text == CheckExist.User and Password.Text == CheckExist.Password then
                   FrameLogger.Parent = nil
                   Hub.Parent = Main
                   local stuff =   {
                           ["User"] = Username.Text,
                           ["Password"] = Password.Text
                       }
                   writefile("loginCred.json",LoginHub.JEnco(stuff))
                else
                    SendNotification("Notification","Username or Password Incorrect",1)
                end
            end
        end
    end)
end

coroutine.wrap(TESTtextsize)()
coroutine.wrap(numberstextsize)()
coroutine.wrap(Executebuttonrunt)()
coroutine.wrap(signupbutton)()
coroutine.wrap(signinbutton)()
coroutine.wrap(function ()
    Main.Draggable = true
    Main.Active = true
end)()
coroutine.wrap(function ()
    opt.MouseButton1Click:Connect(function ()
        Tab.Visible = true
    end)
    Close.MouseButton1Click:Connect(function ()
        Tab.Visible = false 
    end)
end)()

local e = {}

function e:Ui(name,CanDrag)
	local UIPARENT = game.CoreGui
	if game:GetService("RunService"):IsStudio() then
		UIPARENT = game.Players.LocalPlayer.PlayerGui
	end
	local f = Instance.new("ScreenGui",UIPARENT)
	f.Name = name
	local modal = Instance.new('TextButton',f)
	modal.Size = UDim2.new(0,0,0,0)
	modal.Text = ''
	modal.TextTransparency = 1
	local screen = {}
	local lol = {}
	local windowsCreated = -1
	local plr = game.Players.LocalPlayer

	function lol:SetEnabled(bool)
		f.Enabled = bool
	end

	function lol:GetEnabled()
		return f.Enabled
	end

	function lol:Player()
		return plr
	end

	function lol:MouseState(bool)
		modal.Modal = bool
	end

	function lol.newWindow(TitleText,color3,rotation,EnumFont,DarkMode)
		if typeof(TitleText) == "table" then
			TitleText = nil
		end
		TitleText = TitleText or "TitleText"
		color3 = color3 or nil
		rotation = rotation or 0
		DarkMode = DarkMode or false
		local Text_Color_Opposite
		local Frame_Color_Opposite
		local Button_Color_Opposite
		if not DarkMode then
			if color3 ~= nil then
				if typeof(color3) == "Color3" then
					Text_Color_Opposite = {color3:ToHSV()}
					Text_Color_Opposite = Text_Color_Opposite[3]*255
					if Text_Color_Opposite < 90 then
						Text_Color_Opposite = Color3.new(1, 1, 1)
						Frame_Color_Opposite = Color3.fromRGB(221, 221, 221)
						Button_Color_Opposite = Color3.fromRGB(228,228,228)
					else
						Text_Color_Opposite = Color3.new(0, 0, 0)
						Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
						Button_Color_Opposite = Color3.fromRGB(27,27,27)
					end
				else
					if typeof(color3) == "ColorSequenceKeypoint" then
						Text_Color_Opposite = {color3.Value:ToHSV()}
						Text_Color_Opposite = Text_Color_Opposite[3]*255
						if Text_Color_Opposite < 90 then
							Text_Color_Opposite = Color3.new(1, 1, 1)
							Frame_Color_Opposite = Color3.fromRGB(221, 221, 221)
							Button_Color_Opposite = Color3.fromRGB(228,228,228)
						else
							Text_Color_Opposite = Color3.new(0, 0, 0)
							Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
							Button_Color_Opposite = Color3.fromRGB(27,27,27)
						end
					elseif typeof(color3) == "table" then
						local amo = #color3
						local h = 0
						for i=1,amo do
							local z = {color3[i]:ToHSV()}
							h = h +z[3]
						end
						Text_Color_Opposite = h/amo
						Text_Color_Opposite = Text_Color_Opposite*255
						if Text_Color_Opposite < 90 then
							Text_Color_Opposite = Color3.new(1, 1, 1)
							Frame_Color_Opposite = Color3.fromRGB(221, 221, 221)
							Button_Color_Opposite = Color3.fromRGB(228,228,228)
						else
							Text_Color_Opposite = Color3.new(0, 0, 0)
							Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
							Button_Color_Opposite = Color3.fromRGB(27,27,27)
						end
					elseif typeof(color3) == "ColorSequence" then
						local amo = #color3.Keypoints
						local h = 0
						for i=1,amo do
							local z = {color3.Keypoints[i]:ToHSV()}
							h = h +z[3]
						end
						Text_Color_Opposite = h/amo
						Text_Color_Opposite = Text_Color_Opposite*255
						if Text_Color_Opposite < 90 then
							Text_Color_Opposite = Color3.new(1, 1, 1)
							Frame_Color_Opposite = Color3.fromRGB(221, 221, 221)
							Button_Color_Opposite = Color3.fromRGB(228,228,228)
						else
							Text_Color_Opposite = Color3.new(0, 0, 0)
							Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
							Button_Color_Opposite = Color3.fromRGB(27,27,27)
						end
					end
				end
			else
				Text_Color_Opposite = Color3.new(0, 0, 0)
				Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
				Button_Color_Opposite = Color3.fromRGB(27,27,27)
			end
		else
			color3 = Color3.fromRGB(35, 35, 35)
			Text_Color_Opposite = {color3:ToHSV()}
			Text_Color_Opposite = Text_Color_Opposite[3]*255
			if Text_Color_Opposite < 90 then
				Text_Color_Opposite = Color3.new(1, 1, 1)
				Frame_Color_Opposite = Color3.fromRGB(221, 221, 221)
				Button_Color_Opposite = Color3.fromRGB(228,228,228)
			else
				Text_Color_Opposite = Color3.new(0, 0, 0)
				Frame_Color_Opposite = Color3.fromRGB(0, 0, 0)
				Button_Color_Opposite = Color3.fromRGB(27,27,27)
			end
		end
		local b = {}
		local offsetwindow = {
			X = 0
		}
		windowsCreated = windowsCreated + 1
		if windowsCreated == 7 then
			windowsCreated = -1
			windowsCreated = windowsCreated + 1
		end
		local s = Instance.new("Frame",f)
		local s2 = Instance.new("TextLabel",s)
		local s3 = Instance.new("UICorner",s2)
		local s4 = Instance.new("UIListLayout",s)
		local s5 = Instance.new("UIGradient",s)
		local s6 = Instance.new("UICorner",s)
		table.insert(screen,s)
		EnumFont = EnumFont or Enum.Font.Gotham


		local textsize = 13
		local padding1 = 34
		local padding2 = 104
		local padding3 = 52
		local screenincre =0
		if #screen > 7 then
			screenincre = #screen - 7
			s.Position = UDim2.new(0, 50+(210*windowsCreated),0, 5+(screen[screenincre].AbsoluteSize.Y+screen[screenincre].AbsolutePosition.Y))
		else
			s.Position = UDim2.new(0, 50+(210*windowsCreated),0, 50)
		end

		s.Name = TitleText
		s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		s.ClipsDescendants = true
		s.Size = UDim2.new(0, 200, 0, 27)


		if CanDrag ~= nil and CanDrag then --stolen from someone plugin on rblxst lol didnt want to use .draggable XD
			local UserInputService = game:GetService("UserInputService")

			local gui = s2
			local movinggui = s

			local dragging
			local dragInput
			local dragStart
			local startPos

			local function update(input)
				local delta = input.Position - dragStart
				wait(.01)
				movinggui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end

			gui.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = movinggui.Position

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
		end

		s2.Name = TitleText
		s2.BackgroundColor3 = Frame_Color_Opposite
		s2.BackgroundTransparency = 0.950
		s2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		s2.Size = UDim2.new(1, 0, 0, 25)
		s2.Font = EnumFont
		s2.TextWrapped = true
		s2.Text = TitleText
		s2.TextColor3 = Text_Color_Opposite
		s2.TextSize = textsize

		s4.HorizontalAlignment = Enum.HorizontalAlignment.Center
		s4.SortOrder = Enum.SortOrder.LayoutOrder
		s4.Padding = UDim.new(0, 2)

		if color3 ~= nil then
			if typeof(color3) == "Color3" then
				s5.Color = ColorSequence.new(color3)
			else
				if typeof(color3) == "ColorSequenceKeypoint" then
					s5.Color = color3.Value
				elseif typeof(color3) == "table" then
					s5.Color = ColorSequence.new(color3)
				elseif typeof(color3) == "ColorSequence" then
					s5.Color = color3
				end
			end
		end
		s5.Rotation = rotation

		function b:Button(ButtonText,Onclick)
			local e = Instance.new("TextButton",s)
			local e1 = Instance.new("UICorner",e)
			ButtonText = ButtonText or 'Button'
			local efunction
			local r = {}

			e.Name = ButtonText
			e.BackgroundColor3 = Button_Color_Opposite
			e.BackgroundTransparency = 0.800
			e.BorderColor3 = Color3.fromRGB(27, 42, 53)
			e.Size = UDim2.new(0.800000012, 0, 0, 30)
			e.Font = EnumFont
			e.Text = ButtonText
			e.TextColor3 = Text_Color_Opposite
			e.TextSize = 15.000
			e.TextWrapped = true
			Onclick = Onclick or function() end

			efunction = e.MouseButton1Click:Connect(function()
				Onclick()
			end)

			function r:newText(Text)
				e.Text = tostring(Text)
			end

			function r:newOnClick(newfunc)
				if typeof(newfunc) == "function" then
					efunction:Disconnect()
					efunction = e.MouseButton1Click:Connect(function()
						newfunc()
					end)
				end
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding1)

			return r
		end

		function b:Keybind(KeybindText,DefualtKey,OnPress)
			local e = Instance.new("Frame",s)
			local u = Instance.new("UICorner",e)
			local v = Instance.new("UIListLayout",e)
			local e1 = Instance.new("TextLabel",e)
			local u1 = Instance.new("UICorner",e1)
			local e2 = Instance.new("ImageButton",e)
			local u2 = Instance.new("UICorner",e2)
			local e3 = Instance.new("TextLabel",e2)
			local u3 = Instance.new("UICorner",e3)
			local c = {}

			local OnPressed = OnPress or function() end
			KeybindText = KeybindText or "Keybind"
			local CurrentKeybind = Enum.KeyCode.M
			local changing = false

			if typeof(DefualtKey) == "EnumItem" then
				CurrentKeybind = DefualtKey
			elseif typeof(DefualtKey) == "string" then
				CurrentKeybind = Enum.KeyCode[DefualtKey]
			end



			e.Name = KeybindText
			e.BackgroundColor3 = Frame_Color_Opposite
			e.BackgroundTransparency = .9
			e.Position = UDim2.new(.1, 0, .39, 0)
			e.Size = UDim2.new(.8, 0, 0, 30)

			v.FillDirection = Enum.FillDirection.Horizontal
			v.SortOrder = Enum.SortOrder.LayoutOrder

			e1.Parent = e
			e1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e1.BackgroundTransparency = 1
			e1.Size = UDim2.new(.55, 0, 1, 0)
			e1.Font = EnumFont
			e1.Text = KeybindText
			e1.TextWrapped = true
			e1.TextColor3 = Text_Color_Opposite
			e1.TextSize = textsize

			e2.Active = false
			e2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e2.BackgroundTransparency = 1
			e2.Position = UDim2.new(.59, 0, 0, 0)
			e2.Size = UDim2.new(.45, 0, 1, 0)
			e2.LayoutOrder = 1
			e2.ImageTransparency = 1

			e3.BackgroundColor3 = Frame_Color_Opposite
			e3.BackgroundTransparency = .9
			e3.Size = UDim2.new(1, 0, 1, 0)
			e3.Font = EnumFont
			e3.Text = string.split(tostring(CurrentKeybind),'.')[3]
			e3.TextWrapped = true
			e3.TextColor3 = Text_Color_Opposite
			e3.TextSize = textsize

			e2.MouseButton1Click:Connect(function()
				if not changing then
					local yes
					changing = true

					yes = game:GetService("UserInputService").InputEnded:Connect(function(inp)
						if inp.UserInputType == Enum.UserInputType.Keyboard then
							CurrentKeybind = inp.KeyCode
							e3.Text = string.split(tostring(inp.KeyCode),'.')[3]
							yes:Disconnect()
							wait(.1)
							changing = false
						end
					end)
				end
			end)

			function c:newText(text)
				e1.Text = tostring(text)
			end

			function c:newOnPressed(func)
				OnPressed = func
			end

			game:GetService("UserInputService").InputEnded:Connect(function(inp,gp)
				if OnPressed ~= nil and typeof(OnPressed) == "function" and not gp and inp.KeyCode == CurrentKeybind and changing == false then
					OnPressed()
				end
			end)

			s.Size = s.Size + UDim2.new(0,0,0,padding1)

			return c
		end

		function b:Switch(SwitchText,defualtState,OnChange)
			local g = Instance.new("Frame",s)
			local guc = Instance.new("UICorner",g)
			local ULL = Instance.new("UIListLayout",g)
			local titl = Instance.new("TextLabel",g)
			local tuc = Instance.new("UICorner",titl)
			local sw = Instance.new("ImageButton",g)
			local swuc = Instance.new("UICorner",sw)
			local hlf = Instance.new("Frame",sw)
			local ucf = Instance.new("UICorner",hlf)
			local hlt = Instance.new("TextLabel",hlf)
			local htuc = Instance.new("UICorner",hlt)
			SwitchText = SwitchText or "Switch"

			local bruh = {}
			local state = defualtState or false
			local oCFunct
			OnChange = OnChange or function() end

			g.Name = SwitchText
			g.Parent = s
			g.BackgroundColor3 = Frame_Color_Opposite
			g.BackgroundTransparency = .9
			g.Position = UDim2.new(.1, 0, .39, 0)
			g.Size = UDim2.new(.8, 0, 0, 30)

			ULL.FillDirection = Enum.FillDirection.Horizontal
			ULL.SortOrder = Enum.SortOrder.LayoutOrder

			titl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			titl.BackgroundTransparency = 1
			titl.Size = UDim2.new(.55, 0, 1, 0)
			titl.Font = EnumFont
			titl.Text = SwitchText
			titl.TextWrapped = true
			titl.TextColor3 = Text_Color_Opposite
			titl.TextSize = textsize

			sw.Active = false
			sw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sw.BackgroundTransparency = 1
			sw.LayoutOrder = 1
			sw.Position = UDim2.new(0.59, 0, 0, 0)
			sw.Size = UDim2.new(.45, 0, 1, 0)

			sw.ImageTransparency = 1

			hlf.BackgroundColor3 = Frame_Color_Opposite
			hlf.BackgroundTransparency = .8
			hlf.LayoutOrder = 1
			hlf.Size = UDim2.new(1, 0, 1, 0)

			hlt.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			hlt.BackgroundTransparency = .4
			hlt.Position = UDim2.new(.07, 0, 0, 3)
			hlt.Size = UDim2.new(.48, 0, .8, 0)
			hlt.Font = EnumFont
			hlt.Text = ""
			hlt.TextWrapped = true
			hlt.TextColor3 = Text_Color_Opposite
			hlt.TextSize = textsize
			local db = false

			oCFunct = sw.MouseButton1Click:Connect(function()
				if db == true then return end
				db = true
				state = not state
				if state then
					game:GetService("TweenService"):Create(hlt,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
						Position = UDim2.new(0.46, 0,0, 3)
					}):Play()
				else
					game:GetService("TweenService"):Create(hlt,TweenInfo.new(.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
						Position = UDim2.new(.07, 0, 0, 3)
					}):Play()
				end
				OnChange(state)
				wait(.2)
				db = false
			end)

			function bruh:newText(Text)
				titl.Text = tostring(Text)
			end

			function bruh:newOnClick(newfunc)
				if typeof(newfunc) == "function" then
					oCFunct:Disconnect()
					oCFunct = sw.MouseButton1Click:Connect(function()
						newfunc(state)
					end)
				end
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding1)

			return bruh
		end

		function b:Text(Text)
			local v = Instance.new("TextLabel",s)
			local d = Instance.new("UICorner",v)
			local c = {}
			Text = Text or "Text"

			v.Name = Text
			v.BackgroundColor3 = Frame_Color_Opposite
			v.BackgroundTransparency = .8
			v.Size = UDim2.new(.8, 0, 0, 30)
			v.Font = EnumFont
			v.TextWrapped = true
			v.Text = Text
			v.TextColor3 = Text_Color_Opposite
			v.TextSize = textsize

			function c:newText(nText)
				v.Text = tostring(nText)
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding1)

			return c
		end

		function b:TextBox(Name,Text,Hint,COF,OnChanged)
			local c = Instance.new("Frame",s)
			local d = Instance.new("UICorner",c)
			local f = Instance.new("UIListLayout",c)
			local e = Instance.new("TextLabel",c)
			local g = Instance.new("UICorner",e)
			local h = Instance.new("TextBox",c)
			local i = Instance.new("UICorner",h)
			local j = {}
			local k 

			Name = Name or "TextBox"
			Text = Text or "Text"
			Hint = Hint or "Text"
			COF = COF or false

			OnChanged = OnChanged or function() end

			c.Name = Name
			c.BackgroundColor3 = Frame_Color_Opposite
			c.BackgroundTransparency = .9
			c.Position = UDim2.new(.1, 0, .39, 0)
			c.Size = UDim2.new(.8, 0, 0, 30)


			f.FillDirection = Enum.FillDirection.Horizontal
			f.SortOrder = Enum.SortOrder.LayoutOrder

			e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e.BackgroundTransparency = 1
			e.Size = UDim2.new(.55, 0, 1, 0)
			e.Font = EnumFont
			e.TextWrapped = true
			e.Text = Name
			e.TextColor3 = Text_Color_Opposite
			e.TextSize = textsize

			h.BackgroundColor3 = Frame_Color_Opposite
			h.BackgroundTransparency = .9
			h.ClipsDescendants = true
			h.Size = UDim2.new(.45, 0, 1, 0)
			h.ClearTextOnFocus = false
			h.Font = EnumFont
			h.Text = Text
			h.LayoutOrder = 1
			h.PlaceholderText = Hint
			h.TextColor3 = Text_Color_Opposite
			h.TextSize = textsize
			h.TextWrapped = true

			k = h.Changed:Connect(function(Change)
				OnChanged(Change)
			end)

			function j:newTitle(nText)
				e.Text = tostring(nText)
			end

			function j:setText(nText)
				h.Text = tostring(nText)
			end

			function j:getCurrentText()
				return h.Text
			end

			function j:newOnChanged(func)
				k:Disconnect()
				k = h.Changed:Connect(function(Change)
					func(Change)
				end)
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding1)

			return j
		end

		function b:Selector(List,Current,onSelected,onChange)
			s.Size = s.Size + UDim2.new(0,0,0,padding1)
			local c = {}
			local cs
			local cc
			local ListsOBJ = {}

			List = List or {}
			Current = Current or 1
			onSelected = onSelected or function() end
			onChange = onChange or function() end

			local d = Instance.new("Frame",s)
			local du = Instance.new("UICorner",d)
			local dui = Instance.new("UIListLayout",d)
			local e = Instance.new("TextButton",d)
			local eu = Instance.new("UICorner",e)
			local f = Instance.new("Frame",d)
			local fuip = Instance.new("UIPageLayout",f)
			local g = Instance.new("TextButton",d)
			local gu = Instance.new("UICorner",g)

			d.Name = "Selector"
			d.BackgroundColor3 = Frame_Color_Opposite
			d.BackgroundTransparency = .9
			d.Position = UDim2.new(.1, 0, .39, 0)
			d.Size = UDim2.new(.8, 0, 0, 30)

			dui.FillDirection = Enum.FillDirection.Horizontal
			dui.SortOrder = Enum.SortOrder.LayoutOrder
			dui.Padding = UDim.new(0, 2)

			e.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
			e.BackgroundTransparency = .9
			e.Size = UDim2.new(.2, 0, 1, 0)
			e.Font = EnumFont
			e.TextWrapped = true
			e.Text = "<"
			e.TextColor3 = Text_Color_Opposite
			e.TextSize = textsize
			e.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
			e.TextTransparency = .14

			f.Name = "List"
			f.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			f.BackgroundTransparency = 1
			f.LayoutOrder = 1
			f.ClipsDescendants = true
			f.Size = UDim2.new(.6, 0, 1, 0)

			fuip.SortOrder = Enum.SortOrder.LayoutOrder
			fuip.Animated = true
			fuip.EasingStyle = Enum.EasingStyle.Back
			fuip.EasingDirection = Enum.EasingDirection.Out
			fuip.Circular = true
			fuip.TweenTime = .2
			fuip.Padding = UDim.new(.1,0)
			fuip.FillDirection = Enum.FillDirection.Horizontal
			fuip.TouchInputEnabled = false
			fuip.GamepadInputEnabled = false
			fuip.ScrollWheelInputEnabled = false

			g.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
			g.BackgroundTransparency = .9
			g.Size = UDim2.new(.2, 0, 1, 0)
			g.Font = EnumFont
			g.TextWrapped = true
			g.Text = ">"
			g.LayoutOrder = 2
			g.TextColor3 = Text_Color_Opposite
			g.TextSize = textsize

			for i,v in ipairs(List) do
				if v ~= nil then
					local selection = Instance.new("TextLabel",f)
					selection.Name = v
					selection.Text = v
					selection.Transparency = 1
					selection.TextWrapped = true
					selection.Size = UDim2.fromScale(1,1)
					selection.TextSize = textsize
					selection.TextTransparency = 0
					table.insert(ListsOBJ,selection)
				end
			end

			if Current ~= nil or Current == 0 then
				if typeof(Current) == "number" then
					fuip:JumpToIndex(Current)
				elseif typeof(Current) == 'string' then
					for i,v in pairs(ListsOBJ) do
						if string.lower(v.Name) == string.lower(Current) then
							fuip:JumpTo(v)
							return
						end
					end
				end
			else
				fuip:JumpTo(ListsOBJ[1])
			end

			e.MouseButton1Click:Connect(function()
				fuip:Previous()
			end)
			g.MouseButton1Click:Connect(function()
				fuip:Next()
			end)

			cs = fuip.Stopped:Connect(function(curpa)
				onSelected(tostring(curpa))
			end)

			cc = fuip.Changed:Connect(function(Change)
				onChange(Change)
			end)


			function c:newList(newLis)
				for i,v in pairs(ListsOBJ) do v:Destroy() end table.clear(ListsOBJ)
				for i,v in ipairs(newLis) do
					local selection = Instance.new("TextLabel",f)
					selection.Name = v
					selection.Text = v
					selection.Transparency = 1
					selection.TextWrapped = true
					selection.Size = UDim2.fromScale(1,1)
					selection.TextSize = textsize
					selection.TextTransparency = 0
					table.insert(ListsOBJ,selection)
				end
			end

			function c:newOnSelected(func)
				cs:Disconnect()
				cs = fuip.Stopped:Connect(function(curpa)
					func(tostring(curpa))
				end)
			end

			function c:newOnChanged(func)
				cc:Disconnect()
				cc = fuip.Changed:Connect(function(Change)
					func(Change)
				end)
			end

			return c
		end

		function b:LargeTextBox(Name,Text,Hint,COF,OnChanged)
			local c = {}
			local g

			local d = Instance.new("Frame",s)
			local dc = Instance.new("UICorner",d)
			local du = Instance.new("UIListLayout",d)
			local e = Instance.new("TextLabel",d)
			local eu = Instance.new("UICorner",e)
			local f = Instance.new("TextBox",d)
			local fu = Instance.new("UICorner",f)


			Name = Name or "LargeTextBox"
			Text = Text or "Text"
			Hint = Hint or "Text"
			COF = COF or false

			OnChanged = OnChanged or function() end

			d.Name = Name
			d.BackgroundColor3 = Frame_Color_Opposite
			d.BackgroundTransparency = .9
			d.Position = UDim2.new(.1, 0, .52, 0)
			d.Size = UDim2.new(.8, 0, 0, 100)

			du.HorizontalAlignment = Enum.HorizontalAlignment.Center
			du.SortOrder = Enum.SortOrder.LayoutOrder

			e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e.BackgroundTransparency = 1
			e.Size = UDim2.new(1, 0, .2, 0)
			e.Font = EnumFont
			e.Text = Name
			e.TextColor3 = Text_Color_Opposite
			e.TextSize = textsize
			e.TextWrapped = true

			f.BackgroundColor3 = Frame_Color_Opposite
			f.BackgroundTransparency = .9
			f.ClipsDescendants = true
			f.Size = UDim2.new(1, 0, .8, 0)
			f.ClearTextOnFocus = false
			f.Font = EnumFont
			f.Text = Text
			f.PlaceholderText = Hint
			f.LayoutOrder = 1
			f.TextColor3 = Text_Color_Opposite
			f.TextSize = textsize
			f.TextWrapped = true
			f.TextXAlignment = Enum.TextXAlignment.Left
			f.TextYAlignment = Enum.TextYAlignment.Top

			g = f.Changed:Connect(function(Change)
				OnChanged(Change)
			end)

			function c:newTitle(nText)
				e.Text = tostring(nText)
			end

			function c:setText(nText)
				f.Text = tostring(nText)
			end

			function c:getCurrentText()
				return f.Text
			end

			function c:newOnChanged(func)
				g:Disconnect()
				g = f.Changed:Connect(function(Change)
					func(Change)
				end)
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding2)

			return c
		end

		function b:Slider(Name,MaxValue,CurrentValue,OnSeek)
			Name = Name or "Slider"
			MaxValue = MaxValue or 100
			CurrentValue = CurrentValue or 0
			OnSeek = OnSeek or function() end
			local X = {}

			local a = Instance.new("Frame",s)
			a.Name = Name
			a.BackgroundColor3 = Frame_Color_Opposite
			a.BackgroundTransparency = .9
			a.Position = UDim2.new(.1, 0, .08, 0)
			a.Size = UDim2.new(.8, 0, 0, 50)
			local UICorner = Instance.new("UICorner",a)
			local UIListLayout = Instance.new("UIListLayout",a)
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			local b = Instance.new("Frame",a)
			b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			b.BackgroundTransparency = 1
			b.Size = UDim2.new(1, 0, .5, 0)
			local c = Instance.new("TextLabel",b)
			c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			c.BackgroundTransparency = 1
			c.Position = UDim2.new(1.22, 0, 2.28, 0)
			c.Size = UDim2.new(.75, 0, 1, 0)
			c.Font = EnumFont
			c.Text = Name
			c.TextColor3 = Text_Color_Opposite
			c.TextSize = 14
			local d = Instance.new("TextBox",b)
			d.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
			d.BackgroundTransparency = .9
			d.Size = UDim2.new(0.25, 0, 1, 0)
			d.Font = EnumFont
			d.Text = ''
			d.LayoutOrder = 1
			d.TextColor3 = Text_Color_Opposite
			d.TextSize = 14
			local UICorner_2 = Instance.new("UICorner",d)
			local UIListLayout_2 = Instance.new("UIListLayout",b)
			UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			local e = Instance.new("Frame",a)
			e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e.BackgroundTransparency = 1
			e.Size = UDim2.new(1, 0, .5, 0)
			local UIListLayout_3 = Instance.new("UIListLayout",e)
			UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			local f = Instance.new("Frame",e)
			f.BackgroundColor3 = Frame_Color_Opposite
			f.BackgroundTransparency = .9
			f.BorderColor3 = Color3.fromRGB(27, 42, 53)
			f.Size = UDim2.new(1, 0, 1, 0)
			local UICorner_3 = Instance.new("UICorner",f)
			local UIListLayout_4 = Instance.new("UIListLayout",f)
			UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
			local g = Instance.new("ImageButton",f)
			g.BackgroundColor3 = Frame_Color_Opposite
			g.BackgroundTransparency = .9
			g.Size = UDim2.new(.9, 0, .62, 0)
			g.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			g.ImageTransparency = 1
			local UICorner_4 = Instance.new("UICorner",g)
			local h = Instance.new("Frame",g)
			h.BackgroundColor3 = Frame_Color_Opposite
			h.BackgroundTransparency = .7
			h.BorderColor3 = Color3.fromRGB(27, 42, 53)
			h.ClipsDescendants = true
			local UICorner_5 = Instance.new("UICorner",h)

			local uis = game:GetService("UserInputService")
			local editbox = d
			local sliderbar = h
			local isdragg = false
			local max = MaxValue
			local min = 0
			local current = CurrentValue
			local gui = g
			local movinggui = sliderbar
			local dragging
			local dragInput
			local dragStart
			local startPos
			movinggui.Size = UDim2.new(current/max,0, 1,0)
			
			editbox.Changed:Connect(function()
				if not isdragg then
					local allowed = {
						[""] = true,
						["-"] = true
					}
					local text = editbox.Text

					if typeof(tonumber(text)) == nil then
						editbox.Text = text:sub(1, #text - 1)
					elseif typeof(tonumber(text)) == "number" then
						current = tonumber(text)
						movinggui.Size = UDim2.new((current-min)/max/math.sqrt((-min+max)/100),0, 1,0)
					end
				end
			end)

			local function update(input)
				local delta = input.Position - dragStart
				local x = startPos.X.Scale + delta.X/150
				wait(.01)
				x = math.clamp(x, 0, 1)
				current = min + (max - min) * x
				local z = (current-min)/max
				if min < 0 then
					z = (current-min)/max/math.sqrt((-min+max)/100)
				end
				if startPos.X.Scale + delta.X/150 > 0 then
					if startPos.X.Scale + delta.X/150 < 1 then
						movinggui.Size = UDim2.new(z,0, 1,0)
					else
						movinggui.Size = UDim2.new(1,0, 1,0)
					end
				else
					movinggui.Size = UDim2.new(0, 0, 1, 0)
				end
				editbox.Text = math.round(current)
			end

			gui.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					dragStart = input.Position
					startPos = movinggui.Size

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

			uis.InputChanged:Connect(function(input)
				if input == dragInput and dragging then
					update(input)
				end
			end)

			function X:setText(nText)
				c.Text = tostring(nText)
			end

			function X:setcurrentValue(Value)
				current = Value
				movinggui.Size = UDim2.new(Value/max,0, 1,0)
			end

			function X:getcurrentValue()
				return current
			end

			function X:setmaxValue(Value)
				max = Value
			end

			function X:newOnSeek(func)
				OnSeek = func
			end

			s.Size = s.Size + UDim2.new(0,0,0,padding3)

			return X
		end

		return b
	end

	return lol
end

return e

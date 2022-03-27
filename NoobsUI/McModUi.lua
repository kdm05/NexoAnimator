local e = {}

function e:Ui(name,CanDrag)
	local f = Instance.new("ScreenGui",game:GetService("CoreGui"))
	f.Name = name
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

	function lol.newWindow(TitleText,color3,rotation,EnumFont)
		local b = {}
		windowsCreated = windowsCreated + 1
		local s = Instance.new("Frame",f)
		local s2 = Instance.new("TextLabel",s)
		local s3 = Instance.new("UICorner",s2)
		local s4 = Instance.new("UIListLayout",s)
		local s5 = Instance.new("UIGradient",s)
		local s6 = Instance.new("UICorner",s)
		
		EnumFont = EnumFont or Enum.Font.Code
		
		local padding1 = 34
		local padding2 = 104
		
		s.Name = TitleText
		s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		s.ClipsDescendants = true
		s.Position = UDim2.new(0, 50+(210*windowsCreated),0, 50)
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
		s2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		s2.BackgroundTransparency = 0.950
		s2.BorderColor3 = Color3.fromRGB(27, 42, 53)
		s2.Size = UDim2.new(1, 0, 0, 25)
		s2.Font = EnumFont
		s2.TextWrapped = true
		s2.Text = TitleText
		s2.TextColor3 = Color3.fromRGB(0, 0, 0)
		s2.TextSize = 14

		s4.HorizontalAlignment = Enum.HorizontalAlignment.Center
		s4.SortOrder = Enum.SortOrder.LayoutOrder
		s4.Padding = UDim.new(0, 2)

		if color3 ~= nil then
			if typeof(color3) == "Color3" then
				s5.Color = ColorSequence.new(color3)
			else
				if typeof(color3[1]) == "Color3" then
					s5.Color = ColorSequence.new(color3[1],color3[2])
				else
					s5.Color = ColorSequence.new(color3)
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
			e.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			e.BackgroundTransparency = 0.800
			e.BorderColor3 = Color3.fromRGB(27, 42, 53)
			e.Size = UDim2.new(0.800000012, 0, 0, 30)
			e.Font = EnumFont
			e.Text = ButtonText
			e.TextColor3 = Color3.fromRGB(0, 0, 0)
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
			e.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			e1.TextColor3 = Color3.fromRGB(0, 0, 0)
			e1.TextSize = 14

			e2.Active = false
			e2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			e2.BackgroundTransparency = 1
			e2.Position = UDim2.new(.59, 0, 0, 0)
			e2.Size = UDim2.new(.45, 0, 1, 0)
			e2.LayoutOrder = 1
			e2.ImageTransparency = 1

			e3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			e3.BackgroundTransparency = .9
			e3.Size = UDim2.new(1, 0, 1, 0)
			e3.Font = EnumFont
			e3.Text = string.split(tostring(CurrentKeybind),'.')[3]
			e3.TextWrapped = true
			e3.TextColor3 = Color3.fromRGB(0, 0, 0)
			e3.TextSize = 14

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
			g.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			titl.TextColor3 = Color3.fromRGB(0, 0, 0)
			titl.TextSize = 14

			sw.Active = false
			sw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sw.BackgroundTransparency = 1
			sw.LayoutOrder = 1
			sw.Position = UDim2.new(0.59, 0, 0, 0)
			sw.Size = UDim2.new(.45, 0, 1, 0)
			
			sw.ImageTransparency = 1

			hlf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			hlt.TextColor3 = Color3.fromRGB(0, 0, 0)
			hlt.TextSize = 14
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
			v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
			v.BackgroundTransparency = .8
			v.Size = UDim2.new(.8, 0, 0, 30)
			v.Font = EnumFont
			v.TextWrapped = true
			v.Text = Text
			v.TextColor3 = Color3.fromRGB(0, 0, 0)
			v.TextSize = 14
			
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
			c.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			e.TextColor3 = Color3.fromRGB(0, 0, 0)
			e.TextSize = 14

			h.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			h.BackgroundTransparency = .9
			h.ClipsDescendants = true
			h.Size = UDim2.new(.45, 0, 1, 0)
			h.ClearTextOnFocus = false
			h.Font = EnumFont
			h.Text = Text
			h.LayoutOrder = 1
			h.PlaceholderText = Hint
			h.TextColor3 = Color3.fromRGB(0, 0, 0)
			h.TextSize = 14
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
			d.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			e.TextColor3 = Color3.fromRGB(0, 0, 0)
			e.TextSize = 14
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
			g.TextColor3 = Color3.fromRGB(0, 0, 0)
			g.TextSize = 14
			
			for i,v in ipairs(List) do
				if v ~= nil then
					local selection = Instance.new("TextLabel",f)
					selection.Name = v
					selection.Text = v
					selection.Transparency = 1
					selection.TextWrapped = true
					selection.Size = UDim2.fromScale(1,1)
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
			d.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
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
			e.TextColor3 = Color3.fromRGB(0, 0, 0)
			e.TextSize = 14
			e.TextWrapped = true

			f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			f.BackgroundTransparency = .9
			f.ClipsDescendants = true
			f.Size = UDim2.new(1, 0, .8, 0)
			f.ClearTextOnFocus = false
			f.Font = EnumFont
			f.Text = Text
			f.PlaceholderText = Hint
			f.LayoutOrder = 1
			f.TextColor3 = Color3.fromRGB(0, 0, 0)
			f.TextSize = 14
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
		
		return b
	end
	
	return lol
end

return e

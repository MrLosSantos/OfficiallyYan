-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Frame.BorderSizePixel = 6
Frame.Position = UDim2.new(0, 826, 0, 0)
Frame.Size = UDim2.new(0, 270, 0, 165)

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

-- Scripts:

local function UPYH_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	function parentPressed()
	loadstring(game:HttpGet(('https://pastebin.com/raw/T7weKqag'),true))()	
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(UPYH_fake_script)()
local function KVSXKA_fake_script() -- TextButton_2.Script 
	local script = Instance.new('Script', TextButton_2)

	function parentPressed()
	loadstring(game:HttpGet("https://pastebin.com/raw/F3JvpCDM",true))()	
	end
	script.Parent.MouseButton1Down:Connect(parentPressed)
end
coroutine.wrap(KVSXKA_fake_script)()
local function XOTYXI_fake_script() -- Frame.LocalScript 
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
coroutine.wrap(XOTYXI_fake_script)()

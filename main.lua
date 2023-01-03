-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local DeltaWare = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local VelocityFly = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local PlaceHolder = Instance.new("TextButton")
local PlaceHolder_2 = Instance.new("TextButton")
local Exit = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

DeltaWare.Name = "DeltaWare"
DeltaWare.Parent = ScreenGui
DeltaWare.BackgroundColor3 = Color3.fromRGB(27, 27, 57)
DeltaWare.BorderColor3 = Color3.fromRGB(27, 42, 53)
DeltaWare.BorderSizePixel = 0
DeltaWare.Position = UDim2.new(0.109928794, 0, 0.199071884, 0)
DeltaWare.Size = UDim2.new(0, 423, 0, 46)
DeltaWare.ZIndex = 3
DeltaWare.Font = Enum.Font.RobotoMono
DeltaWare.Text = "DeltaWare"
DeltaWare.TextColor3 = Color3.fromRGB(200, 200, 255)
DeltaWare.TextScaled = true
DeltaWare.TextSize = 14.000
DeltaWare.TextWrapped = true

Frame.Parent = DeltaWare
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 43)
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.000425510487, 0, -0.00512562646, 0)
Frame.Size = UDim2.new(0, 423, 0, 258)

VelocityFly.Name = "Velocity Fly"
VelocityFly.Parent = Frame
VelocityFly.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
VelocityFly.Position = UDim2.new(0.0472813249, 0, 0.232558146, 0)
VelocityFly.Size = UDim2.new(0, 182, 0, 17)
VelocityFly.Font = Enum.Font.RobotoMono
VelocityFly.Text = "Velocity Fly"
VelocityFly.TextColor3 = Color3.fromRGB(27, 27, 47)
VelocityFly.TextScaled = true
VelocityFly.TextSize = 14.000
VelocityFly.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = Frame
Speed.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
Speed.Position = UDim2.new(0.520094573, 0, 0.232558146, 0)
Speed.Size = UDim2.new(0, 182, 0, 17)
Speed.Font = Enum.Font.RobotoMono
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(27, 27, 47)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

PlaceHolder.Name = "PlaceHolder"
PlaceHolder.Parent = Frame
PlaceHolder.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
PlaceHolder.Position = UDim2.new(0.520094573, 0, 0.337209284, 0)
PlaceHolder.Size = UDim2.new(0, 182, 0, 17)
PlaceHolder.Font = Enum.Font.RobotoMono
PlaceHolder.Text = "PlaceHolder"
PlaceHolder.TextColor3 = Color3.fromRGB(27, 27, 47)
PlaceHolder.TextScaled = true
PlaceHolder.TextSize = 14.000
PlaceHolder.TextWrapped = true

PlaceHolder_2.Name = "PlaceHolder"
PlaceHolder_2.Parent = Frame
PlaceHolder_2.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
PlaceHolder_2.Position = UDim2.new(0.0472813249, 0, 0.337209284, 0)
PlaceHolder_2.Size = UDim2.new(0, 182, 0, 17)
PlaceHolder_2.Font = Enum.Font.RobotoMono
PlaceHolder_2.Text = "PlaceHolder"
PlaceHolder_2.TextColor3 = Color3.fromRGB(27, 27, 47)
PlaceHolder_2.TextScaled = true
PlaceHolder_2.TextSize = 14.000
PlaceHolder_2.TextWrapped = true

Exit.Archivable = false
Exit.Name = "Exit"
Exit.Parent = Frame
Exit.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.900161803, 0, 0.000913871336, 0)
Exit.Size = UDim2.new(0, 42, 0, 45)
Exit.ZIndex = 20
Exit.Font = Enum.Font.RobotoMono
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(27, 27, 47)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

-- Scripts:
Exit.MouseButton1Down:Connect(function()
ScreenGui.Parent = workspace
end)
local function ODUXCVZ_fake_script() -- VelocityFly.LocalScript 
	local script = Instance.new('LocalScript', VelocityFly)

	toggled = false
	script.Parent.MouseButton1Down:Connect(function()
		if toggled == false then
			toggled = true
			_G.velfly = true
		bodyvelocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
			while _G.velfly do
				wait()
			if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
				bodyvelocity.Velocity = Vector3.new(game.Players.LocalPlayer.Character.Humanoid.MoveDirection.X*150,game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Y*150,game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Z*150)
			end
			end
			
		else
			toggled = false
			_G.velfly = false
			bodyvelocity:Destroy()
		end
		
	end)
	
end
coroutine.wrap(ODUXCVZ_fake_script)()
local function BGEBGH_fake_script() -- Speed.LocalScript 
	local script = Instance.new('LocalScript', Speed)

	toggled = false
	script.Parent.MouseButton1Down:Connect(function()
		if toggled == false then
			toggled = true
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
			
		else
			toggled = false
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
		
	end)
	
end
coroutine.wrap(BGEBGH_fake_script)()
local function KLNTER_fake_script() -- PlaceHolder.LocalScript 
	local script = Instance.new('LocalScript', PlaceHolder)

	toggled = false
	script.Parent.MouseButton1Down:Connect(function()
		if toggled == false then
			toggled = true
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
			
		else
			toggled = false
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
		
	end)
	
end
coroutine.wrap(KLNTER_fake_script)()
local function FUEAZLU_fake_script() -- PlaceHolder_2.LocalScript 
	local script = Instance.new('LocalScript', PlaceHolder_2)

	toggled = false
	script.Parent.MouseButton1Down:Connect(function()
		if toggled == false then
			toggled = true
			_G.velfly = true
		bodyvelocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
			while _G.velfly do
				wait()
			if game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
				bodyvelocity.Velocity = Vector3.new(game.Players.LocalPlayer.Character.Humanoid.MoveDirection.X*150,game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Y*150,game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Z*150)
			end
			end
			
		else
			toggled = false
			_G.velfly = false
			bodyvelocity:Destroy()
		end
		
	end)
	
end
coroutine.wrap(FUEAZLU_fake_script)()
local function SBGRHMI_fake_script() -- Exit.LocalScript 
	local script = Instance.new('LocalScript', Exit)

	
	script.Parent.MouseButton1Down:Connect(function()
		
		
	end)
	
end
coroutine.wrap(SBGRHMI_fake_script)()
local function IYWD_fake_script() -- DeltaWare.LocalScript 
	local script = Instance.new('LocalScript', DeltaWare)

	script.Parent.Active = true
	script.Parent.Draggable = true
	script.Parent.Selectable = true
end
coroutine.wrap(IYWD_fake_script)()

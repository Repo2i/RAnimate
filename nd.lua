
local TweenService = game:GetService("TweenService")
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local siriGui = Instance.new("ScreenGui")
siriGui.Parent = playerGui

local blurBackground = Instance.new("Frame")
blurBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
blurBackground.BackgroundTransparency = 0.6 
blurBackground.Size = UDim2.new(1, 0, 1, 0)
blurBackground.Parent = siriGui

local dialogueFrame = Instance.new("Frame")
dialogueFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22) -- Slightly lighter for depth
dialogueFrame.Size = UDim2.new(0, 600, 0, 340) -- Fixed size for consistency
dialogueFrame.Position = UDim2.new(0.5, -300, 0.5, -170) -- Centered
dialogueFrame.Parent = siriGui

local dialogueCorner = Instance.new("UICorner")
dialogueCorner.CornerRadius = UDim.new(0.1, 0) -- Increased radius for a softer look
dialogueCorner.Parent = dialogueFrame

local siriIcon = Instance.new("ImageLabel")
siriIcon.Image = "rbxassetid://5497572149" -- Update with your asset
siriIcon.Size = UDim2.new(0, 80, 0, 80)
siriIcon.Position = UDim2.new(0.5, -40, 0.1, -40)
siriIcon.BackgroundTransparency = 1
siriIcon.Parent = dialogueFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "Orange Justice"
titleLabel.Font = Enum.Font.GothamSemibold
titleLabel.TextSize = 28
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 50)
titleLabel.Parent = dialogueFrame

local descriptionText = Instance.new("TextLabel")
descriptionText.Text = "a special thank to a emper for help and her emper reanim"
descriptionText.Font = Enum.Font.Gotham
descriptionText.TextSize = 20
descriptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
descriptionText.BackgroundTransparency = 1
descriptionText.Size = UDim2.new(0.9, 0, 0.4, 0)
descriptionText.Position = UDim2.new(0.05, 0, 0.25, 0)
descriptionText.TextWrapped = true
descriptionText.Parent = dialogueFrame

local enableButton = Instance.new("TextButton")
enableButton.Text = "launch the h0x"
enableButton.Font = Enum.Font.GothamBold
enableButton.TextSize = 22
enableButton.TextColor3 = Color3.fromRGB(255, 255, 255)
enableButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
enableButton.Size = UDim2.new(0, 200, 0, 50)
enableButton.Position = UDim2.new(0.5, -220, 1, -60)
enableButton.Parent = dialogueFrame

local enableButtonCorner = Instance.new("UICorner")
enableButtonCorner.CornerRadius = UDim.new(0.05, 0)
enableButtonCorner.Parent = enableButton

local declineButton = Instance.new("TextButton")
declineButton.Text = "no thanks"
declineButton.Font = Enum.Font.Gotham
declineButton.TextSize = 18
declineButton.TextColor3 = Color3.fromRGB(255, 255, 255)
declineButton.BackgroundTransparency = 1 -- Transparent to mimic a text link
declineButton.Size = UDim2.new(0, 200, 0, 50)
declineButton.Position = UDim2.new(0.5, -100, 0, 450) -- Move it down to make space
declineButton.Parent = dialogueFrame

local settingsPanel = Instance.new("Frame")
settingsPanel.Size = UDim2.new(0, 300, 0, 500) -- Adjust size as needed
settingsPanel.Position = UDim2.new(0.5, -150, 0.5, -250) -- Centered on screen
settingsPanel.BackgroundColor3 = Color3.fromRGB(242, 242, 242)
settingsPanel.Parent = ScreenGui -- Ensure screenGui is already defined

local showSettingButton = Instance.new("TextButton")
showSettingButton.Size = UDim2.new(0, 200, 0, 50)
showSettingButton.Position = UDim2.new(0.5, 20, 1, -60) -- Just above the "Decline Siri" button
showSettingButton.Text = "Show Setting"
showSettingButton.Parent = settingsPanel

local additionalSetting = Instance.new("Frame")
additionalSetting.Size = UDim2.new(0, 280, 0, 100) -- Example size, adjust as needed
additionalSetting.Position = UDim2.new(0.5, -140, 0, 280) -- Position to be revealed above "Show Setting"
additionalSetting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
additionalSetting.Visible = true -- Hidden by default
additionalSetting.Parent = settingsPanel

-- Add content to additionalSetting as needed, e.g., more iOS-style switches

-- Create UIGradient
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 23)), -- Green at the start
    ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 0, 0)) -- Black towards the end
})
gradient.Rotation = 34
gradient.Parent = dialogueFrame

local declineStroke = Instance.new("UIStroke")
declineStroke.Color = Color3.fromRGB(255, 255, 255)
declineStroke.Transparency = 1 -- Initially invisible
declineStroke.Parent = declineButton

enableButton.MouseEnter:Connect(function()
    enableButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
end)
enableButton.MouseLeave:Connect(function()
    enableButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
end)

declineButton.MouseEnter:Connect(function()
    declineButton.TextColor3 = Color3.fromRGB(200, 200, 200)
    declineStroke.Transparency = 0 
end)
declineButton.MouseLeave:Connect(function()
    declineButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    declineStroke.Transparency = 1 
end)

-- Create the ScreenGui
-- i stuck this line code like 2 minute
enableButton.MouseButton1Click:Connect(function()
    -- Emperean Reanimation V2.2
-- emperss#0, discord.gg/5PMtk6PJf5



local Emperean = loadstring(game:HttpGet("https://raw.githubusercontent.com/Empereans/EmpereanReanimate/main/Versions/ERV2.2.lua"))()

local CFrame = CFrame
local CFrameAngles = CFrame.Angles
local CFrameidentity = CFrame.identity

local Table = Emperean.Start({
	Accessories = {
		--[[
		https://www.roblox.com/catalog/14532301415/1x1x1x1-s-Torso
		]]
		{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "14413791480", TextureId = "14413794823", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
		
		--[[
		Resized Hats:
		Wear this head for it to work: https://www.roblox.com/catalog/2493588193/Knights-of-Redcliff-Paladin-Head
		https://www.roblox.com/catalog/12867841874/Tall-Rectangle-Head-Dark-Grey
		https://www.roblox.com/catalog/12867846420/Tall-Rectangle-Head-Grey
		https://www.roblox.com/catalog/12867904652/Light-Grey-Smiley-Rectangle-Head
		https://www.roblox.com/catalog/12867898930/Grey-Smiley-Rectangle-Head
		]]

		{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "12867814848", TextureId = "12794084950", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 0, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "12867814848", TextureId = "12867874342", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, - 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "12867814848", TextureId = "12867873138", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "12867814848", TextureId = "12794082919", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 0, 0), AlternativeCFrame = CFrameidentity },

		--[[
		Alternative limbs:
		( Don't wear the previous head )
		https://www.roblox.com/catalog/12344591101/Extra-Right-hand-moving-Blocky-white
		https://www.roblox.com/catalog/12344545199/Extra-Left-hand-moving-Blocky-white
		https://www.roblox.com/catalog/11159410305/Rectangle-Head-For-Headless
		https://www.roblox.com/catalog/11263254795/Dummy-Head-For-Headless
		]]

		{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "12344206657", TextureId = "12344206675", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "12344207333", TextureId = "12344207341", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "11263221350", TextureId = "11263219250", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, - 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "11159370334", TextureId = "11159284657", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },

		--[[
		Free Rig:
		https://www.roblox.com/catalog/4819740796/Robox
		https://www.roblox.com/catalog/4391384843/International-Fedora-Russia
		https://www.roblox.com/catalog/4154538250/International-Fedora-Chile
		https://www.roblox.com/catalog/4094878701/International-Fedora-Mexico
		https://www.roblox.com/catalog/4489239608/International-Fedora-United-Kingdom
		]]

		{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "4819720316", TextureId = "4819722776", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "4324138105", TextureId = "4391374782", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "4154474745", TextureId = "4154474807", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "4094864753", TextureId = "4094881938", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },
		{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "4489232754", TextureId = "4489233876", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },
	},
	Debug = {
		Transparency = 1,
		TeleportRandom = true
	},
	R15 = false,
	Fling = true,
	DisableScripts = false,
	DisableGUIs = false,
})


showSettingButton.MouseButton1Click:Connect(function()
    additionalSetting.Visible = not additionalSetting.Visible
    showSettingButton.Text = additionalSetting.Visible and "Hide Setting" or "Show Setting"
    -- Adjust the "Decline Siri" button position based on the visibility of additionalSetting
    if additionalSetting.Visible then
        declineButton.Position = UDim2.new(0.5, -100, 0, 390) -- Move up when additional setting is shown
    else
        declineButton.Position = UDim2.new(0.5, -100, 0, 450) -- Move down when additional setting is hidden
    end
end)


wait(.1)

-- Created by Nebula_Zorua --
-- Banisher Infinite --
-- A fanmade banisher --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA

wait(1/60)

--// Initializing \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local Plrs = S.Players
local Plr = Plrs.LocalPlayer
local Char = Plr.Character
local Hum = Char:FindFirstChildOfClass'Humanoid'
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Torso = Char.Torso
local Head = Char.Head
local NeutralAnims = true
local Attack = false
local BloodPuddles = {}
local Effects = {}
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local BanishedEvents = {}


--// Effect Thread System \\--


--// Debounce System \\--

function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

--// Shortcut Variables \\--
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
--// Instance Creation Functions \\--

function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.Anchored = anchored or true
	part.CanCollide = cancollide or false
	part.Parent = parent or Char
	return part
end
function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end



--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Customization \\--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new'Really red'
local MusicID = 1119237438
local ChatSounds = {["You will know pain."] = 907333294,["Submit now."] = 907330103,["I will show you true power."] = 907329532, ["Your death is assured."] = 907332670, ["My attacks will tear you apart!"] = 907329893, ["Most worrying indeed."] = 1395854043}
local TauntDialogues = {"I'll cut you!", "I'll blast your head off!","Submit now.","Your death is assured.", "I will show you true power.", "You will know pain.","My attacks will tear you apart!"}

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
local Effects = IN("Folder",Char)
Effects.Name = "Effects"

pcall(function() Char.ReaperShadowHead.Eye1.BrickColor = BrickColor.new'Really red' Char.ReaperShadowHead.Eye1.Material = 'Glass' end)
pcall(function() Char.ReaperShadowHead.Eye2.BrickColor = BrickColor.new'Really red' Char.ReaperShadowHead.Eye2.Material = 'Glass' end)
pcall(function() Char.LeftWing.BrickColor = BrickColor.new'Really red' Char.LeftWing.Transparency = 0.5 end)

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Ulta_Caliber = New("Model",Char,"Ulta_Caliber",{})
Handle = New("Part",Ulta_Caliber,"Handle",{Material = Enum.Material.Metal,Size = Vector3.new(1.13946342, 0.351685941, 0.328840196),CFrame = CFrame.new(-52.3439636, 4.31768751, -59.3824234, 0.5, -0.866025269, -1.57914513e-07, 0.866025269, 0.5, 3.60109915e-08, 4.7770822e-08, -1.5476347e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1, 1, 0.855579317),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(1.87730086, 0.396701694, 0.328840196),CFrame = CFrame.new(-50.9256058, 4.80724812, -59.3824234, 0.99999994, -2.24410021e-21, -1.57914513e-07, 0, 0.99999994, 3.60109773e-08, 1.57914499e-07, -3.60109809e-08, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(1, 1, 1.11225295),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -6.12576133e-15, 1.57914513e-07, 1.18124174e-14, 1, -3.60109809e-08, -1.57914513e-07, 3.60109809e-08, 1),C1 = CFrame.new(1.13315201, -0.98355484, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade = New("Part",Ulta_Caliber,"Blade",{BrickColor = BrickColor.new("Quill grey"),Material = Enum.Material.Ice,Size = Vector3.new(0.328840256, 0.328840226, 0.572665811),CFrame = CFrame.new(-50.9072571, 4.11668205, -59.3754196, -2.32669322e-07, -0.00661635399, 0.999977946, -1.28771217e-06, 0.999977946, 0.00661635399, -1, -1.28614465e-06, -2.41184125e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.87451, 0.87451, 0.870588),})
WMesh =New("SpecialMesh",Blade,"Mesh",{Scale = Vector3.new(0.0978527591, 0.790156424, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade,"mot",{Part0 = Blade,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -2.32669336e-07, -1.28771228e-06, -1, -0.00661629438, 0.999978125, -1.28614465e-06, 0.999978125, 0.00661629438, -2.41184125e-07),C1 = CFrame.new(0.544277191, -1.34472656, 0.00700378418, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.1684952, 4.40930319, -59.3824196, 0.70710665, -0.70710665, -1.57914471e-07, 0.70710665, 0.70710665, 3.60109986e-08, 8.61987672e-08, -1.37126023e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.385011137, 0.748631597, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.707106829, 0.707106829, 8.61987814e-08, -0.707106829, 0.707106829, -1.37126037e-07, -1.57914471e-07, 3.60110022e-08, 1),C1 = CFrame.new(1.16707611, -1.83820343, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-52.6288223, 3.82322454, -59.3824234, 5.96046377e-08, -0.999999881, -2.24250414e-08, 0.999999881, 5.96046519e-08, -5.41976775e-09, 5.41976064e-09, -2.2425013e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.543293059, 0.924025238, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 5.96046519e-08, 1, 5.41976819e-09, -1, 5.96046519e-08, -2.24250307e-08, -2.24250307e-08, -5.41976686e-09, 1),C1 = CFrame.new(-0.570646286, -0.000537872314, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-52.8299942, 3.82262015, -59.3813744, 1.57915409e-07, 5.96046306e-08, 0.999999881, 4.68513015e-08, 0.999999881, -5.96046448e-08, -1, 4.68513228e-08, 1.57915395e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
WMesh =New("SpecialMesh",WPart,"Mesh",{Scale = Vector3.new(0.861996353, 0.541153729, 0.299452811),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.57915409e-07, 4.68513122e-08, -1, 5.96046519e-08, 1, 4.68513264e-08, 1, -5.9604659e-08, 1.57915409e-07),C1 = CFrame.new(-0.671756744, 0.173381805, 0.00104904175, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.344652593, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.1012497, 4.28257656, -59.3753929, 0.70710665, 0.70710665, -1.20777344e-07, -0.70710665, 0.70710665, 1.25668052e-07, 1.74263192e-07, -3.45828965e-09, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 0.98605454, 0.727242351),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.707106829, -0.707106829, 1.74263207e-07, 0.707106829, 0.707106829, -3.45827589e-09, -1.20777329e-07, 1.25668066e-07, 1),C1 = CFrame.new(0.590950012, -1.0937767, 0.00703048706, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.7306976, 4.31373549, -59.3824272, 0.432455212, -0.901655316, 1.27368111e-07, 0.901655316, 0.432455212, -3.95984443e-07, 3.01960569e-07, 2.86087754e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.541154027, 0.370038033, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.432455301, 0.901655436, 3.01960569e-07, -0.901655436, 0.432455301, 2.86087754e-07, 1.27368125e-07, -3.959845e-07, 1),C1 = CFrame.new(0.303211212, -0.533081055, -3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.7885818, 4.20838785, -59.3824234, 0.587423027, -0.809279799, -2.19202548e-07, 0.809279799, 0.587423027, -1.98992353e-07, 2.89805143e-07, -6.05034742e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.275924385, 0.370038033, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.587423146, 0.809279919, 2.89805172e-07, -0.809279919, 0.587423146, -6.05035027e-08, -2.19202548e-07, -1.98992367e-07, 1),C1 = CFrame.new(0.183034897, -0.535625458, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.8400269, 4.15359306, -59.3824234, 0.760836244, -0.648943782, -2.6871362e-07, 0.648943782, 0.760836244, -1.52704587e-07, 3.035438e-07, -5.81968678e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.275924385, 0.370038033, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.760836303, 0.648943841, 3.035438e-07, -0.648943841, 0.760836303, -5.8196882e-08, -2.68713649e-07, -1.52704587e-07, 1),C1 = CFrame.new(0.109859467, -0.518470764, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.9011612, 4.11773586, -59.3824234, 0.91851747, -0.395380199, -1.96948804e-08, 0.395380199, 0.91851747, -6.96443863e-07, 2.93450228e-07, 6.31909018e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.275924385, 0.370038033, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.91851759, 0.395380259, 2.93450228e-07, -0.395380259, 0.91851759, 6.31909018e-07, -1.96948431e-08, -6.96443919e-07, 1),C1 = CFrame.new(0.0482387543, -0.483455658, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.356609762, 0.328840226, 0.328840196),CFrame = CFrame.new(-52.0863571, 4.12933016, -59.3824234, 0.991345346, 0.131278723, -5.39203029e-08, -0.131278723, 0.991345346, -9.33255933e-07, -6.90630628e-08, 9.32257819e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 0.370038033, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.991345525, -0.131278753, -6.90630415e-08, 0.131278753, 0.991345525, 9.32257819e-07, -5.392031e-08, -9.33256047e-07, 1),C1 = CFrame.new(-0.034318924, -0.317272186, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-52.1749916, 4.05356789, -59.3820763, 0.991345346, 0.131278723, -5.39203029e-08, -0.131278723, 0.991345346, -9.33255933e-07, -6.90630628e-08, 9.32257819e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.994611204, 0.301591754, 0.699436307),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.991345525, -0.131278753, -6.90630415e-08, 0.131278753, 0.991345525, 9.32257819e-07, -5.392031e-08, -9.33256047e-07, 1),C1 = CFrame.new(-0.144248962, -0.278392792, 0.000347137451, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-52.0123367, 4.06675053, -59.3824272, 0.793815136, -0.608158827, -7.65793686e-08, 0.608158827, 0.793815136, -8.4843424e-07, 5.7677272e-07, 6.26927658e-07, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.346509725, 0.370038033, 0.684463739),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.793815255, 0.608158886, 5.7677272e-07, -0.608158886, 0.793815255, 6.26927715e-07, -7.65793615e-08, -8.48434354e-07, 1),C1 = CFrame.new(-0.0515041351, -0.412666321, -3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.827166021, 0.351685941, 0.328840196),CFrame = CFrame.new(-52.1878128, 4.82334518, -59.3845367, 0.999954939, 0.00948500633, -7.15095894e-09, -0.00948500633, 0.999954939, 7.46392743e-08, 7.85854581e-09, -7.45681135e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 1, 0.573238373),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999955058, -0.00948503613, 7.85857424e-09, 0.00948503613, 0.999955058, -7.45681064e-08, -7.1509394e-09, 7.46392885e-08, 1),C1 = CFrame.new(0.515987396, 0.117599487, -0.00211334229, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.364346951, 0.350982577, 0.328840196),CFrame = CFrame.new(-52.3578377, 4.71502256, -59.3845367, -0.870376885, -0.492385834, 1.83688564e-06, 0.492385834, -0.870376885, 4.2302986e-07, 1.3904895e-06, 1.2726523e-06, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 1, 0.573238373),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.870377064, 0.492385924, 1.3904895e-06, -0.492385924, -0.870377064, 1.2726523e-06, 1.83688599e-06, 4.2302986e-07, 1),C1 = CFrame.new(0.337165833, 0.210681915, -0.00211334229, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.2399673, 4.18922997, -59.3753929, 0.470120013, 0.882602334, -6.54556175e-07, -0.882602334, 0.470120013, -3.05826063e-07, 3.77971503e-08, 7.21487936e-07, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(0.789272487, 0.271646053, 0.727242351),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.470120043, -0.882602453, 3.77971396e-08, 0.882602453, 0.470120043, 7.21487936e-07, -6.54556288e-07, -3.0582612e-07, 1),C1 = CFrame.new(0.440750122, -1.02031708, 0.00703048706, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(1.22879124, 0.618263781, 0.328840196),CFrame = CFrame.new(-50.7363968, 4.58814573, -59.3824234, 0.999999881, -2.98023224e-08, -1.57914513e-07, 2.98023224e-08, 0.999999881, 3.60109738e-08, 1.57914499e-07, -3.60109844e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 1, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -6.12576133e-15, 1.57914513e-07, 1.18124174e-14, 1, -3.60109809e-08, -1.57914513e-07, 3.60109809e-08, 1),C1 = CFrame.new(1.03800774, -1.25696564, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.859521151, 0.531045794, 0.328840196),CFrame = CFrame.new(-51.7777481, 4.63175058, -59.3824234, 0.999999881, -2.98023224e-08, -1.57914513e-07, 2.98023224e-08, 0.999999881, 3.60109738e-08, 1.57914499e-07, -3.60109844e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 1, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -6.12576133e-15, 1.57914513e-07, 1.18124174e-14, 1, -3.60109809e-08, -1.57914513e-07, 3.60109809e-08, 1),C1 = CFrame.new(0.555093765, -0.333324432, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.414286286, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.4174423, 4.47936392, -59.3824234, 0.5, 0.866025209, 2.92257027e-08, -0.866025209, 0.5, 1.03682424e-07, 7.51787468e-08, -7.7151455e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 0.265229613, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.50000006, -0.866025329, 7.51787468e-08, 0.866025329, 0.50000006, -7.7151455e-08, 2.92257365e-08, 1.03682439e-07, 1),C1 = CFrame.new(0.603277206, -0.721553802, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{Material = Enum.Material.Metal,Size = Vector3.new(0.527529478, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.0795135, 4.63236904, -59.3824196, -2.98023366e-08, -0.999999881, 3.74803335e-08, 0.999999881, -2.98023153e-08, -4.49242386e-08, 4.49242386e-08, 3.74803761e-08, 1),CanCollide = false,})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 0.263090521, 0.855579317),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.38707111e-16, 1, 4.49242421e-08, -1, -1.54506983e-15, 3.74803619e-08, 3.74803619e-08, -4.49242421e-08, 1),C1 = CFrame.new(1.40474701, -1.80373001, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
WPart = New("Part",Ulta_Caliber,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(1.17252171, 0.576061606, 0.328840196),CFrame = CFrame.new(-50.7363968, 4.55438519, -59.3753891, 0.999999881, -2.98023224e-08, -1.57914513e-07, 2.98023224e-08, 0.999999881, 3.60109738e-08, 1.57914499e-07, -3.60109844e-08, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",WPart,"Mesh",{Scale = Vector3.new(1, 1, 0.727242351),})
mot = New("Motor",WPart,"mot",{Part0 = WPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -6.12576133e-15, 1.57914513e-07, 1.18124174e-14, 1, -3.60109809e-08, -1.57914513e-07, 3.60109809e-08, 1),C1 = CFrame.new(1.00876999, -1.27384567, 0.00703430176, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade = New("Part",Ulta_Caliber,"Blade",{BrickColor = BrickColor.new("Quill grey"),Material = Enum.Material.Ice,Size = Vector3.new(0.328840256, 0.328840226, 0.605763316),CFrame = CFrame.new(-49.3369522, 4.12218142, -59.3754158, 1.84564726e-07, 0.00661724806, -0.999978065, 5.00432975e-07, -0.999978065, -0.00661724806, -1, -4.99200723e-07, -1.87872132e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.87451, 0.87451, 0.870588),})
WMesh =New("SpecialMesh",Blade,"Mesh",{Scale = Vector3.new(0.0978527591, 0.779461861, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade,"mot",{Part0 = Blade,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.84564712e-07, 5.00432975e-07, -1, 0.00661721826, -0.999978185, -4.9920078e-07, -0.999978185, -0.00661721826, -1.8787216e-07),C1 = CFrame.new(1.33419228, -2.70190048, 0.00700759888, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade = New("Part",Ulta_Caliber,"Blade",{BrickColor = BrickColor.new("Quill grey"),Material = Enum.Material.Ice,Size = Vector3.new(0.328840256, 0.328840226, 0.835727096),CFrame = CFrame.new(-50.0582809, 4.11805487, -59.3754158, -2.32669322e-07, -0.00661635399, 0.999977946, -1.28771217e-06, 0.999977946, 0.00661635399, -1, -1.28614465e-06, -2.41184125e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.87451, 0.87451, 0.870588),})
WMesh =New("SpecialMesh",Blade,"Mesh",{Scale = Vector3.new(0.0978527591, 0.790156424, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade,"mot",{Part0 = Blade,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -2.32669336e-07, -1.28771228e-06, -1, -0.00661629438, 0.999978125, -1.28614465e-06, 0.999978125, 0.00661629438, -2.41184125e-07),C1 = CFrame.new(0.969955444, -2.07927704, 0.00700759888, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade = New("Part",Ulta_Caliber,"Blade",{BrickColor = BrickColor.new("Quill grey"),Material = Enum.Material.Ice,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-49.5309296, 4.30089998, -59.3754158, -5.15544457e-07, -0.00661677122, -0.999978065, 1.41483298e-07, 0.999978065, -0.00661677122, 1, -1.44891516e-07, -5.14597104e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.87451, 0.87451, 0.870588),})
WMesh =New("SpecialMesh",Blade,"Mesh",{Scale = Vector3.new(0.0978527591, 0.31531024, 0.65928185),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade,"mot",{Part0 = Blade,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -5.15544514e-07, 1.41483355e-07, 1, -0.00661674142, 0.999978185, -1.44891501e-07, -0.999978185, -0.00661674142, -5.14597104e-07),C1 = CFrame.new(1.39197922, -2.44455338, 0.00700759888, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade2 = New("Part",Ulta_Caliber,"Blade2",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(0.328840256, 0.328840226, 1.44360781),CFrame = CFrame.new(-50.3589401, 4.14609241, -59.3749352, -1.8456474e-07, -0.00555405021, 0.999984503, 9.5615583e-08, -0.999984503, -0.00555405021, 1, 9.45890548e-08, 1.85092958e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
WMesh =New("BlockMesh",Blade2,"Mesh",{Scale = Vector3.new(0.0458685458, 0.541722536, 1),})
mot = New("Motor",Blade2,"mot",{Part0 = Blade2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.8456474e-07, 9.56156043e-08, 1, -0.00555405021, -0.999984622, 9.45890548e-08, 0.999984622, -0.00555405021, 1.85092958e-07),C1 = CFrame.new(0.843906403, -1.80487823, 0.00748825073, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Blade = New("Part",Ulta_Caliber,"Blade",{BrickColor = BrickColor.new("Quill grey"),Material = Enum.Material.Ice,Size = Vector3.new(0.328840256, 0.328840226, 0.705641866),CFrame = CFrame.new(-50.2675247, 4.12026787, -59.3754196, 1.84564726e-07, 0.00661724806, -0.999978065, 5.00432975e-07, -0.999978065, -0.00661724806, -1, -4.99200723e-07, -1.87872132e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.87451, 0.87451, 0.870588),})
WMesh =New("SpecialMesh",Blade,"Mesh",{Scale = Vector3.new(0.0978527591, 0.779461861, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade,"mot",{Part0 = Blade,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.84564712e-07, 5.00432975e-07, -1, 0.00661721826, -0.999978185, -4.9920078e-07, -0.999978185, -0.00661721826, -1.8787216e-07),C1 = CFrame.new(0.867248535, -1.8969574, 0.00700378418, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.2174072, 4.39788437, -59.3824196, -1.49011626e-07, -0.999999881, -1.98068761e-07, 0.999999881, -1.49011612e-07, -3.30714123e-08, 3.30713661e-08, -1.98068761e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(0.0855581015, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.49011612e-07, 1, 3.30713732e-08, -1, -1.49011612e-07, -1.98068776e-07, -1.98068776e-07, -3.30714016e-08, 1),C1 = CFrame.new(1.13273048, -1.80155182, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.520495594, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.9148941, 4.73376513, -59.3824234, 0.499999881, -0.866025329, -1.02213342e-07, 0.866025329, 0.499999881, 2.49974264e-09, 4.89418106e-08, -8.97692303e-08, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(1, 0.575376868, 1.11225307),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.5, 0.866025507, 4.89418248e-08, -0.866025507, 0.5, -8.97692303e-08, -1.02213335e-07, 2.49974352e-09, 1),C1 = CFrame.new(0.574869156, -0.163547516, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.730803668, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.3537521, 4.49474096, -59.3824234, 0.999999881, -1.49011655e-07, -3.99031308e-07, 1.49011626e-07, 0.999999881, -1.96114058e-07, 3.99031364e-07, 1.9611403e-07, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(1, 0.701574802, 1.11225307),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 1.49011598e-07, 3.99031393e-07, -1.49011683e-07, 1, 1.9611403e-07, -3.99031364e-07, -1.96114087e-07, 1),C1 = CFrame.new(1.14843941, -1.63504791, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Neon = New("Part",Ulta_Caliber,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.368567139, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.4424782, 4.61851454, -59.3824234, -0.258819222, -0.965925694, -2.34842005e-07, 0.965925694, -0.258819222, -3.79127165e-08, -2.41607623e-08, -2.36652511e-07, 1),CanCollide = false,Color = Color3.new(1, 0, 0),})
WMesh =New("BlockMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.109086163, 1.12936485),})
mot = New("Motor",Neon,"mot",{Part0 = Neon,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.21126747, -1.49632263, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.365753591, 0.62600112, 0.328840196),CFrame = CFrame.new(-49.9626884, 4.69178581, -59.3826065, 7.68042241e-07, -0.00064355135, -0.999999762, -9.31381408e-08, -0.999999762, 0.00064355135, -1, 9.26439014e-08, -7.68102325e-07),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("SpecialMesh",Part2,"Mesh",{Scale = Vector3.new(1, 1, 0.168976992),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 7.68042412e-07, -9.31381976e-08, -1, -0.00064358121, -0.999999881, 9.26438943e-08, -0.999999881, 0.000643581152, -7.68102325e-07),C1 = CFrame.new(1.51461601, -1.87519455, -0.000183105469, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.419210047, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.2704659, 4.60726166, -59.3824196, -0.258819252, -0.965925813, -2.34842005e-07, 0.965925813, -0.258819252, -3.7912713e-08, -2.41607623e-08, -2.36652539e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(1, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.28752899, -1.65091705, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.3136215, 4.95879316, -59.379261, 0.787994385, -0.615682065, 2.82908672e-07, 0.615682065, 0.787994385, -6.01714532e-07, 1.47534422e-07, 6.4832966e-07, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(0.840607285, 0.938997805, 0.442120701),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.787994564, 0.615682125, 1.47534436e-07, -0.615682125, 0.787994564, 6.4832966e-07, 2.82908701e-07, -6.01714646e-07, 1),C1 = CFrame.new(1.57038498, -1.43777466, 0.00316238403, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
CylinderWMesh =New("Part",Ulta_Caliber,"CylinderMesh",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.378414333, 0.377710849, 0.328840196),CFrame = CFrame.new(-50.0357437, 4.80339193, -59.39114, 2.98023224e-08, -0.999999881, 1.57914499e-07, -0.999999881, -2.98023224e-08, -3.60109773e-08, 3.60109915e-08, -1.57914499e-07, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("CylinderMesh",CylinderWMesh,"Mesh",{Scale = Vector3.new(1, 1, 0.876968741),})
mot = New("Motor",CylinderWMesh,"mot",{Part0 = CylinderWMesh,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.05101373e-15, -1, 3.6010988e-08, -1, -6.73767064e-15, -1.57914513e-07, 1.57914513e-07, -3.6010988e-08, -1),C1 = CFrame.new(1.57474327, -1.7561264, -0.00871658325, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Barrel = New("Part",Ulta_Caliber,"Barrel",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.378414333, 0.377710849, 0.328840196),CFrame = CFrame.new(-50.0357437, 4.80443621, -59.3890343, 2.98023224e-08, -0.999999881, 1.57914499e-07, -0.999999881, -2.98023224e-08, -3.60109773e-08, 3.60109915e-08, -1.57914499e-07, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("CylinderMesh",Barrel,"Mesh",{Scale = Vector3.new(1, 1.00999999, 0.79932487),})
mot = New("Motor",Barrel,"mot",{Part0 = Barrel,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.05101373e-15, -1, 3.6010988e-08, -1, -6.73767064e-15, -1.57914513e-07, 1.57914513e-07, -3.6010988e-08, -1),C1 = CFrame.new(1.57564735, -1.75560379, -0.00661087036, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.5515137, 4.3936615, -59.3824234, -1.49011626e-07, -0.999999881, -1.98068761e-07, 0.999999881, -1.49011612e-07, -3.30714123e-08, 3.30713661e-08, -1.98068761e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(0.0855581015, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.49011612e-07, 1, 3.30713732e-08, -1, -1.49011612e-07, -1.98068776e-07, -1.98068776e-07, -3.30714016e-08, 1),C1 = CFrame.new(0.962020874, -1.51432037, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.419210047, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.1192398, 4.60677624, -59.3824196, -0.258819222, -0.965925694, -2.34842005e-07, 0.965925694, -0.258819222, -3.79127165e-08, -2.41607623e-08, -2.36652511e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(1, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.36272049, -1.78212357, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.497987658, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.6954193, 4.64329672, -59.3824234, 0.258819222, 0.965925694, -2.51750805e-07, -0.965925694, 0.258819222, -1.35819789e-07, -6.60338912e-08, 2.78325388e-07, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(1, 0.562543094, 1.11225307),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.258819252, -0.965925813, -6.60338841e-08, 0.965925813, 0.258819252, 2.78325388e-07, -2.51750834e-07, -1.35819803e-07, 1),C1 = CFrame.new(1.10625839, -1.26487732, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Neon = New("Part",Ulta_Caliber,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.368567139, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.2807121, 4.61570024, -59.3824196, -0.258819252, -0.965925813, -2.34842005e-07, 0.965925813, -0.258819252, -3.7912713e-08, -2.41607623e-08, -2.36652539e-07, 1),CanCollide = false,Color = Color3.new(1, 0, 0),})
WMesh =New("BlockMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.109086163, 1.12936485),})
mot = New("Motor",Neon,"mot",{Part0 = Neon,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.28971481, -1.63782501, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.419210047, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.6045723, 4.60303879, -59.3824234, -0.258819282, -0.965925932, -2.34842005e-07, 0.965925932, -0.258819282, -3.79127094e-08, -2.41607623e-08, -2.36652568e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(1, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.11681747, -1.36368942, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.066185, 4.39740467, -59.3824196, -1.49011626e-07, -0.999999881, -1.98068761e-07, 0.999999881, -1.49011612e-07, -3.30714123e-08, 3.30713661e-08, -1.98068761e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(0.0855581015, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.49011612e-07, 1, 3.30713732e-08, -1, -1.49011612e-07, -1.98068776e-07, -1.98068776e-07, -3.30714016e-08, 1),C1 = CFrame.new(1.2079258, -1.93275452, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.419210047, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.4315338, 4.60514545, -59.3824234, -0.258819222, -0.965925694, -2.34842005e-07, 0.965925694, -0.258819222, -3.79127165e-08, -2.41607623e-08, -2.36652511e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(1, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.20516205, -1.5124855, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part2 = New("Part",Ulta_Caliber,"Part2",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-51.9104652, 4.60788345, -59.3824272, -0.588878095, -0.808221817, 1.09032158e-06, 0.808221817, -0.588878095, 8.42210341e-07, -3.86262684e-08, 1.37718132e-06, 1),CanCollide = false,Color = Color3.new(0.388235, 0.372549, 0.384314),})
WMesh =New("BlockMesh",Part2,"Mesh",{Scale = Vector3.new(0.534737229, 0.787132502, 1.11225307),})
mot = New("Motor",Part2,"mot",{Part0 = Part2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.588878155, 0.808221936, -3.8626272e-08, -0.808221936, -0.588878155, 1.37718132e-06, 1.0903218e-06, 8.42210511e-07, 1),C1 = CFrame.new(0.468067169, -0.230323792, -3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Part3 = New("Part",Ulta_Caliber,"Part3",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,Size = Vector3.new(0.328840256, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.3784828, 4.39577246, -59.3824234, -1.49011626e-07, -0.999999881, -1.98068761e-07, 0.999999881, -1.49011612e-07, -3.30714123e-08, 3.30713661e-08, -1.98068761e-07, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
WMesh =New("BlockMesh",Part3,"Mesh",{Scale = Vector3.new(0.0855581015, 0.188227236, 1.12080872),})
mot = New("Motor",Part3,"mot",{Part0 = Part3,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1.49011612e-07, 1, 3.30713732e-08, -1, -1.49011612e-07, -1.98068776e-07, -1.98068776e-07, -3.30714016e-08, 1),C1 = CFrame.new(1.05036354, -1.66311264, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Neon = New("Part",Ulta_Caliber,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.368567139, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.1280746, 4.61569977, -59.3824196, -0.258819222, -0.965925694, -2.34842005e-07, 0.965925694, -0.258819222, -3.79127165e-08, -2.41607623e-08, -2.36652511e-07, 1),CanCollide = false,Color = Color3.new(1, 0, 0),})
WMesh =New("BlockMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.109086163, 1.12936485),})
mot = New("Motor",Neon,"mot",{Part0 = Neon,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.36603165, -1.7700119, 3.81469727e-06, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})
Neon = New("Part",Ulta_Caliber,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.368567139, 0.328840226, 0.328840196),CFrame = CFrame.new(-50.6162033, 4.61738539, -59.3824234, -0.258819222, -0.965925694, -2.34842005e-07, 0.965925694, -0.258819222, -3.79127165e-08, -2.41607623e-08, -2.36652511e-07, 1),CanCollide = false,Color = Color3.new(1, 0, 0),})
WMesh =New("BlockMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.109086163, 1.12936485),})
mot = New("Motor",Neon,"mot",{Part0 = Neon,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.258819252, 0.965925813, -2.41607623e-08, -0.965925813, -0.258819252, -2.36652511e-07, -2.3484202e-07, -3.79127165e-08, 1),C1 = CFrame.new(1.12342644, -1.34643555, 0, 0.50000006, 0.866025329, 4.77708291e-08, -0.866025329, 0.50000006, -1.5476347e-07, -1.57914513e-07, 3.60109951e-08, 1),})

for i, v in pairs(Ulta_Caliber:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Transparency = 1
    end
end

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendats() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end

for _,v in next, Ulta_Caliber:GetDescendants() do
	if(v:IsA'BasePart')then
		v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'

--// Stop animations \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \\--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})
local HW = NewInstance('Weld',Char,{Part0=RArm,Part1=Handle,C0 = CF.N(0,-.5,-.4)* CF.A(M.R(0),M.R(90),M.R(-30))})
local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/Frame_Speed
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

--// Effect Function(s) \\--

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

function Bezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  = pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end

function Effect(data)
	local FX = data.Effect or 'ResizeAndFade'
	local Parent = data.Parent or Effects
	local Color = data.Color or C3.N(0,0,0)
	local Size = data.Size or V3.N(1,1,1)
	local MoveDir = data.MoveDirection or nil
	local MeshData = data.Mesh or nil
	local SndData = data.Sound or nil
	local Frames = data.Frames or 45
	local Manual = data.Manual or nil
	local Material = data.Material or nil
	local CFra = data.CFrame or Torso.CFrame
	local Settings = data.FXSettings or {}
	local Snd,Prt,Msh;
	local Shape = data.Shape or Enum.PartType.Block
	coroutine.resume(coroutine.create(function()
		if(Manual and typeof(Manual) == 'Instance' and Manual:IsA'BasePart')then
			Prt = Manual
		else
			Prt = Part(Parent,Color,Material,Size,CFra,true,false)
			Prt.Shape = Shape
		end
		if(typeof(MeshData) == 'table')then
			Msh = Mesh(Prt,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
		elseif(typeof(MeshData) == 'Instance')then
			Msh = MeshData:Clone()
			Msh.Parent = Prt
		elseif(Shape == Enum.PartType.Block)then
			Msh = Mesh(Prt,Enum.MeshType.Brick)
		end
		if(typeof(SndData) == 'table' or typeof(SndData) == 'Instance')then
			Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
		end
		if(Snd)then
			repeat wait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
			Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
		end
		local MoveSpeed = nil;
		if(MoveDir)then
			MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
		end
		local Inc = M.RNG()-M.RNG()
		local Thingie = 0
		local Thingie2 = M.RNG(50,100)/100
		if(FX ~= 'Arc')then
			for i = 1, Frames do
				if(swait and typeof(swait) == 'function')then
					swait()
				else
					wait()
				end
				if(FX == 'ResizeAndFade')then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					local grow = (typeof(Settings.EndSize) == 'Vector3' and Settings.EndSize+Size or typeof(Settings.EndSize) == 'number' and V3.N(Settings.EndSize))
					if(Settings.EndIsIncrement)then
						Prt.Size = Prt.Size + Settings.EndSize					
					else
						Prt.Size = Prt.Size - grow/Frames
					end 
					Prt.Transparency = (i/Frames)
				elseif(FX == 'Fade')then
					Prt.Transparency = (i/Frames)
				end
				
				if(Settings.RandomizeCFrame)then
					Prt.CFrame = Prt.CFrame * CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360))
				end
				if(MoveDir and MoveSpeed)then
					local Orientation = Prt.Orientation
					Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
					Prt.Orientation = Orientation
				end
			end
			Prt:destroy() 
		else
			local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
			if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
			local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
			local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
			assert(start ~= nil,"You need to specify a start point!")
			assert(endP ~= nil,"You need to specify an end point!")
			for i = 0, 1, Settings.Speed or 0.01 do
				if(swait and typeof(swait) == 'function')then
					swait()
				else
					wait()
				end
				if(Settings.Home)then
					endP = Settings.Home.CFrame
				end
				Prt.CFrame = Bezier(start, quarter, threequarter, endP, i)
			end
			if(Settings.RemoveOnGoal)then
				Prt:destroy()
			end
		end
	end))
	return Prt,Msh,Snd
end	


function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		whom:BreakJoints()
		local Soul = Part(Model,BrickColor.new'Really red','Glass',V3.N(.5,.5,.5),torso.CFrame,true,false)
		Soul.Name = 'Head'
		NewInstance("Humanoid",Model,{Health=0,MaxHealth=0})
		Effect{
			Effect="Arc",
			Manual = Soul,
			FXSettings={
				Start=torso.CFrame,
				Home = Torso,
				RemoveOnGoal = true,
			}
		}
		local lastPoint = Soul.CFrame.p
	
		for i = 0, 1, 0.01 do 
				local point = CFrame.new(lastPoint, Soul.Position) * CFrame.Angles(-math.pi/2, 0, 0)
				local mag = (lastPoint - Soul.Position).magnitude
				Effect{
					Effect = "Fade",
					CFrame = point * CF.N(0, mag/2, 0),
					Size = V3.N(.5,mag+.5,.5),
					Color = Soul.BrickColor
				}
				lastPoint = Soul.CFrame.p
			swait()
		end
		for i = 1, 15 do
			Effect{
				Effect="Fade",
				Color = BrickColor.new'Really red',
				MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
			}	
		end
	end
end

--// Other Functions \\ --

function Turn(position)
	Root.CFrame=CFrame.new(Root.CFrame.p,V3.N(position.X,Root.Position.Y,position.Z))
end

function Shoot(startP,endP)
	local part,pos,norm,dist = CastRay(startP,endP,1500)
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.05,.05,.05),
			EndIsIncrement=true,
		}
	}
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.1,.1,.1),
			EndIsIncrement=true,
		}
	}
	Effect{
		Effect='Fade',
		Frames=15,
		Size=V3.N(.15,.15,dist),
		CFrame=CF.N(Barrel.CFrame.p,pos)*CF.N(0,0,-dist/2),
		Color=BrickColor.new'Really red',
	}
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.5,.5,.5),
		CFrame=CF.N(pos),
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.05,.05,.05),
			EndIsIncrement=true,
		}
	}
	for i = 1, 5 do
		Effect{
			Effect='ResizeAndFade',
			Frames=65,
			Size=V3.N(.2,.2,1),
			CFrame=CF.N(CF.N(pos)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))*CF.N(0,0,-2).p,pos),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=BrickColor.new'Really red',
			FXSettings={
				EndSize=V3.N(.005,.005,.05),
				EndIsIncrement=true,
			}
		}	
	end
end

function Chat(text)
	if(ChatSounds[text])then
		Sound(Head,ChatSounds[text],1,3,false,true,true)
	end
	--if(game.PlaceId ~= 843468296)then
		coroutine.wrap(function()
			if(Char:FindFirstChild'ChatGUI')then Char.ChatGUI:destroy() end
			local BBG = NewInstance("BillboardGui",Char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,3,0),Adornee=Head})
			local Txt = NewInstance("TextLabel",BBG,{Text = "",BackgroundTransparency=1,TextColor3=C3.N(1,0,0),BorderSizePixel=0,Font=Enum.Font.Garamond,TextSize=30,TextStrokeTransparency=1,Size=UDim2.new(1,0,.5,0)})
			local SND = Sound(Head,418252437,M.RNG(9,11)/10,3,false,false,true)
			for i = 1, #text do
				delay(i/25, function()
					SND.Pitch = M.RNG(9,11)/10
					SND.Volume = 3
					SND.Parent = Effects
					SND:Play()
					Txt.Text = text:sub(1,i)
				end)
			end
			delay((#text/25)+2, function()
				Txt.Text = ""
				for i = 1, #text do
					Txt.Text = Txt.Text.. string.char(M.RNG(0,126))
				end
			end)
			delay((#text/25)+3, function()
				BBG:destroy()
				SND:destroy()
			end)
		end)()
	--else
	--	Chat2(text)
	--end
end

function Chat2(text)
	coroutine.wrap(function()
		if(Char:FindFirstChild'ChatGUI')then Char.ChatGUI:destroy() end
		local BBG = NewInstance("BillboardGui",Char,{Name='ChatGUI',Size=UDim2.new(0,100,0,40),StudsOffset=V3.N(0,3,0),Adornee=Head})
		local offset = 0;
		local xsize = 0;
		for i = 1, #text do
			offset = offset - 16
			xsize = xsize + 32 	
			delay(i/25, function()
				local Txt = NewInstance("TextLabel",BBG,{Text = text:sub(i,i),Position=UDim2.new(0,offset,0,0),BackgroundTransparency=1,TextColor3=C3.N(1,0,0),BorderSizePixel=0,Font=Enum.Font.Garamond,TextSize=40,TextStrokeTransparency=1,Size=UDim2.new(1,0,.5,0)})
				offset = offset + 32
				while Txt and Txt.Parent do
					Txt.Rotation = M.RNG(-15,15)
					swait()
				end
			end)
		end
		BBG.Size = UDim2.new(0,xsize,0,40)
		delay((#text/25)+3, function()
			for _,v in next, BBG:children() do
				pcall(function() v.Text = string.char(M.RNG(0,126)) end)
			end
		end)
		delay((#text/25)+4, function()
			BBG:destroy()
		end)
	end)()
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function ClosestPart(pos,range)
	local mag,closest = math.huge;
	for _,v in next, getRegion(pos,range or 10,{Char}) do
		if((v.CFrame.p-pos).magnitude < mag)then
			mag = (v.CFrame.p-pos).magnitude
			closest = v
		end
	end
	return closest
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

--// Attack Functions \\--


function Show_Mercy()
	Chat "I will show you mercy."
	for p,v in next, BanishedEvents do
		warn("Unbanished "..p.Name)
		v:disconnect()
		BanishedEvents[p] = nil
	end
end

function Banishing_Storm()
	Attack = true
	NeutralAnims = false
	Hum.AutoRotate = false
	for i = 0, 2.3, .1 do
		swait()
		Turn(Mouse.Hit.p)
		local Alpha = .15
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.46891451, 0.639140844, 0.117049158, 0.947687626, 0.107383646, 0.300595015, 0.195006967, -0.940317333, -0.278883517, 0.252707064, 0.322912514, -0.912067294),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110755987, -0.74960357, -0.415038228, -5.42402267e-06, -2.98023224e-07, 1.00000024, -0.500007331, 0.866021454, -2.48476863e-06, -0.866021395, -0.500007272, -4.7981739e-06),Alpha)
	end
	local numberFall = 0;
	repeat
		for i = 0, .8, 0.1 do
			swait()
			Turn(Mouse.Hit.p)
			local Alpha = .3
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.47921813, 0.661770463, 0.060773734, 0.947700858, 0.195051998, 0.252622485, 0.194988579, -0.980473101, 0.0255415048, 0.252671421, 0.0250527933, -0.967227817),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110747263, -0.749596298, -0.415039092, -1.66893005e-06, -5.14090061e-06, 1.00000012, -0.500009954, 0.866019845, 3.60608101e-06, -0.866019726, -0.500009894, -3.9935112e-06),Alpha)
		end
		Sound(Barrel,238353911,M.RNG(7,13)/10,10,false,true,true)
		local part,pos,dist = Shoot(Barrel.CFrame.p,Barrel.CFrame*CF.N(0,-1500,0).p)
		if(not part)then
			numberFall = numberFall + 1
		end
		Effect{
			Effect='ResizeAndFade',
			Frames=45,
			Size=V3.N(.1,.1,.1),
			CFrame=Barrel.CFrame,
			Mesh ={MeshType=Enum.MeshType.Sphere},
			Color=BrickColor.new'Really red',
			FXSettings={
				EndSize=V3.N(.05,.05,.05),
				EndIsIncrement=true,
			}
		}
		Effect{
			Effect='ResizeAndFade',
			Frames=45,
			Size=V3.N(.1,.1,.1),
			CFrame=Barrel.CFrame,
			Mesh ={MeshType=Enum.MeshType.Sphere},
			Color=BrickColor.new'Really red',
			FXSettings={
				EndSize=V3.N(.1,.1,.1),
				EndIsIncrement=true,
			}
		}
		for i = 0, .7, 0.1 do
			swait()
			Turn(Mouse.Hit.p)
			local Alpha = .3
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.47678053, 0.526562393, 0.174270749, 0.947701395, 0.126782924, 0.292896599, 0.194988653, -0.956529498, -0.216866404, 0.252669275, 0.262636065, -0.931225359),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110761039, -0.749590993, -0.415038049, 5.96046448e-07, -4.7236681e-06, 1.00000012, -0.500009775, 0.866019845, 4.39817086e-06, -0.866019845, -0.500009775, -1.90734863e-06),Alpha)
		end
	until not S.UserInputService:IsKeyDown(Enum.KeyCode.Z)
	delay(2, function()
		for i = 1, numberFall*2 do
			local part,pos,dist = ClosestPart(Mouse.Hit.p,2),Mouse.Hit.p+V3.N(M.RNG(-100,100)/100,0,M.RNG(-100,100)/100),1500
			Effect{
				Effect='Fade',
				Frames=15,
				Size=V3.N(.15,dist,.15),
				CFrame=CF.N(pos)*CF.N(0,dist/2,0),
				Color=BrickColor.new'Really red',
			}
			Effect{
				Effect='ResizeAndFade',
				Frames=45,
				Size=V3.N(.5,.5,.5),
				CFrame=CF.N(pos),
				Mesh ={MeshType=Enum.MeshType.Sphere},
				Color=BrickColor.new'Really red',
				FXSettings={
					EndSize=V3.N(.05,.05,.05),
					EndIsIncrement=true,
				}
			}
			for i = 1, 5 do
				Effect{
					Effect='ResizeAndFade',
					Frames=65,
					Size=V3.N(.2,.2,1),
					CFrame=CF.N(CF.N(pos)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))*CF.N(0,0,-2).p,pos),
					Mesh = {MeshType=Enum.MeshType.Sphere},
					Material=Enum.Material.Neon,
					Color=BrickColor.new'Really red',
					FXSettings={
						EndSize=V3.N(.005,.005,.05),
						EndIsIncrement=true,
					}
				}	
			end
			swait(5)
		end	
	end)
	Hum.AutoRotate = true
	Attack = false
	NeutralAnims = true
end

function Spectral_Banish()
	Attack = true
	Chat "If you desire to be a ghost.."
	swait(120)
	Chat "Then move on to the afterlife!"
	NeutralAnims = false
	Hum.AutoRotate = false	
	for i = 0, 6, .1 do
		swait()
		Turn(Mouse.Hit.p)
		local Alpha = .15
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.46891451, 0.639140844, 0.117049158, 0.947687626, 0.107383646, 0.300595015, 0.195006967, -0.940317333, -0.278883517, 0.252707064, 0.322912514, -0.912067294),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110755987, -0.74960357, -0.415038228, -5.42402267e-06, -2.98023224e-07, 1.00000024, -0.500007331, 0.866021454, -2.48476863e-06, -0.866021395, -0.500007272, -4.7981739e-06),Alpha)
	end
	for i = 0, .8, 0.1 do
		swait()
		Turn(Mouse.Hit.p)
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.47921813, 0.661770463, 0.060773734, 0.947700858, 0.195051998, 0.252622485, 0.194988579, -0.980473101, 0.0255415048, 0.252671421, 0.0250527933, -0.967227817),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110747263, -0.749596298, -0.415039092, -1.66893005e-06, -5.14090061e-06, 1.00000012, -0.500009954, 0.866019845, 3.60608101e-06, -0.866019726, -0.500009894, -3.9935112e-06),Alpha)
	end
	Sound(Barrel,238353911,M.RNG(7,13)/10,10,false,true,true)
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.05,.05,.05),
			EndIsIncrement=true,
		}
	}
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.1,.1,.1),
			EndIsIncrement=true,
		}
	}
	for i = 1, 5 do
		local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
		local cf = Barrel.CFrame
		Effect{
			Effect='ResizeAndFade',
			Frames=65,
			Size=V3.N(.2,.2,1),
			CFrame=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-2).p,cf.p),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=BrickColor.new'Really red',
			MoveDirection=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-25).p,cf.p).p,
			FXSettings={
				EndSize=V3.N(.005,.005,.05),
				EndIsIncrement=true,
			}
		}	
	end
	Effect{
		Effect='Fade',
		Frames=35,
		Size=V3.N(.15,2048,.15),
		CFrame=CF.N(Barrel.CFrame.p)*CF.N(0,2048/2,0),
		Color=BrickColor.new'Really red',
	}
	for i = 0, .8, .1 do
		swait()
		Turn(Mouse.Hit.p)
		local Alpha = .15
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.149688482, 0.00629410101, -0.0288102441, 0.908953488, -0.00262140064, -0.416884065, -7.05317973e-08, 0.99998033, -0.00628811028, 0.41689238, 0.00571563188, 0.908935547),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.404874682, -0.991180301, -0.0352490693, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.71690762, -0.991053104, 0.00471016858, 0.902334571, -7.05317973e-08, 0.4310323, -0.00271031447, 0.99998033, 0.00567401201, -0.431023717, -0.00628811028, 0.902316749),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.26718163, 0.394917995, 0.30748421, 0.758522511, -0.65150404, 0.013650775, 0.563350797, 0.666130126, 0.488780826, -0.327535838, -0.363061011, 0.87229985),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.46891451, 0.639140844, 0.117049158, 0.947687626, 0.107383646, 0.300595015, 0.195006967, -0.940317333, -0.278883517, 0.252707064, 0.322912514, -0.912067294),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.232400328, 1.4423281, 0.0608692467, 0.612107515, -0.5404585, -0.577260137, 0.0609407648, 0.760062039, -0.646986902, 0.788422942, 0.360846847, 0.498175651),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110755987, -0.74960357, -0.415038228, -5.42402267e-06, -2.98023224e-07, 1.00000024, -0.500007331, 0.866021454, -2.48476863e-06, -0.866021395, -0.500007272, -4.7981739e-06),Alpha)
	end
	for _,v in next, S.Players:players() do
		if(v.Character and v.Character:FindFirstChild'Head' and not v.Character.Parent)then
			pcall(function()
				v.Character.Parent = workspace
				local tor = v.Character:FindFirstChild'Head'
				Effect{
					Effect='Fade',
					Frames=15,
					Size=V3.N(.15,2048,.15),
					CFrame=CF.N(tor.CFrame.p)*CF.N(0,2048/2,0),
					Color=BrickColor.new'Really red',
				}
				Effect{
					Effect='ResizeAndFade',
					Frames=45,
					Size=V3.N(.5,.5,.5),
					CFrame=CF.N(tor.CFrame.p),
					Mesh ={MeshType=Enum.MeshType.Sphere},
					Color=BrickColor.new'Really red',
					FXSettings={
						EndSize=V3.N(.05,.05,.05),
						EndIsIncrement=true,
					}
				}
				for i = 1, 5 do
					Effect{
						Effect='ResizeAndFade',
						Frames=65,
						Size=V3.N(.2,.2,1),
						CFrame=CF.N(CF.N(tor.CFrame.p)*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))*CF.N(0,0,-2).p,tor.CFrame.p),
						Mesh = {MeshType=Enum.MeshType.Sphere},
						Material=Enum.Material.Neon,
						Color=BrickColor.new'Really red',
						FXSettings={
							EndSize=V3.N(.005,.005,.05),
							EndIsIncrement=true,
						}
					}	
				end
			end)
		end
	end
	Hum.AutoRotate = true
	Attack = false
	NeutralAnims = true
end

function Teleport()
	Attack = true
	NeutralAnims = false
	Hum.AutoRotate = false
	repeat
		Turn(Mouse.Hit.p)
		swait()
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.56039762, 0.53398639, -0.0236691795, 0.0156120034, -0.99157083, 0.128623411, 0.00628500059, -0.128539219, -0.991684735, 0.999858379, 0.0162905809, 0.00422526803),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749616861, -0.415070713, 0, 0, 1, -0.500001788, 0.866024435, 0, -0.866024435, -0.500001788, 0),Alpha)
	until not S.UserInputService:IsKeyDown(Enum.KeyCode.C)
	Char.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.Position)
	Sound(Barrel,238353911,M.RNG(7,13)/10,10,false,true,true)
	local pos,dist = Mouse.Hit.p,(Barrel.CFrame.p-Mouse.Hit.p).magnitude
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.05,.05,.05),
			EndIsIncrement=true,
		}
	}
	Effect{
		Effect='ResizeAndFade',
		Frames=45,
		Size=V3.N(.1,.1,.1),
		CFrame=Barrel.CFrame,
		Mesh ={MeshType=Enum.MeshType.Sphere},
		Color=BrickColor.new'Really red',
		FXSettings={
			EndSize=V3.N(.1,.1,.1),
			EndIsIncrement=true,
		}
	}
	Effect{
		Effect='Fade',
		Frames=15,
		Size=V3.N(.15,.15,dist),
		CFrame=CF.N(Barrel.CFrame.p,pos)*CF.N(0,0,-dist/2),
		Color=BrickColor.new'Really red',
	}
	for i = 0, .3, .05 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.43598688, 0.64456445, -0.0224216785, 0.0156120034, -0.933606386, 0.357960403, 0.00628500059, -0.357905358, -0.933736861, 0.999858379, 0.0168272816, 0.000280098058),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749611259, -0.415075362, 0, 0, 1, -0.500002265, 0.866024256, 0, -0.866024256, -0.500002265, 0),Alpha)
	end

	for i = 1, 15 do
		local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
		local cf = Torso.CFrame
		Effect{
			Effect='ResizeAndFade',
			Frames=65,
			Size=V3.N(2,2,10),
			CFrame=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-2).p,cf.p),
			Mesh = {MeshType=Enum.MeshType.Sphere},
			Material=Enum.Material.Neon,
			Color=BrickColor.new'Really red',
			MoveDirection=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-25).p,cf.p).p,
			FXSettings={
				EndSize=V3.N(.005,.005,.05),
				EndIsIncrement=true,
			}
		}	
	end

	for i = 0, .4, .05 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.56039762, 0.53398639, -0.0236691795, 0.0156120034, -0.99157083, 0.128623411, 0.00628500059, -0.128539219, -0.991684735, 0.999858379, 0.0162905809, 0.00422526803),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749616861, -0.415070713, 0, 0, 1, -0.500001788, 0.866024435, 0, -0.866024435, -0.500001788, 0),Alpha)
	end
	Attack = false
	NeutralAnims = true
	Hum.AutoRotate = true
end

function BGone()
	Attack = true
	NeutralAnims = false
	Hum.AutoRotate = false
	Chat "Be gone.."
	--repeat 
	for i = 0, 9, .1 do
		Turn(Mouse.Hit.p)
		swait()
		Hum.WalkSpeed = 0
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0296121463, -0.249109969, -0.153551444, -0.000328990631, -0.0094739655, -0.999952853, 0.204196915, 0.978885293, -0.0093415454, 0.978927732, -0.204190359, 0.0016125096),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.475788742, -0.651965797, 0.0191618577, 0.978805363, 0.204197079, 0.0156120053, -0.204313993, 0.978885233, 0.00628500246, -0.0139989806, -0.0093415454, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498535633, -0.912865818, 0.0149653442, 0.999878168, 5.14090061e-06, 0.0156120053, -0.000103279948, 0.999980271, 0.00628500246, -0.0156116625, -0.00628584996, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.29815638, 0.566930115, -0.00661327224, -0.237626657, 0.971231222, 0.0156120053, -0.971307039, -0.237746239, 0.00628500246, 0.00981588662, -0.0136705656, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.24513125, 0.449408412, -0.155189604, 0.502771139, -0.519900203, -0.690597773, 0.303394169, 0.854222655, -0.422203362, 0.809427798, 0.00274830475, 0.587213099),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-0.0153051838, 1.498806, -0.0364812165, 1.34855509e-06, 0.0477146953, 0.998861074, -0.00628432725, 0.998841345, -0.0477137454, -0.999980271, -0.00627710624, 0.000301202759),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110760681, -0.749610901, -0.415069938, -1.63912773e-06, 9.19401646e-06, 1.00000024, -0.500005245, 0.866022348, -8.86109865e-06, -0.866022408, -0.500005245, 3.1888485e-06),Alpha)
	end
	--until not S.UserInputService:IsKeyDown(Enum.KeyCode.V)
	
	for i = 0, .7, 0.1 do
		swait()
		Hum.WalkSpeed = 0
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00766070001, -0.269241363, -0.0518192649, 0.00021806825, 0.00368537591, 0.99999094, -0.166544884, 0.9860273, -0.00359759619, -0.986031651, -0.166542619, 0.000828802586),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.497863114, -0.984335184, 0.0215952508, 0.987798393, 0.154953942, 0.0156120034, -0.155066714, 0.987884164, 0.00628500665, -0.0144489631, -0.00862922147, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.462316692, -0.882526457, 0.015341443, 0.985910237, -0.166545048, 0.0156120034, 0.166465312, 0.9860273, 0.00628500665, -0.0164405983, -0.00359759573, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.34305215, 0.64557004, 0.206238627, 0.819938838, 0.417069167, 0.392114401, -0.412350535, 0.905431569, -0.100800663, -0.397073597, -0.0790382028, 0.914377153),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.3656987, 0.557721138, -0.0314715505, 0.0156120034, -0.985910237, 0.166545048, 0.00628500665, -0.166465312, -0.9860273, 0.999858379, 0.0164405983, 0.00359759573),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0260951146, 1.49902618, -0.00289419782, -1.0067597e-06, 0.0574942529, -0.998345912, 0.00628517801, 0.998326182, 0.0574931316, 0.999980211, -0.00627472438, -0.000362364575),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.11075601, -0.749610424, -0.415073156, 0, 0, 1, -0.500000238, 0.866025388, 0, -0.866025388, -0.500000238, 0),Alpha)
	end

	Sound(Barrel,238353911,M.RNG(7,13)/10,10,false,true,true)
	Sound(Barrel,415700134,1.6,10,false,true,true)
	Sound(Barrel,138677306,1.2,7,false,true,true)
	coroutine.wrap(function()
		local cf = Root.CFrame * CF.N(0,0,-2)
		for i = 1, 100 do
			Effect{
				Effect='ResizeAndFade',
				CFrame = cf*CF.A(M.R(90),0,M.R(90)),
				Size=V3.N(2,5,5),
				Material=Enum.Material.Neon,
				Color=BrickColor.new'Crimson',
				Shape='Cylinder',
				FXSettings={
					EndSize=V3.N(0,.3,.3),
					EndIsIncrement=true
				}
			}
			for i = 1, 3 do
				local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
				Effect{
					Effect='ResizeAndFade',
					Frames=65,
					Size=V3.N(1,1,1),
					CFrame=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-10).p,cf.p),
					Mesh = {MeshType=Enum.MeshType.Sphere},
					Material=Enum.Material.Neon,
					Color=BrickColor.new'Really red',
					MoveDirection=CF.N(CF.N(cf.p)*angles*CF.N(0,0,-50).p,cf.p).p,
					FXSettings={
						EndSize=V3.N(0,0,.3),
						EndIsIncrement=true,
					}
				}	
			end
			cf = cf*CF.N(0,0,-2)
			swait()
		end
	end)()
	swait(30)
	Hum.WalkSpeed = 16
	Attack = false
	NeutralAnims = true
	Hum.AutoRotate = true
end
function Banisher_Bullet()
	Attack = true
	NeutralAnims = false
	Hum.AutoRotate = false
	for i = 0, .4, .1/3 do
		Turn(Mouse.Hit.p)
		swait()
		local Alpha = .1
		RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.56039762, 0.53398639, -0.0236691795, 0.0156120034, -0.99157083, 0.128623411, 0.00628500059, -0.128539219, -0.991684735, 0.999858379, 0.0162905809, 0.00422526803),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
		HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749616861, -0.415070713, 0, 0, 1, -0.500001788, 0.866024435, 0, -0.866024435, -0.500001788, 0),Alpha)
	end
	repeat
		for i = 0, .2, .1/3 do
			Turn(Mouse.Hit.p)
			swait()
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.43598688, 0.64456445, -0.0224216785, 0.0156120034, -0.933606386, 0.357960403, 0.00628500059, -0.357905358, -0.933736861, 0.999858379, 0.0168272816, 0.000280098058),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749611259, -0.415075362, 0, 0, 1, -0.500002265, 0.866024256, 0, -0.866024256, -0.500002265, 0),Alpha)
		end
		Sound(Barrel,238353911,M.RNG(7,13)/10,10,false,true,true)
		Shoot(Barrel.CFrame.p,Mouse.Hit.p)
		for i = 0, .3, .1/3 do
			swait()
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.027945349, 0.0062955129, 0.00791542884, -4.65661287e-09, 0.00628571073, 0.99997133, -1.62185909e-08, 0.99998033, -0.00628576661, -0.999991417, -3.25962901e-09, -9.31322575e-10),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.513343155, -0.990872025, 0.0134561155, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.504049361, -0.991316199, -0.037166521, 0.999878228, 0, 0.0156120034, -9.81333942e-05, 0.99998033, 0.00628500059, -0.0156116933, -0.00628576661, 0.999858379),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.48807681, 0.583711386, -0.00375273079, 0.980986238, 0.193449557, 0.0156120034, -0.193565607, 0.981067359, 0.00628500059, -0.0141005944, -0.00918744504, 0.999858379),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.46904922, 0.532365739, -0.0222326554, 0.0156120034, -0.987360775, 0.157718793, 0.00628500059, -0.157637998, -0.987477064, 0.999858379, 0.0164077543, 0.00374451769),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(0.0128910094, 1.4991622, 0.0185256526, -1.87195837e-07, 0.0574935488, -0.998337269, 0.0062853531, 0.998326361, 0.0574929118, 0.99997133, -0.00627500238, -0.00036155805),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110757828, -0.749605894, -0.415075004, 0, 0, 1, -0.50000155, 0.866024613, 0, -0.866024613, -0.50000149, 0),Alpha)
		end
	until not S.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
	Hum.AutoRotate = true
	Attack = false
	NeutralAnims = true
end

function Taunt()
	Attack = true
	NeutralAnims = false
	local taunt = 1 --M.RNG(1,3)
	if(taunt == 1)then		
		
		local rad = 0
		for i = 0, 6, 0.1 do
			swait()
			rad = rad + 35
			local Alpha = .3
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.9524434e-13, 0.00629317388, 1.41309647e-06, 0.99999553, 9.4587449e-11, 0, -5.58664226e-12, 0.999980271, -0.00628617778, 9.31322575e-10, 0.00628615683, 0.99997592),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.500225782, -0.996483386, 0.0217089336, 0.994214952, 0.10624785, 0.0156119671, -0.106356524, 0.994308293, 0.00628523249, -0.014855314, -0.00790933147, 0.999856234),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.512264967, -0.996646643, 0.0152785685, 0.994214535, -0.106250875, 0.0156119233, 0.106164388, 0.994328737, 0.00628523249, -0.0161911994, -0.0045914636, 0.999856234),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.44726694, 0.503729105, -0.00388534926, 0.993391156, 0.113691822, 0.0156119671, -0.113801189, 0.993483663, 0.00628523249, -0.0147956526, -0.00802037865, 0.999856234),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.41887283, 0.461011291, -0.0306870341, 0.0158389043, -0.994383454, -0.104623824, 0.00844715256, 0.104766518, -0.994461119, 0.999836862, 0.0148673952, 0.0100591201),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(8.88854265e-06, 1.49895382, -0.0144050419, 0.566473544, 0.0473791771, -0.82271415, 0.00518015958, 0.99812144, 0.0610474497, 0.824061036, -0.0388435796, 0.56516397),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.11075747, -0.749606431, -0.415068656, -5.63569483e-06, -1.58343755e-06, 1.00000012, -0.500001132, 0.866024792, -1.44650403e-06, -0.866024852, -0.500001192, -5.67225288e-06)*CF.A(0,0,M.R(rad)),Alpha)
		end
		Chat (TauntDialogues[M.RNG(1,#TauntDialogues)])
		for i = 0, 6, 0.1 do
			swait()
			local Alpha = .3
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.9524434e-13, 0.00629317388, 1.41309647e-06, 0.99999553, 9.4587449e-11, 0, -5.58664226e-12, 0.999980271, -0.00628617778, 9.31322575e-10, 0.00628615683, 0.99997592),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.500225782, -0.996483386, 0.0217089336, 0.994214952, 0.10624785, 0.0156119671, -0.106356524, 0.994308293, 0.00628523249, -0.014855314, -0.00790933147, 0.999856234),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.512264967, -0.996646643, 0.0152785685, 0.994214535, -0.106250875, 0.0156119233, 0.106164388, 0.994328737, 0.00628523249, -0.0161911994, -0.0045914636, 0.999856234),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.44726694, 0.503729105, -0.00388534926, 0.993391156, 0.113691822, 0.0156119671, -0.113801189, 0.993483663, 0.00628523249, -0.0147956526, -0.00802037865, 0.999856234),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.30098641, 0.458334863, -0.45630464, 0.97372508, 0.226236522, 0.0259280894, 0.00073058781, 0.110756524, -0.99384743, -0.227716282, 0.967752993, 0.10768114),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(8.21147114e-06, 1.49895406, -0.0144038275, 0.99988234, -0.000873879122, 0.0151748769, -9.55477299e-05, 0.997964978, 0.0637657493, -0.015199719, -0.0637597144, 0.997847497),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110763341, -0.749599576, -0.415068239, -6.5267086e-06, -2.71201134e-06, 1.00000012, -0.500001013, 0.866024971, -9.23871994e-07, -0.866024971, -0.500001013, -7.01099634e-06),Alpha)
		end
	end
	Attack = false
	NeutralAnims = true	
end

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'x')then Show_Mercy() end
	if(k == 'z')then Banishing_Storm() end
	if(k == 'b')then Spectral_Banish() end
	if(k == 'c')then Teleport() end
	if(k == 'v')then BGone() end
	if(k == 't')then Taunt() end
end)
Mouse.Button1Down:connect(function()
	if(Attack)then return end
	Banisher_Bullet()
end)
--// Wrap it all up \\--

Plr.Chatted:connect(function(m)
	local succ,text = pcall(function() return game:service'Chat':FilterStringForBroadcast(m,Plr) end)
	if(not succ)then
		text = string.rep("_",#text)
	end
	Chat(text)
end)

while true do
	swait()
	Sine = Sine + Change
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * 4), Char)
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
	if(State == 'Walk')then
		local wsVal = 32 / (Hum.WalkSpeed/14)
		local Alpha = math.min(.1 * (Hum.WalkSpeed/16),1)
		Change = 2
		RH.C1 = RH.C1:lerp(CF.N(0,1,0)*CF.N(0,0-.2*M.C(Sine/wsVal),0+.4*M.C(Sine/wsVal))*CF.A(M.R(25+45*M.C(Sine/wsVal))+-M.S(Sine/wsVal),0,0),Alpha)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0)*CF.N(0,0+.2*M.C(Sine/wsVal),0-.4*M.C(Sine/wsVal))*CF.A(M.R(25-45*M.C(Sine/wsVal))+M.S(Sine/wsVal),0,0),Alpha)
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.1)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.1)
	end	
	if(NeutralAnims)then	
		if(State == 'Idle')then
			Change = .5
			local Alpha = .1
			RJ.C0 = clerp(RJ.C0,CFrame.new(5.95311994e-13, 0.00629388914+.2*M.C(Sine/20), 1.41759301e-06, 0.99999553, 9.4587449e-11, 0, -5.58664226e-12, 0.999980271, -0.00628617778, 9.31322575e-10, 0.00628615683, 0.99997592),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.560905516, -0.984790266-.2*M.C(Sine/20), 0.0225828942, 0.997905374, 0.0627432317, 0.0156119671, -0.062847726, 0.998003423, 0.00628523249, -0.0151864393, -0.00725326827, 0.999856234),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.507978499, -0.98526901-.2*M.C(Sine/20), 0.0152739538, 0.995106399, -0.0975458771, 0.0156119671, 0.0974583924, 0.995219886, 0.00628523249, -0.016150441, -0.00473298226, 0.999856234),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-0.997352481, 0.328557909+.1*M.C(Sine/20), 0.373372614, 0.726782799, -0.595508456, 0.342274755, 0.369578063, 0.759076476, 0.535924494, -0.578960299, -0.263003558, 0.771770597),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.35597444, 0.402479589+.1*M.C(Sine/20), 0.0100756176, 0.788939416, -0.614269078, 0.0156119671, 0.614255786, 0.78908211, 0.00628523249, -0.0161799639, 0.00463105366, 0.999856234),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(4.35163702e-06, 1.4989562, -0.0144046843, 0.99999553, 3.67523171e-07, -1.62050128e-07, -3.56434612e-07, 0.997964919, 0.0637686774, 1.8440187e-07, -0.0637684539, 0.997960329)*CF.A(M.R(-6*-M.C(Sine/20)),0,0),Alpha)
			HW.C0 = clerp(HW.C0,CFrame.new(-0.110785089, -0.749598742, -0.415072441, 2.87592411e-06, 1.69873238e-06, 1.00000012, -0.500000358, 0.866025329, 0, -0.866025269, -0.500000358, 3.33799494e-06),Alpha)
		elseif(State == 'Walk')then
			local wsVal = 32 / (Hum.WalkSpeed/14)
			local Alpha = math.min(.1 * (Hum.WalkSpeed/16),1)
			RJ.C0 = RJ.C0:lerp(RJC0*CF.N(0,0-.15*M.C(Sine/(wsVal/2)),0)*CF.A(0,M.R(0-15*M.S(Sine/wsVal)/2),0),Alpha)
			NK.C0 = NK.C0:lerp(NKC0,Alpha)
			LH.C0 = LH.C0:lerp(LHC0,Alpha)
			RH.C0 = RH.C0:lerp(RHC0,Alpha)
			LS.C0 = LS.C0:lerp(LSC0*CF.N(0,0,0-.3*M.S(Sine/wsVal))*CF.A(M.R(0+45*M.S(Sine/wsVal)),0,M.R(-5)),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.35597444, 0.402479589, 0.0100756176, 0.788939416, -0.614269078, 0.0156119671, 0.614255786, 0.78908211, 0.00628523249, -0.0161799639, 0.00463105366, 0.999856234),Alpha)
		elseif(State == 'Jump' or State == 'Fall')then
			if(Walking)then
				local Alpha = .1
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.497912645, -1.0987643, -0.0683324337, 0.999878228, 0.00860835519, 0.0130246133, -0.00010142161, 0.837816596, -0.545952022, -0.015611981, 0.545884132, 0.837715328),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.499978393, -1.16382337, 0.109293163, 0.999878228, -0.0120433727, 0.00993486121, -0.00010142161, 0.631323814, 0.775519371, -0.015611981, -0.775425911, 0.631245613),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
			else
				local Alpha = .1
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.504374504, -0.291219354, -0.487436086, 0.999878228, -0.00438931212, 0.0149825988, -0.00010142161, 0.957819223, 0.287371844, -0.015611981, -0.287338346, 0.957701981),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.453094482, -0.871358454, 0.0898642987, 0.985589385, -0.168456957, 0.0153662469, 0.162863791, 0.969548643, 0.182895929, -0.0457084104, -0.177757636, 0.983012319),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
			end
		elseif(State == 'Paralyzed')then
			-- paralyzed
		elseif(State == 'Sit')then
			-- sit
		end
	end
end

    print("desssss")
    siriGui:Destroy()
end)

-
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

local CFrame = CFrame
local CFrameAngles = CFrame.Angles
local CFrameidentity = CFrame.identity

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
	Fling = false,
	DisableScripts = false,
	DisableGUIs = false,
})

end
    print("desssss")
    siriGui:Destroy()
end)

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

declineButton.MouseButton1Click:Connect(function()
    print("Declined Siri")
    siriGui:Destroy()
end)

TweenService:Create(
    dialogueFrame,
    TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
    {Position = UDim2.new(0.5, -300, 0.5, -170)}
):Play()

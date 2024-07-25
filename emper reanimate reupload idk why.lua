function Reanimate()
	local OptionsAccessories = nil
	local OptionsRigTransparency = nil
	local OptionsRigR15 = nil
	local OptionsRigSetHumanoidDescription = nil
	local OptionsRigSetCharacter = nil
	local OptionsTeleportXandZoffset = nil
	local OptionsTeleportYoffset = nil
	local OptionsDisableScripts = nil
	local OptionsDisableScreenGUIs = nil
	local OptionsFlingEnabled = nil
	local OptionsFlingToolFling = nil
	local OptionsFlingTimeout = nil
	local OptionsFlingVelocity = nil
	local OptionsFlingHighlightTargets = nil

	local BindableEvent = nil
	local Boolean = false
	local Humanoid = nil
	local Rig = nil
	local RigHumanoid = nil
	local RigHumanoidRootPart = nil
	local Success = false
	local Time = nil
	local DeltaTime = nil
	local LastTime = nil

	local Attachments = { }
	local BaseParts = { }
	local Blacklist = { }
	local Enableds = { }
	local Handles = { }
	local Highlights = { }
	local RBXScriptConnections = { }
	local RigAccessories = { }
	local Tables = { }
	local Targets = { }

	local CFrame = CFrame
	local CFrameAngles = CFrame.Angles
	local CFrameidentity = CFrame.identity
	local CFramenew = CFrame.new

	local coroutine = coroutine
	local coroutinecreate = coroutine.create
	local coroutineclose = coroutine.close
	local coroutineresume = coroutine.resume

	local Enum = Enum
	local HumanoidStateType = Enum.HumanoidStateType
	local Physics = HumanoidStateType.Physics
	local Running = HumanoidStateType.Running
	local Track = Enum.CameraType.Track
	local UserInputType = Enum.UserInputType
	local MouseButton1 = UserInputType.MouseButton1
	local Touch = UserInputType.Touch

	local game = game
	local Clone = game.Clone
	local Destroy = game.Destroy
	local FindFirstAncestorOfClass = game.FindFirstAncestorOfClass
	local FindFirstChildOfClass = game.FindFirstChildOfClass
	local GetPropertyChangedSignal = game.GetPropertyChangedSignal
	local GetChildren = game.GetChildren
	local GetDescendants = game.GetDescendants
	local IsA = game.IsA
	local Players = FindFirstChildOfClass(game, "Players")
	local CreateHumanoidModelFromUserId = Players.CreateHumanoidModelFromUserId
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local RunService = FindFirstChildOfClass(game, "RunService")
	local PostSimulation = RunService.PostSimulation
	local PreRender = RunService.PreRender
	local PreSimulation = RunService.PreSimulation
	local Connect = PostSimulation.Connect
	local Disconnect = Connect(GetPropertyChangedSignal(game, "Parent"), function() end).Disconnect
	local Wait = PostSimulation.Wait
	local StarterGui = FindFirstChildOfClass(game, "StarterGui")
	local SetCore = StarterGui.SetCore
	local UserInputService = FindFirstChildOfClass(game, "UserInputService")
	local IsMouseButtonPressed = UserInputService.IsMouseButtonPressed
	local Workspace = FindFirstChildOfClass(game, "Workspace")
	local CurrentCamera = Workspace.CurrentCamera

	local Instancenew = Instance.new
	local Humanoid = Instancenew("Humanoid")
	local ApplyDescription = Humanoid.ApplyDescription
	local ChangeState = Humanoid.ChangeState
	local GetAppliedDescription = Humanoid.GetAppliedDescription
	local Move = Humanoid.Move
	Destroy(Humanoid)
	local Part = Instancenew("Part")
	local GetJoints = Part.GetJoints
	Destroy(Part)

	local math = math
	local mathabs = math.abs
	local mathrandom = math.random
	local mathsin = math.sin

	local osclock = os.clock

	local pairs = pairs
	local pcall = pcall

	local script = script

	local string = string
	local stringchar = string.char
	local stringfind = string.find
	local stringrep = string.rep

	local table = table
	local tableclear = table.clear
	local tablefind = table.find
	local tableinsert = table.insert
	local tableremove = table.remove

	local task = task
	local taskdefer = task.defer
	local taskdelay = task.delay
	local taskspawn = task.spawn
	local taskwait = task.wait

	local sethiddenproperty = sethiddenproperty or function() end

	local type = type
	local typeof = typeof

	local Vector3 = Vector3
	local Vector3new = Vector3.new
	local Vector3yAxis = Vector3.yAxis
	local Vector3zero = Vector3.zero

	local CameraCFrame = CFrameidentity

	local LimbSize = Vector3new(1, 2, 1)
	local TorsoSize = Vector3new(2, 2, 1)

	local function BreakJoints(Parent)
		for _, Instance in pairs(GetDescendants(Parent)) do
			if IsA(Instance, "JointInstance") then
				Destroy(Instance)
			end
		end
	end

	local function CameraSubject()
		CurrentCamera.CameraSubject = RigHumanoid
		Wait(PreRender)
		CurrentCamera.CFrame = CameraCFrame
	end

	local function CameraType()
		if CurrentCamera.CameraType ~= Track then
			CurrentCamera.CameraType = Track
		end
	end

	local function Camera()
		local Camera = Workspace.CurrentCamera

		if Camera then
			CameraCFrame = Camera.CFrame
			CurrentCamera = Camera

			CameraSubject()
			CameraType()

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraSubject"), CameraSubject))
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraType"), CameraType))
		end
	end

	local function FindFirstChildOfClassAndName(Parent, ClassName, Name)
		for Index, Instance in pairs(GetChildren(Parent)) do
			if IsA(Instance, ClassName) and Instance.Name == Name then
				return Instance
			end
		end
	end

	local function WaitForChildOfClassAndName(Parent, ...)
		local Instance = FindFirstChildOfClassAndName(Parent, ...)

		while not Instance and typeof(Parent) == "Instance" do
			Instance = FindFirstChildOfClassAndName(Parent, ...)
			Wait(Parent.ChildAdded)
		end

		return Instance
	end

	local function Invisible(Instance)
		if IsA(Instance, "BasePart") or IsA(Instance, "Decal") then
			Instance.Transparency = OptionsRigTransparency
		elseif IsA(Instance, "ForceField") or IsA(Instance, "Explosion") then
			Instance.Visible = false
		elseif IsA(Instance, "ParticleEmitter") or IsA(Instance, "Fire") or IsA(Instance, "Sparkles") then
			Instance.Enabled = false
		end
	end

	local function DescendantAdded(Instance)
		if IsA(Instance, "Attachment") then
			local Handle = Instance.Parent

			if IsA(Handle, "BasePart") then
				local AttachmentsAttachment = Attachments[Instance.Name]

				if AttachmentsAttachment then
					local MeshId = ""
					local TextureId = ""

					if IsA(Handle, "MeshPart") then
						MeshId = Handle.MeshId
						TextureId = Handle.TextureID
					else
						local SpecialMesh = FindFirstChildOfClass(Handle, "SpecialMesh")

						if SpecialMesh then
							MeshId = SpecialMesh.MeshId
							TextureId = SpecialMesh.TextureId
						end
					end

					for Index, Table in pairs(OptionsAccessories) do
						if stringfind(MeshId, Table.MeshId or "") and stringfind(TextureId, Table.TextureId or "") then
							local Instance = FindFirstChildOfClassAndName(Rig, "BasePart", Table.Name)

							local AlternativeName = Table.AlternativeName
							local AlternativeInstance = false

							if not Instance and AlternativeName then
								Instance = FindFirstChildOfClassAndName(Rig, "BasePart", AlternativeName)
								AlternativeInstance = true
							end

							if Instance and not tablefind(Blacklist, Instance) then
								if Table.Blacklist then
									tableinsert(Blacklist, Instance)
								end
								BreakJoints(Handle)
								tableinsert(Tables, { Part0 = Handle, Part1 = Instance, CFrame = AlternativeInstance and Table.AllowAlternativeCFrame and Table.AlternativeCFrame or Table.CoordinateFrame, LastPosition = Instance.Position })
								return
							end
						end
					end
					for Index, Table in pairs(RigAccessories) do
						local TableHandle = Table.Handle

						if typeof(TableHandle) == "Instance" and Table.MeshId == MeshId and Table.TextureId == TextureId then
							BreakJoints(Handle)
							tableinsert(Tables, { Part0 = Handle, Part1 = TableHandle, LastPosition = TableHandle.Position })
							return
						end
					end

					local Accessory = Handle.Parent

					if IsA(Accessory, "Accessory") then
						local AccessoryClone = Instancenew("Accessory")
						AccessoryClone.Name = Accessory.Name

						local HandleClone = Clone(Handle)
						Invisible(HandleClone)
						BreakJoints(HandleClone)
						HandleClone.Parent = AccessoryClone

						local Weld = Instancenew("Weld")
						Weld.Name = "AccessoryWeld"
						Weld.C0 = Instance.CFrame
						Weld.C1 = AttachmentsAttachment.CFrame
						Weld.Part0 = HandleClone
						Weld.Part1 = AttachmentsAttachment.Parent
						Weld.Parent = HandleClone

						tableinsert(RigAccessories, { Handle = HandleClone, MeshId = MeshId, TextureId = TextureId })
						tableinsert(Tables, { Part0 = Handle, Part1 = HandleClone, LastPosition = HandleClone.Position })

						AccessoryClone.Parent = Rig
					end
				end
			end
		elseif IsA(Instance, "BasePart") then
			Instance.CanQuery = false
			tableinsert(BaseParts, Instance)
		end
	end

	local function ApplyDescriptionRig()
		local Description = GetAppliedDescription(Humanoid)
		Description.HatAccessory = ""
		Description.BackAccessory = ""
		Description.FaceAccessory = ""
		Description.HairAccessory = ""
		Description.NeckAccessory = ""
		Description.FrontAccessory = ""
		Description.WaistAccessory = ""
		Description.ShouldersAccessory = ""
		ApplyDescription(RigHumanoid, Description)

		for Index, Instance in pairs(GetDescendants(Rig)) do
			Invisible(Instance)
		end
	end

	local function SetCharacter()
		taskwait()
		LocalPlayer.Character = Rig
	end
	local Tools = { }
	local function CharacterAdded()
		local Character = LocalPlayer.Character

		if Character and Character ~= Rig then
			if OptionsFlingToolFling then
				for Index, Backpack in pairs(GetChildren(LocalPlayer)) do
					if IsA(Backpack, "Backpack") then
						for Index, Instance in pairs(GetChildren(Backpack)) do
							if IsA(Instance, "Tool") then
								Tools[Instance] = FindFirstChildOfClassAndName(Instance, "BasePart", "Handle")	
								Instance.Parent = Character
							end
						end
					end
				end
			end

			if OptionsRigSetCharacter then
				taskspawn(SetCharacter)
			end

			tableclear(BaseParts)
			tableclear(Blacklist)
			tableclear(Tables)

			if CurrentCamera then
				CameraCFrame = CurrentCamera.CFrame
			end

			for Index, Instance in pairs(GetDescendants(Character)) do
				DescendantAdded(Instance)
			end

			tableinsert(RBXScriptConnections, Connect(Character.DescendantAdded, DescendantAdded))

			Humanoid = WaitForChildOfClassAndName(Character, "Humanoid", "Humanoid")
			local HumanoidRootPart = WaitForChildOfClassAndName(Character, "BasePart", "HumanoidRootPart")

			if Boolean then
				Camera()

				if HumanoidRootPart then
					RigHumanoidRootPart.CFrame = HumanoidRootPart.CFrame
					Boolean = false
				end

				if OptionsRigSetHumanoidDescription and RigHumanoid and Humanoid then
					pcall(ApplyDescriptionRig)
				end
			end

			if HumanoidRootPart then
				for Index, Table in pairs(Targets) do
					if not HumanoidRootPart then
						break
					end

					if Humanoid then
						ChangeState(Humanoid, Physics)
					end

					local Target = Table.Target

					local Timeout = Time + OptionsFlingTimeout
					local LastPosition = Target.Position

					while Target and HumanoidRootPart do
						if Time > Timeout then
							break
						end

						local Position = Target.Position
						local LinearVelocity = ( Position - LastPosition ) / DeltaTime

						if LinearVelocity.Magnitude > 50 then
							break
						end

						LastPosition = Position

						HumanoidRootPart.AssemblyAngularVelocity = OptionsFlingVelocity
						HumanoidRootPart.AssemblyLinearVelocity = OptionsFlingVelocity

						HumanoidRootPart.CFrame = Target.CFrame * CFramenew(0, 0, 4 * mathsin(Time * 30)) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360)) + ( LinearVelocity * 0.5) 
						taskwait()
					end

					local Highlight = Table.Highlight

					if Highlight then
						Destroy(Highlight)
					end

					Targets[Index] = nil
				end

				if Humanoid then
					ChangeState(Humanoid, Running)
				end

				if RigHumanoidRootPart then
					HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
					HumanoidRootPart.AssemblyLinearVelocity = Vector3zero

					HumanoidRootPart.CFrame = RigHumanoidRootPart.CFrame + Vector3new(mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset), OptionsTeleportYoffset, mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset))
				end
			end

			taskwait(0.26 + Wait(PreSimulation))

			if Character then
				BreakJoints(Character)
			end
		end
	end

	local function PostSimulationConnect()
		sethiddenproperty(LocalPlayer, "SimulationRadius", 2147483647)

		Time = osclock()
		DeltaTime = Time - LastTime
		LastTime = Time

		local Integer = 29 + mathsin(Time)
		local Vector3 = Vector3new(0, 0, 0.002 * mathsin(Time * 25))

		for Index, Table in pairs(Tables) do
			local Part0 = Table.Part0
			local Part1 = Table.Part1

			if Part0 and # GetJoints(Part0) == 0 and Part0.ReceiveAge == 0 and Part1 then
				Part0.AssemblyAngularVelocity = Vector3zero

				local Position = Part1.Position
				local LinearVelocity = ( ( Table.LastPosition - Position ) / DeltaTime ) * Integer
				Table.LastPosition = Position

				Part0.AssemblyLinearVelocity = Vector3new(LinearVelocity.X, Integer, LinearVelocity.Z)

				Part0.CFrame = Part1.CFrame * ( Table.CFrame or CFrameidentity ) + Vector3
			end
		end

		local Hit = Mouse.Hit
		local Holding = IsMouseButtonPressed(UserInputService, MouseButton1)

		for Tool, BasePart in pairs(Tools) do
			if BasePart.ReceiveAge == 0 and # GetJoints(BasePart) == 0 then
				BasePart.CanCollide = false
				BasePart.AssemblyAngularVelocity = OptionsFlingVelocity
				BasePart.AssemblyLinearVelocity = OptionsFlingVelocity

				if Holding then
					BasePart.CFrame = Hit
				elseif RigHumanoidRootPart then
					BasePart.CFrame = RigHumanoidRootPart.CFrame * CFramenew(0, OptionsTeleportYoffset, 0) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360))
				else
					BasePart.CFrame = CFrameidentity
				end
			end
		end

		if RigHumanoid and Humanoid then
			RigHumanoid.Jump = Humanoid.Jump
			Move(RigHumanoid, Humanoid.MoveDirection)
		end

		if not Success then
			Success = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)
		else
			SetCore(StarterGui, "ResetButtonCallback", BindableEvent)
		end
	end

	local function PreSimulationConnect()
		for Index, BasePart in pairs(BaseParts) do
			BasePart.CanCollide = false
		end
	end

	local function Fling(Target)
		if typeof(Target) == "Instance" then
			if IsA(Target, "Humanoid") then
				Target = Target.Parent
			end
			if IsA(Target.Parent, "Accessory") then
				Target = FindFirstAncestorOfClass(Target, "Model")
			end
			if IsA(Target, "Model") then
				Target = FindFirstChildOfClassAndName(Target, "BasePart", "HumanoidRootPart")
			end
			if IsA(Target, "BasePart") then
				for Index, Table in pairs(Targets) do
					if Table.Target == Target then
						return
					end
				end

				local Parent = Target.Parent

				local Highlight = nil

				if OptionsFlingHighlightTargets then
					Highlight = Instancenew("Highlight")
					Highlight.Adornee = Parent
					Highlight.Parent = Parent
					tableinsert(Highlights, Highlight)
				end

				tableinsert(Targets, {Highlight = Highlight, Target = Target})
			end
		end
	end

	local function InputBegan(InputObject)
		local UserInputType = InputObject.UserInputType

		if UserInputType == MouseButton1 or UserInputType == Touch then
			local Target = Mouse.Target

			if Target and not Target.Anchored then
				local Model = Target.Parent

				if IsA(Model, "Model") and FindFirstChildOfClass(Model, "Humanoid") then
					local HumanoidRootPart = FindFirstChildOfClassAndName(Model, "BasePart", "HumanoidRootPart")

					if HumanoidRootPart then
						Fling(HumanoidRootPart)
					end
				else
					Fling(Target)
				end
			end
		end
	end

	local function gameDescendantAdded(Instance)
		if ( OptionsDisableScreenGUIs and IsA(Instance, "ScreenGui") ) or ( OptionsDisableScripts and Instance ~= script and ( IsA(Instance, "LocalScript") or IsA(Instance, "Script") ) ) then
			Enableds[Instance] = Instance.Enabled
			Instance.Enabled = false

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Instance, "Enabled"), function()
				Enableds[Instance] = Instance.Enabled
				Instance.Enabled = false
			end))
		end
	end

	local function Stop()
		for Index, RBXScriptConnection in pairs(RBXScriptConnections) do
			Disconnect(RBXScriptConnection)
		end
		for Index, Highlight in pairs(Highlights) do
			Destroy(Highlight)
		end
		for Instance, Boolean in pairs(Enableds) do
			Instance.Enabled = Boolean
		end

		tableclear(Attachments)
		tableclear(BaseParts)
		tableclear(Enableds)
		tableclear(Handles)
		tableclear(Highlights)
		tableclear(RBXScriptConnections)
		tableclear(Tables)
		tableclear(Targets)

		if Rig then
			Destroy(Rig)
		end

		Destroy(BindableEvent)
		SetCore(StarterGui, "ResetButtonCallback", true)
	end

	local Emperean = {
		Stop = Stop,
		Start = function(Options)
			Options = Options or { }
			OptionsAccessories = Options.Accessories or {}
			local OptionsRig = Options.Rig
			OptionsRigTransparency = OptionsRig.Transparency
			OptionsRigR15 = OptionsRig.R15
			OptionsRigSetHumanoidDescription = OptionsRig.SetHumanoidDescription
			OptionsRigSetCharacter = OptionsRig.SetCharacter
			local OptionsTeleport = Options.Teleport or {}
			local XandYoffset = OptionsTeleport.XandYoffset
			OptionsTeleportXandZoffset = XandYoffset and mathabs(XandYoffset) or 6
			OptionsTeleportYoffset = OptionsTeleport.Yoffset or 0
			local OptionsDisable = Options.Disable
			OptionsDisableScripts = OptionsDisable.Scripts
			OptionsDisableScreenGUIs = OptionsDisable.GUIs
			local OptionsFling = Options.Fling or {}
			OptionsFlingEnabled = OptionsFling.Enabled
			OptionsFlingToolFling = OptionsFling.ToolFling
			OptionsFlingTimeout = OptionsFling.Timeout or 1.5
			OptionsFlingVelocity = OptionsFling.Velocity or Vector3new(0, 4096, 0)
			OptionsFlingHighlightTargets = OptionsFling.HighlightTargets

			if OptionsDisableScripts or OptionsDisableScreenGUIs then
				for Index, Instance in pairs(GetDescendants(game)) do
					gameDescendantAdded(Instance)
				end

				tableinsert(RBXScriptConnections, Connect(game.DescendantAdded, gameDescendantAdded))
			end

			Boolean = true
			LastTime = osclock()

			Rig = OptionsRigR15 and CreateHumanoidModelFromUserId(Players, 5532894300) or CreateHumanoidModelFromUserId(Players, 5532891747)
			Rig.Name = "non"
			RigHumanoid = Rig.Humanoid
			RigHumanoidRootPart = Rig.HumanoidRootPart
			Rig.Parent = Workspace

			for Index, Instance in pairs(GetDescendants(Rig)) do
				if IsA(Instance, "Attachment") then
					Attachments[Instance.Name] = Instance
				else
					Invisible(Instance)
				end
			end

			BindableEvent = Instancenew("BindableEvent")
			Connect(BindableEvent.Event, Stop)

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Workspace, "CurrentCamera"), Camera))

			CharacterAdded()
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(LocalPlayer, "Character"), CharacterAdded))

			if OptionsFlingEnabled then
				tableinsert(RBXScriptConnections, Connect(UserInputService.InputBegan, InputBegan))
			end

			tableinsert(RBXScriptConnections, Connect(PreSimulation, PreSimulationConnect))
			tableinsert(RBXScriptConnections, Connect(PostSimulation, PostSimulationConnect))

			return { 
				Rig = Rig,
				Options = Options,
				Fling = Fling,
			},
			taskwait()
		end,
	}

	Emperean.Start({
		Accessories = {
			--  Free Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "4819720316", TextureId = "4819722776", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 0, -0.25), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "3030546036", TextureId = "3033903209", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "3030546036", TextureId = "3360978739", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "3030546036", TextureId = "3033898741", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "3030546036", TextureId = "3409604993", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },

			-- Cheap Paid Rig
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "12344206657", TextureId = "12344206675", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(-0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "12344207333", TextureId = "12344207341", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "11263221350", TextureId = "11263219250", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, - 1.57, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "11159370334", TextureId = "11159284657", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },

			-- Accurate Paid Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "14241018198", TextureId = "14251599953", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
		},
		Rig = {
			Transparency = 1,
			R15 = false,
			SetHumanoidDescription = true,
			SetCharacter = false
		},
		Teleport = {
			XandZoffset = 145,
			Yoffset = 0
		},
		Disable = {
			Scripts = true,
			ScreenGUIs = false
		},
		Fling = {
			Enabled = true,
			ToolFling = true,
			Timeout = 0.75,
			Velocity = Vector3new(15250, 16250, 15250),
			HighlightTargets = true
		}
	})
end

Reanimate()
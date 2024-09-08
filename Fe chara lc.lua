_G.HideCharacter = true
_G.FlingEnabled = true
_G.TransparentRig = false
_G.ToolFling = true -- FALSE = HOLDING, TRUE = FLING
--[[ 
Oxide V2.1 
Anything below should NOT be changed
]]

_G.SBV4R = false
_G.R6Mode = false
_G.MiztCompat = true
_G.Fling = false
local str = game:GetService("SharedTableRegistry")
local flingpos = game.Players.LocalPlayer:GetMouse().Hit
local flingpart = game.Players.LocalPlayer:GetMouse().Target
local flingplr = nil
local sineee=os.clock()
local sine=os.clock()
 local plr =game:GetService("Players").LocalPlayer
 local lp = plr
 local cf 
local lastcf = workspace.CurrentCamera.CFrame
local oldh = workspace.FallenPartsDestroyHeight
local tools = {}
local faketools = {}
local stopped = false
_G.Stopped = false
local respawnloop
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Oxide Reanimation V2.1a";
    Duration = 20;
    Text = "This script was made by Nitro"
})
local function cfAdd(a,b) return a+b end
local function redo()
local Hat = {
Rename = function(HatID, NAME, oname)
if oname == nil then oname = "Hat" end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
        elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 and v.Handle.TextureId == HatID  then
                 if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            if v.Handle.TextureID == HatID then
                if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
             end
                end
            end
        end
    end
end}


local gay = true -- dont edit >:(
hmode = nil
if gay == true then
hmode = "norm" 
else
hmode = "alsoo3" -- hate this guy
end



Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/library"))()

local HatMode=hmode

if HatMode=="alsoo3" then

local HATDUPES = Library.MakeTableOfHats("Mesh",{Mesh_Id=4315410540})
HATDUPES[1].Name = "DemonGodSword"
HATDUPES[2].Name = "RainbowGodSword"
HATDUPES[3].Name = "ToxicLordSword"
HATDUPES[4].Name = "DemonLordSword"
if Library.FindHat("ShadowBladeMasterAccessory") then
Library.FindHat("ShadowBladeMasterAccessory").Name="VoidLordSword"
end
	
if Library.FindHat("BladeMasterAccessory") then
Library.FindHat("BladeMasterAccessory").Name="AuroraSword"

end
else
end


--game:GetService("Workspace")["Error_30363"].EyesOfTheEverWorld.Name = "Puffer Vest"

loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/stuff"))()

local c = game:GetService("Players").LocalPlayer.Character
_G.OxideRealChar = c
local nria = false 
local nlia = false 
if c:FindFirstChild("Accessory (NoobRightArm)") then 
	nria = true 
end 
if c:FindFirstChild("Accessory (NoobLeftArm)") then 
	nlia = true 
end 

pcall(function()
    Hat.Rename("rbxassetid://17374768001","","LARM")
    Hat.Rename("rbxassetid://17374768001","","RARM")
    Hat.Rename("rbxassetid://14251599953", "Tor")
                    end)
					pcall(function()
    Hat.Rename("rbxassetid://18640914168","","LARM")
    Hat.Rename("rbxassetid://18640914168","","RARM")
		end)
    pcall(function()
    Hat.Rename("rbxassetid://13415110780", "Tor")
                    end)
					    pcall(function()
    Hat.Rename("rbxassetid://18640899481", "Tor")
                    end)
    pcall(function()
    Hat.Rename("rbxassetid://14255543546","","LARM")
    Hat.Rename("rbxassetid://14255543546","","RARM")
    end)
    pcall(function()
    Hat.Rename("rbxassetid://14768664565", "Tor")
    Hat.Rename("rbxassetid://14768683674","","LARM")
    Hat.Rename("rbxassetid://14768683674","","RARM")
    end)

    pcall(function()
        c.gooblet.Name = "fooblet"
        end)
        pcall(function()
            c.gooblet.Name = "fooblet"
            end)
    pcall(function()
    c["Accessory (LARM)"].Name = "gooblet"
                end)
                pcall(function()
    c["Accessory (RARM)"].Name = "RARM"
                end)
                pcall(function()
                    if not c:FindFirstChild("Accessory (rightleg)") then
                    c.gooblet.Name = "Accessory (rightleg)"
                    end
                    end)
                    pcall(function()
                        if not c:FindFirstChild("Accessory (LLeg)") then
                        c.gooblet.Name = "Accessory (LLeg)"
                        end
                        end)
                    pcall(function()
                        c.fooblet.Name = "gooblet"
                        end)
                            pcall(function()
    if not c:FindFirstChild("Tor") then 
    c.ExtraNoobTorso.Name = "Tor"
    end
                end)
pcall(function()
c.SHADES.Handle.AccessoryWeld.C1 = CFrame.new(0, 0.025, -0.6, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
pcall(function()
c["Accessory (LARM)"].Name = "LARM"
            end)
            pcall(function()
c["Accessory (RARM)"].Name = "RARM"
            end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/renameclones3"))()
if _G.EnableNetLib == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/random-stuff/main/4eyesnetlib.lua"))()

Network.CharacterRelative = false

coroutine.resume(Network["PartOwnership"]["Enable"])
end

    


Connection = workspace.DescendantAdded:Connect(function(c)
    if c.Name == "Animate" then
        c.Disabled=false        
    end
end)

repeat wait() until game:GetService("Players").LocalPlayer.Character
Char = game:GetService("Players").LocalPlayer.Character
Died = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
    Connection:Disconnect()
    Died:Disconnect()
end)


function waitForChild(parent, childName)
local child = parent:findFirstChild(childName)
if child then return child end
while true do
    child = parent.ChildAdded:wait()
    if child.Name==childName then return child end
end
end
local char
if not workspace:FindFirstChild("non") then
 char = game:GetObjects("rbxassetid://5195737219")[1]
else
 char = workspace.non
end
_G.OxideFakeChar = char 
if _G.MiztCompat == false then
char.Name = c.Name.." (Dummy)"
else
char.Name = "non"
end
zz = Instance.new("Highlight",char)
zz.FillTransparency = 1
zz.DepthMode = Enum.HighlightDepthMode.Occluded
local qqz = Instance.new("Shirt",char)
qqz.ShirtTemplate = "rbxassetid://0"
if not workspace:FindFirstChild("non") then
char:SetPrimaryPartCFrame(c.HumanoidRootPart.CFrame *CFrame.new(0,0,2))
end

c["Body Colors"]:Clone().Parent = char
game:GetService("Players").LocalPlayer.Character.PrimaryPart = c.Head
char.HumanoidRootPart.Anchored = false
for i,v in pairs(c:GetChildren()) do
if v:IsA("Accessory") and v.Name == "Pants" then
v:Destroy()
end
end
char.Parent = workspace
c.Parent = char
	_G.Flinging = false

local swordbigvel = false



velocity = game:GetService("RunService").Heartbeat:Connect(function(set)
for i,v in pairs(c:GetChildren()) do
	if v:IsA("Accessory")  then
		v.Handle.AssemblyLinearVelocity = Vector3.new(char.Torso.AssemblyLinearVelocity.X*25, 25.01, char.Torso.AssemblyLinearVelocity*25)
	end
end
end)

local function force(part,force)
	local bodyforce = Instance.new("BodyForce", part)
	bodyforce.Force = force
end



for i,v in pairs(c:GetChildren()) do
	if v:IsA("Part") or v:IsA("MeshPart") then
		force(v,Vector3.new(80,80,80))
	end
end


    
    


speaker = game:GetService("Players").LocalPlayer
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

	for _, v in pairs(char:GetChildren()) do
				if v:IsA("Part") then
				v.CollisionGroup = c.Head.CollisionGroup
				end
			end	


	


	if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet" and not string.find(v.Name,"Accessory (Noob") and v.Name ~= "Accessory (NoobLeftArm)"  and v.Name ~= "Accessory (NoobTorso)"  and v.Name ~= "Accessory (NoobRightArm)" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "LARM" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" and v:WaitForChild("Handle"):FindFirstChildOfClass("SpecialMesh").MeshId ~= "rbxassetid://11263221350"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle.AccessoryWeld.Part1 = char[a.Handle.AccessoryWeld.Part1.Name]
Accessory = v
      Handle = Accessory.Handle
      pcall(function() Handle:FindFirstChildOfClass("Weld"):Destroy() end)
    	local NewWeld = Instance.new("Weld")
    	NewWeld.Name = "AccessoryWeld"
    	NewWeld.Part0 = Handle
    	local Attachment = Handle:FindFirstChildOfClass("Attachment")
    	if Attachment then
    		NewWeld.C0 = Attachment.CFrame
    		NewWeld.C1 = char:FindFirstChild(tostring(Attachment), true).CFrame
    		NewWeld.Part1 = char:FindFirstChild(tostring(Attachment), true).Parent
    	else
    		NewWeld.Part1 = FakeCharacter:FindFirstChild("Head")
    		NewWeld.C1 = CFrame.new(0,char:FindFirstChild("Head").Size.Y / 2,0) * Accessory.AttachmentPoint:Inverse()
    	end
    	Handle.CFrame = NewWeld.Part1.CFrame * NewWeld.C1 * NewWeld.C0:Inverse()
    	NewWeld.Parent = Accessory.Handle 
a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
end
           end
       end
else

 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet"  and not string.find(v.Name,"Accessory (Noob") and v.Name ~= "Accessory (NoobLeftArm)"  and v.Name ~= "Accessory (NoobTorso)"  and v.Name ~= "Accessory (NoobRightArm)" and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "LARM" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" and v:WaitForChild("Handle").MeshId ~= "rbxassetid://11263221350"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle:BreakJoints()
Accessory = v
      Handle = Accessory.Handle
      z = a
      a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
a.Handle.Position = char.Head.Position
a.Handle.Velocity = Vector3.new(0,0,0)
a.Handle.Massless = true
w = Instance.new("Weld",z.Handle)
w.C0 = w.Parent:FindFirstChildOfClass("Attachment").CFrame
w.Name = "AccessoryWeld"
w.Part0 = z.Handle
a  = w.Parent:FindFirstChildOfClass("Attachment")
 if string.find(a.Name,"Left") then
  if string.find(a.Name,"Shoulder") then
w.Part1 = char["Left Arm"]
w.C1 =  char["Left Arm"].LeftShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Shoulder") then
  w.Part1 = char["Right Arm"]
  w.C1 =  char["Right Arm"].RightShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Left") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Left Leg"]
  w.C1 =  char["Left Leg"].LeftFootAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Right Leg"]
  w.C1 =  char["Right Leg"].RightFootAttachment.CFrame
end
 elseif string.find(a.Name,"Waist") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].WaistBackAttachment.CFrame
       end    
        elseif string.find(a.Name,"Body") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyBackAttachment.CFrame
       elseif  string.find(a.Name,"Front") then
          w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyFrontAttachment.CFrame
       end    
            elseif string.find(a.Name,"Hat") then
                w.Part1 = char["Head"]
       w.C1 =  char["Head"].HatAttachment.CFrame 
                elseif string.find(a.Name,"FaceFront") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceFrontAttachment.CFrame 
                       elseif string.find(a.Name,"FaceCenter") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceCenterAttachment.CFrame 
                                  elseif string.find(a.Name,"Neck") then
                       w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].NeckAttachment.CFrame 
                           elseif string.find(a.Name,"Hair") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].HairAttachment.CFrame 
                           end


end
           end
       end

end




for i,v in pairs(c:GetChildren()) do
	if v:IsA("Accessory") then
		force(v.Handle,Vector3.new(80,80,80))
	end
end

   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "RectangleHead" and v.Name ~= "RectangleHead-1"  and v.Name ~= "RectangleHead-3"  and v.Name ~= "funnihead" and v.Name ~= "RectangleFace-1" and v.Name ~= "RectangleFace" and v.Name ~= "RectangleFace-2" and v.Name ~= "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 
   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "RectangleHead" and v.Name =="Puffer Vest" and v.Name == "RectangleFace" and v.Name == "RectangleFace-2" and v.Name == "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 

for _, child in pairs(char:GetChildren()) do
				if child:IsA("BasePart") then
					child.Transparency = 1
				end
			end



       local ch = game:GetService("Players").LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)

 function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso')
	return rootPart
end
		local character = game:GetService("Players").LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end
	
		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
	
	
 game:GetService("Players").LocalPlayer.Character=prt
 game:GetService("Players").LocalPlayer.Character=char
 

 
if _G.wackyhead == true then 
  wait(game:GetService("Players").RespawnTime + 0.5)  
    
    end


  --wait(game:GetService("Players").RespawnTime + 0.25)  
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X,char.HumanoidRootPart.CFrame.Y,char.HumanoidRootPart.CFrame.Z) + Vector3.new(0, hipHeight or 4, 0)



if _G.ReanimatedAnimations == true then
pcall(function()
c.Animate.Disabled = true
c.Animate.Disabled = false
char.Animate:Destroy()
c.Animate.Parent = char
char.Animate.Disabled = true
--char.Animate.Disabled = false
end)
c.Humanoid.Animator.Parent = char.Humanoid
workspace.CurrentCamera.CameraSubject = char.Humanoid
else 
char.Animate:Destroy()
c.Animate.Disabled = true
c.Animate.Parent = char
char.Animate.Disabled = true
c.Humanoid.Animator.Parent = char.Humanoid
workspace.CurrentCamera.CameraSubject = char.Humanoid
end
if c:FindFirstChild("Torso") then
c.Torso["Right Hip"]:Destroy()
c.Torso["Left Hip"]:Destroy()
 c.Torso["Right Shoulder"]:Destroy()
c.Torso["Left Shoulder"]:Destroy()
end
if _G.wackyhead == true then 
c.Torso.Neck:Destroy()
    end
c.Humanoid:TakeDamage(c.Humanoid.MaxHealth*9e9)
c:BreakJoints()
if c:FindFirstChild("Torso") then
--c.Torso.Neck:Destroy()
else
--c.Head.Neck:Destroy()
c.Humanoid:TakeDamage(c.Humanoid.MaxHealth)
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/TypicalsConvertingLibrary/main/Main"))()


speaker = game:GetService("Players").LocalPlayer
	Clip = false

	local function NoclipLoop()
			for _, child in pairs(c:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end


		end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)



	


local Char = game:GetService("Players").LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
if _G.Fling == true then
local Held = false

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

Mouse.Button1Down:Connect(function()
    Held = true
end)

Mouse.Button1Up:Connect(function()
    Held = false
end)
c.HumanoidRootPart.Transparency = 0.7
local BodyVelocity = Instance.new("BodyVelocity", c.HumanoidRootPart)
BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.Velocity = Vector3.new(0, 0, 0)
flinger = Instance.new("BodyAngularVelocity",c.HumanoidRootPart)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(5000000000000000000,5000000000000000000,5000000000000000000)
spawn(function()
    while task.wait() do
        pcall(function()
            if Held == true then
                   _G.Flinging = true
               c.HumanoidRootPart.CFrame = Mouse.Hit
            else
                   _G.Flinging = false
                c.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
            end
        end)
    end
end)
end

for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
local removinghealth = false


   


 local canactuallydo
 if _G.FasterLoad == true then
  canactuallydo = false
 else
       canactuallydo = true
 end
for k,v in pairs(c:GetChildren()) do
    if v:IsA("Accessory") then
   --     v.Handle:FindFirstChild("Attachment"):Destroy() -- destroying basic welds
    end
end

  -- workspace[game:GetService("Players").LocalPlayer.Name.." Protected Welds"]:Destroy()



local function Align(Part1, Part0, Position, Angle)
if _G.EnableNetLib == true then
             Network.RetainPart(Part1)
			 end
    game:GetService("RunService").Heartbeat:Connect(function(set)
        Part1.CFrame = Part0.CFrame * Position * Angle
       
    
        end)
    end
	
	local function Align2(Part1, Part0, Position, Angle)
          
    game:GetService("RunService").Heartbeat:Connect(function(set)
	if removinghealth == false then
        Part1.CFrame = Part0.CFrame * Position * Angle
       end
    
        end)
    end
    
	local function Align3 (Part1, Part0, Position, Angle)
          
    game:GetService("RunService").Heartbeat:Connect(function(set)
	if _G.Fling == false then
        Part1.CFrame = Part0.CFrame * Position * Angle
       end
    
        end)
	end

local sin = math.sin
local connect
    local antisleepMultiplier=Vector3.new(-.0025,-.005,-.0025)
 	   connect = game:GetService("RunService").Heartbeat:Connect(function(set)
        sine=os.clock
        local antisleep=sin(sine()*100)*antisleepMultiplier
         	    pcall(function()
 c["Tor"].Handle.CFrame = char["Torso"].CFrame *CFrame.new(0,0,0)   +antisleep
end)
    pcall(function()
	if nlia == false then 
    c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  +antisleep
	else 
  c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))  +antisleep
	end
    end)
            pcall(function()
			if nria == false then 
     c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))+antisleep
	 else 
	   c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))+antisleep
			end
       end)
   	  pcall(function()
  c["Accessory (rightleg)"].Handle.CFrame = char["Right Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))   +antisleep
 end)
 	  pcall(function()
c["Accessory (LLeg)"].Handle.CFrame = char["Left Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))   +antisleep
 end)

pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "gooblet" and v.Name ~= "fooblet"   and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "LARM" and v.Name ~= "RARM" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)" then  
v.Handle.CFrame = char[v.Name].Handle.CFrame +antisleep
v.Handle.CanTouch = false
end
end
end)       
  for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory")   then
v.Handle.CanCollide = false
           end
 end

	oldcf = workspace.CurrentCamera.CFrame
	settings().Physics.AllowSleep = false
end)




		settings().Physics.AllowSleep = false


wait()
pcall(function()
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X,-300,char.HumanoidRootPart.CFrame.Z) + Vector3.new(0, hipHeight or 4, 0)
end)
pcall(function()
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
        end)
        wait(game:GetService("Players").RespawnTime - .05)
        task.wait(.05)
        velocity:Disconnect() 
        connect:Disconnect()
end
local function redo2()
wait(.001)
local Hat = {
Rename = function(HatID, NAME, oname)
if oname == nil then oname = "Hat" end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") then
        if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
            elseif game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
           if not v:WaitForChild("Handle"):FindFirstChildOfClass("SpecialMesh") then
           if v:WaitForChild("Handle").TextureID == HatID then
                if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
             end
                end
                else
            if v:WaitForChild("Handle"):FindFirstChildWhichIsA("SpecialMesh").TextureId == HatID then
          	  if oname == "Hat" then
              v.Name = NAME
              elseif oname == "LARM" then
              v.Name = "fooblet"
              elseif oname == "RARM" then
              v.Name = "gooblet"
              else
              v.Name = NAME
            end
            end
                end
            end
        end
    end
end}


local gay = true -- dont edit >:(
hmode = nil
if gay == true then
hmode = "norm" 
else
hmode = "alsoo3" -- hate this guy
end



Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/library"))()

local HatMode=hmode

if HatMode=="alsoo3" then

local HATDUPES = Library.MakeTableOfHats("Mesh",{Mesh_Id=4315410540})
HATDUPES[1].Name = "DemonGodSword"
HATDUPES[2].Name = "RainbowGodSword"
HATDUPES[3].Name = "ToxicLordSword"
HATDUPES[4].Name = "DemonLordSword"
if Library.FindHat("ShadowBladeMasterAccessory") then
Library.FindHat("ShadowBladeMasterAccessory").Name="VoidLordSword"
end
	
if Library.FindHat("BladeMasterAccessory") then
Library.FindHat("BladeMasterAccessory").Name="AuroraSword"

end
else
end
local c = game:GetService("Players").LocalPlayer.Character


--game:GetService("Workspace")["Error_30363"].EyesOfTheEverWorld.Name = "Puffer Vest"
pcall(function()
    Hat.Rename("rbxassetid://17374768001","","LARM")
    Hat.Rename("rbxassetid://17374768001","","RARM")
    Hat.Rename("rbxassetid://14251599953", "Tor")
                    end)
					pcall(function()
    Hat.Rename("rbxassetid://18640914168","","LARM")
    Hat.Rename("rbxassetid://18640914168","","RARM")
		end)
    pcall(function()
    Hat.Rename("rbxassetid://13415110780", "Tor")
                    end)
					    pcall(function()
    Hat.Rename("rbxassetid://18640899481", "Tor")
                    end)
    pcall(function()
    Hat.Rename("rbxassetid://14255543546","","LARM")
    Hat.Rename("rbxassetid://14255543546","","RARM")
    end)
    pcall(function()
    Hat.Rename("rbxassetid://14768664565", "Tor")
    Hat.Rename("rbxassetid://14768683674","","LARM")
    Hat.Rename("rbxassetid://14768683674","","RARM")
    end)


pcall(function()
    c.gooblet.Name = "fooblet"
    end)
    pcall(function()
        c.gooblet.Name = "fooblet"
        end)
pcall(function()
c["Accessory (LARM)"].Name = "gooblet"
            end)
            pcall(function()
c["Accessory (RARM)"].Name = "RARM"
            end)
            pcall(function()
                if not c:FindFirstChild("Accessory (rightleg)") then
                c.gooblet.Name = "Accessory (rightleg)"
                end
                end)
                pcall(function()
                    if not c:FindFirstChild("Accessory (LLeg)") then
                    c.gooblet.Name = "Accessory (LLeg)"
                    end
                    end)
                pcall(function()
                    c.fooblet.Name = "gooblet"
                    end)
                        pcall(function()
if not c:FindFirstChild("Tor") then 
c.ExtraNoobTorso.Name = "Tor"
end
            end)

            local nria = false 
local nlia = false 
pcall(function()
if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
if c:FindFirstChild("fooblet").Handle:FindFirstChildOfClass("SpecialMesh").TextureId == "rbxassetid://18640914168" then 
	nria = true 
end 
elseif c.Humanoid.RigType == Enum.HumanoidRigType.R15 then
    if c:FindFirstChild("fooblet").Handle.TextureID == "rbxassetid://18640914168" then 
        nria = true 
    end 
end 
end)
pcall(function()
    if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
    if c:FindFirstChild("gooblet").Handle:FindFirstChildOfClass("SpecialMesh").TextureId == "rbxassetid://18640914168" then 
        nlia = true 
    end 
    elseif c.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        if c:FindFirstChild("gooblet").Handle.TextureID == "rbxassetid://18640914168" then 
            nlia = true 
        end 
    end 
    end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Nitro-GT/OxideReanim/main/renameclones3"))()
local flingloop
if _G.Fling == true then
    local BodyVelocity = Instance.new("BodyVelocity", c.HumanoidRootPart)
BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.Velocity = Vector3.new(0, 0, 0)
flinger = Instance.new("BodyAngularVelocity",c.HumanoidRootPart)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(5000000000000000000,5000000000000000000,5000000000000000000)

flingloop = game:GetService("RunService").Heartbeat:Connect(function()
c.HumanoidRootPart.CFrame = flingpos
c.HumanoidRootPart.Velocity = Vector3.new(9e9,9e9,9e9)
end)
wait(.35)
flingloop:Disconnect()
BodyVelocity:Destroy()
flinger:Destroy()
for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
    end
 end
 _G.Fling =false
end



function waitForChild(parent, childName)
local child = parent:findFirstChild(childName)
if child then return child end
while true do
    child = parent.ChildAdded:wait()
    if child.Name==childName then return child end
end
end
local char
if not workspace:FindFirstChild("non") then
 char =  workspace.Terrain.non
else
 char = workspace.non
end
if c ~= char then
    _G.OxideRealChar = c
else 
    _G.OxideRealChar = workspace[lp.Name]
end
game:GetService("Players").LocalPlayer.Character.PrimaryPart = c.Head
char.HumanoidRootPart.Anchored = false

speaker = game:GetService("Players").LocalPlayer
	Clip = false

	local function NoclipLoop()
			for _, child in pairs(c:GetChildren()) do
				if child:IsA("BasePart") then
					child.CanCollide = false
				end
			end

		end

	

for i,v in pairs(c:GetChildren()) do
if v:IsA("Accessory") and v.Name == "Pants" then
v:Destroy()
end
end
char.Parent = workspace
c.Parent = char
	_G.Flinging = false

local swordbigvel = false

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') 
	return rootPart
end
		local character = game:GetService("Players").LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end
	
		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
        if _G.HideCharacter == false then
        rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X +5 ,char.HumanoidRootPart.CFrame.Y,char.HumanoidRootPart.CFrame.Z +5) 
        else
rootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.X   , workspace.FallenPartsDestroyHeight + 100,char.HumanoidRootPart.CFrame.Z  ) 
        end

for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end



local function force(part,force)
	local bodyforce = Instance.new("BodyForce", part)
	bodyforce.Force = force
end



    
    


speaker = game:GetService("Players").LocalPlayer
for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

	for _, v in pairs(char:GetChildren()) do
				if v:IsA("Part") then
				v.CollisionGroup = c.Head.CollisionGroup
				end
			end	


	if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet" and v.Name ~= "Accessory (rightleg)"   and not string.find(v.Name,"Accessory (Noob") and v.Name ~= "Accessory (NoobLeftArm)"  and v.Name ~= "Accessory (NoobTorso)"  and v.Name ~= "Accessory (NoobRightArm)"  and v.Name ~= "Accessory (LLeg)" and v.Name ~= "Accessory (LARM)"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "RectangleHead-2"  and v.Name ~= "Tor" and v.Name ~= "Accessory (LLeg)" and v.Name ~= "RARM"  and v.Name ~="Unloaded head" then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle.AccessoryWeld.Part1 = char[a.Handle.AccessoryWeld.Part1.Name]
Accessory = v
      Handle = Accessory.Handle
a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
end
           end
       end
else

 for _,v in pairs(c:GetChildren()) do
     if v:IsA("Accessory")  and v.Name ~= "gooblet" and v.Name ~= "fooblet" and v.Name ~= "Accessory (rightleg)"  and not string.find(v.Name,"Accessory (Noob") and v.Name ~= "Accessory (NoobLeftArm)"  and v.Name ~= "Accessory (NoobTorso)"  and v.Name ~= "Accessory (NoobRightArm)"and v.Name ~= "Accessory (LARM)"  and v.Name ~= "Rarm" and v.Name ~= "funnihead"  and v.Name ~= "Larm" and v.Name ~= "RectangleFace" and v.Name ~= "Tor" and v.Name ~= "RectangleHead-2"  and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "Accessory (LLeg)" and v.Name ~= "RARM"  and v.Name ~="Unloaded head"  then
      if not char:FindFirstChild(v.Name) then
      local a = v:Clone()
      a.Handle:BreakJoints()
Accessory = v
      Handle = Accessory.Handle
      z = a
      a.Parent = char
a.Handle.Anchored = false
a.Handle.Transparency = 1
a.Handle.CFrame = char.HumanoidRootPart.CFrame
a.Handle.Velocity = Vector3.new(0,0,0)
a.Handle.Massless = true
w = Instance.new("Weld",z.Handle)
w.C0 = w.Parent:FindFirstChildOfClass("Attachment").CFrame
w.Name = "AccessoryWeld"
w.Part0 = z.Handle
a  = w.Parent:FindFirstChildOfClass("Attachment")
 if string.find(a.Name,"Left") then
  if string.find(a.Name,"Shoulder") then
w.Part1 = char["Left Arm"]
w.C1 =  char["Left Arm"].LeftShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Shoulder") then
  w.Part1 = char["Right Arm"]
  w.C1 =  char["Right Arm"].RightShoulderAttachment.CFrame
end
 elseif string.find(a.Name,"Left") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Left Leg"]
  w.C1 =  char["Left Leg"].LeftFootAttachment.CFrame
end
 elseif string.find(a.Name,"Right") then
  if string.find(a.Name,"Foot") then
  w.Part1 = char["Right Leg"]
  w.C1 =  char["Right Leg"].RightFootAttachment.CFrame
end
elseif string.find(a.Name,"Waist") then
    if string.find(a.Name,"Back") then
       w.Part1 = char["Torso"]
         w.C1 =  char["Torso"].WaistBackAttachment.CFrame
    elseif string.find(a.Name,"Center") then 
        w.Part1 = char["Torso"]
        w.C1 =  char["Torso"].WaistCenterAttachment.CFrame
         end    
        elseif string.find(a.Name,"Body") then
  if string.find(a.Name,"Back") then
     w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyBackAttachment.CFrame
       elseif  string.find(a.Name,"Front") then
          w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].BodyFrontAttachment.CFrame
       end    
            elseif string.find(a.Name,"Hat") then
                w.Part1 = char["Head"]
       w.C1 =  char["Head"].HatAttachment.CFrame 
                elseif string.find(a.Name,"FaceFront") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceFrontAttachment.CFrame 
                       elseif string.find(a.Name,"FaceCenter") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].FaceCenterAttachment.CFrame 
                                  elseif string.find(a.Name,"Neck") then
                       w.Part1 = char["Torso"]
       w.C1 =  char["Torso"].NeckAttachment.CFrame 
                           elseif string.find(a.Name,"Hair") then
                       w.Part1 = char["Head"]
       w.C1 =  char["Head"].HairAttachment.CFrame 
                           end


end
           end
       end

end



   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name ~= "RectangleHead" and v.Name ~= "RectangleHead-1"  and v.Name ~= "RectangleHead-3"  and v.Name ~= "funnihead" and v.Name ~= "RectangleFace-1" and v.Name ~= "RectangleFace" and v.Name ~= "RectangleFace-2" and v.Name ~= "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 
   for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "RectangleHead" and v.Name =="Puffer Vest" and v.Name == "RectangleFace" and v.Name == "RectangleFace-2" and v.Name == "RectangleHead-2"     then
v.Handle:BreakJoints()
           end
       end 

       for _, child in pairs(char:GetChildren()) do
        if child:IsA("BasePart") then
            child.Transparency = 1
        end
    end
    
for _, child in pairs(char:GetChildren()) do
    if child:IsA("Accessory") then
        child.Handle.Transparency = 1
    end
end



       local ch = game:GetService("Players").LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)


for i,v in tools do
    table.remove(tools,table.find(tools,v))
     end
    
    for i,v in pairs(lp.Backpack:GetChildren()) do 
        if v:IsA("Tool") and not string.find(v.Name,"FAKE")  then 
            pcall(function()
            v.Handle.CanCollide = false
        end)
            table.insert(tools,v)
        end 
        end
    
        for i,v in tools do
            pcall(function()
            v.Parent = c 
            v.Parent = lp.Backpack
            v.Parent = c 
            v.Parent = lp.Backpack
            local fv = v:Clone()
            task.wait(.001)
            fv.Parent = lp.Backpack 
            local oldn = fv.Name 
            fv.Name = "FAKE"..oldn
            table.insert(faketools,fv)
            pcall(function()
        fv.Handle.Transparency = 1 
            end)
             v.Handle.CFrame = char.HumanoidRootPart.CFrame *CFrame.new(0,-25,5)
             end)
                    end
    
            task.spawn(function()
                task.wait(.01)
                for i,v in tools do
          v.Parent = c
          end
          for i,v in tools do
              v.Parent = lp.Backpack
              end
                 c:BreakJoints()	
                 for i,v in tools do
                  v.Parent = c
                  end
               end)
    task.spawn(function()	
    task.wait(.02)
     game:GetService("Players").LocalPlayer.Character=char
    end)
 
prt:Destroy()


local clock = os.clock
local rad, cos, sin, random = math.rad, math.cos, math.sin, math.random
AntiSleepRotate = Vector3.new(0, sin(clock()*10), 0)
local velocity 
if _G.ToolFling == false then
velocity = game:GetService("RunService").Heartbeat:Connect(function()
    for i,v in pairs(c:GetChildren()) do
        if v:IsA("Accessory") or v:IsA("Tool") then
            pcall(function()
            v.Handle.AssemblyLinearVelocity = Vector3.new(char.Torso.AssemblyLinearVelocity.X*15, 26.794, char.Torso.AssemblyLinearVelocity.Z*15) 
            end)
        end
        end
    end)
else 
    velocity = game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in pairs(c:GetChildren()) do
            if v:IsA("Accessory")  then
                v.Handle.AssemblyLinearVelocity = Vector3.new(char.Torso.AssemblyLinearVelocity.X*15,26.794, char.Torso.AssemblyLinearVelocity.Z*15) 
            elseif v:IsA("Tool") then 
                pcall(function()
                v.Handle.AssemblyLinearVelocity = Vector3.new(9e9 -9e7, 9e9) 
                  v.Handle.AssemblyAngularVelocity = Vector3.new(9e9 -9e7, 9e9) 
                  v.Handle.CanCollide = false
                end)
                end
            end
        end)
end



  --wait(game:GetService("Players").RespawnTime + 0.25)  






for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = true
				end
			end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/TypicalsConvertingLibrary/main/Main"))()








for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = true
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end
local removinghealth = false

 



    
pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "Heavenly Void Wings" then  
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.SpecialMesh.MeshId = "rbxassetid://17578463084"
               v.Handle.SpecialMesh.TextureId = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
               else
               v.Handle.TextureID = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
           end
end
end
end)
pcall(function()
          for _,v in pairs(c:GetChildren()) do
       if v:IsA("Accessory") and v.Name == "Ultra-Fabulous Hair" then  
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.Mesh.TextureId = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
               else
               v.Handle.TextureID = ""
               v.Handle.Color = Color3.fromRGB(0,0,0)
           end
end
end
end)  

if _G.SBV4R == true then
local v = c:WaitForChild("fooblet")
           if c.Humanoid.RigType == Enum.HumanoidRigType.R6 then
               v.Handle.SpecialMesh.TextureId = ""
               else
               v.Handle.TextureID = ""
           end
           v.Handle.Material = 1584
           v.Handle.Transparency = 1
           char["Right Arm"].Transparency = 0
             char["Right Arm"].Material = 1584
           

end


local connect
    local sin = math.sin
    local plrs = game:GetService("Players")
        local antisleepMultiplier=Vector3.new(.0025,.005,.0025)
            connect = game:GetService("RunService").Heartbeat:Connect(function(set)
            sine=os.clock
            flingpart = _G.flingpart
            pcall(function()
if flingpart ~= nil and flingpart.Parent.Parent ~= nil then
      if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
if flingpart.Name ~= "Torso" or flingpart.Name ~= "HumanoidRootPart" or flingpart.Name ~= "Handle" then
    if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
    flingpart = flingpart.Parent.HumanoidRootPart
    end
end
end 
else 
flingpart = nil
end
end)
            local antisleep=sin(sine()*100)*antisleepMultiplier
            plrs.LocalPlayer.SimulationRadius = #plrs:GetChildren()*1000
            pcall(function()
                workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChildOfClass("Humanoid")
    workspace.FallenPartsDestroyHeight = oldh 
            end)
                     pcall(function()
     c["Tor"].Handle.CFrame = char["Torso"].CFrame   + antisleep
    end)
    pcall(function()
	if nlia == false then 
    c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  +antisleep
	else 
  c["gooblet"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))  +antisleep
	end
    end)
            pcall(function()
			if nria == false then 
     c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))+antisleep
	 else 
	   c["fooblet"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))+antisleep
			end
       end)
             pcall(function()
      c["Accessory (rightleg)"].Handle.CFrame = char["Right Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  +antisleep
     end)
           pcall(function()
    c["Accessory (LLeg)"].Handle.CFrame = char["Left Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))  +antisleep
     end)
     pcall(function()
        c["RobotArmTest"].Handle.CFrame = char["Left Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) * CFrame.Angles(0,0,-.0005*math.sin(100*tick())) *CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
        end)
                pcall(function()
         c["PurpleRobotArm"].Handle.CFrame = char["Right Arm"].CFrame * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))* CFrame.Angles(0,0,-.0005*math.sin(100*tick()))*CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
           end)
                 pcall(function()
          c["GreyRobotArm"].Handle.CFrame = char["Right Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))  *CFrame.Angles(0,0,-.001*math.sin(100*tick()))*CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
         end)
               pcall(function()
        c["BlueRobotArm"].Handle.CFrame = char["Left Leg"].CFrame  * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))  *CFrame.Angles(0,0,-.001*math.sin(100*tick()))*CFrame.new(-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()),-.0025*math.sin(100*tick()))
         end)
    pcall(function()
              for _,v in pairs(c:GetChildren()) do
           if v:IsA("Accessory") and v.Name ~= "gooblet" and v.Name ~= "fooblet"  and v.Name ~= "BlueRobotArm" and not string.find(v.Name,"Accessory (Noob") and v.Name ~= "Accessory (NoobLeftArm)"  and v.Name ~= "Accessory (NoobTorso)"  and v.Name ~= "Accessory (NoobRightArm)" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "LARM" and v.Name ~= "RARM" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)" then  
    v.Handle.CFrame = char[v.Name].Handle.CFrame +antisleep
    v.Handle.CanTouch = false
    end
    end
    end)
    
    pcall(function()
              for _,v in pairs(char:GetChildren()) do
           if v:IsA("Accessory") and v.Name ~= "gooblet" and not string.find(v.Name, "gooblet") and v.Name ~= "fooblet" and v.Name ~= "Black"  and v.Name ~= "Tor"  and v.Name ~= "BlueRobotArm" and v.Name ~= "GreyRobotArm"   and v.Name ~= "Tor" and v.Name ~= "PurpleRobotArm" and v.Name ~= "RobotArmTest"  and v.Name ~= "LARM" and v.Name ~= "RARM" and v.Name ~= "Accessory (rightleg)" and v.Name ~= "Accessory (LLeg)" then  
    if not c:FindFirstChild(v.Name) then 
   v.Handle.Transparency = 0.5
    end
    end
    end
    if not c:FindFirstChild("gooblet") then 
        char["Left Arm"].Transparency = 0.5
    end 
    if not c:FindFirstChild("fooblet") then 
        pcall(function()
        char["Right Arm"].Transparency = 0.5
        end)
    end 
    if not c:FindFirstChild("Accessory (rightleg)") then 
        char["Right Leg"].Transparency = 0.5
    end 
    if not c:FindFirstChild("Accessory (LLeg)") then 
        char["Left Leg"].Transparency = 0.5
    end 
    if not c:FindFirstChild("Tor") then 
        char["Torso"].Transparency = 0.5
    end 
    end)
    pcall(function()
       if _G.SBV4R == false then
      for _,v in pairs(c:GetChildren()) do
           if v:IsA("Accessory")   then
    v.Handle.CanCollide = false
    --v.Handle.Material = Enum.Material.Glass
    v.Handle.Reflectance = -1
               end
     end
     else
       for _,v in pairs(c:GetChildren()) do
           if v:IsA("Accessory")   then
     v.Handle.CanCollide = false
           end
           end
     c["fooblet"].Handle.Material = 1584
     c["fooblet"].Handle.Color = char["Right Arm"].Color
     end
    end)

    for i,v in pairs(c:GetChildren()) do
        if v:IsA("Tool")  then
            pcall(function()
  if not char:FindFirstChild("FAKE"..v.Name) then
       v.Handle.CFrame = char.HumanoidRootPart.CFrame *CFrame.new(0,-50,0)
       else 
        if _G.ToolFling == true then
            v.Handle.CFrame = cfAdd(flingpart.CFrame,flingpart.AssemblyLinearVelocity*(sin(sine()*15)+1))
        else 
            v.Handle.CFrame = char:FindFirstChild("FAKE"..v.Name).Handle.CFrame + antisleep  
        end
  end
        end)
end
end
        settings().Physics.AllowSleep = false
    end)

    
    local qr = 0

    task.spawn(function()
task.wait(.05)
qr = qr + .05
    end)

char:FindFirstChildOfClass("Humanoid").Died:Connect(function()

    stopped = true
    _G.Stopped = true
    respawnloop:Disconnect()

task.wait(game.Players.RespawnTime - qr)
connect:Disconnect()
char:Destroy()
velocity:Disconnect()
end)

		settings().Physics.AllowSleep = false

for _, child in pairs(c:GetChildren()) do
				if child:IsA("Part") then
					child.Anchored = false
				elseif child:IsA("Accessory") then
				    child.Handle.Anchored = false
				end
			end

            local n = 0

            local function transparent() 
                for _, child in pairs(char:GetChildren()) do
                    local v = child
                                if child:IsA("BasePart") and not v:IsA("Model") and v.Name == "Torso" or  child:IsA("BasePart") and v.Name == "Right Arm" or  child:IsA("BasePart") and v.Name == "Left Arm" or  child:IsA("BasePart") and v.Name == "Right Leg" or  child:IsA("BasePart") and v.Name == "Left Leg" then
                                             if _G.TransparentRig == true then
                                    child.Transparency = .5
                                    else 
                                        child.Transparency = 1 
                                    end
                                end
                            end
                            for _, child in pairs(char:GetChildren()) do
                    local v = child
                                if child:IsA("Accessory")then
                                             if _G.TransparentRig == true then
                                    child.Handle.Transparency = .5
                                    else 
                                        child.Handle.Transparency = 1 
                                    end
                                end
                            end
                        end

wait(game:GetService("Players").RespawnTime - .1)
local cam = workspace.CurrentCamera
local cfr = cam.CFrame

task.wait(.1)
transparent()
velocity:Disconnect() 
--cam.CFrame = cfr
task.wait(.5)
connect:Disconnect()
end
redo()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Respawn Time";
        Duration = 20;
		Text = "Your character will refit (respawn) every "..game:GetService("Players").RespawnTime.." seconds."
	})

 local sin=math.sin
 local oldh = workspace.FallenPartsDestroyHeight

respawnloop = plr.CharacterAdded:Connect(function(re)
if  _G.ToolFling == true then 
    _G.Fling = false 
end
for i,v in pairs(lp.Backpack:GetDescendants()) do 
    if v:IsA("Sound") and v:FindFirstAncestorOfClass("Tool") then 
        v.Volume = 0 
        v.SoundId = "rbxassetid://0"
    end 
end
repeat wait() until plr.Character:FindFirstChild("Head")
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
repeat wait() until plr.Character:FindFirstChildOfClass("Accessory")

if _G.HideCharacter == false then
if plr.Character.Name ~= "non" then
    if workspace:FindFirstChild("non") then
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
if plr.Character.Name ~= "non" then
 plr.Character.HumanoidRootPart.CFrame = CFrame.new( workspace.non.HumanoidRootPart.CFrame.X +5 , workspace.non.HumanoidRootPart.CFrame.Y, workspace.non.HumanoidRootPart.CFrame.Z +5) 
end
task.wait(.005)
redo2()
else
workspace.CurrentCamera.CameraSubject = workspace.Terrain.non:FindFirstChildOfClass("Humanoid")
if plr.Character.Name ~= "non" then
 plr.Character.HumanoidRootPart.CFrame = CFrame.new( workspace.Terrain.non.HumanoidRootPart.CFrame.X +5 , workspace.Terrain.non.HumanoidRootPart.CFrame.Y, workspace.Terrain.non.HumanoidRootPart.CFrame.Z +5) 
end
task.wait(.005)
redo2()
    end
end
else
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
local flingloop
local c = re
if _G.FlingEnabled == true and _G.ToolFling == false then 
if _G.Fling == true  and _G.ToolFling == false then
    local flingpart = _G.flingpart
local sineee=os.clock()
if flingpart ~= nil then
      if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
          c.Humanoid:ChangeState(16)
if flingpart.Name ~= "Torso" or flingpart.Name ~= "HumanoidRootPart" or flingpart.Name ~= "Handle" then
    if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
    flingpart = flingpart.Parent.HumanoidRootPart
    elseif flingpart.Name == "Handle" then
flingpart = flingpart.Parent.Parent.HumanoidRootPart
_G.flingplr = tostring(flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")")
    end
end
flingloop = game:GetService("RunService").Heartbeat:Connect(function()
sineee=os.clock()
pcall(function()
if  flingpart.Parent:WaitForChild("Humanoid") then
c.HumanoidRootPart.CFrame = cfAdd(flingpart.CFrame,flingpart.AssemblyLinearVelocity*(sin(sineee*15)+1))
end
c.HumanoidRootPart.Velocity = Vector3.new(9e9,-9e7,9e9)
      end)
end)
local n = 0
workspace.FallenPartsDestroyHeight = 0/0
repeat 
wait(.05)
n=n+.05
until  flingpart.AssemblyLinearVelocity.X <= 3500 and n >= .5 or n >= 1
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2 - Fling:";
        Duration = 5;
		Text = "Successfully flung: ".._G.flingplr.." in: "..n.." seconds!"
	})
flingloop:Disconnect()
workspace.FallenPartsDestroyHeight = oldh
for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end
 end
end
 _G.Fling =false
end
end
if plr.Character.Name ~= "non" then
        if plr.Character.Name ~= "non" then
 plr.Character:WaitForChild("HumanoidRootPart").CFrame =CFrame.new( workspace.non.HumanoidRootPart.CFrame.X  , workspace.FallenPartsDestroyHeight + 100, workspace.non.HumanoidRootPart.CFrame.Z  ) 

for i,v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
v.AssemblyAngularVelocity = Vector3.new(0,0,0)
v.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
 end
end

workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
task.wait(.0025)
workspace.CurrentCamera.CameraSubject = workspace.non:FindFirstChild("Humanoid")
redo2()
task.wait(.6)
if lp.Character ~= workspace.non then 
    lp.Character:BreakJoints()
    lp.Character.Head:Destroy()
    task.wait(.05)
    lp.Character = workspace.non
end
end
end
end)

function attackuno()
    task.spawn(function()
flingpos = game.Players.LocalPlayer:GetMouse().Hit
flingpart = game.Players.LocalPlayer:GetMouse().Target
_G.flingplr = nil
if flingpart.Parent:FindFirstChildOfClass("Humanoid") then
_G.flingpart = flingpart
_G.flingplr = tostring(flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")")
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Oxide Reanimation V2.1 - Fling:";
        Duration = 3;
		Text = "Locked onto player: "..flingpart.Parent:FindFirstChildOfClass("Humanoid").DisplayName.." (@"..flingpart.Parent.Name..")"
	})
    if _G.ToolFling == true then
        _G.Fling = false
    if faketools[1] ~= nil then 
        faketools[1].Parent = workspace.non 
    end
    task.wait(2.5)
        if faketools[1] ~= nil then 
        faketools[1].Parent = game.Players.LocalPlayer.Backpack
    end
    _G.Fling = false
else 
    _G.Fling = true
end
else
print("not a player")
   _G.Fling = false
end
   end)
end

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if _G.FlingEnabled == true and stopped == false then
		attackuno()
	end
    end)

-- does oxide actually supports aligning? maybe?
-- i might dont have brain

player = game.Players.LocalPlayer
cplayer = player.Character

for i,v in pairs (cplayer:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end

local function gp(parent, name, className)
    if typeof(parent) == "Instance" then
        for i, v in pairs(parent:GetChildren()) do
            if (v.Name == name) and v:IsA(className) then
                return v
            end
        end
    end
    return nil
end

	
 
-- [[ Name-- [[ Name: Chara's Lighning Cannon by Chara ]] --
-- [[ Converted/Fixed/Aligned: By Melon ]] --
-- [[ Reanimate: By Emper ]] --
-- [[ https://www.roblox.com/catalog/4819740796/Robox ]] --
-- [[ https://www.roblox.com/catalog/5552252553/Kinetic-Staff] ]] --
-- [[ https://www.roblox.com/catalog/9867487176/Le-Rouge-Cross-body-Bag-3-0 ]] --
-- [[ https://www.roblox.com/catalog/9867481700/Le-Rouge-Cross-body-Bag-1-0 ]] --
-- [[ https://www.roblox.com/catalog/3409612660/International-Fedora-USA ]] --
-- [[ https://www.roblox.com/catalog/3033910400/International-Fedora-Germany ]] --
-- [[ https://www.roblox.com/catalog/3033908130/International-Fedora-France ]] --
-- [[ https://www.roblox.com/catalog/3398308134/International-Fedora-Canada ]] --

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Melon's (FE) Converts/Scripts";
	Text = "Thanks for using!";
	Icon = "rbxthumb://type=Asset&id=11561641603&w=150&h=150"})
Duration = 3;

if not game:IsLoaded() then
	game.Loaded:Wait()
end

local function FindInstance(Parent, ClassName, Name)
	for _, Instance in pairs(Parent:GetChildren()) do
		if Instance:IsA(ClassName) and Instance.Name == Name then
			return Instance
		end
	end
end

local function WaitForClass(Parent, ClassName)
	local Instance = Parent:FindFirstChildOfClass(ClassName)

	while not Instance and Parent do
		Parent.ChildAdded:Wait()
		Instance = Parent:FindFirstChildOfClass(ClassName)
	end

	return Instance
end

local function WaitForClassOfName(Parent, ...)
	local Instance = FindInstance(Parent, ...)

	while not Instance and Parent do
		Parent.ChildAdded:Wait()
		Instance = FindInstance(Parent, ...)
	end

	return Instance
end

local function RandomString()
	return game:GetService("HttpService"):GenerateGUID(false)
end
local stopeverything = false
local HipVal = 3
KEYHOLD = false
s = script
Script = script
SCRIPT = script
scrpt = script
Scrpt = script
SCRPT = script
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
SQRT = math.sqrt
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
HUGE = math.huge
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad

local lplr = game:GetService("Players").LocalPlayer
local Player = lplr
local PLAYER = Player
local sine = 0
local NeckSnap = false
local USERNAME = lplr.Name
local Player = game:GetService("Players").LocalPlayer
local USERID = lplr.UserId
local taunt = {Value = "None"}
local songid = {Value = "rbxassetid://6174456295"}
local attack = false
local walkspeed = 50
local TauntRemote = {}
local SongSync = {Value = 0}
local ISFLYING = false
local antivoid = nil
local shade = Color3.fromRGB(0,0,0)

local Character = game.Players.LocalPlayer.Character
local Mouse,mouse,MOUSE,m,M = lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse()

local S = 1
local eeeblock = Instance.new("Part")
local Humanoid = Character.Humanoid
Humanoid.Animator:Destroy()
Humanoid.HipHeight = HipVal
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Effects = nil
local Eyes = nil
local Replica = game:GetObjects("rbxassetid://7921736307")[1]
local GUN = Replica.MegaGunnModel
Character.Animate:Destroy()
GUN.Parent = Character
local GunJoint = GUN.Joint.Weld
GUN.Joint.Weld.Part0 = RightArm
 
local Hole = GUN.Hole
local Holetwo = GUN.Hole2
local shade = Character["Torso"].Color
local alreadyfixing = false
local Effects = Instance.new("Folder")
Effects.Parent = Character
local eeeblock = Instance.new("Part")
eeeblock.Name = "yes"
eeeblock.CanCollide = false
eeeblock.Transparency = 1
eeeblock.CFrame = Torso.CFrame
eeeblock.Parent = Character
local eee = Instance.new("Sound",eeeblock)
eee.Volume = 1
eee.Pitch = 1
eee.SoundId = songid.Value
eee:Play()
eee.Name = "yes"
eee.Looped = true
eee.TimePosition = SongSync.Value
eee.DescendantAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	if v:IsA("SoundEffect") then
		v.Enabled = false
		v:GetPropertyChangedSignal("Enabled"):Connect(function()
			if stopeverything then wait(math.huge) end
			if v.Enabled ~= false then
				v.Enabled = false
			end
		end)
	end
	game:GetService("Debris"):AddItem(v,.01)
end)
function TauntRemote:FireServer(Name, ID)
	taunt.Value = Name
	if songid.Value ~= "rbxassetid://"..ID then
		songid.Value = "rbxassetid://"..ID
		SongSync.Value = 0
		eee.Volume = 1
		eee.Pitch = 1
		eee.SoundId = songid.Value
		eee.TimePosition = SongSync.Value
	end
end


function chatfunc(textt,glitchy)
	local text = string.gsub(textt,"​","")
	local chat = coroutine.wrap(function()
		local oldthing = eeeblock:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",eeeblock)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
		sayingstuff.StudsOffset = Vector3.new(0,5,0)
		sayingstuff.Adornee = eeeblock
		sayingstuff.Name = "TalkingBillBoard"
		local sayingstuff2 = Instance.new("TextLabel",sayingstuff)
		sayingstuff2.BackgroundTransparency = 1
		sayingstuff2.BorderSizePixel = 0
		sayingstuff2.Text = ""
		sayingstuff2.Font = "Arcade"
		sayingstuff2.TextScaled = true
		sayingstuff2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff2:IsDescendantOf(game) do
				local hBRUH,sBRUH,vBRUH = Color3.toHSV(GUN.NeonParts.Color)
				sayingstuff2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		sayingstuff2.TextStrokeColor3 = shade
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Arcade"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff3:IsDescendantOf(game) do
				sayingstuff3.TextColor3 = GUN.NeonParts.Color
				swait()
			end
		end))
		sayingstuff3.TextStrokeColor3 = shade
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff ~= nil do
				swait()
				if glitchy then
					local fonts = {"Antique","Arcade","Arial","ArialBold","Bodoni","Cartoon","Code","Fantasy","Garamond","Gotham","GothamBlack","GothamBold","GothamSemibold","Highway","SciFi","SourceSans","SourceSansBold","SourceSansItalic","SourceSansLight","SourceSansSemibold"}
					local randomfont = fonts[math.random(1,#fonts)]
					sayingstuff2.Font = randomfont
					sayingstuff3.Font = randomfont
				end
				sayingstuff2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Rotation = math.random(-1,1)	
				sayingstuff2.Rotation = math.random(-1,1)
			end
		end))
		for i = 1,string.len(text) do
			swait(2)
			sayingstuff2.Text = string.sub(text,1,i)
			sayingstuff3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			sayingstuff2.TextStrokeTransparency = i/50
			sayingstuff2.TextTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextStrokeTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextTransparency = sayingstuff2.TextStrokeTransparency
		end
		sayingstuff:Destroy()
	end)
	chat()
end

function onChatted(msg)
	chatfunc(msg)
end
Player.Chatted:connect(onChatted)

local ROOTC0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local NECKC0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local BG = nil
local BV = nil
local soundfixing = false
local fixinggui = false
local gui = nil
local exitbutton = nil
local restartingscript = false
local TS = game:GetService("TweenService")
local PS = game:GetService("PhysicsService")
local Anim = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).Magnitude 
local doe = 0
Humanoid.WalkSpeed = walkspeed
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5/s
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5/s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5/s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end

function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end
function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a,b,t)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end


ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
				script.Heartbeat:Fire()
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
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function Swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end

SWAIT = Swait


function mdmg(pos, range)
end

function CreateConnection(TYPE,PARENT,PART0,PART1,C0,C1)
	if stopeverything then wait(math.huge) end
	local NEWWELD = Instance.new(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end	

function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name =  RandomString()

	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat if stopeverything then wait(math.huge) end Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

local function weldBetween(a,b)
	local weldd = Instance.new("Weld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = b
	return weldd
end
function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 		


function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

if _G.Night == Bool then
HUGE = math.huge
local lit = game:GetService("Lighting")
function checksky(v)
	if v:IsA("BloomEffect") then
		return
	end
	if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") then
		game:GetService("Debris"):AddItem(v,.01)
	end
end
for i,v in pairs(lit:GetDescendants()) do
	checksky(v)
end
lit.DescendantAdded:Connect(function(v)
	if stopeverything then wait(HUGE) end
	checksky(v)
end)
Bloom = Instance.new("BloomEffect",game:GetService("Lighting"))
VISUALS = game:GetService("Lighting")
VISUALSSz = game:GetService("Lighting")
local bswcrlightingeffect = Instance.new("BoolValue")
bswcrlightingeffect.Name = "BSWCRLightingEffect"
bswcrlightingeffect.Value = false

pcall(function()
	VISUALS.ClockTime = 6
	Bloom.Intensity = 0 + sick.PlaybackLoudness/500
	VISUALSSz.ExposureCompensation = math.clamp((0 + sick.PlaybackLoudness/125),0,5)
	VISUALSSz.FogEnd = math.clamp(sick.PlaybackLoudness,50,1000)
	VISUALSSz.Brightness = 0
	VISUALS.EnvironmentDiffuseScale = 0 + sick.PlaybackLoudness/100
	if dienerd ~= true then
		lit.Ambient = Color3.new(1,1,1)
		lit.Brightness = 1
		lit.ColorShift_Bottom = Color3.new()
		lit.ColorShift_Top = Color3.new()
		lit.EnvironmentDiffuseScale = 0
		lit.EnvironmentSpecularScale = 0
		lit.GlobalShadows = true
		lit.OutdoorAmbient = Color3.new(.5,.5,.5)
		lit.ClockTime = 6
		lit.GeographicLatitude = 41.733
		lit.ExposureCompensation = 0
		lit.FogColor = Color3.fromRGB(192,192,192)
		lit.FogEnd = 100000
	end
end)
end



function EFFECT1(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.Color = GUN.NeonParts.Color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - .01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - .01/value*bonuspeed
			end
			rng.Color = GUN.NeonParts.Color
			speeder = speeder - .01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + .01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end



function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
  local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
  local curpos = Part0
  local trz = {
    -Offset,
    Offset
  }
  for i = 1,Times do
    local li = Instance.new("Part",Effects)
    li.Name = RandomString()
    li.TopSurface = 0
    li.Material = "Neon"
    li.BottomSurface = 0
    li.Anchored = true
    li.Locked = true
    li.Transparency = 0
    li.Color = Color
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(0.1,0.1,magz/Times)
    local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
    local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
    if Times == i then
      local magz2 = (curpos - Part1).Magnitude
      li.Size = Vector3.new(0.1,0.1,magz2)
      li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
    else
      li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
    end
    curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
    li:Destroy()
	Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
  end
end

function FireArc(Part,ToLocation,AmountOfTime,Height,DoesCourontine)
    if DoesCourontine == false then
        local Direction = CFrame.new(Part.Position,ToLocation)
        local Distance = (Part.Position - ToLocation).Magnitude
        for i = 1,AmountOfTime do
            swait()
            Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
            Direction = Part.CFrame
        end
    elseif DoesCourontine == true then
        coroutine.resume(coroutine.create(function()
            local Direction = CFrame.new(Part.Position,ToLocation)
            local Distance = (Part.Position - ToLocation).Magnitude
            for i = 1,AmountOfTime do
                swait()
                Part.CFrame = Direction*CFrame.new(0,(AmountOfTime/200)+((AmountOfTime/Height)-((i*2)/Height)),-Distance/AmountOfTime)
                Direction = Part.CFrame
            end
        end))
    end
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end
function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = Instance.new("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = Instance.new("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function AttackGyro()
	local GYRO = Instance.new("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,4000000,0)
	GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then wait(math.huge) end
			swait()
			GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
		until attack == false
		GYRO:Destroy()
	end))
end

function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end


coroutine.resume(coroutine.create(function()
	while not stopeverything do
		for i = 0,1,(1/60) do
			swait()
			if not alreadyfixing then
				GUN.NeonParts.Color = Color3.fromHSV(i,1,1)
				if taunt.Value == "iNSaNiTY" then
					GUN.NeonParts.Color = Color3.fromHSV(math.random(0,19)/20,1,1)
				elseif taunt.Value == "Err0r" then
					GUN.NeonParts.Color = Color3.fromRGB(0,math.clamp(eee.PlaybackLoudness-255,0,255),0)
				elseif taunt.Value == "FAST BOIII" then
					GUN.NeonParts.Color = Color3.fromRGB(0,0,math.clamp(eee.PlaybackLoudness-191,0,255))
				elseif taunt.Value == "Glitch" then
					GUN.NeonParts.Color = Color3.fromHSV(i,1,math.clamp((eee.PlaybackLoudness/255)-.5,0,1))
				elseif taunt.Value == "Alastor" then
					GUN.NeonParts.Color = Color3.new(eee.PlaybackLoudness/500,0,0)
				elseif taunt.Value == "kArmA" then
					GUN.NeonParts.Color = Color3.new(1,1,1)
				elseif taunt.Value == "petfroge" then
					GUN.NeonParts.Color = BrickColor.Random().Color
				end
			end
		end
	end
end))

game:FindFirstChildOfClass("RunService").PostSimulation:Connect(function()
    local swordname = "GunJoint"
    local Hat = Character:FindFirstChild("Starslayer Railgun") or Character:FindFirstChild(swordname)

    if Hat then
        
        local HHandle = Hat.Handle
        if HHandle then
            local Weld = HHandle:FindFirstChildOfClass("Weld")
            if Weld then
                Weld:Destroy()
            end

            Hat.Handle.CFrame = GUN.Base.CFrame * CFrame.new(2, 1, -0) * CFrame.Angles(0, math.rad(-180), math.rad(-0))
            HHandle.Velocity = Vector3.new()
        end
    end
end)

function attackone()
	attack = true
	walkspeed = 16
	AttackGyro()
	for i = 0,.5,.05 do
		swait()
		if HipVal ~= 0 then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),.7/3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),1 / 3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1 / 3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
		end
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = .81,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	local mousehit = Mouse.Hit
	local DISTANCE = (Holetwo.Position - mousehit.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,mousehit.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	for i = 1,4 do
		coroutine.resume(coroutine.create(function()
			Lightning(Holetwo.Position,mousehit.p,15,3.5,Color3.new(1,0,0),25,0,1,0,true,55)
		end))
	end
	coroutine.resume(coroutine.create(function()
		Lightning(Holetwo.Position,mousehit.p,15,3.5,Color3.new(1,0,0),25,0,1,0,true,55)
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = mousehit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = mousehit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			for a = 0, 14 do
				EFFECT1(3,math.random(4,8),"Add",mousehit*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,GUN.NeonParts.Color,0)
			end
		end
		mdmg(mousehit.p,10)
	end))
	for i = 0,.5,.075 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(60)),1 / 3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1 / 3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
		end	
	end
	walkspeed = 50
	attack = false
end
-------------------------------------------------------------------

function Ka_Boom()
	attack = true
	walkspeed = 0
	local die = CreateSound(1566051529,RootPart,3,1)
	die.EmitterSize = 100
	swait(5)
	for i = 1,3 do
		for i = 0,1.5,.1 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
		coroutine.resume(coroutine.create(function()
			Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = .65,SoundVolume = 6,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
			Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
			local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
			local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
			local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
			killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
			MakeForm(killbeam,"Cyl")
			coroutine.resume(coroutine.create(function()
				for i = 1,25 do
					swait()
					killbeam.Transparency = i/25
				end
				killbeam:Destroy()
			end))
			for i = 1,4 do
				coroutine.resume(coroutine.create(function()
					Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
				end))
			end
			for i = 0,2 do
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			end
			Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(0,0,1),25,0,1,0,true,55)
			Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
			Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = skypos,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
			for i = 0,2 do
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = skypos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			end
		end))
		for i = 1,42 do
			swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)),.7/3)
			Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,.7/3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		end
	end
	for i = 1,15 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)),.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local BEAM = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	local BEAM2 = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"Beam",Vector3.new())
	MakeForm(BEAM,"Ball")
	MakeForm(BEAM2,"Ball")
	BEAM.CFrame = CFrame.new(RootPart.Position)
	BEAM2.CFrame = CFrame.new(RootPart.Position)
	local boooom = CreateSound(415700134,RootPart,10,1,false)
	boooom.EmitterSize = 100
	for i=1,140 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)),.7/3)
		Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,.7/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		BEAM.Size = BEAM.Size + Vector3.new(.7,8,.7)
		BEAM2.Size = BEAM2.Size + Vector3.new(2,2,2)
		BEAM.Color = GUN.NeonParts.Color
		BEAM2.Color = GUN.NeonParts.Color
		BEAM.CFrame = CFrame.new(RootPart.Position)
		BEAM2.CFrame = CFrame.new(RootPart.Position)
		WACKYEFFECT({TIME = 5+i,EffectType = "Swirl",Size = BEAM2.Size*1.15,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = .8,Transparency2 = 1,CFrame = BEAM.CFrame * CFrame.Angles(math.rad(0),math.rad(i*5),math.rad(0)),MoveToPos = nil,RotationX = 0,RotationY = i/8,RotationZ = 0,Material = "Neon",Color = GUN.NeonParts.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	end
	mdmg(RootPart.Position,BEAM2.Size.Y/2)
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM.Size,Size2 = Vector3.new(0,BEAM.Size.Y,0),Transparency = 0,Transparency2 = 0,CFrame = BEAM.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	Effect({TIME = 75,EffectType = "Sphere",Size = BEAM2.Size,Size2 = Vector3.new(),Transparency = 0,Transparency2 = .6,CFrame = BEAM2.CFrame,MoveToPos = nil,RotationX = 0,RotationY = 0,RotationZ = 0,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil})
	for i,v in pairs(Effects:GetChildren()) do
		v.Color = shade
		v:GetPropertyChangedSignal("Color"):Connect(function()
			if stopeverything then wait(math.huge) end
			v.Color = shade
		end)
	end
	BEAM2:Destroy()
	BEAM:Destroy()
	attack = false
	walkspeed = 50
end

-----------------------------------------------------------

function attacktwo()
	attack = true
	walkspeed = 0
	AttackGyro()
	local gBullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"AbsoluteNoob",Vector3.new())
	MakeForm(gBullet,"Ball")
	gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
	CreateSound(2785493,gBullet,10,.8)
	for i = 0,1.25,.025 do
		swait()
		Effect({Time = math.random(35,55),EffectType = "Sphere",Size = Vector3.new(.5,.5,.5),Size2 = Vector3.new(1,1,1),Transparency = 0,Transparency2 = 1,CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0),MoveToPos = LeftArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)).p,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 50,SizeBoomerang = 50})
		gBullet.Size = gBullet.Size * 1.085
		gBullet.CFrame = LeftArm.CFrame*CFrame.new(0,-1.5,0)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-30)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-5 - 3 * math.cos(sine/12)),math.rad(0),math.rad(30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/49)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,.7/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5 + .1 * math.cos(sine/12),-0) * CFrame.Angles(math.rad(85 - 1.5 * math.cos(sine/12)),math.rad(0 - 6 * math.cos(sine/12)),math.rad(-30 - 6 * math.cos(sine/12))) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	local bullets = {}
	for i = 1,math.random(27,41) do
		swait()
		local Bullet = CreatePart(3,Effects,"Neon",0,0,Color3.new(0,0,1),"AbsoluteBEAN",Vector3.new(.6,.6,.6))
		MakeForm(Bullet,"Ball")
		Bullet.CFrame = gBullet.CFrame
		Effect({Time = math.random(5,20),EffectType = "Sphere",Size = Vector3.new(3,3,3)*math.random(-3,2),Size2 = Vector3.new(6,6,6)*math.random(-3,2),Transparency = .4,Transparency2 = 1,CFrame = Bullet.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
		table.insert(bullets,Bullet)
	end
	local oofing = false
	for b = 1,#bullets do
		swait()
		local part,pos = rayCast(LeftArm.CFrame*CFrame.new(0,-1.5,0).p,((Mouse.Hit.p+Vector3.new(math.random(-15,15),math.random(-7,7),math.random(-15,15))) - LeftArm.CFrame*CFrame.new(0,-1.5,0).p),500,Character)
		coroutine.resume(coroutine.create(function()
			FireArc(bullets[b],pos,math.random(17,31),math.random(9,15),false)
			Effect({Time = math.random(25,35),EffectType = "Sphere",Size = Vector3.new(.6,.6,.6),Size2 = Vector3.new(1.6,1.6,1.6),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 25})
			swait(math.random(55,65))
			for i = 1,3 do
				Effect({Time = math.random(45,65),EffectType = "Sphere",Size = Vector3.new(.6,6,.6)*math.random(-1.05,1.25),Size2 = Vector3.new(1.6,10,1.6)*math.random(-1.05,1.25),Transparency = 0,Transparency2 = 1,CFrame = bullets[b].CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 20,SizeBoomerang = 35})
			end
			for i = 0,10 do
				swait()
				bullets[b].Transparency = bullets[b].Transparency + .1
			end
			oofing = not oofing
			if oofing then
				mdmg(bullets[b].Position,10)
			end
			local EEEBRUHEEE = CreateSound(168513088,bullets[b],3.5,1.1,false)
			bullets[b].Transparency = 1
			EEEBRUHEEE.Ended:Connect(function()
				if stopeverything then wait(math.huge) end
				bullets[b]:Destroy()
			end)
		end))
	end
	for i = 0,10 do
		swait()
		gBullet.Transparency = gBullet.Transparency + .1
	end
	gBullet:Destroy()
	walkspeed = 50
	attack = false
end

---------------------------------------------------

function hedshoot()
	attack = true
	walkspeed = 16
	CreateSound(235097614,RootPart,6,1.5,false)
	for i = 0,.5,.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 642890855,SoundPitch = .65,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(2,100,2),Size2 = Vector3.new(6,100,6),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	Effect({Time = math.random(25,45),EffectType = "Sphere",Size = Vector3.new(3,100,3),Size2 = Vector3.new(9,100,9),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 45})
	mdmg(RootPart.Position,14)
	for i = 1,4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		mdmg(RootPart.Position,14)
		coroutine.resume(coroutine.create(function()
			Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,shade,math.random(30,45),.5,1.5,0,true,60) 
		end))	
		coroutine.resume(coroutine.create(function()
			Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,Color3.new(0,0,1),math.random(30,45),.5,1.5,0,true,60)
		end))
	end
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(2,2,2),Size2 = Vector3.new(5,5,5),Transparency = 0,Transparency2 = 1,CFrame = RootPart.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,.5,.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(90)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
	end
	attack = false
	walkspeed = 50
end

--------------------------------------------------

local stillraining = false

function painlessrain()
	if stillraining then
		return
	else
		stillraining = true
	end
	attack = true
	walkspeed = 16
	coroutine.wrap(function()
		for i = 0,2 do
			swait(12)
			CreateSound(199145095,GUN.Joint,10,1)
		end
	end)()
	for i = 0,2,.1 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1/2)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),1 / 3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1 / 3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1 / 2)
		end	
		end
	for i = 0,1.5,.1 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10)),1 / 3)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(25),math.rad(0),math.rad(-20)),1 / 3)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(35),math.rad(-35),math.rad(20)) * rscp,1 / 3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(-5),math.rad(-10)) * lscp,1 / 3)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(doe * 22),math.rad(0),math.rad(0)),1 / 2)
			end	
	end
	for i = 0,.5,.1 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,-.2,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
			else
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),1 / 3)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1 / 3)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1 / 3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(-5)) * lscp,1 / 3)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
				GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
			end		
		end
	local skypos = Holetwo.CFrame * CFrame.new(-400,0,0)
	local DISTANCE = (Holetwo.Position - skypos.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,skypos.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	for i = 1,4 do
		coroutine.resume(coroutine.create(function()
			Lightning(Holetwo.Position,skypos.p,15,3.5,Color3.new(1,0,0),25,0,1,0,true,55)
		end))
	end
	for i = 0,2 do
	end
	for i = 0,.5,.1 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5)),1 / 3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0,0 + ((1) - 1)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-5)),1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(175),math.rad(-10),math.rad(10)) * rscp,1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(0)) * lscp,1 / 3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
		end	
		end	
	attack = false
	walkspeed = 50
	for i = 0,2 do
	end
	for i = 1,5 do
		local Sky = RootPart.CFrame*CFrame.new(0,500,0)
		local MoPos = Mouse.Hit.p
		local DISTANCE = (Sky.p - MoPos).Magnitude
		for i = 1,4 do
			coroutine.resume(coroutine.create(function()

			end))
		end
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(1,DISTANCE,1))
		killbeam.CFrame = CFrame.new(Sky.p,MoPos) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		MakeForm(killbeam,"Cyl")
		coroutine.resume(coroutine.create(function()
			for i = 1,25 do
				swait()
				killbeam.Transparency = i/25
			end
			killbeam:Destroy()
		end))
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			--Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			--Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
			for a = 0, 14 do
				EFFECT1(3,math.random(4,8),"Add",CFrame.new(MoPos)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,GUN.NeonParts.Color,0)
			end
		end
		mdmg(MoPos,5)
	end
	stillraining = false
end

-------------------------------------------------
function SingularityBeam()
	attack = true
	cannecksnap = false
	walkspeed = 0
	AttackGyro()
	for i = 0,.5,.05 do
		swait()
		if HipVal ~= 0 then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
		GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-60)),1 / 3)
			Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(60)),1 / 3)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,0.5,-.25) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-60)) * rscp,1 / 3)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.25,0.5,-.25) * CFrame.Angles(math.rad(95),math.rad(0),math.rad(10)) * lscp,1 / 3)
			RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-5),math.rad(75),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
			LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-65),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
			GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1 / 2)
		end	
		end
		local HoleDist = (Hole.Position - Holetwo.Position).Magnitude
		local chargebeam = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Beam",Vector3.new(.25,HoleDist,.25),false)
		MakeForm(chargebeam,"Cyl")
		chargebeam.CFrame = CFrame.new(Hole.Position,Holetwo.Position) * CFrame.new(0,0,-HoleDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
		local chargeweld = weldBetween(GUN.Joint,chargebeam)
		local chargeball = CreatePart(3,Effects,"Neon",0,0,shade,"Charge Ball",Vector3.new(.5,.5,.5),false)
		chargeball.Shape = "Ball"
		chargeball.CFrame = Holetwo.CFrame
		weldBetween(Holetwo,chargeball)
		CreateSound(342793847,Hole,10,1,false)
		local bigball = game:GetService("TweenService"):Create(chargeball,TweenInfo.new(3.86,Enum.EasingStyle.Linear),{Size = Vector3.new(2.5,2.5,2.5)})
		bigball:Play()
		bigball.Completed:Wait()
		chargebeam:Destroy()
		local KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude
		coroutine.resume(coroutine.create(function()
			repeat if stopeverything then wait(math.huge) end KillDist = (Holetwo.Position - Mouse.Hit.p).Magnitude Swait() until not attack
		end))
		local killbeam = CreatePart(3,Effects,"Neon",0,0,shade,"Kill Beam",Vector3.new(2.5,KillDist,2.5))
		MakeForm(killbeam,"Cyl")
		killbeam.Touched:Connect(function(victim)
			if stopeverything then wait(math.huge) end
			mdmg(victim.Position,5)
		end)
		coroutine.resume(coroutine.create(function()
			while not stopeverything and killbeam:IsDescendantOf(game) do
				mdmg(Mouse.Hit.p,5)
				swait()
			end
		end))
	coroutine.resume(coroutine.create(function()
		local isdoingathing = false
		while not stopeverything and killbeam:IsDescendantOf(game) do
			isdoingathing = not isdoingathing
			if lplr.Name == USERNAME then
				RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,.1)
			end
			killbeam.Size = Vector3.new(2.5,KillDist,2.5)
			killbeam.CFrame = CFrame.new(Holetwo.Position,Mouse.Hit.p) * CFrame.new(0,0,-KillDist/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
			if isdoingathing then
				coroutine.resume(coroutine.create(function()
					Lightning(Holetwo.Position,Mouse.Hit.p,15,3,Color3.new(1,0,0),10,0,1,0,true,55)
				end))
				for a = 0, 14 do
					EFFECT1(3,math.random(4,8),"Add",Mouse.Hit*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,GUN.NeonParts.Color,0)
				end
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = Color3.new(1,0,0),SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
				Effect({Time = 10,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Mouse.Hit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = shade,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
			end
			Swait()
		end
	end))
	CreateSound(138677306,Holetwo,10,1,false)
	CreateSound(415700134,Holetwo,10,1,false)
	Swait(150)
	CreateSound(3264923,Holetwo,10,1,false)
	Swait(30)
	chargeball:Destroy()
	killbeam:Destroy()
	walkspeed = 50
	attack = false
	cannecksnap = true
end


local FLYING = false
iyflyspeed = 1
function sFLY()
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new(0,0,0)
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeverything then wait(math.huge) end
					game:GetService("RunService").RenderStepped:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.Velocity = Vector3.new(0,0,0)
						end
						BG.CFrame = workspace.CurrentCamera.CoordinateFrame
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Player:GetMouse()
		IYMouse.KeyDown:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = iyflyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = - iyflyspeed
			elseif KEY:lower() == 'a' then
				CONTROL.L = - iyflyspeed
			elseif KEY:lower() == 'd' then 
				CONTROL.R = iyflyspeed
			elseif KEY:lower() == 'e' then
				CONTROL.Q = iyflyspeed*2
			elseif KEY:lower() == 'q' then
				CONTROL.E = -iyflyspeed*2
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		FLY()
	end
end
function sphere(bonuspeed,type,pos,scale,value,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = scale
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1*value
		scaler2b = 1*value2
		scaler2c = 1*value3
	elseif type == "Divide" then
		scaler2 = 1/value
		scaler2b = 1/value2
		scaler2c = 1/value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
				scaler2b = scaler2b - 0.01*value/bonuspeed
				scaler2c = scaler2c - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
				scaler2b = scaler2b - 0.01/value*bonuspeed
				scaler2c = scaler2c - 0.01/value*bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2b*bonuspeed,scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end

function PixelBlockX(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end

function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,0)
		end
		rng:Destroy()
	end))
end

function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
	local type = type
	local rotenable = rotatingop
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	if typeoftrans == "In" then
		rng.Transparency = 1
	end
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "FileMesh"
	if typeofshape == "Normal" then
		rngm.MeshId = "rbxassetid://662586858"
	elseif typeofshape == "Round" then
		rngm.MeshId = "rbxassetid://662585058"
	end
	rngm.Scale = scale
	local scaler2 = 1/10
	if type == "Add" then
		scaler2 = 1*value/10
	elseif type == "Divide" then
		scaler2 = 1/value/10
	end
	local randomrot = math.random(1,2)
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed/10
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed/10
			end
			if rotenable == true then
				if randomrot == 1 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
				elseif randomrot == 2 then
					rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
				end
			end
			if typeoftrans == "Out" then
				rng.Transparency = rng.Transparency + 0.01*bonuspeed
			elseif typeoftrans == "In" then
				rng.Transparency = rng.Transparency - 0.01*bonuspeed
			end
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10,0,scaler2*bonuspeed/10)
		end
		rng:Destroy()
	end))
end

local tStstTSTtets = game:GetService("TweenService")

Mouse.KeyDown:Connect(function(k)
	if stopeverything then wait(math.huge) end
	k = k:lower()
	if k == "m" then
			if songid.Value ~= "rbxassetid://6174456295" and songid.Value ~= "rbxassetid://481104377" and songid.Value ~= "rbxassetid://5170646860" and songid.Value ~= "rbxassetid://1931001768" and songid.Value ~= "rbxassetid://1338971957" and songid.Value ~= "rbxassetid://3979209289" and songid.Value ~= "rbxassetid://4185475912" and songid.Value ~= "rbxassetid://913267185" and songid.Value ~= "rbxassetid://4557673096" and songid.Value ~= "rbxassetid://2920078671" and songid.Value ~= "rbxassetid://361511879" and songid.Value ~= "rbxassetid://1439600000" and songid.Value ~= "rbxassetid://844654533" and songid.Value ~= "rbxassetid://170282324" and songid.Value ~= "rbxassetid://6291841343" and songid.Value ~= "rbxassetid://5797602893" and songid.Value ~= "rbxassetid://4550031738" and songid.Value ~= "rbxassetid://1280010741" and songid.Value ~= "rbxassetid://5644788747" and songid.Value ~= "rbxassetid://6294514849" and songid.Value ~= "rbxassetid://6879239119" then
				TauntRemote:FireServer("None",6174456295)
			elseif songid.Value == "rbxassetid://6174456295" then
				TauntRemote:FireServer("None2",4550031738)
			elseif songid.Value == "rbxassetid://4550031738" then
				TauntRemote:FireServer("idk",170282324)
			end
		elseif k == "x" and not attack then
			SingularityBeam()
		elseif k == "c" and not attack then		
			painlessrain()
		elseif k == "v" and not attack then
			attacktwo()
		elseif k == "b" and not attack then
			Ka_Boom()
		elseif k == "z" and not attack  then	
				hedshoot()


	elseif k == "f" then
		ISFLYING = not ISFLYING
		if lplr.Name == USERNAME then
			sFLY()
		end
	end
end)



Mouse.Button1Down:Connect(function()
if stopeverything then wait(math.huge) end
	if attack == false and (taunt.Value == "None" or taunt.Value == "None2" or taunt.Value == "idk" ) then
		attackone()
	end
end)

coroutine.wrap(function()
	while not stopeverything do
		swait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
antivoid = Instance.new("Part")
antivoid.Name = "yes"
antivoid.Size = Vector3.new(400,10,400)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
antivoid.Parent = nil
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		swait()
		if not alreadyfixing then
			if antivoid:IsDescendantOf(workspace) then
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
			else
				pcall(function()
					antivoid:Destroy()
				end)
				antivoid = Instance.new("Part")
				antivoid.Name = "yes"
				antivoid.Size = Vector3.new(400,10,400)
				antivoid.Anchored = true
				antivoid.Transparency = 1
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
				antivoid.Parent = nil
			end
		end
	end
end))

function fly()

	function weld(p0,p1,c0,c1,par)
		local w = Instance.new("Weld",p0 or par)
		w.Part0 = p0
		w.Part1 = p1
		w.C0 = c0 or CFrame.new()
		w.C1 = c1 or CFrame.new()
		return w
	end
	local motors = {}
	function motor(p0,p1,c0,c1,des,vel,par)
		local w = Instance.new("Motor6D",p0 or par)
		w.Part0 = p0
		w.Part1 = p1
		w.C0 = c0 or CFrame.new()
		w.C1 = c1 or CFrame.new()
		w.MaxVelocity = tonumber(vel) or .05
		w.DesiredAngle = tonumber(des) or 0
		return w
	end
	function lerp(a,b,c)
		return a+(b-a)*c
	end
	function clerp(c1,c2,alBRUH)
		local al = .05
		local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
		local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
		for i,v in pairs(com1) do
			com1[i] = lerp(v,com2[i],al)
		end
		return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
	end
	function ccomplerp(c1,c2,alBRUH)
		local al = .05
		local com1 = {c1:components()}
		local com2 = {c2:components()}
		for i,v in pairs(com1) do
			com1[i] = lerp(v,com2[i],al)
		end
		return CFrame.new(unpack(com1))
	end
	function tickwave(time,length,offset)
		return .2*math.sin(sine/20)
	end
	function invcol(c)
		c = c.Color
		return BrickColor.new(shade)
	end
	local oc = oc or function(...) return ... end
		if stopeverything then wait(math.huge) end
		if v.Name == "Part" and not v:FindFirstChild("WingTrail") then
			swait()
			local meesh = v:FindFirstChildOfClass("SpecialMesh")
			if meesh then
				meesh.Scale = v.Size
			end
			local top = Instance.new("Attachment")
			top.Name = "Top"
			top.Position = Vector3.new(0,v.Size.Y/2,0)
			top.Parent = v
			local bottom = Instance.new("Attachment")
			bottom.Name = "Bottom"
			bottom.Position = Vector3.new(0,-v.Size.Y/2,0)
			bottom.Parent = v
			local vtrail = Instance.new("Trail")
			vtrail.Name = "WingTrail"
			vtrail.Attachment0 = top
			vtrail.Attachment1 = bottom
			vtrail.Lifetime = 0.3
			vtrail.MinLength = 0
			vtrail.LightEmission = 0
			vtrail.LightInfluence = 0
			vtrail.Color = ColorSequence.new(shade)
			vtrail.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}
			vtrail.Parent = v
		end
	local char = Character
	local tor = Torso
	local hum = Humanoid
	local special = {
	}
	local topcolor = invcol(Character.Torso.BrickColor)
	local feacolor = topcolor
	local ptrans = 0
	local pref = 0
	local fire = false
	local fmcol = Color3.new()
	local fscol = Color3.new()
	local part = Instance.new("Part")
	part.FormFactor = "Custom"
	part.Size = Vector3.new(.2,.2,.2)
	part.TopSurface,part.BottomSurface = 0,0
	part.CanCollide = false
	part.BrickColor = topcolor
	part.Transparency = 1
	part.Reflectance = pref
	local ef = Instance.new("Fire",fire and part or nil)
	ef.Heat = 0
	ef.Size = .15
	ef.Color = fmcol or Color3.new()
	ef.SecondaryColor = fscol or Color3.new()
	part:BreakJoints()
	function gotResized()
		if lastsize then
			if tor.Size == lastsize then return end
			local scaleVec = tor.Size/lastsize
			for i,v in pairs(oc0) do
				oc0[i] = v-v.p+scaleVec*v.p
			end
			lastsize = tor.Size
		end
		lastsize = tor.Size
	end
	tor:GetPropertyChangedSignal("Size"):Connect(function()
		if stopeverything then wait(math.huge) end
		gotResized()
	end)
	gotResized()
	local idle = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local outlow = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local outhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local veryhigh = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	local divebomb = {-.3,.3,1.1,-.2; .3,.05,.1,.05; .2,-.6,0,0}
	flying = false
	moving = false
	for i,v in pairs(tor:GetChildren()) do
		if v.ClassName:lower():match("body") then
			v:Destroy()
		end
	end
	local ctor = tor:Clone()
	ctor:ClearAllChildren()
	ctor.Name = "cTorso"
	ctor.Transparency = 1
	ctor.CanCollide = false
	ctor.FormFactor = "Custom"
	ctor.Size = Vector3.new(.2,.2,.2)
	weld(tor,ctor)
	local bg = Instance.new("BodyGyro",ctor)
	bg.maxTorque = Vector3.new()
	bg.P = 15000
	bg.D = 1000
	local bv = Instance.new("BodyVelocity",ctor)
	bv.maxForce = Vector3.new()
	bv.P = 15000
	vel = Vector3.new()
	cf = CFrame.new()
	flspd = 0
	keysdown = {}
	keypressed = {}
	ktime = {}
	descendtimer = 0
	jumptime = tick()
	hum.Jumping:connect(function()
		if stopeverything then wait(math.huge) end
		jumptime = tick()
	end)
	cam = workspace.CurrentCamera
	function mid(a,b,c)
		return math.max(a,math.min(b,c or -a))
	end
	function bn(a)
		return a and 1 or 0
	end
	function gm(tar)
		local m = 0
		for i,v in pairs(tar:GetChildren()) do
			if v:IsA("BasePart") then
				m = m + v:GetMass()
			end
			m = m + gm(v)
		end
		return m
	end
	reqrotx = 0
	local grav = 196.2
	local con
	while not stopeverything and not alreadyfixing do
		local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
		local sspd,uspd,fspd = obvel.X,obvel.Y,obvel.Z
		flying = true
		if flying then
			local lfldir = fldir
			fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
			local lmoving = moving
			moving = fldir.Magnitude > .1
			if lmoving and not moving then
				idledir = lfldir*Vector3.new(1,0,1)
				descendtimer = tick()
			end
			local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
			if moving and keysdown["0"] and lmoving then
				fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
			end
			local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
			local descending = (not moving and keysdown["q"] and not keysdown[" "])
			cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
			local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
			local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
			bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
			reqrotx = reqrotx - reqrotx/10
			local ani = tickwave(1.5,1)
			vel = moving and cf.lookVector*flspd or Vector3.new()
			flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
			local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{Character})
		else
			bg.maxTorque = Vector3.new()
			bv.maxForce = Vector3.new()
			local ani = tickwave(walking and .8 or 4.5,1)
			local x,y,z = fspd/160,uspd/700,sspd/900
			if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
				vel = Vector3.new(0,50,0)
				bv.velocity = vel
				idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
				cf = tor.CFrame * CFrame.Angles(-.01,0,0)
				bg.cframe = cf
				flystart = tick()
				flying = true
			end
		end
		keypressed = {}
		swait()
	end
end
coroutine.resume(coroutine.create(function()
	fly()
end))

W1=Instance.new("Weld",eeeblock)
W1.Part0 = eeeblock
W1.Part1 = Torso

while not stopeverything do
	if not alreadyfixing then
		swait()
	
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = 50
		Humanoid.WalkSpeed = walkspeed


		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
				local flot = Instance.new("BodyPosition")
				local spen = Instance.new("BodyGyro")
				local hu = math.huge
				flot.MaxForce = Vector3.new(hu,hu,hu)
				spen.MaxTorque = Vector3.new(hu,hu,hu)
				local spown = nil
				for o,b in pairs(workspace:GetDescendants()) do
					if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
						spown = b
					end
				end
					local base = workspace:FindFirstChild("Base")
					if not base then
						base = workspace:FindFirstChild("Baseplate")
				end
			end
		end
--comentinf cuz rhis mb doesnt work

--local hat2 = gp(cplayer, "Starslayer Railgun", "Accessory")
--local handle2 = gp(hat2, "Handle", "BasePart")
--local att2 = gp(handle2, "att1_Handle", "Attachment")
--att2.Parent = GUN
--att2.Position = Vector3.new(0, 0, 0)
--att2.Rotation = Vector3.new(180, 0, -15)
		Torsovelocity = (RootPart.Velocity).Magnitude
		sine = sine + 1
		local sensitivity = 25
		if taunt.Value == "None" or taunt.Value == "None2" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 0.8
				GUN.GunAdditions.Transparency = 0.8
				GUN.NeonParts.Transparency = 0
			end
			elseif taunt.Value == "idk" then
			if HipValLock == false then
				HipVal = 3
			end
			change = 1
			sensitivity = 25
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 - .5 * math.sin(sine/30)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20-5*math.cos(sine/30)),0,0),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(sine/30))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(sine/30))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(.05,-1,-.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 - .5 * math.sin(sine/30)) * CFrame.Angles(math.rad(28.947),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-8),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-10-10*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-30),math.rad(80),math.rad(10+10*math.cos(sine/30))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(-80),math.rad(-10-10*math.cos(sine/30))),1/3)
					GunJoint.C0 = Clerp(GunJoint.C0,CFrame.new(0.05,-1,-0.15) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0)),1/2)
				end
				GUN.Base.Transparency = 1
				GUN.GunAdditions.Transparency = 1
				GUN.NeonParts.Transparency = 0
			end
		end
	end
	swait()
end 
 
-------------------------------------------------

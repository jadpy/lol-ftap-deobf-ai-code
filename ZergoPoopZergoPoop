--!nocheck
local cloneref = cloneref or function(inst)
	return inst
end

local GuiService = cloneref(game:GetService("GuiService"))
local Players = cloneref(game:GetService("Players"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local RunService = cloneref(game:GetService("RunService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local Workspace = cloneref(game:GetService("Workspace"))

local LocalPlayer = Players.LocalPlayer

local Env = (getgenv and getgenv()) or _G
if Env.FTAP_Obsidian_Cleanup then
	pcall(Env.FTAP_Obsidian_Cleanup)
end

-- ============================================================================
-- UI LIBRARY
-- ============================================================================
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

Library.ForceCheckbox = false
Library.ShowToggleFrameInKeybinds = true

-- ============================================================================
-- GAME REMOTES & MODULES
-- ============================================================================
local GrabEvents = ReplicatedStorage:WaitForChild("GrabEvents")
local CreateGrabLine = GrabEvents:WaitForChild("CreateGrabLine")
local ExtendGrabLine = GrabEvents:WaitForChild("ExtendGrabLine")
local DestroyGrabLine = GrabEvents:WaitForChild("DestroyGrabLine")
local SetNetworkOwner = GrabEvents:WaitForChild("SetNetworkOwner")

local CharacterEvents = ReplicatedStorage:WaitForChild("CharacterEvents")
local Struggle = CharacterEvents:WaitForChild("Struggle")
local RagdollRemote = CharacterEvents:FindFirstChild("RagdollRemote")

local MenuToys = ReplicatedStorage:WaitForChild("MenuToys")
local SpawnToyRF = MenuToys:WaitForChild("SpawnToyRemoteFunction")
local BuyToyRF = MenuToys:WaitForChild("BuyToyRemoteFunction")
local DestroyToyRE = MenuToys:WaitForChild("DestroyToy")
local MenuToysData = require(MenuToys:WaitForChild("MenuToysData"))

local DataEvents = ReplicatedStorage:WaitForChild("DataEvents")
local UpdateLineColorsEvent = DataEvents:WaitForChild("UpdateLineColorsEvent")

local BombEvents = ReplicatedStorage:WaitForChild("BombEvents")
local BombExplode = BombEvents:WaitForChild("BombExplode")
local ExplosionMaker = require(ReplicatedStorage:WaitForChild("ExplosionMaker"))

local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
local RaycastModule = require(PlayerScripts:WaitForChild("RaycastModule"))

-- ============================================================================
-- STATE & CACHES
-- ============================================================================
local Connections: { RBXScriptConnection } = {}
local PCLDHighlights: { [Instance]: Highlight } = {}
local OriginalExplodeFn = ExplosionMaker.Explode
local OriginalRaycastFn = RaycastModule.RaycastFromCam

local LastSafeCFrame: CFrame? = nil
local SafeAntiGrabCFrame: CFrame? = nil
local AntiGrabGraceUntil: number = 0
local AntiGrabAnchorUntil: number = 0
local WasAnchoredByAntiGrab: boolean = false

local ActiveGrabTarget: BasePart? = nil
local CustomGrabDistance: number = 20
local SilentAimCandidate: BasePart? = nil
local GucciVehicle: Model? = nil
local RainbowHue = 0
local FPSCounter = 60

local HazardCache = {
	StickyPart = {} :: { [BasePart]: boolean },
	FirePlayerPart = {} :: { [BasePart]: boolean },
	PaintPlayerPart = {} :: { [BasePart]: boolean },
	Poison = {} :: { [BasePart]: boolean },
	Snowball = {} :: { [BasePart]: boolean },
	Banana = {} :: { [BasePart]: boolean },
	BlobmanDetector = {} :: { [BasePart]: boolean },
	PCLD = {} :: { [BasePart]: boolean },
	PlotBarrier = {} :: { [BasePart]: boolean },
}

local function AddConnection(conn: RBXScriptConnection): RBXScriptConnection
	table.insert(Connections, conn)
	return conn
end

local function GetCharacter(): Model?
	return LocalPlayer.Character
end

local function GetRootPart(): BasePart?
	local char = LocalPlayer.Character
	return char and char:FindFirstChild("HumanoidRootPart") :: BasePart?
end

local function GetHumanoid(): Humanoid?
	local char = LocalPlayer.Character
	return char and char:FindFirstChildOfClass("Humanoid")
end

local function GetPlayerNames(): { string }
	local list = {}
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer then
			table.insert(list, plr.Name)
		end
	end
	if #list == 0 then
		table.insert(list, LocalPlayer.Name)
	end
	return list
end

local function IsSafeMovablePart(part: BasePart?): boolean
	if not part or not part.Parent or part.Anchored then
		return false
	end
	local mapModel = Workspace:FindFirstChild("Map")
	if mapModel and part:IsDescendantOf(mapModel) then
		return false
	end
	local plotsFolder = Workspace:FindFirstChild("Plots")
	if plotsFolder and part:IsDescendantOf(plotsFolder) then
		return false
	end
	return true
end

local AllToyNames = MenuToysData.GetAllToysSortedByName()

-- ============================================================================
-- OVERLAY GUI (SILENT AIM FOV + PERSISTENT HOVER TOOLTIP)
-- ============================================================================
local OverlayGui = Instance.new("ScreenGui")
OverlayGui.Name = "FTAP_SilentAimOverlay"
OverlayGui.ResetOnSpawn = false
OverlayGui.IgnoreGuiInset = true
OverlayGui.DisplayOrder = 9999
OverlayGui.Parent = (gethui and gethui()) or cloneref(game:GetService("CoreGui"))

local FOVCircleFrame = Instance.new("Frame")
FOVCircleFrame.Name = "FOVCircle"
FOVCircleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircleFrame.BackgroundTransparency = 1
FOVCircleFrame.Size = UDim2.fromOffset(300, 300)
FOVCircleFrame.Position = UDim2.fromScale(0.5, 0.5)
FOVCircleFrame.Visible = false
FOVCircleFrame.Parent = OverlayGui

local FOVCorner = Instance.new("UICorner")
FOVCorner.CornerRadius = UDim.new(1, 0)
FOVCorner.Parent = FOVCircleFrame

local FOVStroke = Instance.new("UIStroke")
FOVStroke.Thickness = 2
FOVStroke.Color = Color3.fromRGB(220, 220, 220)
FOVStroke.Transparency = 0.15
FOVStroke.Parent = FOVCircleFrame

local TargetInfoLabel = Instance.new("TextLabel")
TargetInfoLabel.Name = "TargetInfo"
TargetInfoLabel.AnchorPoint = Vector2.new(0.5, 0)
TargetInfoLabel.BackgroundTransparency = 0.35
TargetInfoLabel.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
TargetInfoLabel.BorderSizePixel = 0
TargetInfoLabel.Position = UDim2.new(0.5, 0, 1, 8)
TargetInfoLabel.Size = UDim2.fromOffset(220, 24)
TargetInfoLabel.Font = Enum.Font.GothamBold
TargetInfoLabel.TextSize = 13
TargetInfoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetInfoLabel.Text = ""
TargetInfoLabel.Visible = false
TargetInfoLabel.Parent = FOVCircleFrame

local LabelCorner = Instance.new("UICorner")
LabelCorner.CornerRadius = UDim.new(0, 6)
LabelCorner.Parent = TargetInfoLabel

local TargetHighlight = Instance.new("Highlight")
TargetHighlight.Name = "FTAP_TargetHighlight"
TargetHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
TargetHighlight.FillTransparency = 0.45
TargetHighlight.OutlineTransparency = 0
TargetHighlight.Enabled = false
TargetHighlight.Parent = OverlayGui

-- Custom Persistent Hover Tooltip Box (Never stops working over time)
local HoverTooltipFrame = Instance.new("Frame")
HoverTooltipFrame.Name = "FTAP_HoverTooltip"
HoverTooltipFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
HoverTooltipFrame.BackgroundTransparency = 0.04
HoverTooltipFrame.BorderSizePixel = 0
HoverTooltipFrame.Size = UDim2.fromOffset(270, 56)
HoverTooltipFrame.Visible = false
HoverTooltipFrame.ZIndex = 10000
HoverTooltipFrame.Parent = OverlayGui

local HoverCorner = Instance.new("UICorner")
HoverCorner.CornerRadius = UDim.new(0, 6)
HoverCorner.Parent = HoverTooltipFrame

local HoverStroke = Instance.new("UIStroke")
HoverStroke.Color = Color3.fromRGB(125, 85, 255)
HoverStroke.Thickness = 1.2
HoverStroke.Transparency = 0.2
HoverStroke.Parent = HoverTooltipFrame

local HoverTitleLabel = Instance.new("TextLabel")
HoverTitleLabel.Name = "Title"
HoverTitleLabel.BackgroundTransparency = 1
HoverTitleLabel.Position = UDim2.fromOffset(10, 6)
HoverTitleLabel.Size = UDim2.new(1, -20, 0, 16)
HoverTitleLabel.Font = Enum.Font.GothamBold
HoverTitleLabel.TextSize = 13
HoverTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
HoverTitleLabel.TextColor3 = Color3.fromRGB(170, 140, 255)
HoverTitleLabel.Text = ""
HoverTitleLabel.ZIndex = 10001
HoverTitleLabel.Parent = HoverTooltipFrame

local HoverDescLabel = Instance.new("TextLabel")
HoverDescLabel.Name = "Description"
HoverDescLabel.BackgroundTransparency = 1
HoverDescLabel.Position = UDim2.fromOffset(10, 24)
HoverDescLabel.Size = UDim2.new(1, -20, 1, -30)
HoverDescLabel.Font = Enum.Font.Gotham
HoverDescLabel.TextSize = 12
HoverDescLabel.TextWrapped = true
HoverDescLabel.TextXAlignment = Enum.TextXAlignment.Left
HoverDescLabel.TextYAlignment = Enum.TextYAlignment.Top
HoverDescLabel.TextColor3 = Color3.fromRGB(230, 230, 235)
HoverDescLabel.Text = ""
HoverDescLabel.ZIndex = 10001
HoverDescLabel.Parent = HoverTooltipFrame

local COLOR_RED = Color3.fromRGB(255, 55, 55)
local COLOR_GREEN = Color3.fromRGB(55, 255, 110)
local COLOR_IDLE = Color3.fromRGB(200, 200, 220)

local function GetSilentAimTarget(maxReach: number): BasePart?
	local cam = Workspace.CurrentCamera
	if not cam then
		return nil
	end

	local mousePos = UserInputService:GetMouseLocation()
	local fovRadius = (Options.SilentAimRadius and Options.SilentAimRadius.Value) or 150
	local targetMode = (Options.SilentAimPriority and Options.SilentAimPriority.Value) or "Players & Toys"
	local camPos = cam.CFrame.Position

	local bestPart: BasePart? = nil
	local bestScreenDist = fovRadius

	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer and plr.Character then
			local hrp = plr.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
			local head = plr.Character:FindFirstChild("Head") :: BasePart?
			local hum = plr.Character:FindFirstChildOfClass("Humanoid")
			local candidate = head or hrp
			if candidate and hum and hum.Health > 0 then
				local worldDist = (candidate.Position - camPos).Magnitude
				if worldDist <= maxReach then
					local screenPt, onScreen = cam:WorldToViewportPoint(candidate.Position)
					if onScreen then
						local screenDist = (Vector2.new(screenPt.X, screenPt.Y) - mousePos).Magnitude
						if screenDist <= bestScreenDist then
							bestScreenDist = screenDist
							bestPart = candidate
						end
					end
				end
			end
		end
	end

	if bestPart or targetMode == "Players Only" then
		return bestPart
	end

	for _, folder in ipairs(Workspace:GetChildren()) do
		if string.find(folder.Name, "SpawnedInToys") or folder.Name == "Cave" or folder.Name == "Food" or folder.Name == "Furniture" or folder.Name == "Pallets" then
			for _, model in ipairs(folder:GetChildren()) do
				if model:IsA("Model") then
					local mainPart = model.PrimaryPart or model:FindFirstChild("SoundPart") or model:FindFirstChild("Main") or model:FindFirstChildWhichIsA("BasePart")
					if mainPart and mainPart:IsA("BasePart") and not mainPart.Anchored then
						local worldDist = (mainPart.Position - camPos).Magnitude
						if worldDist <= maxReach then
							local screenPt, onScreen = cam:WorldToViewportPoint(mainPart.Position)
							if onScreen then
								local screenDist = (Vector2.new(screenPt.X, screenPt.Y) - mousePos).Magnitude
								if screenDist <= bestScreenDist then
									bestScreenDist = screenDist
									bestPart = mainPart
								end
							end
						end
					end
				end
			end
		end
	end

	return bestPart
end

RaycastModule.RaycastFromCam = function(player, reach)
	local effectiveReach = reach or 20
	if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value then
		effectiveReach = (Options.CustomReachSlider and Options.CustomReachSlider.Value) or 30
	end

	local normalHit, normalOffset = OriginalRaycastFn(player, effectiveReach)

	if Toggles.SilentAimGrab and Toggles.SilentAimGrab.Value then
		local silentTarget = GetSilentAimTarget(effectiveReach)
		SilentAimCandidate = silentTarget
		if silentTarget then
			local fakeResult = {
				Instance = silentTarget,
				Position = silentTarget.Position,
				Normal = Vector3.yAxis,
				Material = silentTarget.Material,
				Distance = (silentTarget.Position - Workspace.CurrentCamera.CFrame.Position).Magnitude,
			}
			return fakeResult, CFrame.new()
		end
	else
		SilentAimCandidate = if normalHit then normalHit.Instance else nil
	end

	return normalHit, normalOffset
end

-- ============================================================================
-- HAZARD CACHE & PROTECTION FUNCTIONS
-- ============================================================================
local function ApplySinglePartProtection(part: BasePart)
	local name = part.Name
	local parent = part.Parent

	if name == "StickyPart" then
		HazardCache.StickyPart[part] = true
		if Toggles.AntiSticky and Toggles.AntiSticky.Value then
			part.CanTouch = false
			part.CanQuery = false
		end
	elseif name == "FirePlayerPart" then
		HazardCache.FirePlayerPart[part] = true
		if Toggles.AntiBurn and Toggles.AntiBurn.Value then
			part.CanTouch = false
			part.CanQuery = false
		end
	elseif name == "PaintPlayerPart" then
		HazardCache.PaintPlayerPart[part] = true
		if Toggles.AntiPaint and Toggles.AntiPaint.Value then
			part.CanTouch = false
			part.CanQuery = false
		end
	elseif name == "PlayerCharacterLocationDetector" then
		HazardCache.PCLD[part] = true
		if Toggles.BreakPCLD and Toggles.BreakPCLD.Value then
			part.CanTouch = false
			part.CanQuery = false
			part.CanCollide = false
		end
	elseif name == "PlotBarrier" then
		HazardCache.PlotBarrier[part] = true
		if Toggles.AntiPlotBarrier and Toggles.AntiPlotBarrier.Value then
			part.CanCollide = false
			part.CanTouch = false
		end
	elseif name == "LeftDetector" or name == "RightDetector" then
		if parent and parent.Name == "CreatureBlobman" then
			HazardCache.BlobmanDetector[part] = true
			if Toggles.AntiBlobman and Toggles.AntiBlobman.Value then
				part.CanTouch = false
				part.CanQuery = false
			end
		end
	end

	if parent then
		local pName = parent.Name
		if name == "Drip" or pName == "PoisonBigHole" or pName == "PoisonSmallHole" or pName == "PoisonContainer" or pName == "FoodMushroomPoison" then
			HazardCache.Poison[part] = true
			if Toggles.AntiPoison and Toggles.AntiPoison.Value then
				part.CanTouch = false
				part.CanQuery = false
				part.CanCollide = false
			end
		elseif pName == "BallSnowball" then
			HazardCache.Snowball[part] = true
			if Toggles.AntiSnowball and Toggles.AntiSnowball.Value then
				part.CanTouch = false
				part.CanQuery = false
				part.CanCollide = false
			end
		elseif pName == "FoodBanana" then
			HazardCache.Banana[part] = true
			if Toggles.AntiBanana and Toggles.AntiBanana.Value then
				part.CanTouch = false
				part.CanQuery = false
				part.CanCollide = false
			end
		end
	end
end

local function SetCategoryPartsState(category: string, disableTouch: boolean, disableCollide: boolean?)
	local bucket = HazardCache[category]
	if not bucket then
		return
	end
	for part in pairs(bucket) do
		if part and part.Parent then
			part.CanTouch = not disableTouch
			if disableCollide ~= nil then
				part.CanCollide = not disableCollide
			end
		else
			bucket[part] = nil
		end
	end
end

task.spawn(function()
	local descendants = Workspace:GetDescendants()
	for i, inst in ipairs(descendants) do
		if inst:IsA("BasePart") then
			ApplySinglePartProtection(inst)
		end
		if i % 600 == 0 then
			task.wait()
		end
	end
end)

ExplosionMaker.Explode = function(bombTable, pos)
	if Toggles.AntiExplosion and Toggles.AntiExplosion.Value then
		local root = GetRootPart()
		if root and typeof(pos) == "Vector3" and (root.Position - pos).Magnitude <= ((bombTable and bombTable.Radius or 15) + 18) then
			return
		end
	end
	return OriginalExplodeFn(bombTable, pos)
end

local function UpdateStopVelocityProtection(char: Model?)
	if not char then
		return
	end
	local stopVelScript = char:FindFirstChild("StopVelocity")
	if stopVelScript and stopVelScript:IsA("LocalScript") then
		local shouldDisable = (Toggles.AntiKick and Toggles.AntiKick.Value) or (Toggles.AntiGrab and Toggles.AntiGrab.Value)
		stopVelScript.Disabled = if shouldDisable then true else false
	end
	local poisonScript = char:FindFirstChild("PoisonBallSpawner")
	if poisonScript and poisonScript:IsA("LocalScript") and Toggles.AntiPoison and Toggles.AntiPoison.Value then
		poisonScript.Disabled = true
	end
end

-- Zeroes velocity on all limbs of LocalPlayer's character to block fast camera-flick flings
local function ZeroCharacterVelocity(char: Model?)
	if not char then
		return
	end
	for _, part in ipairs(char:GetChildren()) do
		if part:IsA("BasePart") then
			part.AssemblyLinearVelocity = Vector3.zero
			part.AssemblyAngularVelocity = Vector3.zero
			part.Velocity = Vector3.zero
			part.RotVelocity = Vector3.zero
		end
	end
end

-- Breaks enemy GrabParts welds targeting LocalPlayer immediately
local function BreakEnemyGrabParts(grabPartsModel: Instance): boolean
	local char = GetCharacter()
	if not char or not grabPartsModel or grabPartsModel.Parent == Workspace then
		return false
	end
	local gp = grabPartsModel:FindFirstChild("GrabPart")
	local wc = gp and gp:FindFirstChild("WeldConstraint") :: WeldConstraint?
	if wc and wc.Part1 and wc.Part1:IsDescendantOf(char) then
		wc.Enabled = false
		wc.Part1 = nil
		pcall(function()
			grabPartsModel:Destroy()
		end)
		return true
	end
	return false
end

-- Triggers instant anti-fling anchor + struggle burst when grabbed
local function TriggerAntiGrabDefense()
	local now = os.clock()
	AntiGrabGraceUntil = now + 0.65
	AntiGrabAnchorUntil = now + 0.22

	local char = GetCharacter()
	local root = GetRootPart()
	local hum = GetHumanoid()
	local cam = Workspace.CurrentCamera

	ZeroCharacterVelocity(char)

	if root then
		if SafeAntiGrabCFrame then
			root.CFrame = SafeAntiGrabCFrame
		end
		root.Anchored = true
		WasAnchoredByAntiGrab = true
	end

	for _ = 1, 6 do
		Struggle:FireServer()
	end

	if root and cam and Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value then
		SetNetworkOwner:FireServer(root, cam.CFrame)
	end

	if hum then
		hum.Sit = false
		hum.AutoRotate = true
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
		local ragVal = hum:FindFirstChild("Ragdolled")
		if ragVal and ragVal:IsA("BoolValue") then
			ragVal.Value = false
		end
	end

	local ragScript = char and char:FindFirstChild("RagdollPlayerCharacter")
	local unragEvent = ragScript and ragScript:FindFirstChild("UnragdollThisCharacter")
	if unragEvent and unragEvent:IsA("BindableEvent") then
		unragEvent:Fire()
	end
end

local function ApplyCustomReach(reachStuds: number)
	local currentReachVal = LocalPlayer:FindFirstChild("CurrentReach")
	local defaultReachVal = LocalPlayer:FindFirstChild("DefaultReach")
	if currentReachVal and currentReachVal:IsA("NumberValue") then
		currentReachVal.Value = reachStuds
	end
	if defaultReachVal and defaultReachVal:IsA("NumberValue") then
		defaultReachVal.Value = reachStuds
	end

	local fartherReachVal = LocalPlayer:FindFirstChild("FartherReach")
	if not fartherReachVal then
		fartherReachVal = Instance.new("BoolValue")
		fartherReachVal.Name = "FartherReach"
		fartherReachVal.Parent = LocalPlayer
	end
	fartherReachVal.Value = (Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value) or false
end

local function SpawnWoodPlank()
	local cam = Workspace.CurrentCamera
	local root = GetRootPart()
	local spawnCF = if cam then cam.CFrame else (if root then root.CFrame else CFrame.new())
	local orientPart = Workspace:FindFirstChild("RotateOrientPart")
	local orientVec = if orientPart and orientPart:IsA("BasePart") then orientPart.Orientation else Vector3.zero

	local lincolnFolder = Workspace:FindFirstChild("Lincoln Planks")
	if lincolnFolder then
		for _, child in ipairs(lincolnFolder:GetChildren()) do
			if child.Name == "PlankMaker" then
				local enterBtn = child:FindFirstChild("Enter")
				if enterBtn and enterBtn:IsA("BasePart") then
					task.spawn(function()
						pcall(function()
							SetNetworkOwner:FireServer(enterBtn, enterBtn.CFrame)
							CreateGrabLine:FireServer(enterBtn, CFrame.new())
							task.wait(0.1)
							DestroyGrabLine:FireServer(enterBtn)
						end)
					end)
				end
			end
		end
	end

	task.spawn(function()
		local ok, res = pcall(function()
			return SpawnToyRF:InvokeServer("PalletLightBrown", spawnCF, orientVec)
		end)
		if ok and res == "YouDontOwnToy" then
			pcall(function()
				BuyToyRF:InvokeServer("PalletLightBrown")
				SpawnToyRF:InvokeServer("PalletLightBrown", spawnCF, orientVec)
			end)
		end
	end)
end

local function EnableGucciAntiGrab(mode: string)
	local char = GetCharacter()
	local hum = GetHumanoid()
	local root = GetRootPart()
	if not (char and hum and root) then
		return
	end

	task.spawn(function()
		local toyName = if mode == "TractorGreen" then "TractorGreen" else "CreatureBlobman"
		local toysFolder = Workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
		local vehicleModel = toysFolder and toysFolder:FindFirstChild(toyName)

		if not vehicleModel then
			local orientPart = Workspace:FindFirstChild("RotateOrientPart")
			local orientVec = if orientPart and orientPart:IsA("BasePart") then orientPart.Orientation else Vector3.zero
			pcall(function()
				SpawnToyRF:InvokeServer(toyName, root.CFrame, orientVec)
			end)
			if toysFolder then
				vehicleModel = toysFolder:WaitForChild(toyName, 3)
			end
		end

		if vehicleModel then
			GucciVehicle = vehicleModel
			local vSeat = vehicleModel:FindFirstChildWhichIsA("VehicleSeat", true)
			if vSeat then
				for _, part in ipairs(vehicleModel:GetDescendants()) do
					if part:IsA("BasePart") then
						part.CanCollide = false
						part.CanTouch = false
						part.CanQuery = false
						part.Massless = true
						part.Transparency = 1
					end
				end
				vSeat:Sit(hum)
				task.wait(0.12)
				if RagdollRemote then
					RagdollRemote:FireServer(root, 0)
				end
				task.wait(0.08)
				local seatWeld = vSeat:FindFirstChild("SeatWeld")
				if seatWeld then
					seatWeld:Destroy()
				end
				hum.Sit = false
			end
		end
	end)
end

local function RunAntiLagCleanup()
	pcall(function()
		local partHit = PlayerScripts:FindFirstChild("PartHitSound")
		if partHit and partHit:FindFirstChild("DisableHitSounds") then
			partHit.DisableHitSounds:Fire()
		end
		local charBeam = PlayerScripts:FindFirstChild("CharacterAndBeamMove")
		if charBeam and charBeam:FindFirstChild("LowQualityMode") then
			charBeam.LowQualityMode:Fire()
		end
		local char = GetCharacter()
		if char and char:FindFirstChild("GrabbingScript") and char.GrabbingScript:FindFirstChild("LowQualityMode") then
			char.GrabbingScript.LowQualityMode:Fire()
		end
	end)
end

-- ============================================================================
-- PERSISTENT TOOLTIP REGISTRY
-- ============================================================================
local TooltipByText: { [string]: string } = {}
local HoverTargets: { { Frame: GuiObject, Title: string, Tip: string } } = {}

local function RegisterTooltip(title: string, tip: string)
	TooltipByText[title] = tip
end

-- ============================================================================
-- WINDOW & TABS
-- ============================================================================
local Window = Library:CreateWindow({
	Title = "Fling Things and People",
	Footer = "Fling Things and People",
	NotifySide = "Right",
	ShowCustomCursor = false,
	Center = true,
	AutoShow = true,
})

local Tabs = {
	GrabMods = Window:AddTab("Grab & Aim", "hand"),
	Defense = Window:AddTab("Defense", "shield"),
	ToysWorld = Window:AddTab("Toys & Plank", "box"),
	TeleportAura = Window:AddTab("Teleport & Aura", "navigation"),
	Diagnostics = Window:AddTab("Diagnostics", "activity"),
	UISettings = Window:AddTab("UI Settings", "settings"),
}

-- ----------------------------------------------------------------------------
-- TAB 1: GRAB & AIM
-- ----------------------------------------------------------------------------
local SilentAimBox = Tabs.GrabMods:AddLeftGroupbox("Silent Aim & Camera FOV")
local GrabModifiersBox = Tabs.GrabMods:AddRightGroupbox("Grab Modifiers")
local GrabPassBox = Tabs.GrabMods:AddLeftGroupbox("Gamepasses & Line")

RegisterTooltip("Silent Aim Grab", "Automatically snaps your grab raycast to the closest player or toy inside the FOV circle (Red = Ready, Green = Grabbing).")
SilentAimBox:AddToggle("SilentAimGrab", {
	Text = "Silent Aim Grab",
	Default = true,
	Callback = function(val)
		FOVCircleFrame.Visible = val and (not Toggles.ShowSilentAimCircle or Toggles.ShowSilentAimCircle.Value)
		if not val then
			TargetHighlight.Enabled = false
			TargetInfoLabel.Visible = false
		end
	end,
})

RegisterTooltip("Show Silent Aim Circle", "Displays the on-screen FOV circle around your cursor.")
SilentAimBox:AddToggle("ShowSilentAimCircle", {
	Text = "Show Silent Aim Circle",
	Default = true,
	Callback = function(val)
		FOVCircleFrame.Visible = val and (Toggles.SilentAimGrab and Toggles.SilentAimGrab.Value)
	end,
})

RegisterTooltip("Silent Aim Radius", "Adjusts the pixel radius of the Silent Aim target detection circle.")
SilentAimBox:AddSlider("SilentAimRadius", {
	Text = "Silent Aim Radius",
	Default = 150,
	Min = 40,
	Max = 450,
	Rounding = 0,
	Callback = function(val)
		FOVCircleFrame.Size = UDim2.fromOffset(val * 2, val * 2)
	end,
})

RegisterTooltip("Silent Aim Target", "Choose whether Silent Aim locks onto both players and unanchored toys, or players only.")
SilentAimBox:AddDropdown("SilentAimPriority", {
	Values = { "Players & Toys", "Players Only" },
	Default = 1,
	Multi = false,
	Text = "Silent Aim Target",
})

SilentAimBox:AddDivider()

RegisterTooltip("Camera FOV", "Changes your camera Field of View (default is 70).")
SilentAimBox:AddSlider("CameraFOV", {
	Text = "Camera FOV",
	Default = 70,
	Min = 30,
	Max = 120,
	Rounding = 0,
	Callback = function(val)
		local cam = Workspace.CurrentCamera
		if cam then
			cam.FieldOfView = val
		end
	end,
})

RegisterTooltip("Reset FOV", "Resets your camera Field of View back to the default 70.")
SilentAimBox:AddButton({
	Text = "Reset FOV",
	Func = function()
		if Options.CameraFOV then
			Options.CameraFOV:SetValue(70)
		end
		local cam = Workspace.CurrentCamera
		if cam then
			cam.FieldOfView = 70
		end
	end,
})

RegisterTooltip("Super Strength", "Launches grabbed players or items at extreme velocity when you release or throw them.")
GrabModifiersBox:AddToggle("SuperStrength", {
	Text = "Super Strength",
	Default = false,
})

RegisterTooltip("Strength Power", "Sets the launch velocity applied when releasing a grabbed object with Super Strength.")
GrabModifiersBox:AddSlider("StrengthPower", {
	Text = "Strength Power",
	Default = 850,
	Min = 100,
	Max = 4000,
	Rounding = 0,
})

RegisterTooltip("Supersonic Grab", "Maxes out AlignPosition and AlignOrientation responsiveness and force on your GrabParts.")
GrabModifiersBox:AddToggle("SupersonicGrab", {
	Text = "Supersonic Grab",
	Default = false,
})

RegisterTooltip("Spin Grab", "Rapidly spins the grabbed player or unanchored toy while holding them (ignores baseplate/anchored parts).")
GrabModifiersBox:AddToggle("SpinGrab", {
	Text = "Spin Grab",
	Default = false,
})

RegisterTooltip("Spin Speed", "Controls how fast Spin Grab rotates the grabbed target.")
GrabModifiersBox:AddSlider("SpinGrabSpeed", {
	Text = "Spin Speed",
	Default = 15,
	Min = 1,
	Max = 50,
	Rounding = 0,
})

RegisterTooltip("Sky Grab", "Pulls the grabbed target 350 studs straight up into the sky.")
GrabModifiersBox:AddToggle("SkyGrab", {
	Text = "Sky Grab",
	Default = false,
})

RegisterTooltip("Noclip Grab", "Disables collisions on the grabbed target so you can drag them through walls and floors.")
GrabModifiersBox:AddToggle("NoclipGrab", {
	Text = "Noclip Grab",
	Default = false,
})

RegisterTooltip("Chaos Grab", "Violently jitters the grabbed target in random directions around your drag point.")
GrabModifiersBox:AddToggle("ChaosGrab", {
	Text = "Chaos Grab",
	Default = false,
})

RegisterTooltip("Kill Grab", "Instantly claims network ownership and sends grabbed players into the void destroy height.")
GrabModifiersBox:AddToggle("KillGrab", {
	Text = "Kill Grab",
	Default = false,
})

RegisterTooltip("Free Gamepass (Further Reach)", "Unlocks extended grab reach and mouse wheel scroll distance without needing the Farther Reach gamepass.")
GrabPassBox:AddToggle("FreeFurtherReach", {
	Text = "Free Gamepass (Further Reach)",
	Default = false,
	Callback = function(val)
		if val then
			local reach = (Options.CustomReachSlider and Options.CustomReachSlider.Value) or 30
			ApplyCustomReach(reach)
		else
			ApplyCustomReach(20)
		end
	end,
})

RegisterTooltip("Custom Grab Reach", "Sets the maximum stud distance you can grab and scroll targets out to.")
GrabPassBox:AddSlider("CustomReachSlider", {
	Text = "Custom Grab Reach",
	Default = 30,
	Min = 20,
	Max = 120,
	Rounding = 0,
	Callback = function(val)
		if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value then
			ApplyCustomReach(val)
		end
	end,
})

RegisterTooltip("Rainbow Grab Beam", "Cycles your grab beam and ball color through a smooth rainbow gradient on the server.")
GrabPassBox:AddToggle("RainbowLine", {
	Text = "Rainbow Grab Beam",
	Default = false,
})

-- ----------------------------------------------------------------------------
-- TAB 2: DEFENSE
-- ----------------------------------------------------------------------------
local AntiGrabBox = Tabs.Defense:AddLeftGroupbox("Anti-Grab & Ownership")
local AntiHazardBox = Tabs.Defense:AddRightGroupbox("Anti-Kick & Hazards")
local AntiPerfBox = Tabs.Defense:AddLeftGroupbox("Anti-Lag & Visibility")

RegisterTooltip("Anti Grab", "Anchors during grabs, breaks enemy GrabParts welds, spams Struggle, and strips post-grab throw velocity across all limbs.")
AntiGrabBox:AddToggle("AntiGrab", {
	Text = "Anti Grab",
	Default = false,
	Callback = function(val)
		UpdateStopVelocityProtection(GetCharacter())
		if not val and WasAnchoredByAntiGrab then
			local root = GetRootPart()
			if root then
				root.Anchored = false
			end
			WasAnchoredByAntiGrab = false
		end
	end,
})

RegisterTooltip("[GUCCHI] Anti Grab", "Spawns an invisible vehicle (Blobman or Tractor) and desyncs your seat weld so players cannot grab you.")
AntiGrabBox:AddToggle("GucciAntiGrab", {
	Text = "[GUCCHI] Anti Grab",
	Default = false,
	Callback = function(val)
		if val then
			local mode = (Options.GucciMode and Options.GucciMode.Value) or "CreatureBlobman"
			EnableGucciAntiGrab(mode)
		else
			if GucciVehicle then
				pcall(function()
					DestroyToyRE:FireServer(GucciVehicle)
				end)
				GucciVehicle = nil
			end
		end
	end,
})

RegisterTooltip("Gucci Vehicle Mode", "Select which toy vehicle is used for [GUCCHI] Anti Grab.")
AntiGrabBox:AddDropdown("GucciMode", {
	Values = { "CreatureBlobman", "TractorGreen" },
	Default = 1,
	Multi = false,
	Text = "Gucci Vehicle Mode",
})

RegisterTooltip("Anti Network Ownership", "Continuously reclaims network ownership of your HumanoidRootPart when another player tries to hold you.")
AntiGrabBox:AddToggle("AntiNetworkOwnership", {
	Text = "Anti Network Ownership",
	Default = false,
})

RegisterTooltip("Anti Blobman", "Disables touch detection on all CreatureBlobman LeftDetector and RightDetector grab hitboxes.")
AntiGrabBox:AddToggle("AntiBlobman", {
	Text = "Anti Blobman",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("BlobmanDetector", val)
	end,
})

RegisterTooltip("Auto Reset", "Instantly resets your character the moment someone grabs you.")
AntiGrabBox:AddToggle("AutoReset", {
	Text = "Auto Reset",
	Default = false,
})

RegisterTooltip("Anti Kick", "Disables the local StopVelocity script and breaks enemy grab welds.")
AntiHazardBox:AddToggle("AntiKick", {
	Text = "Anti Kick",
	Default = false,
	Callback = function()
		UpdateStopVelocityProtection(GetCharacter())
	end,
})

RegisterTooltip("Anti Plot Barrier", "Allows you to walk through plot barriers even if you are not added to the plot.")
AntiHazardBox:AddToggle("AntiPlotBarrier", {
	Text = "Anti Plot Barrier",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("PlotBarrier", val, val)
	end,
})

RegisterTooltip("[Break PCLD] Anti Kick", "Disables CanTouch and CanQuery on all 29 PlayerCharacterLocationDetector anti-cheat zones.")
AntiHazardBox:AddToggle("BreakPCLD", {
	Text = "[Break PCLD] Anti Kick",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("PCLD", val, val)
	end,
})

RegisterTooltip("Anti Explosion", "Prevents nearby bombs, balloons, and missiles from applying explosion impulse to your character.")
AntiHazardBox:AddToggle("AntiExplosion", {
	Text = "Anti Explosion",
	Default = false,
})

RegisterTooltip("Anti Burn", "Disables FirePlayerPart touch hitboxes on campfires, ovens, and burning players.")
AntiHazardBox:AddToggle("AntiBurn", {
	Text = "Anti Burn",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("FirePlayerPart", val)
	end,
})

RegisterTooltip("Anti Void", "Teleports you back to your last safe ground position if you fall below Y = -120.")
AntiHazardBox:AddToggle("AntiVoid", {
	Text = "Anti Void",
	Default = false,
})

RegisterTooltip("Anti Sticky", "Disables StickyPartsTouchDetection so cleavers, pickaxes, kunais, and shurikens cannot stick to you.")
AntiHazardBox:AddToggle("AntiSticky", {
	Text = "Anti Sticky",
	Default = false,
	Callback = function(val)
		local stickyScript = PlayerScripts:FindFirstChild("StickyPartsTouchDetection")
		if stickyScript and stickyScript:IsA("LocalScript") then
			stickyScript.Disabled = val
		end
		SetCategoryPartsState("StickyPart", val)
	end,
})

RegisterTooltip("Anti Snowball", "Disables collisions and touch events on snowballs so they cannot ragdoll you.")
AntiHazardBox:AddToggle("AntiSnowball", {
	Text = "Anti Snowball",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("Snowball", val, val)
	end,
})

RegisterTooltip("Anti Banana", "Prevents banana peels from ragdolling or tripping your character.")
AntiHazardBox:AddToggle("AntiBanana", {
	Text = "Anti Banana",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("Banana", val, val)
	end,
})

RegisterTooltip("Anti Paint", "Disables PaintPlayerPart hitboxes on paint buckets, hot sauce, UFOs, and tesla coils.")
AntiHazardBox:AddToggle("AntiPaint", {
	Text = "Anti Paint",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("PaintPlayerPart", val)
	end,
})

RegisterTooltip("Anti Poison", "Protects you from poison holes, factory poison containers, drips, and poison mushrooms.")
AntiHazardBox:AddToggle("AntiPoison", {
	Text = "Anti Poison",
	Default = false,
	Callback = function(val)
		SetCategoryPartsState("Poison", val, val)
		UpdateStopVelocityProtection(GetCharacter())
	end,
})

RegisterTooltip("Anti Lag", "Fires the native LowQualityMode and DisableHitSounds events to boost FPS.")
AntiPerfBox:AddToggle("AntiLag", {
	Text = "Anti Lag",
	Default = false,
	Callback = function(val)
		if val then
			RunAntiLagCleanup()
		end
	end,
})

RegisterTooltip("Auto Anti Lag", "Automatically triggers Anti-Lag cleanup whenever your FPS drops below the threshold.")
AntiPerfBox:AddToggle("AutoAntiLag", {
	Text = "Auto Anti Lag",
	Default = false,
})

RegisterTooltip("Auto Anti-Lag FPS", "FPS threshold that triggers Auto Anti-Lag.")
AntiPerfBox:AddSlider("AutoAntiLagFPS", {
	Text = "Auto Anti-Lag FPS",
	Default = 35,
	Min = 15,
	Max = 60,
	Rounding = 0,
})

RegisterTooltip("Anti Invis", "Forces invisible player characters back to visible transparency.")
AntiPerfBox:AddToggle("AntiInvis", {
	Text = "Anti Invis",
	Default = false,
})

-- ----------------------------------------------------------------------------
-- TAB 3: TOYS & WOOD PLANK
-- ----------------------------------------------------------------------------
local PlankBox = Tabs.ToysWorld:AddLeftGroupbox("Wood Plank & Toy Spawner")
local WorldActionsBox = Tabs.ToysWorld:AddRightGroupbox("Bombs, Coins & Slots")

RegisterTooltip("Spawn Wood Plank", "Activates the Lincoln PlankMaker button and spawns a PalletLightBrown at your camera.")
PlankBox:AddButton({
	Text = "Spawn Wood Plank",
	Func = function()
		SpawnWoodPlank()
	end,
})

RegisterTooltip("Select Toy", "Choose any toy from the game's MenuToysData catalog.")
PlankBox:AddDropdown("SelectedToyDropdown", {
	Values = AllToyNames,
	Default = "PalletLightBrown",
	Multi = false,
	Searchable = true,
	Text = "Select Toy",
})

RegisterTooltip("Spawn Selected Toy", "Spawns the selected toy right in front of your camera.")
PlankBox:AddButton({
	Text = "Spawn Selected Toy",
	Func = function()
		local toyName = (Options.SelectedToyDropdown and Options.SelectedToyDropdown.Value) or "PalletLightBrown"
		local cam = Workspace.CurrentCamera
		local orientPart = Workspace:FindFirstChild("RotateOrientPart")
		local orientVec = if orientPart and orientPart:IsA("BasePart") then orientPart.Orientation else Vector3.zero
		task.spawn(function()
			pcall(function()
				SpawnToyRF:InvokeServer(toyName, cam.CFrame, orientVec)
			end)
		end)
	end,
})

RegisterTooltip("Buy Selected Toy", "Purchases the selected toy from the shop using your in-game coins.")
PlankBox:AddButton({
	Text = "Buy Selected Toy",
	Func = function()
		local toyName = (Options.SelectedToyDropdown and Options.SelectedToyDropdown.Value) or "PalletLightBrown"
		task.spawn(function()
			pcall(function()
				BuyToyRF:InvokeServer(toyName)
			end)
		end)
	end,
})

RegisterTooltip("Claim All Free Toys", "Automatically claims all 0-coin toys (Boombox, FireExtinguisher, Mayonnaise, Ocarina, PresentSmall, SprayCanWD).")
PlankBox:AddButton({
	Text = "Claim All Free Toys",
	Func = function()
		task.spawn(function()
			local freeToys = {
				"Boombox",
				"FireExtinguisher",
				"FoodMayonnaise",
				"InstrumentWoodwindOcarina",
				"PresentSmall",
				"SprayCanWD",
			}
			for _, name in ipairs(freeToys) do
				pcall(function()
					BuyToyRF:InvokeServer(name)
				end)
			end
		end)
	end,
})

RegisterTooltip("Destroy All My Toys", "Destroys all toys currently inside your SpawnedInToys folder to free up toy points.")
PlankBox:AddButton({
	Text = "Destroy All My Toys",
	Func = function()
		local folder = Workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
		if not folder then
			return
		end
		for _, child in ipairs(folder:GetChildren()) do
			if child:IsA("Model") then
				pcall(function()
					DestroyToyRE:FireServer(child)
				end)
			end
		end
	end,
})

RegisterTooltip("Detonate All Bombs", "Remotely detonates all active bombs, balloons, and presents tracked in ExplosionMaker.")
WorldActionsBox:AddButton({
	Text = "Detonate All Bombs",
	Func = function()
		local bombs = ExplosionMaker.CurrentBombsTables
		if type(bombs) ~= "table" then
			return
		end
		for _, entry in ipairs(bombs) do
			if entry and entry.Hitbox then
				local pos = (entry.PositionPart and entry.PositionPart.Position) or entry.Hitbox.Position
				pcall(function()
					BombExplode:FireServer(entry, pos)
				end)
			end
		end
	end,
})

RegisterTooltip("Auto Collect Coins", "Automatically collects all Coin5, Coin10, and Coin25 drops across the map using firetouchinterest.")
WorldActionsBox:AddToggle("AutoCollectCoins", {
	Text = "Auto Collect Coins",
	Default = false,
})

RegisterTooltip("Auto Spin Slots", "Automatically pulls the slot machine handles whenever their LightBall turns Neon.")
WorldActionsBox:AddToggle("AutoSpinSlots", {
	Text = "Auto Spin Slots",
	Default = false,
})

-- ----------------------------------------------------------------------------
-- TAB 4: TELEPORT & AURA
-- ----------------------------------------------------------------------------
local TeleportBox = Tabs.TeleportAura:AddLeftGroupbox("Teleport")
local AuraBox = Tabs.TeleportAura:AddRightGroupbox("Grab Auras")

RegisterTooltip("Teleport Up / Down Studs", "Sets the stud distance for the Teleport Up and Teleport Down buttons.")
TeleportBox:AddSlider("VerticalTPDistance", {
	Text = "Teleport Up / Down Studs",
	Default = 40,
	Min = 5,
	Max = 300,
	Rounding = 0,
})

RegisterTooltip("Teleport Up", "Teleports you (and your grabbed target) straight up by the configured studs.")
TeleportBox:AddButton({
	Text = "Teleport Up",
	Func = function()
		local dist = (Options.VerticalTPDistance and Options.VerticalTPDistance.Value) or 40
		if IsSafeMovablePart(ActiveGrabTarget) then
			ActiveGrabTarget.CFrame += Vector3.new(0, dist, 0)
		end
		local root = GetRootPart()
		if root then
			root.CFrame += Vector3.new(0, dist, 0)
		end
	end,
})

RegisterTooltip("Teleport Down", "Teleports you (and your grabbed target) straight down by the configured studs.")
TeleportBox:AddButton({
	Text = "Teleport Down",
	Func = function()
		local dist = (Options.VerticalTPDistance and Options.VerticalTPDistance.Value) or 40
		if IsSafeMovablePart(ActiveGrabTarget) then
			ActiveGrabTarget.CFrame -= Vector3.new(0, dist, 0)
		end
		local root = GetRootPart()
		if root then
			root.CFrame -= Vector3.new(0, dist, 0)
		end
	end,
})

RegisterTooltip("Target Player", "Select a player to teleport to or orbit.")
TeleportBox:AddDropdown("TargetPlayerDropdown", {
	Values = GetPlayerNames(),
	Default = 1,
	Multi = false,
	Searchable = true,
	Text = "Target Player",
})

RegisterTooltip("Refresh Players", "Updates the Target Player dropdown with current server players.")
TeleportBox:AddButton({
	Text = "Refresh Players",
	Func = function()
		if Options.TargetPlayerDropdown then
			Options.TargetPlayerDropdown:SetValues(GetPlayerNames())
		end
	end,
})

RegisterTooltip("Teleport To Player", "Instantly teleports your character behind the selected player.")
TeleportBox:AddButton({
	Text = "Teleport To Player",
	Func = function()
		local targetName = Options.TargetPlayerDropdown and Options.TargetPlayerDropdown.Value
		local targetPlr = targetName and Players:FindFirstChild(targetName)
		local targetRoot = targetPlr and targetPlr.Character and targetPlr.Character:FindFirstChild("HumanoidRootPart")
		local myRoot = GetRootPart()
		if targetRoot and myRoot then
			myRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3)
		end
	end,
})

RegisterTooltip("Loop TP", "Continuously teleports you to the selected target player or waypoint every frame.")
TeleportBox:AddToggle("LoopTP", {
	Text = "Loop TP",
	Default = false,
})

RegisterTooltip("Loop TP Mode", "Choose how Loop TP positions your character relative to the target.")
TeleportBox:AddDropdown("LoopTPMode", {
	Values = { "Behind Target Player", "Above Target Player", "Orbit Target Player", "Selected Waypoint" },
	Default = 1,
	Multi = false,
	Text = "Loop TP Mode",
})

RegisterTooltip("Waypoint", "Select a map landmark or house plot to teleport to.")
TeleportBox:AddDropdown("WaypointDropdown", {
	Values = {
		"Spawn",
		"Factory",
		"Barn",
		"BlueHouse",
		"JapaneseHouse",
		"Train",
		"GlassHouse",
		"SpookyHouse",
		"PinkRoofHouse",
		"TudorHouse",
		"Plot1",
		"Plot2",
		"Plot3",
		"Plot4",
		"Plot5",
	},
	Default = 1,
	Multi = false,
	Text = "Waypoint",
})

RegisterTooltip("Teleport To Waypoint", "Teleports your character to the selected map waypoint or plot.")
TeleportBox:AddButton({
	Text = "Teleport To Waypoint",
	Func = function()
		local wpName = (Options.WaypointDropdown and Options.WaypointDropdown.Value) or "Spawn"
		local root = GetRootPart()
		if not root then
			return
		end
		if wpName == "Spawn" then
			local sp = Workspace:FindFirstChild("SpawnLocation")
			if sp and sp:IsA("BasePart") then
				root.CFrame = sp.CFrame + Vector3.new(0, 4, 0)
			end
		elseif string.sub(wpName, 1, 4) == "Plot" then
			local plots = Workspace:FindFirstChild("Plots")
			local plot = plots and plots:FindFirstChild(wpName)
			local area = plot and plot:FindFirstChild("PlotArea")
			if area and area:IsA("BasePart") then
				root.CFrame = area.CFrame + Vector3.new(0, 5, 0)
			end
		else
			local wps = Workspace:FindFirstChild("Waypoints")
			local wp = wps and wps:FindFirstChild(wpName)
			if wp and wp:IsA("BasePart") then
				root.CFrame = wp.CFrame + Vector3.new(0, 4, 0)
			end
		end
	end,
})

RegisterTooltip("Grab Aura", "Automatically claims network ownership and launches nearby players within the Aura Radius.")
AuraBox:AddToggle("GrabAura", {
	Text = "Grab Aura",
	Default = false,
})

RegisterTooltip("Aura Mode", "Select what Grab Aura does to players who enter your radius.")
AuraBox:AddDropdown("GrabAuraMode", {
	Values = { "Fling Away", "Void / Kill", "Sky Launch" },
	Default = 1,
	Multi = false,
	Text = "Aura Mode",
})

RegisterTooltip("Aura Radius", "Sets the stud radius around your character for Grab Aura.")
AuraBox:AddSlider("GrabAuraRadius", {
	Text = "Aura Radius",
	Default = 25,
	Min = 8,
	Max = 50,
	Rounding = 0,
})

-- ----------------------------------------------------------------------------
-- TAB 5: DIAGNOSTICS
-- ----------------------------------------------------------------------------
local DiagPlayerBox = Tabs.Diagnostics:AddLeftGroupbox("Player State")
local DiagWorldBox = Tabs.Diagnostics:AddRightGroupbox("World State")

local DiagLabels = {
	HeldState = DiagPlayerBox:AddLabel("IsHeld: false | HeldTimer: 12"),
	ReachState = DiagPlayerBox:AddLabel("CurrentReach: 30 | DefaultReach: 30"),
	ToyPoints = DiagPlayerBox:AddLabel("Toy Points: 0 / 100 | CanSpawn: true"),
	PlotState = DiagPlayerBox:AddLabel("InPlot: false | InOwnedPlot: false"),
	FPSState = DiagPlayerBox:AddLabel("FPS: 60 | Ping: 0 ms"),
	GrabTarget = DiagWorldBox:AddLabel("Grab Target: None"),
	GrabOwner = DiagWorldBox:AddLabel("Head PartOwner: None"),
	WorldCounts = DiagWorldBox:AddLabel("PCLDs: 0 | Active Bombs: 0"),
}

RegisterTooltip("Highlight PCLD Parts", "Highlights all 29 PlayerCharacterLocationDetector anti-cheat zones in red.")
DiagWorldBox:AddToggle("PCLDESP", {
	Text = "Highlight PCLD Parts",
	Default = false,
	Callback = function(val)
		if not val then
			for inst, hl in pairs(PCLDHighlights) do
				if hl then
					hl:Destroy()
				end
				if inst and inst:IsA("BasePart") then
					inst.Transparency = 1
				end
			end
			table.clear(PCLDHighlights)
		end
	end,
})

RegisterTooltip("Copy Diagnostic Snapshot", "Copies the current live diagnostic values to your clipboard.")
DiagWorldBox:AddButton({
	Text = "Copy Diagnostic Snapshot",
	Func = function()
		if not setclipboard then
			return
		end
		local report = table.concat({
			DiagLabels.HeldState.Text,
			DiagLabels.ReachState.Text,
			DiagLabels.ToyPoints.Text,
			DiagLabels.PlotState.Text,
			DiagLabels.FPSState.Text,
			DiagLabels.GrabTarget.Text,
			DiagLabels.GrabOwner.Text,
			DiagLabels.WorldCounts.Text,
		}, "\n")
		setclipboard(report)
	end,
})

-- ----------------------------------------------------------------------------
-- TAB 6: UI SETTINGS
-- ----------------------------------------------------------------------------
local MenuGroup = Tabs.UISettings:AddLeftGroupbox("Menu")
RegisterTooltip("Open Keybind Menu", "Shows or hides the active keybinds overlay list.")
MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
RegisterTooltip("Unload", "Cleanly unloads the script, restores hooks, and removes all UI elements.")
MenuGroup:AddButton({
	Text = "Unload",
	Func = function()
		if Env.FTAP_Obsidian_Cleanup then
			Env.FTAP_Obsidian_Cleanup()
		end
	end,
})
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
	Default = "RightControl",
	NoUI = true,
	Text = "Menu keybind",
})
Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SetFolder("FTAP_Obsidian")
SaveManager:SetFolder("FTAP_Obsidian/main")
SaveManager:BuildConfigSection(Tabs.UISettings)
ThemeManager:ApplyToTab(Tabs.UISettings)

-- Build Persistent Hover Target Cache from Obsidian's ScreenGui
task.spawn(function()
	task.wait(0.3)
	local libGui = Library.ScreenGui
	if not libGui then
		return
	end
	local seenFrames: { [GuiObject]: boolean } = {}
	for _, inst in ipairs(libGui:GetDescendants()) do
		if (inst:IsA("TextLabel") or inst:IsA("TextButton")) and TooltipByText[inst.Text] then
			local rowFrame = if inst:IsA("TextButton") then inst else (inst.Parent :: GuiObject?)
			if rowFrame and rowFrame:IsA("GuiObject") and not seenFrames[rowFrame] then
				seenFrames[rowFrame] = true
				table.insert(HoverTargets, {
					Frame = rowFrame,
					Title = inst.Text,
					Tip = TooltipByText[inst.Text],
				})
			end
		end
	end
end)

local function IsGuiObjectActuallyVisible(obj: GuiObject): boolean
	local cur: Instance? = obj
	while cur do
		if cur:IsA("GuiObject") then
			if not cur.Visible then
				return false
			end
		elseif cur:IsA("ScreenGui") then
			return cur.Enabled
		end
		cur = cur.Parent
	end
	return false
end

-- ============================================================================
-- RUNTIME LISTENERS & LOOPS
-- ============================================================================

AddConnection(LocalPlayer.CharacterAdded:Connect(function(newChar)
	WasAnchoredByAntiGrab = false
	AntiGrabGraceUntil = 0
	AntiGrabAnchorUntil = 0
	task.wait(0.5)
	UpdateStopVelocityProtection(newChar)
	if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value then
		local reach = (Options.CustomReachSlider and Options.CustomReachSlider.Value) or 30
		ApplyCustomReach(reach)
	end
end))
UpdateStopVelocityProtection(GetCharacter())

-- Instant Intercept when anyone fires CreateGrabLine on any part of LocalPlayer's character
AddConnection(CreateGrabLine.OnClientEvent:Connect(function(grabber, grabbedPart)
	if grabber ~= LocalPlayer and grabbedPart and typeof(grabbedPart) == "Instance" then
		local char = GetCharacter()
		if char and grabbedPart:IsDescendantOf(char) then
			if Toggles.AutoReset and Toggles.AutoReset.Value then
				local hum = GetHumanoid()
				if hum then
					hum.Health = 0
				end
				return
			end
			if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value) then
				TriggerAntiGrabDefense()
				task.defer(function()
					if grabber.Character then
						local theirGrab = grabber.Character:FindFirstChild("GrabParts")
						if theirGrab then
							BreakEnemyGrabParts(theirGrab)
						end
					end
				end)
			end
		end
	end
end))

AddConnection(Workspace.DescendantAdded:Connect(function(inst)
	if inst:IsA("BasePart") then
		ApplySinglePartProtection(inst)
	elseif inst.Name == "PartOwner" then
		local char = GetCharacter()
		if char and inst:IsDescendantOf(char) then
			if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value) then
				TriggerAntiGrabDefense()
				task.defer(function()
					if inst and inst.Parent then
						inst:Destroy()
					end
				end)
			end
		end
	elseif inst.Name == "GrabParts" and inst.Parent ~= Workspace then
		if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiKick and Toggles.AntiKick.Value) then
			task.defer(function()
				if BreakEnemyGrabParts(inst) then
					TriggerAntiGrabDefense()
				end
			end)
		end
	elseif inst.Name == "MushroomPoisonEffects" and Toggles.AntiPoison and Toggles.AntiPoison.Value then
		task.defer(function()
			inst:Destroy()
		end)
	end
end))

-- Smooth Scroll Support for Free Further Reach (Pure Luau, Crash-Free)
AddConnection(UserInputService.InputChanged:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end
	if input.UserInputType == Enum.UserInputType.MouseWheel then
		if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value and Workspace:FindFirstChild("GrabParts") then
			local maxReach = (Options.CustomReachSlider and Options.CustomReachSlider.Value) or 30
			CustomGrabDistance = math.clamp(CustomGrabDistance + (input.Position.Z * 3), 3, maxReach)
			pcall(function()
				ExtendGrabLine:FireServer(CustomGrabDistance)
			end)
		end
	end
end))

-- Detect LocalPlayer's Workspace.GrabParts creation & removal
AddConnection(Workspace.ChildAdded:Connect(function(child)
	if child.Name == "GrabParts" and child:IsA("Model") then
		task.spawn(function()
			local grabPart = child:WaitForChild("GrabPart", 2)
			local dragPart = child:WaitForChild("DragPart", 2) :: BasePart?
			local weld = grabPart and grabPart:WaitForChild("WeldConstraint", 2)
			if not (grabPart and dragPart and weld) then
				return
			end

			local target = weld.Part1
			ActiveGrabTarget = target

			if target and target.Anchored then
				target.AssemblyLinearVelocity = Vector3.zero
				target.AssemblyAngularVelocity = Vector3.zero
			end

			local cam = Workspace.CurrentCamera
			if cam and target and IsSafeMovablePart(target) then
				local maxReach = if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value
					then ((Options.CustomReachSlider and Options.CustomReachSlider.Value) or 30)
					else 20
				CustomGrabDistance = math.clamp((target.Position - cam.CFrame.Position).Magnitude, 3, maxReach)
				if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value then
					pcall(function()
						ExtendGrabLine:FireServer(CustomGrabDistance)
					end)
				end
			end

			if IsSafeMovablePart(target) and ((Toggles.SupersonicGrab and Toggles.SupersonicGrab.Value) or (Toggles.SuperStrength and Toggles.SuperStrength.Value)) then
				local alignPos = dragPart:FindFirstChildOfClass("AlignPosition")
				local alignOri = dragPart:FindFirstChildOfClass("AlignOrientation")
				if alignPos then
					alignPos.Responsiveness = 200
					alignPos.MaxForce = 5e7
					alignPos.MaxVelocity = 1800
				end
				if alignOri then
					alignOri.Responsiveness = 200
					alignOri.MaxTorque = 5e7
					alignOri.MaxAngularVelocity = 400
				end
			end

			if Toggles.KillGrab and Toggles.KillGrab.Value and IsSafeMovablePart(target) then
				local model = target:FindFirstAncestorOfClass("Model")
				local hum = model and model:FindFirstChildOfClass("Humanoid")
				local hrp = model and model:FindFirstChild("HumanoidRootPart") :: BasePart?
				if hum and hrp and model ~= GetCharacter() then
					pcall(function()
						SetNetworkOwner:FireServer(hrp, Workspace.CurrentCamera.CFrame)
						hum:ChangeState(Enum.HumanoidStateType.Dead)
						hum.Health = 0
						hrp.CFrame = CFrame.new(0, Workspace.FallenPartsDestroyHeight - 25, 0)
						hrp.AssemblyLinearVelocity = Vector3.new(0, -5000, 0)
					end)
				end
			end
		end)
	end
end))

AddConnection(Workspace.ChildRemoved:Connect(function(child)
	if child.Name == "GrabParts" and ActiveGrabTarget then
		local target = ActiveGrabTarget
		ActiveGrabTarget = nil

		if target and target.Anchored then
			target.AssemblyLinearVelocity = Vector3.zero
			target.AssemblyAngularVelocity = Vector3.zero
			return
		end

		if Toggles.SuperStrength and Toggles.SuperStrength.Value and IsSafeMovablePart(target) then
			local power = (Options.StrengthPower and Options.StrengthPower.Value) or 850
			local cam = Workspace.CurrentCamera
			if cam then
				local launchVel = cam.CFrame.LookVector * power
				local model = target:FindFirstAncestorOfClass("Model")
				if model and model ~= Workspace then
					for _, p in ipairs(model:GetDescendants()) do
						if p:IsA("BasePart") and not p.Anchored then
							p.AssemblyLinearVelocity = launchVel
						end
					end
				else
					target.AssemblyLinearVelocity = launchVel
				end
			end
		end
	end
end))

local IsHeldValue = LocalPlayer:WaitForChild("IsHeld", 5) :: BoolValue?
if IsHeldValue then
	AddConnection(IsHeldValue.Changed:Connect(function()
		if IsHeldValue.Value == true then
			if Toggles.AutoReset and Toggles.AutoReset.Value then
				local hum = GetHumanoid()
				if hum then
					hum.Health = 0
				end
				return
			end
			if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value) then
				TriggerAntiGrabDefense()
			end
		else
			-- Extend protection window when grab is released so fast camera-flick throws are absorbed
			if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value) then
				local now = os.clock()
				AntiGrabGraceUntil = math.max(AntiGrabGraceUntil, now + 0.65)
				AntiGrabAnchorUntil = math.max(AntiGrabAnchorUntil, now + 0.18)
				ZeroCharacterVelocity(GetCharacter())
			end
		end
	end))
end

-- Pre-Physics & Post-Physics Anti-Fling Shield (Stops fast grab camera-flicks before & after physics)
local function EnforceAntiGrabPhysicsShield()
	if not ((Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value)) then
		return
	end

	local char = GetCharacter()
	local root = GetRootPart()
	if not (char and root) then
		return
	end

	local now = os.clock()
	local isHeld = IsHeldValue and IsHeldValue.Value
	local head = char:FindFirstChild("Head")
	local partOwner = head and head:FindFirstChild("PartOwner")

	if isHeld or partOwner then
		AntiGrabGraceUntil = now + 0.65
		AntiGrabAnchorUntil = now + 0.22
	end

	if now < AntiGrabGraceUntil then
		ZeroCharacterVelocity(char)
		if SafeAntiGrabCFrame and (root.Position - SafeAntiGrabCFrame.Position).Magnitude > 5 then
			root.CFrame = SafeAntiGrabCFrame
		end
	end

	if isHeld or partOwner or now < AntiGrabAnchorUntil then
		root.Anchored = true
		WasAnchoredByAntiGrab = true
		if SafeAntiGrabCFrame then
			root.CFrame = SafeAntiGrabCFrame
		end
	elseif WasAnchoredByAntiGrab then
		root.Anchored = false
		WasAnchoredByAntiGrab = false
		ZeroCharacterVelocity(char)
	end
end

AddConnection(RunService.Stepped:Connect(EnforceAntiGrabPhysicsShield))
AddConnection(RunService.Heartbeat:Connect(EnforceAntiGrabPhysicsShield))

-- Main RenderStepped Loop
local OrbitAngle = 0
AddConnection(RunService.RenderStepped:Connect(function(dt)
	FPSCounter = math.floor(1 / math.max(dt, 0.001))

	local cam = Workspace.CurrentCamera
	if cam and Options.CameraFOV and Options.CameraFOV.Value ~= 70 then
		cam.FieldOfView = Options.CameraFOV.Value
	end

	local mousePos = UserInputService:GetMouseLocation()

	-- Persistent Hover Tooltip Check
	local foundHover: { Frame: GuiObject, Title: string, Tip: string }? = nil
	if not Library.Unloaded and #HoverTargets > 0 then
		local guiInset = GuiService:GetGuiInset()
		for _, entry in ipairs(HoverTargets) do
			local frame = entry.Frame
			if frame and frame.Parent and IsGuiObjectActuallyVisible(frame) then
				local screenGui = frame:FindFirstAncestorOfClass("ScreenGui")
				local checkPos = if screenGui and not screenGui.IgnoreGuiInset then (mousePos - guiInset) else mousePos
				local absPos = frame.AbsolutePosition
				local absSize = frame.AbsoluteSize
				if checkPos.X >= absPos.X and checkPos.X <= (absPos.X + absSize.X) and checkPos.Y >= absPos.Y and checkPos.Y <= (absPos.Y + absSize.Y) then
					local scrollParent = frame:FindFirstAncestorWhichIsA("ScrollingFrame")
					if scrollParent then
						local sPos = scrollParent.AbsolutePosition
						local sSize = scrollParent.AbsoluteSize
						if checkPos.X >= sPos.X and checkPos.X <= (sPos.X + sSize.X) and checkPos.Y >= sPos.Y and checkPos.Y <= (sPos.Y + sSize.Y) then
							foundHover = entry
							break
						end
					else
						foundHover = entry
						break
					end
				end
			end
		end
	end

	if foundHover then
		HoverTitleLabel.Text = foundHover.Title
		HoverDescLabel.Text = foundHover.Tip
		local vpSize = if cam then cam.ViewportSize else Vector2.new(1920, 1080)
		local tipX = math.min(mousePos.X + 18, vpSize.X - 280)
		local tipY = math.min(mousePos.Y + 18, vpSize.Y - 70)
		HoverTooltipFrame.Position = UDim2.fromOffset(tipX, tipY)
		HoverTooltipFrame.Visible = true
	else
		HoverTooltipFrame.Visible = false
	end

	local char = GetCharacter()
	local root = GetRootPart()
	local hum = GetHumanoid()

	-- Silent Aim FOV Circle & Red/Green Target Highlight
	if Toggles.SilentAimGrab and Toggles.SilentAimGrab.Value then
		FOVCircleFrame.Position = UDim2.fromOffset(mousePos.X, mousePos.Y)
		FOVCircleFrame.Visible = (not Toggles.ShowSilentAimCircle) or Toggles.ShowSilentAimCircle.Value

		local isGrabbing = Workspace:FindFirstChild("GrabParts") ~= nil and ActiveGrabTarget ~= nil
		local displayTarget = if isGrabbing then ActiveGrabTarget else SilentAimCandidate

		if isGrabbing and displayTarget and displayTarget.Parent then
			FOVStroke.Color = COLOR_GREEN
			TargetHighlight.FillColor = COLOR_GREEN
			TargetHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
			local model = displayTarget:FindFirstAncestorOfClass("Model")
			TargetHighlight.Adornee = if model and model ~= Workspace then model else displayTarget
			TargetHighlight.Enabled = true
			TargetInfoLabel.TextColor3 = COLOR_GREEN
			TargetInfoLabel.Text = "GRABBING: " .. (if model and model ~= Workspace then model.Name else displayTarget.Name)
			TargetInfoLabel.Visible = true
		elseif displayTarget and displayTarget.Parent then
			FOVStroke.Color = COLOR_RED
			TargetHighlight.FillColor = COLOR_RED
			TargetHighlight.OutlineColor = Color3.fromRGB(255, 180, 180)
			local model = displayTarget:FindFirstAncestorOfClass("Model")
			TargetHighlight.Adornee = if model and model ~= Workspace then model else displayTarget
			TargetHighlight.Enabled = true
			TargetInfoLabel.TextColor3 = COLOR_RED
			TargetInfoLabel.Text = "READY: " .. (if model and model ~= Workspace then model.Name else displayTarget.Name)
			TargetInfoLabel.Visible = true
		else
			FOVStroke.Color = COLOR_IDLE
			TargetHighlight.Enabled = false
			TargetInfoLabel.Visible = false
		end
	else
		FOVCircleFrame.Visible = false
		TargetHighlight.Enabled = false
	end

	-- Sync Gucci Anti-Grab Vehicle
	if Toggles.GucciAntiGrab and Toggles.GucciAntiGrab.Value and GucciVehicle and GucciVehicle.Parent and root then
		pcall(function()
			GucciVehicle:PivotTo(root.CFrame * CFrame.new(0, -15, 0))
			for _, p in ipairs(GucciVehicle:GetDescendants()) do
				if p:IsA("BasePart") then
					p.AssemblyLinearVelocity = Vector3.zero
					p.AssemblyAngularVelocity = Vector3.zero
				end
			end
		end)
	end

	if root and hum and hum.FloorMaterial ~= Enum.Material.Air and root.Position.Y > -40 then
		LastSafeCFrame = root.CFrame
	end

	if Toggles.AntiVoid and Toggles.AntiVoid.Value and root then
		if root.Position.Y < -120 then
			root.AssemblyLinearVelocity = Vector3.zero
			root.AssemblyAngularVelocity = Vector3.zero
			root.CFrame = if LastSafeCFrame then (LastSafeCFrame + Vector3.new(0, 4, 0)) else CFrame.new(0, 25, 0)
		end
	end

	-- Frame-Perfect Enemy Grab Weld Breaker & CFrame Tracker
	if char and ((Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiKick and Toggles.AntiKick.Value)) then
		for _, plr in ipairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer and plr.Character then
				local theirGrab = plr.Character:FindFirstChild("GrabParts")
				if theirGrab and BreakEnemyGrabParts(theirGrab) then
					TriggerAntiGrabDefense()
				end
			end
		end
	end

	local now = os.clock()
	local isHeld = IsHeldValue and IsHeldValue.Value
	local head = char and char:FindFirstChild("Head")
	local partOwner = head and head:FindFirstChild("PartOwner")

	if not isHeld and not partOwner and now >= AntiGrabGraceUntil and root then
		SafeAntiGrabCFrame = root.CFrame
	end

	if isHeld or partOwner or now < AntiGrabGraceUntil then
		if (Toggles.AntiGrab and Toggles.AntiGrab.Value) or (Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value) then
			Struggle:FireServer()
			if hum then
				hum.Sit = false
				hum.AutoRotate = true
				hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
				local ragVal = hum:FindFirstChild("Ragdolled")
				if ragVal and ragVal:IsA("BoolValue") then
					ragVal.Value = false
				end
			end
			local ragScript = char and char:FindFirstChild("RagdollPlayerCharacter")
			local unragEvent = ragScript and ragScript:FindFirstChild("UnragdollThisCharacter")
			if unragEvent and unragEvent:IsA("BindableEvent") then
				unragEvent:Fire()
			end
			ZeroCharacterVelocity(char)
			if root then
				if Toggles.AntiNetworkOwnership and Toggles.AntiNetworkOwnership.Value and cam then
					SetNetworkOwner:FireServer(root, cam.CFrame)
				end
			end
			if partOwner then
				partOwner:Destroy()
			end
		end
	end

	EnforceAntiGrabPhysicsShield()

	-- Active Grab Modifiers (Strictly ignores Anchored / Baseplate / Map parts so you never get velocited!)
	local grabParts = Workspace:FindFirstChild("GrabParts")
	if grabParts and ActiveGrabTarget and ActiveGrabTarget.Parent then
		if ActiveGrabTarget.Anchored then
			ActiveGrabTarget.AssemblyLinearVelocity = Vector3.zero
			ActiveGrabTarget.AssemblyAngularVelocity = Vector3.zero
		elseif IsSafeMovablePart(ActiveGrabTarget) then
			local dragPart = grabParts:FindFirstChild("DragPart") :: BasePart?
			local orientPart = Workspace:FindFirstChild("RotateOrientPart") :: BasePart?

			if Toggles.FreeFurtherReach and Toggles.FreeFurtherReach.Value and dragPart and cam then
				dragPart.Position = cam.CFrame.Position + (cam.CFrame.LookVector * CustomGrabDistance)
			end

			if Toggles.SpinGrab and Toggles.SpinGrab.Value then
				local speed = (Options.SpinGrabSpeed and Options.SpinGrabSpeed.Value) or 15
				if orientPart then
					orientPart.Orientation += Vector3.new(0, speed * 5, speed * 5)
				end
				if dragPart then
					local dragAttach = dragPart:FindFirstChild("DragAttach") :: Attachment?
					if dragAttach then
						dragAttach.Orientation += Vector3.new(0, speed * 5, speed * 5)
					end
				end
				ActiveGrabTarget.AssemblyAngularVelocity = Vector3.new(0, speed * 10, 0)
			end

			if Toggles.SkyGrab and Toggles.SkyGrab.Value and dragPart then
				dragPart.Position += Vector3.new(0, 350, 0)
			end

			if Toggles.ChaosGrab and Toggles.ChaosGrab.Value and dragPart then
				dragPart.Position += Vector3.new(math.random(-35, 35), math.random(-20, 35), math.random(-35, 35))
			end

			if Toggles.NoclipGrab and Toggles.NoclipGrab.Value then
				local model = ActiveGrabTarget:FindFirstAncestorOfClass("Model")
				if model and model ~= Workspace then
					for _, p in ipairs(model:GetDescendants()) do
						if p:IsA("BasePart") and not p.Anchored then
							p.CanCollide = false
						end
					end
				else
					ActiveGrabTarget.CanCollide = false
				end
			end
		end
	end

	-- Loop TP
	if Toggles.LoopTP and Toggles.LoopTP.Value and root then
		local mode = (Options.LoopTPMode and Options.LoopTPMode.Value) or "Behind Target Player"
		if mode == "Selected Waypoint" then
			local wpName = (Options.WaypointDropdown and Options.WaypointDropdown.Value) or "Spawn"
			local wps = Workspace:FindFirstChild("Waypoints")
			local wp = wps and wps:FindFirstChild(wpName)
			if wp and wp:IsA("BasePart") then
				root.CFrame = wp.CFrame + Vector3.new(0, 4, 0)
			end
		else
			local targetName = Options.TargetPlayerDropdown and Options.TargetPlayerDropdown.Value
			local targetPlr = targetName and Players:FindFirstChild(targetName)
			local targetRoot = targetPlr and targetPlr.Character and targetPlr.Character:FindFirstChild("HumanoidRootPart")
			if targetRoot then
				if mode == "Behind Target Player" then
					root.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 3.5)
				elseif mode == "Above Target Player" then
					root.CFrame = targetRoot.CFrame * CFrame.new(0, 8, 0)
				elseif mode == "Orbit Target Player" then
					OrbitAngle += dt * 4
					local offset = Vector3.new(math.cos(OrbitAngle) * 8, 2, math.sin(OrbitAngle) * 8)
					root.CFrame = CFrame.lookAt(targetRoot.Position + offset, targetRoot.Position)
				end
			end
		end
	end
end))

-- Periodic Background Loop (0.25s)
local Running = true
task.spawn(function()
	while Running do
		task.wait(0.25)
		if not Running then
			break
		end

		local char = GetCharacter()
		local root = GetRootPart()

		if Toggles.AutoAntiLag and Toggles.AutoAntiLag.Value then
			local minFPS = (Options.AutoAntiLagFPS and Options.AutoAntiLagFPS.Value) or 35
			if FPSCounter < minFPS then
				RunAntiLagCleanup()
			end
		end

		if Toggles.AntiInvis and Toggles.AntiInvis.Value then
			for _, plr in ipairs(Players:GetPlayers()) do
				if plr ~= LocalPlayer and plr.Character then
					for _, part in ipairs(plr.Character:GetChildren()) do
						if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" and part.Name ~= "CamPart" and part.Transparency > 0.5 then
							part.Transparency = 0
						end
					end
				end
			end
		end

		if Toggles.RainbowLine and Toggles.RainbowLine.Value then
			RainbowHue = (RainbowHue + 0.05) % 1
			local col = Color3.fromHSV(RainbowHue, 1, 1)
			local seq = ColorSequence.new(col)
			local beamColorFolder = LocalPlayer:FindFirstChild("BeamColor")
			if beamColorFolder then
				local seqHolder = beamColorFolder:FindFirstChild("ColorSequenceHolder")
				local ballHolder = beamColorFolder:FindFirstChild("BallColorHolder")
				if seqHolder and seqHolder:IsA("UIGradient") then
					seqHolder.Color = seq
				end
				if ballHolder and ballHolder:IsA("Color3Value") then
					ballHolder.Value = col
				end
			end
			pcall(function()
				UpdateLineColorsEvent:FireServer(seq, col, col, col, col, col, col, col, col, col)
			end)
		end

		if Toggles.AutoCollectCoins and Toggles.AutoCollectCoins.Value and root then
			for _, child in ipairs(Workspace:GetChildren()) do
				if child.Name == "Coin5" or child.Name == "Coin10" or child.Name == "Coin25" then
					local sp = child:FindFirstChild("SoundPart")
					if sp and sp:IsA("BasePart") and firetouchinterest then
						pcall(firetouchinterest, root, sp, 0)
						pcall(firetouchinterest, root, sp, 1)
					end
				end
			end
		end

		if Toggles.AutoSpinSlots and Toggles.AutoSpinSlots.Value then
			local slotsFolder = Workspace:FindFirstChild("Slots")
			if slotsFolder then
				for _, slot in ipairs(slotsFolder:GetChildren()) do
					local handle = slot:FindFirstChild("SlotHandle")
					local lightBall = handle and handle:FindFirstChild("LightBall")
					if lightBall and lightBall:IsA("BasePart") and lightBall.Material == Enum.Material.Neon then
						pcall(function()
							SetNetworkOwner:FireServer(lightBall, Workspace.CurrentCamera.CFrame)
							CreateGrabLine:FireServer(lightBall, CFrame.new())
							DestroyGrabLine:FireServer(lightBall)
						end)
					end
				end
			end
		end

		if Toggles.GrabAura and Toggles.GrabAura.Value and root then
			local radius = (Options.GrabAuraRadius and Options.GrabAuraRadius.Value) or 25
			local mode = (Options.GrabAuraMode and Options.GrabAuraMode.Value) or "Fling Away"
			for _, plr in ipairs(Players:GetPlayers()) do
				if plr ~= LocalPlayer and plr.Character then
					local tRoot = plr.Character:FindFirstChild("HumanoidRootPart") :: BasePart?
					local tHead = plr.Character:FindFirstChild("Head") :: BasePart?
					if tRoot and (tRoot.Position - root.Position).Magnitude <= radius then
						pcall(function()
							SetNetworkOwner:FireServer(tHead or tRoot, Workspace.CurrentCamera.CFrame)
							if mode == "Fling Away" then
								local dir = (tRoot.Position - root.Position).Unit
								tRoot.AssemblyLinearVelocity = dir * 850 + Vector3.new(0, 350, 0)
							elseif mode == "Void / Kill" then
								tRoot.CFrame = CFrame.new(0, Workspace.FallenPartsDestroyHeight - 20, 0)
								tRoot.AssemblyLinearVelocity = Vector3.new(0, -5000, 0)
							elseif mode == "Sky Launch" then
								tRoot.AssemblyLinearVelocity = Vector3.new(0, 1400, 0)
							end
						end)
					end
				end
			end
		end

		local pcldCount = 0
		for part in pairs(HazardCache.PCLD) do
			if part and part.Parent then
				pcldCount += 1
				if Toggles.PCLDESP and Toggles.PCLDESP.Value then
					part.Transparency = 0.35
					if not PCLDHighlights[part] then
						local hl = Instance.new("Highlight")
						hl.FillColor = COLOR_RED
						hl.OutlineColor = Color3.fromRGB(255, 255, 255)
						hl.FillTransparency = 0.4
						hl.Parent = part
						PCLDHighlights[part] = hl
					end
				end
			end
		end

		pcall(function()
			local heldTimer = LocalPlayer:FindFirstChild("HeldTimer")
			local curReach = LocalPlayer:FindFirstChild("CurrentReach")
			local defReach = LocalPlayer:FindFirstChild("DefaultReach")
			local usedPts = LocalPlayer:FindFirstChild("UsedToyPoints")
			local capPts = LocalPlayer:FindFirstChild("ToysLimitCap")
			local canSpawn = LocalPlayer:FindFirstChild("CanSpawnToy")
			local inPlot = LocalPlayer:FindFirstChild("InPlot")
			local inOwned = LocalPlayer:FindFirstChild("InOwnedPlot")
			local head = char and char:FindFirstChild("Head")
			local ownerVal = head and head:FindFirstChild("PartOwner")
			local bombCount = if type(ExplosionMaker.CurrentBombsTables) == "table" then #ExplosionMaker.CurrentBombsTables else 0

			DiagLabels.HeldState:SetText(
				string.format("IsHeld: %s | HeldTimer: %s", tostring(IsHeldValue and IsHeldValue.Value), tostring(heldTimer and heldTimer.Value))
			)
			DiagLabels.ReachState:SetText(
				string.format("CurrentReach: %s | DefaultReach: %s", tostring(curReach and curReach.Value), tostring(defReach and defReach.Value))
			)
			DiagLabels.ToyPoints:SetText(
				string.format(
					"Toy Points: %s / %s | CanSpawn: %s",
					tostring(usedPts and usedPts.Value),
					tostring(capPts and capPts.Value),
					tostring(canSpawn and canSpawn.Value)
				)
			)
			DiagLabels.PlotState:SetText(
				string.format("InPlot: %s | InOwnedPlot: %s", tostring(inPlot and inPlot.Value), tostring(inOwned and inOwned.Value))
			)
			DiagLabels.FPSState:SetText(
				string.format("FPS: %d | Ping: %d ms", FPSCounter, math.floor(LocalPlayer:GetNetworkPing() * 1000))
			)
			DiagLabels.GrabTarget:SetText(
				"Grab Target: " .. (if ActiveGrabTarget then ActiveGrabTarget:GetFullName() else "None")
			)
			DiagLabels.GrabOwner:SetText(
				"Head PartOwner: " .. (if ownerVal and ownerVal:IsA("StringValue") then ownerVal.Value else "None")
			)
			DiagLabels.WorldCounts:SetText(
				string.format("PCLDs: %d | Active Bombs: %d", pcldCount, bombCount)
			)
		end)
	end
end)

-- ============================================================================
-- CLEANUP & UNLOAD
-- ============================================================================
Env.FTAP_Obsidian_Cleanup = function()
	Running = false
	for _, conn in ipairs(Connections) do
		if conn.Connected then
			conn:Disconnect()
		end
	end
	table.clear(Connections)

	RaycastModule.RaycastFromCam = OriginalRaycastFn
	ExplosionMaker.Explode = OriginalExplodeFn

	local cam = Workspace.CurrentCamera
	if cam then
		cam.FieldOfView = 70
	end

	if OverlayGui then
		OverlayGui:Destroy()
	end

	for inst, hl in pairs(PCLDHighlights) do
		if hl then
			hl:Destroy()
		end
		if inst and inst:IsA("BasePart") then
			inst.Transparency = 1
		end
	end
	table.clear(PCLDHighlights)

	local char = GetCharacter()
	if char then
		local root = GetRootPart()
		if root and WasAnchoredByAntiGrab then
			root.Anchored = false
		end
		local stopVel = char:FindFirstChild("StopVelocity")
		if stopVel and stopVel:IsA("LocalScript") then
			stopVel.Disabled = false
		end
	end

	pcall(function()
		Library:Unload()
	end)
	Env.FTAP_Obsidian_Cleanup = nil
end

Library:OnUnload(function()
	if Env.FTAP_Obsidian_Cleanup then
		Env.FTAP_Obsidian_Cleanup()
	end
end)

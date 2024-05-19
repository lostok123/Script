local function deleteSeats(instance)
	for _, child in ipairs(instance:GetChildren()) do
		if child:IsA("VehicleSeat") or child:IsA("Seat") then
			child:Destroy()
		end
		deleteSeats(child)
	end
end

deleteSeats(game.Workspace)
wait(1)


local VerificandoExisteInstace = game.Workspace.Instante1
local VerificandoExisteInstace2 = game.Workspace.Instante2

local SOLO = 500
local Local1 = game.Workspace.Construcoes.LocaisRotas.Local1.Position
local Local2 = game.Workspace.Construcoes.LocaisRotas.Local2.Position
local Local3 = game.Workspace.Construcoes.LocaisRotas.Local3.Position
local Local4 = game.Workspace.Construcoes.LocaisRotas.Local4.Position
local Local5 = game.Workspace.Construcoes.LocaisRotas.Local5.Position
local Local6 = game.Workspace.Construcoes.LocaisRotas.Local6.Position
local Local7 = game.Workspace.Construcoes.LocaisRotas.Local7.Position
local Local8 = game.Workspace.Construcoes.LocaisRotas.Local8.Position
local Local9 = game.Workspace.Construcoes.LocaisRotas.Local9.Position
local Local10 = game.Workspace.Construcoes.LocaisRotas.Local10.Position
local Local11 = game.Workspace.Construcoes.LocaisRotas.Local11.Position
local Local12 = game.Workspace.Construcoes.LocaisRotas.Local12.Position
local Local13 = game.Workspace.Construcoes.LocaisRotas.Local13.Position
local Local14 = game.Workspace.Construcoes.LocaisRotas.Local14.Position
local Local15 = game.Workspace.Construcoes.LocaisRotas.Local15.Position

local Local1_SOLO = Vector3.new(Local1.X, SOLO, Local1.Z)
local Local2_SOLO = Vector3.new(Local2.X, SOLO, Local2.Z) 
local Local3_SOLO = Vector3.new(Local3.X, SOLO, Local3.Z) 
local Local4_SOLO = Vector3.new(Local4.X, SOLO, Local4.Z)
local Local5_SOLO = Vector3.new(Local5.X, SOLO, Local5.Z) 
local Local6_SOLO = Vector3.new(Local6.X, SOLO, Local6.Z)
local Local7_SOLO = Vector3.new(Local7.X, SOLO, Local7.Z)
local Local8_SOLO = Vector3.new(Local8.X, SOLO, Local8.Z) 
local Local9_SOLO = Vector3.new(Local9.X, SOLO, Local9.Z)
local Local10_SOLO = Vector3.new(Local10.X, SOLO, Local10.Z)
local Local11_SOLO = Vector3.new(Local11.X, SOLO, Local11.Z)
local Local12_SOLO = Vector3.new(Local12.X, SOLO, Local12.Z) 
local Local13_SOLO = Vector3.new(Local13.X, SOLO, Local13.Z)
local Local14_SOLO = Vector3.new(Local14.X, SOLO, Local14.Z)
local Local15_SOLO = Vector3.new(Local15.X, SOLO, Local15.Z) 





function Interagir()
	local function collectProximityPrompts(instance)
		local proximityPrompts = {} 

		for _, descendant in ipairs(instance:GetDescendants()) do
			if descendant:IsA("ProximityPrompt") then
				table.insert(proximityPrompts, descendant) 
			end
		end

		return proximityPrompts 
	end


	local locaisRotas = game.Workspace.Construcoes.LocaisRotas
	if locaisRotas then
		local proximityPrompts = collectProximityPrompts(locaisRotas)

	
		for _, proximityPrompt in ipairs(proximityPrompts) do
			fireproximityprompt(proximityPrompt)
		end
	else
		warn("erro")
	end
end

local function teleportWithAnimation(player, destinations, speed)
	local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
	if humanoidRootPart then
		for index, destination in ipairs(destinations) do
			local distance = (destination - humanoidRootPart.Position).Magnitude
			local duration = distance / speed
			local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
			local properties = { CFrame = CFrame.new(destination) }
			game:GetService("TweenService"):Create(humanoidRootPart, tweenInfo, properties):Play()
			wait(duration)
			print("sucesso" .. index)
			if destination ~= Local1_SOLO and destination ~= Local2_SOLO and destination ~= Local3_SOLO and
				destination ~= Local4_SOLO and destination ~= Local5_SOLO and destination ~= Local6_SOLO and
				destination ~= Local7_SOLO and destination ~= Local8_SOLO and destination ~= Local9_SOLO and
				destination ~= Local10_SOLO and destination ~= Local11_SOLO and destination ~= Local12_SOLO and
				destination ~= Local13_SOLO and destination ~= Local14_SOLO and destination ~= Local15_SOLO then
				Interagir()
				
			end
		end
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lostok123/Script/main/L"))()
	end
end



local player = game.Players.LocalPlayer 
local speed = 24  
--local destinations = {Local1_SOLO, Local1}

local destinations = {Local1_SOLO, Local1, Local1_SOLO, Local2_SOLO, Local2, Local2_SOLO, Local3_SOLO, Local3,  Local3_SOLO, Local4_SOLO, Local4, Local4_SOLO, Local5_SOLO, Local5,  Local5_SOLO, Local6_SOLO, Local6,  Local6_SOLO, Local7_SOLO, Local7,  Local7_SOLO, Local8_SOLO, Local8,  Local8_SOLO, Local9_SOLO,  Local9, Local9_SOLO, Local10_SOLO, Local10,  Local10_SOLO, Local11_SOLO,  Local11,  Local11_SOLO, Local12_SOLO, Local12, Local12_SOLO, Local13_SOLO, Local13,  Local13_SOLO, Local14_SOLO, Local14, Local14_SOLO, Local15_SOLO, Local15 Local15_SOLO,}
teleportWithAnimation(player, destinations, speed)

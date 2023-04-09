
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({NzH = "Undertale Boss Battles", HidePremium = false, SaveConfig = true, ConfigFolder = "Undertale Boss Battles Script"})

OrionLib:MakeNotification({
	Name = "Loaded",
	Content = "Made By Cxmplexe",
	Image = "rbxassetid://4483345998",
	Time = 5
})



local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CamTab = Window:MakeTab({
	Name = "Camera",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CredTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MainSection = MainTab:AddSection({
	Name = "Main"
})

MainTab:AddButton({
	Name = "Godmode",
	Callback = function()
      		local BlockedRemotes = { "Functions", } local Events = { Fire = true, Invoke = true, FireServer = true, InvokeServer = true, } local gameMeta = getrawmetatable(game) local psuedoEnv = { ["__index"] = gameMeta.__index, ["__namecall"] = gameMeta.__namecall; } setreadonly(gameMeta, false) gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...) if Events[index] then for i,v in pairs(BlockedRemotes) do if v == self.Name then return nil end end end return psuedoEnv.__index(self, index, ...) end) setreadonly(gameMeta, true)
  	end    
})



MainTab:AddButton({
	Name = "Infinite Damage",
	Callback = function()
      		local player = game.Players.LocalPlayer
local closestDummy = nil
local closestDistance = math.huge


for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
    if mob.Name == "Dummy" then
        
        local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
        if distance < closestDistance then
            
            closestDummy = mob
            closestDistance = distance
        end
    end
end


local args = {
    [1] = "DustBone",
    [2] = closestDummy,
    [3] = math.huge,
    [4] = "Skill2",
    [5] = 0,
    [6] = "NormalDMG"
}

game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
  	end    
})

MainTab:AddButton({
	Name = "Equip True Knife For Free",
	Callback = function()
      		local args = {
    [1] = 8
}

game:GetService("Lighting").EquipToolShop:FireServer(unpack(args))
  	end    
})

MainTab:AddButton({
	Name = "Heal Boss",
	Callback = function()
      		local player = game.Players.LocalPlayer
local closestDummy = nil
local closestDistance = math.huge


for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
    if mob.Name == "Dummy" then
        
        local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
        if distance < closestDistance then
            
            closestDummy = mob
            closestDistance = distance
        end
    end
end


local args = {
    [1] = "DustBone",
    [2] = closestDummy,
    [3] = -math.huge,
    [4] = "Skill2",
    [5] = 0,
    [6] = "NormalDMG"
}

game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args)) 
end
})

MainTab:AddButton({
	Name = "Switch To Old UI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Scriptingdude/1.7/main/UTBBv1.7OBF.lua"))()
			  
			OrionLib:Destroy()
  	end    
})

local MiscSection = MiscTab:AddSection({
	Name = "Misc"
})

--[[
Name = <string> - The name of the section.
]]

MiscTab:AddButton({
	Name = "Rejoin",
	Callback = function()
      		local TeleportService = game:GetService("TeleportService")
local PlaceID = "2848920787"

TeleportService:Teleport(PlaceID)
  	end    
})


MiscTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)

			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

MiscTab:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)

			game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local CamSection = CamTab:AddSection({
	Name = "Camera"
})

CamTab:AddButton({
	Name = "Unlock Camera",
	Callback = function()
      		game.Players.LocalPlayer.CameraMaxZoomDistance = 100000
		game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
  	end    
})

CamTab:AddToggle({
	Name = "Look Through Walls",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

CamTab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 240,
	Default = 90,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Fov",
	Callback = function(Value)
		game:GetService'Workspace'.Camera.FieldOfView = Value
	end    
})

local CredSection = CredTab:AddSection({
	Name = "Made By Cxmplexe"
})

MainTab:AddTextbox({
	Name = "TP To Player",
	Default = "Exact Player Name here",
	TextDisappear = true,
	Callback = function(txt)
		local P1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	local P2 = txt
	P1.CFrame = game.Players[P2].Character.HumanoidRootPart.CFrame
	end	  
})



MainTab:AddToggle({
	Name = "Autofarm",
	Default = false,
	Callback = function(Value)

	OrionLib:MakeNotification({
	Name = "Autofarm toggled",
	Content = "Disable faction Notifications in the Settings!",
	Image = "rbxassetid://4483345998",
	Time = 2
})
wait(.1)
		getgenv().AutoFarm = Value
while getgenv().AutoFarm == true do
	if game.Players.LocalPlayer.leaderstats.Level.Value < 3 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169.296219, 163.65123, -158.3694, -0.989176869, 2.94781172e-10, 0.146728083, 3.35186012e-09, 1, 2.05877519e-08, -0.146728083, 2.08567403e-08, -0.989176869)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.Flowey
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value == 3 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-174.800308, 171.818924, 288.644043, 0.0567490608, 1.28916724e-07, -0.998388469, 6.2163771e-08, 1, 1.32658244e-07, 0.998388469, -6.95918274e-08, 0.0567490608)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.Toriel
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value  > 3 and game.Players.LocalPlayer.leaderstats.Level.Value < 7 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.0007591, 163.143326, -335.320648, 0.967158079, 9.15034875e-08, 0.254175663, -6.04942016e-08, 1, -1.29815859e-07, -0.254175663, 1.10176295e-07, 0.967158079)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.HM_Toriel
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value > 6 and game.Players.LocalPlayer.leaderstats.Level.Value < 14 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.0369186, 163.639923, -336.963257, 0.960395515, 1.13111817e-07, 0.27864033, -1.15710044e-07, 1, -7.1217463e-09, -0.27864033, -2.54017927e-08, 0.960395515)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.HM_Papyrus
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value > 13 and game.Players.LocalPlayer.leaderstats.Level.Value < 65 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982.48438, 172.348495, -29.6725044, 0.371222854, -5.79247725e-08, 0.928543806, -3.46883198e-08, 1, 7.62504371e-08, -0.928543806, -6.05155321e-08, 0.371222854)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.Undyne2
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value  > 64 and game.Players.LocalPlayer.leaderstats.Level.Value < 70 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92.3292465, 162.763885, -335.425201, 0.994318783, -5.00564035e-10, -0.106443256, 8.3367907e-10, 1, 3.08501202e-09, 0.106443256, -3.15622484e-09, 0.994318783)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.HM_Undyne
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value > 69 and game.Players.LocalPlayer.leaderstats.Level.Value < 80 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-210.216431, 162.842804, -335.102234, 0.976626933, 3.09391659e-08, 0.214941576, -2.1381581e-08, 1, -4.67910333e-08, -0.214941576, 4.11015897e-08, 0.976626933)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.HM_Asgore
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value > 79 and game.Players.LocalPlayer.leaderstats.Level.Value < 100 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-239.612625, 163.524109, -339.746094, 0.738397479, 8.32799358e-08, 0.674365759, -1.07917145e-07, 1, -5.32972511e-09, -0.674365759, -6.88401727e-08, 0.738397479)
		wait(2)
		local args = {
		[1] = {},
		[2] = workspace.Game.Teleporters.Model.HM_Chara
	}

	game:GetService("Lighting").Invite:FireServer(unpack(args))
	wait(2)
	local player = game.Players.LocalPlayer
	local closestDummy = nil
	local closestDistance = math.huge


	for _, mob in ipairs(workspace.Game.Mobs:GetChildren()) do
		if mob.Name == "Dummy" then
			
			local distance = (player.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).magnitude
			if distance < closestDistance then
				
				closestDummy = mob
				closestDistance = distance
			end
		end
	end


	local args = {
		[1] = "DustBone",
		[2] = closestDummy,
		[3] = math.huge,
		[4] = "Skill2",
		[5] = 0,
		[6] = "NormalDMG"
	}

	game:GetService("ReplicatedStorage").Skill:FireServer(unpack(args))
	wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	elseif game.Players.LocalPlayer.leaderstats.Level.Value == 100 then

	local args = {
		[1] = game:GetService("Players").LocalPlayer.leaderstats.Resets
	}

	game:GetService("ReplicatedStorage").ResetsClick:FireServer(unpack(args))

	end
	wait(11)
end

	end    
})



OrionLib:Init()
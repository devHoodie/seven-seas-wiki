local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bootstrap = require(ReplicatedStorage.Bootstrap)
local skills = {}

local ShipServer = Bootstrap:GetServer("ShipServer")
local ShipClient = Bootstrap:GetClient("ShipClient")
local CannonClient = Bootstrap:GetClient("CannonClient")

local Ships = require(ReplicatedStorage.Data.Ships)

skills["Sailing"] = {
	Name = "Sailing",
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Portside Cannons", Image = "rbxassetid://17172501644",
			Type = "Charging",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("PortsideCooldown")
			end,
			Charge = ShipClient.startCharge,
			Active = ShipClient.shootPortsideCannons, BaseCooldown = 10
		},
		[2] = {Index = 2, Level = 1,Description = "Starboard Cannons", Image = "rbxassetid://17172501469",
			Type = "Charging",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("StarboardCooldown")
			end,
			Charge = ShipClient.startCharge,
			Active = ShipClient.shootStarboardCannons, BaseCooldown = 10
		},
		[3] = {Index = 3, Level = 4,Description = "Full Sail", Image = "rbxassetid://111414388062290",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("FullSailCooldown")
			end,
			Active = function()
				ShipServer.FullSail:Fire()
				end, BaseCooldown = 15
		},
		[4] = {Index = 4, Level = 8,Description = "Come About", Image = "rbxassetid://119334598848604",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("ComeAboutCooldown")
			end,
			Active =  function()
				ShipServer.ComeAbout:Fire()
			end, BaseCooldown = 25
		},
		[5] = {Index = 5, Level = 16,Description = "Open Fire", Image = "rbxassetid://90670312845934",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("OpenFireCooldown")
			end,
			Active =  function()
				ShipServer.OpenFire:Fire()
			end, BaseCooldown = 15
		},
		[6] = {Index = 6, Level = 22,Description = "Take Cover", Image = "rbxassetid://105554205345668",
			CheckCooldown = function(player)
				return player.Boat.Value:GetAttribute("TakeCoverCooldown")
			end,
			Active =  function()
				ShipServer.TakeCover:Fire()
			end, BaseCooldown = 15
		},
	}
}

skills["Sword"] = {
	Name = "Sword",
	Actions = require(ReplicatedStorage.Data.SwordSkills.BasicCutlassSkills), 
}

skills["Gun"] = {
	Name = "Gun",
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Lead Shot", Image = "rbxassetid://109863560637865",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0},
		[2] = {Index = 2, Level = 2,Description = "Venom Shot", Image = "rbxassetid://131905711455328",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0, HasAmmo = true},
		[3] = {Index = 3, Level = 6,Description = "Bane Shot", Image = "rbxassetid://81128744045671",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0, HasAmmo = true},
		[4] = {Index = 4, Level = 10,Description = "Drag Shot", Image = "rbxassetid://121715186089314",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0, HasAmmo = true},
		[5] = {Index = 5, Level = 17,Description = "Silver Shot", Image = "rbxassetid://131751109487573",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0, HasAmmo = true},
		[6] = {Index = 6, Level = 21,Description = "Steel Shot", Image = "rbxassetid://89239106554076",
			Active = CannonClient.changeGunAmmo, BaseCooldown = 0, HasAmmo = true},
	},
}

skills["Cannoning"] = {
	Name = "Cannoning",
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Round Shot", Image = "rbxassetid://17171918913",
			Active = CannonClient.changeCannonball, BaseCooldown = 0},
		[2] = {Index = 2, Level = 2,Description = "Chain Shot", Image = "rbxassetid://17171918798",
			Active = CannonClient.changeCannonball, BaseCooldown = 0, HasAmmo = true},
		[3] = {Index = 3, Level = 5,Description = "Firebrand", Image = "rbxassetid://77937918881880",
			Active = CannonClient.changeCannonball, BaseCooldown = 0, HasAmmo = true},
		[4] = {Index = 4, Level = 11,Description = "Thunderbolt", Image = "rbxassetid://112092940707916",
			Active = CannonClient.changeCannonball, BaseCooldown = 0, HasAmmo = true},
		[5] = {Index = 5, Level = 17,Description = "Explosive", Image = "rbxassetid://99209062431317",
			Active = CannonClient.changeCannonball, BaseCooldown = 0, HasAmmo = true},
		[6] = {Index = 6, Level = 24,Description = "Fury", Image = "rbxassetid://85316621482363",
			Active = CannonClient.changeCannonball, BaseCooldown = 0, HasAmmo = true},
	},
}

for i,v in script:GetChildren() do
	skills[v.Name] = require(v)
end

return skills

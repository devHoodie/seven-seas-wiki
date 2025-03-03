local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Bootstrap = require(ReplicatedStorage.Bootstrap)
local skills = {}

local Ships = require(ReplicatedStorage.Data.Ships)

skills["Sailing"] = {
	Name = "Sailing",
	Passives = {
		[1] = {
			Name = "Windcatcher",
			Description = "Harness the power of the wind: %% increase in speed",
			BonusPerPoint = 3,
			Level = 4,
			Image = "rbxassetid://121305795964881",
		},	
		[2] = {
			Name = "Tacking",
			Description = "Learn to turn your ship faster: %% increase in turning radius",
			BonusPerPoint = 2,
			Level = 9,
			Image = "rbxassetid://87356015056169",
		},	
		[3] = {
			Name = "Captain's Trust",
			Description = "Outgoing damage increased by %% more damage while steering",
			BonusPerPoint = 1,
			Level = 14,
			Image = "rbxassetid://110308802983202",
		},	
	},
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Portside Cannons", Image = "rbxassetid://17172501644",
			Type = "Charging",
			Text = "Shoots your portside cannons. Charge it to shoot further.",
			BonusPerPoint = -.5,
			BonusType = "s Cooldown",
		},
		[2] = {Index = 2, Level = 1,Description = "Starboard Cannons", Image = "rbxassetid://17172501469",
			Type = "Charging",
			Text = "Shoots your starboard cannons. Charge it to shoot further.",
			BonusPerPoint = -.5,
			BonusType = "s Cooldown",
		},
		[3] = {Index = 3, Level = 4,Description = "Full Sail", Image = "rbxassetid://111414388062290",
			Text = "Acceleration and max speed increased by 50% for 5 seconds",
			BonusPerPoint = 3,
			BonusType = "%",
		},
		[4] = {Index = 4, Level = 8,Description = "Come About", Image = "rbxassetid://119334598848604",
			Text = "Turning speed increased by 50% for 4 seconds",
			BonusPerPoint = 3,
			BonusType = "%",
		},
		[5] = {Index = 5, Level = 16,Description = "Open Fire", Image = "rbxassetid://90670312845934",
			Text = "All outgoing damage increased by 50% for 4 seconds",
			BonusPerPoint = 3,
			BonusType = "%",
		},
		[6] = {Index = 6, Level = 22,Description = "Take Cover", Image = "rbxassetid://105554205345668",
			Text = "All incoming damage decreased by 75% for 3 seconds",
			BonusPerPoint = 1,
			BonusType = "%",
		},
	}
}

skills["Sword"] = {
	Name = "Sword",
	Passives = {
		[1] = {
			Name = "Duelist's Grace",
			Description = "Increased movement speed by %% while equipped",
			BonusPerPoint = 5,
			Level = 6,
			Image = "rbxassetid://110333298053033",
			Action = function(player, level)
				if player.Character then
					local amount = 1 + (level * .05)
					player.Character:SetAttribute("CutlassWalkspeed", 14 * amount)
					if player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChildOfClass("Tool") and player.Character:FindFirstChildOfClass("Tool"):GetAttribute("Type") == "Sword" then
						player.Character.Humanoid.WalkSpeed = 14 * amount
					end
				end
			end,
		},	
		[2] = {
			Name = "Endurance",
			Description = "Increased character maximum health by %%",
			BonusPerPoint = 2,
			Level = 12,
			Image = "rbxassetid://122835144072989",
			Action = function(player, level)
				if player.Character then
					local playerHealth = 90 + (player:GetAttribute("Level")*10)
					local amount = 1 + (level * .02)
					local newHealth = math.floor(playerHealth * amount)
					if player.Character:GetAttribute("Health") == player.Character:GetAttribute("MaxHealth") then
						player.Character:SetAttribute("MaxHealth", newHealth)
						player.Character:SetAttribute("Health", newHealth)
					else
						player.Character:SetAttribute("MaxHealth", newHealth)
					end
				end
			end,
		},	
	},
	Actions =  {
		[1] = {
			Index = 1, Level = 1,Description = "Sweep", Image = "rbxassetid://17638460356",
			Text = "A wide circular slash that hits all nearby enemies.",
			BonusPerPoint = 3,
			BonusType = " Damage",
		},
		[2] = {
			Index = 2, Level = 3,Description = "Brawl", Image = "rbxassetid://17638498534",
			Text = "Fight dirty by punching an enemy! Slows for a short time.",
			BonusPerPoint = 3,
			BonusType = " Damage",
		},
		[3] = {
			Index = 3, Level = 7,Description = "Parry", Image = "rbxassetid://125975453304874",
			Text = "Blocks incoming attacks for 2 seconds.",
			BonusPerPoint = .5,
			BonusType = "s",
		},
		[4] = {
			Index = 4, Level = 13,Description = "Bladestorm", Image = "rbxassetid://111534453912110",
			Text = "A barrage of quick slashes with a devastating final blow.",
			BonusPerPoint = 5,
			BonusType = " Damage",
		},
		[5] = {
			Index = 5, Level = 19,Description = "Heal", Image = "rbxassetid://91660827443683",
			Text = "Heals you for 20% of your max health instantly.",
			BonusPerPoint = 2,
			BonusType = "%",
		},
		[6] = {
			Index = 6, Level = 26,Description = "Strike", Image = "rbxassetid://113388742037463",
			Text = "Your next slash deals 200% more damage.",
			BonusPerPoint = 10,
			BonusType = "%",
		},
	}
}

skills["Gun"] = {
	Name = "Gun",
	Passives = {
		[1] = {
			Name = "Dodge",
			Description = "%% chance to dodge projectiles from ranged enemies",
			BonusPerPoint = 2,
			Level = 6,
			Image = "rbxassetid://78107705579815",
			Action = function(player, level)
				local deflectChance = (level * .02) * 100
				if player.Character then
					player.Character:SetAttribute("DeflectChance", deflectChance)
				end
			end,
		},	
		[2] = {
			Name = "Lucky Shot",
			Description = "%% chance to not use ammo when firing",
			BonusPerPoint = 2,
			Level = 16,
			Image = "rbxassetid://109863560637865",
		},	
	},
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Lead Shot", Image = "rbxassetid://109863560637865",
			Text = "Standard ammunition, a basic lead ball with unlimited use. 4 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
		[2] = {Index = 2, Level = 2,Description = "Venom Shot", Image = "rbxassetid://131905711455328",
			Text = "A lead ball coated with deadly poison. 11 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
		[3] = {Index = 3, Level = 6,Description = "Bane Shot", Image = "rbxassetid://81128744045671",
			Text = "A strong bullet cursed by Davy Jones himself. Decreases attack power by 25%. 16 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
		[4] = {Index = 4, Level = 10,Description = "Drag Shot", Image = "rbxassetid://121715186089314",
			Text = "A brass polished bullet that slow down your target. 22 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
		[5] = {Index = 5, Level = 17,Description = "Silver Shot", Image = "rbxassetid://131751109487573",
			Text = "A bullet made of solid silver. Powerful against the undead but ineffective against the living. 45 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
		[6] = {Index = 6, Level = 21,Description = "Steel Shot", Image = "rbxassetid://89239106554076",
			Text = "Strongest metal shot used for hunting beasts. Powerful against the living but ineffective against Undead. 55 base damage.",
			BonusPerPoint = 3,
			BonusType = " Damage",},
	},
}

skills["Cannoning"] = {
	Name = "Cannoning",
	Passives = {
		[1] = {
			Name = "Shrapnel",
			Description = "%% chance to splinter dealing an additional 1/3rd damage.",
			BonusPerPoint = 2,
			Level = 8,
			Image = "rbxassetid://78273131053483",
		},	
		[2] = {
			Name = "Lucky Shot",
			Description = "%% chance to not use a cannonball when firing",
			BonusPerPoint = 2,
			Level = 15,
			Image = "rbxassetid://17171918913",
		},		
	},
	Actions = {
		[1] = {Index = 1, Level = 1,Description = "Round Shot", Image = "rbxassetid://17171918913",
			Text = "The basic medium-ranged shot. Infinite ammo. ",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",
		},
		[2] = {Index = 2, Level = 2,Description = "Chain Shot", Image = "rbxassetid://17171918798",
			Text = "Two iron balls connected by a chain. Designed to tear down of sails and masts.",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",},
		[3] = {Index = 3, Level = 5,Description = "Firebrand", Image = "rbxassetid://77937918881880",
			Text = "A flaming medium-range round capable of lighting ships on fire.",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",},
		[4] = {Index = 4, Level = 11,Description = "Thunderbolt", Image = "rbxassetid://112092940707916",
			Text = "A highly charged, long-range cannonball that causes a lightning bolt to strike where it lands.",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",},
		[5] = {Index = 5, Level = 17,Description = "Explosive", Image = "rbxassetid://99209062431317",
			Text = "A mighty exploding cannonball. Highly volatile and extremely heavy, limited range.",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",},
		[6] = {Index = 6, Level = 24,Description = "Fury", Image = "rbxassetid://85316621482363",
			Text = "A medium-range white-bluish spectral fireball.",
			BonusPerPoint = -.05,
			BonusType = "s cooldown",},
	},
}

for i,v in script:GetChildren() do
	skills[v.Name] = require(v)
end

return skills

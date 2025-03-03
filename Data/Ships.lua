local ships = {}

local function newShip(index, shipName, cargo, health, sailHealth, maxPlayers,
	max, min, acc, speed, maxView, minView, turn, minLevel,
	maxLevel, NPCName, NPCCannonballs, Price, Cannons)
	ships[shipName] = {
		Index = index,
		Name = shipName,
		CargoHold = cargo,
		MaxPlayers = maxPlayers,
		Health = health,
		SailHealth = sailHealth,
		CannonMaxDistance = max,
		CannonMinDistance = min,
		DriverSettings = {
			Acceleration = acc,
			MaxSpeed = speed,
			MaxViewDistance = maxView,
			MinViewDistance = minView,
			TurnSpeed = turn
		},
		NPCLevels = {
			Min = minLevel,
			Max = maxLevel
		},
		NPCName = NPCName,
		NPCCannonballs = NPCCannonballs,
		Price = Price,
		Cannons = Cannons
	}
end

newShip(1, "Light Sloop", 6, 800, 400, 4, 125, 10, .12, 50, 85, 40, 6*1.65, 1, 5, "Navy Ferret",
	{["Chain Shot"] = 20, ["Round Shot"] = 80}, 100, 4)
newShip(2, "Light Barque", 8, 1250, 600, 5, 185, 10, .1, 40, 85, 40, 4.5*1.65, 2, 7, "Navy Panther",
	{["Chain Shot"] = 15, ["Round Shot"] = 85}, 350, 6)
newShip(3, "Light Galleon", 10, 1650, 850, 6, 165, 10, .075, 35, 85, 40, 4.25*1.65, 3, 8, "Navy Bulwark",
	{["Chain Shot"] = 10, ["Round Shot"] = 90}, 750, 6)

newShip(4, "Sloop", 9, 2500, 1000, 8, 235, 10, .09, 45, 100, 40, 5*1.65, 10, 20, "Navy Greyhound",
	{["Firebrand"] = 15, ["Chain Shot"] = 10, ["Round Shot"] = 75}, 1250, 8)
newShip(5, "Barque", 12, 3500, 1200, 9, 300, 25, .075, 35, 100, 40, 4.25*1.65, 10, 25, "Navy Centurion",
	{["Firebrand"] = 25, ["Chain Shot"] = 5, ["Round Shot"] = 70}, 1950, 8)
newShip(6, "Galleon", 14, 4350, 1400, 10, 265, 25, .065, 30, 100, 40, 4*1.65, 10, 30, "Navy Vanguard",
	{["Firebrand"] = 35, ["Round Shot"] = 65}, 2500, 12)

newShip(7, "War Sloop", 16, 6500, 2500, 12, 300, 10, .08, 35, 125, 40, 4.5*1.65, 45, 60, "Navy Kingfisher",
	{["Firebrand"] = 30, ["Round Shot"] = 45 , ["Explosive"] = 25}, 8500, 14)
newShip(8, "War Barque", 20, 9500, 2850, 16, 450, 25, .065, 30, 125, 45, 3.85*1.65, 55, 75, "Man O' War",
	{["Firebrand"] = 30, ["Round Shot"] = 35 , ["Fury"] = 35}, 13500, 16)
newShip(9, "War Galleon", 24, 12000, 3550, 18, 400, 40, .055, 22, 125, 60, 3.5*1.65, 65, 85, "Navy Monarch",
	{["Firebrand"] = 30, ["Round Shot"] = 20, ["Thunderbolt"] = 25,  ["Fury"] = 25}, 18500, 20)
--
ships["Light Sloop"].CargoRarities = {
	{{"Treasure Chest"},90},
	{{"Loot Pouch"},70},
	{{"Cargo Crate"},0},
}
ships["Light Sloop"].KeyChestRarities = {
	{{"Silver"},70},
	{{"Bronze"},20},
	{{"None"},0},
}
--
ships["Light Barque"].CargoRarities = {
	{{"Treasure Chest"},70},
	{{"Loot Pouch"},50},
	{{"Cargo Crate"},0},
}
ships["Light Barque"].KeyChestRarities = {
	{{"Silver"},65},
	{{"Bronze"},15},
	{{"None"},0},
}
--
ships["Light Galleon"].CargoRarities = {
	{{"Treasure Chest"},65},
	{{"Loot Pouch"},45},
	{{"Cargo Crate"},0},
}
ships["Light Galleon"].KeyChestRarities = {
	{{"Silver"},55},
	{{"Bronze"},5},
	{{"None"},0},
}
--
ships["Sloop"].CargoRarities = {
	{{"Skull Chest"},95},
	{{"Loot Chest"},85},
	{{"Treasure Chest"},45},
	{{"Loot Pouch"},25},
	{{"Cargo Crate"},0},
}
ships["Sloop"].KeyChestRarities = {
	{{"Emerald"},99},
	{{"Sapphire"},93},
	{{"Gold"},80},
	{{"Silver"},65},
	{{"Bronze"},20},
	{{"None"},0},
}
--
ships["Barque"].CargoRarities = {
	{{"Skull Chest"},90},
	{{"Loot Chest"},75},
	{{"Treasure Chest"},35},
	{{"Loot Pouch"},15},
	{{"Cargo Crate"},0},
}
ships["Barque"].KeyChestRarities = {
	{{"Emerald"},98},
	{{"Sapphire"},90},
	{{"Gold"},70},
	{{"Silver"},55},
	{{"Bronze"},10},
	{{"None"},0},
}
--
ships["Galleon"].CargoRarities = {
	{{"Skull Chest"},90},
	{{"Loot Chest"},75},
	{{"Treasure Chest"},35},
	{{"Loot Pouch"},15},
	{{"Cargo Crate"},0},
}
ships["Galleon"].KeyChestRarities = {
	{{"Emerald"},97},
	{{"Sapphire"},85},
	{{"Gold"},45},
	{{"Silver"},20},
	{{"None"},0},
}
--
ships["War Sloop"].CargoRarities = {
	{{"Royal Chest"},97},
	{{"Skull Chest"},75},
	{{"Loot Chest"},50},
	{{"Treasure Chest"},20},
	{{"Loot Pouch"},0},
}
ships["War Sloop"].KeyChestRarities = {
	{{"Ruby"},97},
	{{"Emerald"},80},
	{{"Sapphire"},60},
	{{"Gold"},35},
	{{"None"},0},
}
--
ships["War Barque"].CargoRarities = {
	{{"Royal Chest"},96},
	{{"Skull Chest"},65},
	{{"Loot Chest"},25},
	{{"Treasure Chest"},10},
	{{"Loot Pouch"},0},
}
ships["War Barque"].KeyChestRarities = {
	{{"Ruby"},96},
	{{"Emerald"},74},
	{{"Sapphire"},50},
	{{"Gold"},10},
	{{"None"},0},
}
--
ships["War Galleon"].CargoRarities = {
	{{"Royal Chest"},95},
	{{"Skull Chest"},65},
	{{"Loot Chest"},25},
	{{"Treasure Chest"},10},
	{{"Loot Pouch"},0},
}
ships["War Galleon"].KeyChestRarities = {
	{{"Ruby"},95},
	{{"Emerald"},80},
	{{"Sapphire"},45},
	{{"Gold"},10},
	{{"None"},0},
}

return ships

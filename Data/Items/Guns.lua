local module = {}

-- Common
module["Crude Flintlock"] = { 
	DamageBonus = 2,
	ReloadTime = 1.9,
	MinDistance = 25,
	MaxDistance = 35,
	Rarity = "Common",
	Description = "A rusty flintlock used by beginners.",
	SubType = "Flintlock",
	Level = 1,
	SellPrice = 2,
}

module["Ironheart Blunderbuss"] = {
	DamageBonus = 5,
	ReloadTime = 2.4,
	MinDistance = 20,
	MaxDistance = 40,
	Rarity = "Common",
	Description = "A sturdy blunderbuss with a reinforced iron frame.",
	SubType = "Blunderbuss",
	Level = 1,
	SellPrice = 5,
}

module["Brine Flintlock"] = {
	DamageBonus = 3,
	ReloadTime = 1.7,
	MinDistance = 25,
	MaxDistance = 35,
	Rarity = "Common",
	Description = "A salt-worn flintlock favored by coastal marauders.",
	SubType = "Flintlock",
	Level = 1,
	SellPrice = 3,
}

-- Uncommon
module["Dreadbronze Flintlock"] = {
	DamageBonus = 5,
	ReloadTime = 1.6,
	MinDistance = 30,
	MaxDistance = 45,
	Rarity = "Uncommon",
	Description = "A bronze-cast flintlock known for its reliability.",
	SubType = "Flintlock",
	Level = 4,
	SellPrice = 10,
}

module["Beetle Flintlock"] = {
	DamageBonus = 6,
	ReloadTime = 1.4,
	MinDistance = 25,
	MaxDistance = 45,
	Rarity = "Uncommon",
	Description = "Carved from beetle chitin, this flintlock is surprisingly durable.",
	SubType = "Flintlock",
	Level = 5,
	SellPrice = 12,
}

module["Saberline Blunderbuss"] = {
	DamageBonus = 12,
	ReloadTime = 2.2,
	MinDistance = 20,
	MaxDistance = 35,
	Rarity = "Uncommon",
	Description = "A sleek blunderbuss with a serrated barrel for close encounters.",
	SubType = "Blunderbuss",
	Level = 6,
	SellPrice = 24,
}

-- Rare
module["Venomshade Flintlock"] = {
	DamageBonus = 12,
	ReloadTime = 1.4,
	MinDistance = 35,
	MaxDistance = 65,
	Rarity = "Rare",
	Description = "Infused with venomous alloys, each shot carries a toxic bite.",
	SubType = "Flintlock",
	Level = 8,
	SellPrice = 34,
}

module["Bloodheart Blunderbuss"] = {
	DamageBonus = 17,
	ReloadTime = 2.4,
	MinDistance = 35,
	MaxDistance = 40,
	Rarity = "Rare",
	Description = "A brutal blunderbuss that resonates with the wielder's fury.",
	SubType = "Blunderbuss",
	Level = 11,
	SellPrice = 44,
}

module["Ironvein Musket"] = {
	DamageBonus = 21,
	ReloadTime = 2.5,
	MinDistance = 50,
	MaxDistance = 130,
	Rarity = "Rare",
	Description = "A long-barreled musket with precision iron sights.",
	SubType = "Musket",
	Level = 14,
	SellPrice = 52,
}

-- Epic
module["Goldbone Blunderbuss"] = {
	DamageBonus = 21,
	ReloadTime = 1.9,
	MinDistance = 25,
	MaxDistance = 45,
	Rarity = "Epic",
	Description = "A gilded blunderbuss symbolizing both wealth and power.",
	SubType = "Blunderbuss",
	Level = 17,
	SellPrice = 230,
}

module["General's Musket"] = {
	DamageBonus = 28,
	ReloadTime = 2,
	MinDistance = 50,
	MaxDistance = 150,
	Rarity = "Epic",
	Description = "Issued to high-ranking officers, this musket boasts unmatched accuracy.",
	SubType = "Musket",
	Level = 21,
	SellPrice = 270,
}

-- Legendary
module["Aristocrat Blunderbuss"] = {
	DamageBonus = 29,
	ReloadTime = 1,
	MinDistance = 30,
	MaxDistance = 50,
	Rarity = "Legendary",
	Description = "An exquisitely crafted blunderbuss for the elite.",
	SubType = "Blunderbuss",
	Level = 26,
	SellPrice = 580,
}

module["Aristocrat Flintlock"] = {
	DamageBonus = 25,
	ReloadTime = .825,
	MinDistance = 40,
	MaxDistance = 75,
	Rarity = "Legendary",
	Description = "A masterwork flintlock adorned with precious metals.",
	SubType = "Flintlock",
	Level = 25,
	SellPrice = 500,
}

return module
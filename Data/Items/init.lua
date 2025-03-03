local module = {}
module.Rarities = {
	["Common"] = {
		Color = Color3.new(0.490196, 0.490196, 0.490196)
	},
	["Uncommon"] = {
		Color = Color3.new(0, 0.666667, 0)
	},
	["Rare"] = {
		Color = Color3.new(0, 0.666667, 1)
	},
	["Epic"] = {
		Color = Color3.new(0.666667, 0, 1)
	},
	["Legendary"] = {
		Color = Color3.new(1, 0.666667, 0)
	},
}

module["Key Chest"] = {}
module.Key = {}
module.Gun = require(script.Guns)
module.Sword = require(script.Swords)

module["Treasure"] = {
	["Treasure Map #1" ] = {
		ID = "TQ1",
		Name = "Treasure Map #1",
		SubType = "Map",
		Rarity = "Common",
		Description = "The red petals blossom on this beautiful flower.",
	},
	["Treasure Map #2" ] = {
		ID = "TQ2",
		Name = "Treasure Map #2",
		SubType = "Map",
		Rarity = "Uncommon",
		Description = "Never trust someone who's always smiling.",
	},
	["Treasure Map #3" ] = {
		ID = "TQ3",
		Name = "Treasure Map #3",
		SubType = "Map",
		Rarity = "Uncommon",
		Description = "A legend flaps it's wings across the ocean",
	},
	["Treasure Map #4" ] = {
		ID = "TQ4",
		Name = "Treasure Map #4",
		SubType = "Map",
		Rarity = "Rare",
		Description = "The hammer smashes iron casts with grace of fire",
	},
}

module["Key Chest"]["Bronze Key Chest"] = {
	ID = 1,
	Rarity = "Common",
	Description = "A chest with basic treasures waiting to be claimed.",
	KeyColor = Color3.fromRGB(160, 95, 53),
	KeyMaterial = Enum.Material.Basalt,
	ChestTexture = "rbxassetid://85365201616005",
	SubType = "Bronze",
	SellPrice = 2,
}

module["Key Chest"]["Silver Key Chest"] = {
	ID = 2,
	Rarity = "Uncommon",
	Description = "A chest filled with rewards for the daring pirate.",
	KeyColor = Color3.fromRGB(163, 162, 165),
	KeyMaterial = Enum.Material.Basalt,
	ChestTexture = "rbxassetid://93448924159663",
	SubType = "Silver",
	SellPrice = 6,
}

module["Key Chest"]["Gold Key Chest"] = {
	ID = 3,
	Rarity = "Uncommon",
	Description = "A chest holding riches fit for a captain.",
	KeyColor = Color3.fromRGB(255, 170, 0),
	KeyMaterial = Enum.Material.Marble,
	ChestTexture = "rbxassetid://123233708548367",
	SubType = "Gold",
	SellPrice = 15,
}

module["Key Chest"]["Sapphire Key Chest"] = {
	Rarity = "Rare",
	Description = "A chest hiding treasures from distant shores.",
	KeyColor = Color3.fromRGB(0, 0, 255),
	KeyMaterial = Enum.Material.Glass,
	ChestTexture = "rbxassetid://98919724680910",
	SubType = "Sapphire"
}

module["Key Chest"]["Emerald Key Chest"] = {
	Rarity = "Epic",
	Description = "A chest filled with riches plundered from exotic lands.",
	KeyColor = Color3.fromRGB(52, 142, 64),
	KeyMaterial = Enum.Material.Glass,
	ChestTexture = "rbxassetid://136172696255278",
	SubType = "Emerald"
}

module["Key Chest"]["Ruby Key Chest"] = {
	Rarity = "Legendary",
	Description = "A chest guarding the most prized loot of the high seas.",
	KeyColor = Color3.fromRGB(196, 40, 28),
	KeyMaterial = Enum.Material.Glass,
	ChestTexture = "rbxassetid://105743807180461",
	SubType = "Ruby"
}


module["Key"]["Bronze Key"] = {
	Rarity = "Common",
	Description = "A key used to open Bronze chests.",
	SubType = "Bronze"
}

module["Key"]["Silver Key"] = {
	Rarity = "Uncommon",
	Description = "A key used to open Silver chests.",
	SubType = "Silver"
}

module["Key"]["Gold Key"] = {
	Rarity = "Uncommon",
	Description = "A key used to open Gold chests.",
	SubType = "Gold"
}

module["Key"]["Sapphire Key"] = {
	Rarity = "Rare",
	Description = "A key used to open Sapphire chests.",
	SubType = "Sapphire"
}

module["Key"]["Emerald Key"] = {
	Rarity = "Epic",
	Description = "A key used to open Emerald chests.",
	SubType = "Emerald"
}

module["Key"]["Ruby Key"] = {
	Rarity = "Legendary",
	Description = "A key used to open Ruby chests.",
	SubType = "Ruby"
}

return module

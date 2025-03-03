local module = {}

-- Common
module["Rusty Cutlass"] = { 
	Damage = 4,
	Rarity = "Common",
	Description = "A rusty cutlass useful for learning.",
	SubType = "Cutlass",
	Level = 1,
	SellPrice = 3
}
module["Training Sabre"] = { 
	Damage = 3,
	Rarity = "Common",
	Description = "A rusty sabre useful for learning.",
	SubType = "Sabre",
	Level = 1,
	SellPrice = 2
}
module["Brine Cutlass"] = { 
	Damage = 5,
	Rarity = "Common",
	Description = "A seaworn cutlass often found on sunken ships.",
	SubType = "Cutlass",
	Level = 1,
	SellPrice = 4
}

-- Uncommon
module["Ironvein Cutlass"] = { 
	Damage = 9,
	Rarity = "Uncommon",
	Description = "A sturdy cutlass forged from iron-rich veins.",
	SubType = "Cutlass",
	Level = 8,
	SellPrice = 10
}
module["Ironvein Sabre"] = { 
	Damage = 8,
	Rarity = "Uncommon",
	Description = "A durable sabre crafted from iron ore.",
	Level = 6,
	SellPrice = 8
}
module["Pyrestone Sabre"] = { 
	Damage = 7,
	Rarity = "Uncommon",
	Description = "A sabre infused with the essence of flames.",
	SubType = "Sabre",
	Level = 4,
	SellPrice = 7
}

-- Rare
module["Krakenfang Cutlass"] = { 
	Damage = 13,
	Rarity = "Rare",
	Description = "A cutlass said to be made from the fangs of a legendary sea beast.",
	SubType = "Cutlass",
	Level = 15,
	SellPrice = 50
}
module["Gleam Cutlass"] = { 
	Damage = 12,
	Rarity = "Rare",
	Description = "A brilliantly polished cutlass that gleams in the light.",
	SubType = "Cutlass",
	Level = 14,
	SellPrice = 40
}
module["Watervein Cutlass"] = { 
	Damage = 11,
	Rarity = "Rare",
	Description = "A cutlass that flows with the energy of the tides.",
	SubType = "Cutlass",
	Level = 13,
	SellPrice = 30,
}

-- Epic
module["Bloodheart Cutlass"] = { 
	Damage = 17,
	Rarity = "Epic",
	Description = "A sinister cutlass rumored to thirst for battle.",
	SubType = "Cutlass",
	Level = 21,
	SellPrice = 230,
}
module["Viperfang Sabre"] = { 
	Damage = 16,
	Rarity = "Epic",
	Description = "A sabre coated in venom, striking swift and deadly.",
	SubType = "Sabre",
	Level = 19,
	SellPrice = 200,
}
module["Shadowgold Sabre"] = { 
	Damage = 15,
	Rarity = "Epic",
	Description = "A mysterious sabre forged from darkened gold.",
	SubType = "Sabre",
	Level = 17,
	SellPrice = 180,
}

-- Legendary
module["Goldblade Sabre"] = { 
	Damage = 27,
	Rarity = "Legendary",
	Description = "A sabre of pure gold, radiating untold power.",
	SubType = "Sabre",
	Level = 25,
	SellPrice = 550,
}
module["Viperfang Cutlass"] = { 
	Damage = 24,
	Rarity = "Legendary",
	Description = "A cutlass of unmatched precision, infused with lethal venom.",
	SubType = "Cutlass",
	Level = 23,
	SellPrice = 480,
}

return module
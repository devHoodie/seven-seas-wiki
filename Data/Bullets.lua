return {
	["Lead Shot"] = {ID = 1, Damage = 4, Rarity = "Common"},
	["Venom Shot"] = {ID = 2, Damage = 11, Rarity = "Common", Price = 5, EffectName = "Venoms", Effect = {"DOT", Color3.new(0,.8, 0), 4, 2, 4}},
	["Bane Shot"] = {ID = 3, Damage = 16, Rarity = "Uncommon", Price = 10, EffectName = "Weakens", Effect = {"Weaken", Color3.new(0.105882, 0.105882, 0.105882), .75, 4}},
	["Drag Shot"] = {ID = 4, Damage = 22, Rarity = "Rare", Price = 25, EffectName = "Slows", Effect = {"Slow", Color3.new(0.8, 0.647059, 0.0392157), .6, 3}},
	["Silver Shot"] = {ID = 5, Damage = 45, Rarity = "Epic", Price = 65, EffectName = "Undead bonus", Bonus = "Dead", Weakness = "Living"},
	["Steel Shot"] = {ID = 6, Damage = 55, Rarity = "Legendary", Price = 65, EffectName = "Living bonus", Bonus = "Living", Weakness = "Dead"},
}

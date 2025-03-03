local tq = {}

tq["TQ1"] = {
	ID = "TQ1",
	Name = "Treasure Map #1",
	Type = "TreasureMap",
	Prerequisites = {},
	ItemDescription = "The petals blossom on this beautiful flower",
	StartNPC = 6,
	Steps = {
		[1] = {
			Action = "Kill",
			Target = 1,
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			Description = "The sting is as sharp as a blade.",
		},
		[2] = {
			Action = "Sink",
			Target = "Navy Panther",
			Rewards = {
				{"XP", 1}
			},
			RequiredCount = 1,
			Description = "Grand lion of the ocean lives with royals",
		},
		[3] = {
			Action = "Dock",
			Target = "Tortuga",
			Rewards = {
				{"XP", 1}
			},
			Description = "In the shadow of the shell, pirates find port.",
		},
		[4] = {
			Action = "Talk",
			TargetNPC = 6, 
			Description = "The petals are finally blooming",
			Rewards = {
				{"XP", 1}
			}
		},
	},
	PossibleRewards = {
		Uncommon = {
			Items = {
				{"Gold Key Chest", "Key Chest", "Gold", {1,1}}
			},
			Rarity = 25,
		},
		Common = {
			Items = {
				{"Silver Key Chest", "Key Chest", "Silver", {1,1}}
			},
			Rarity = 75,
		},
	}
}

tq["TQ2"] = {
	ID = "TQ2",
	Name = "Treasure Map #2",
	Type = "TreasureMap",
	Prerequisites = {},
	ItemDescription =  "Never trust someone who's always smiling.",
	StartNPC = 4,
	Steps = {
		[1] = {
			Action = "Search",
			Target = "King's Arm",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "Where the crown's limb pours cheer, seek the hearth where ale runs clear.",
		},
		[2] = {
			Action = "Search",
			Target = "Kingshead",
			Rewards = {
				{"XP", 1}
			},
			RequiredCount = 1,
			ExtraInfo = "a clue",
			Description = "The crown protects a hidden treasure with fortress walls",
		},
		[3] = {
			Action = "Kill",
			Target = 9,
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			Description = "An ill-termpered yellow buzz strikes the unruly",
		},
		[4] = {
			Action = "Search",
			Target = "Skeleton Yard",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "Bones are heard shackling in the burrow site",
		},
		[5] = {
			Action = "Talk",
			TargetNPC = 4, 
			Description = "A thief is sometimes a friend in plain sight.",
			Rewards = {
				{"XP", 1}
			}
		},
	},
	PossibleRewards = {
		Rare = {
			Items = {
				{"Sapphire Key Chest", "Key Chest", "Sapphire", {1,1}}
			},
			Rarity = 10,
		},
		Uncommon = {
			Items = {
				{"Gold Key Chest", "Key Chest", "Gold", {1,1}}
			},
			Rarity = 30,
		},
		Common = {
			Items = {
				{"Silver Key Chest", "Key Chest", "Silver", {1,1}}
			},
			Rarity = 60,
		},
	}
}

tq["TQ3"] = {
	ID = "TQ3",
	Name = "Treasure Map #3",
	Type = "TreasureMap",
	Prerequisites = {},
	ItemDescription =  "A legend flaps it's wings across the ocean",
	StartNPC = 5,
	Steps = {
		[1] = {
			Action = "Dig",
			Target = "Cove's edge",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "The sand falls through your fingers beneath cove's sunken pyre",
		},
		[2] = {
			Action = "Kill",
			Target = 3,
			RequiredCount = 1,
			Rewards = {
				{"XP", 1},
			},
			Description = "The royal sea blasts with explosive power",
		},
		[3] = {
			Action = "Kill",
			Target = 4,
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			Description = "A spectral ghost has possessed the undead",
		},
		[4] = {
			Action = "Search",
			Target = "Rascal's Rose cabin",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "A red thorn hides it's treasure in timber",
		},
		[5] = {
			Action = "Talk",
			TargetNPC = 5, 
			Description = "The feathers land at their final destination",
			Rewards = {
				{"XP", 1}
			}
		},
	},
	PossibleRewards = {
		Rare = {
			Items = {
				{"Sapphire Key Chest", "Key Chest", "Sapphire", {1,1}}
			},
			Rarity = 10,
		},
		Uncommon = {
			Items = {
				{"Gold Key Chest", "Key Chest", "Gold", {1,1}}
			},
			Rarity = 30,
		},
		Common = {
			Items = {
				{"Silver Key Chest", "Key Chest", "Silver", {1,1}}
			},
			Rarity = 60,
		},
	}
}

tq["TQ4"] = {
	ID = "TQ4",
	Name = "Treasure Map #4",
	Type = "TreasureMap",
	Prerequisites = {},
	ItemDescription =  "The hammer smashes iron casts with grace of fire",
	StartNPC = 2,
	Steps = {
		[1] = {
			Action = "Dig",
			Target = "Practice Yard",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "Silent mates take your blows, dig where steel meets soil.",
		},
		[2] = {
			Action = "Search",
			Target = "Webb Whiteley",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "Search for a web of lies that leads to capture",
		},
		[3] = {
			Action = "Talk",
			TargetNPC = 3, 
			Description = "Seek the guide of the sea's might",
			Rewards = {
				{"XP", 1}
			}
		},
		[4] = {
			Action = "Sink",
			Target = "Navy Greyhound",
			Rewards = {
				{"XP", 1}
			},
			RequiredCount = 1,
			Description = "A tamed wolf swims with ferocious speeds",
		},
		[5] = {
			Action = "Dig",
			Target = "Kingshead Stairs",
			RequiredCount = 1,
			Rewards = {
				{"XP", 1}
			},
			ExtraInfo = "a clue",
			Description = "The stairs of royalty sink beneath the sand",
		},
		[6] = {
			Action = "Talk",
			TargetNPC = 2, 
			Description = "A corrupted blade has been restored",
			Rewards = {
				{"XP", 1}
			}
		},
	},
	PossibleRewards = {
		Epic = {
			Items = {
				{"Emerald Key Chest", "Key Chest", "Emerald", {1,1}}
			},
			Rarity = 10,
		},
		Rare = {
			Items = {
				{"Sapphire Key Chest", "Key Chest", "Sapphire", {1,1}}
			},
			Rarity = 35,
		},
		Uncommon = {
			Items = {
				{"Gold Key Chest", "Key Chest", "Gold", {1,1}}
			},
			Rarity = 35,
		},
		Common = {
			Items = {
				{"Silver Key Chest", "Key Chest", "Silver", {1,1}}
			},
			Rarity = 20,
		},
	}
}

return tq

return {
	ID = 3,
	NPCName = "Cap’n Avenor",
	Talk = {
		[1] = {
			NPC = "Matey! What brings you here?",
			Player = {
				{"I need a quest!", 2},
				{"Maybe later..", 2},
			}
		},
		[2] = {
			NPC = "Talk to Albert Sparrow in King's Arm if you haven't yet.",
			Player = {
				{"Where is King's Arm?", 4},
			}
		},
		[3] =  "EXIT",
		[4] = {
			NPC = "The tavern on this island. It has a cup on the sign.",
			Player = {
				{"Thank you.", 3},
			}
		},
	},
	TreasureMapQuests = {
		["TQ4"] = {
			Steps = {
				[3] = {
					[1] = {
						NPC = "Here I have a clue for you.",
						Player = {
							{"Thank you!", 2, "ProgressQuest", "TQ4"},
						}
					},
					[2] = "EXIT",
				}
			},
		}
	},
	QuestResponses = {
		
	}
}
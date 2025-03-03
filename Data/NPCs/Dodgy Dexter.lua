return {
	ID = 4,
	NPCName = "Dodgy Dexter",
	Talk = {
		[1] = {
			NPC = "Yo, what do you need?",
			Player = {
				{"What do you do around here?", 2},
				{"Got any jobs for me?", 3}, 
				{"Maybe later!", 4},    
			}
		},
		[2] = {
			NPC = "I buy your junk items. Give em to me!",
			Player = {
				{"That's pretty useful!", 4},
				{"Why?", 5},
			}
		},
		[3] =  {
			NPC = "Na, just bring me junk and I'll buy it!",
			Player = {
				{"Sure... why?", 5},
			}
		},
		[4] = "EXIT",
		[5] = {
			NPC = "So I can resell it of course!",
			Player = {
				{"Ah.. of course!", 4},
			}
		}
	},
	
	TreasureMapQuests = {
		["TQ2"] = {
			Steps = {
				[1] = {
					[1] = {
						NPC = "You found me! Here, take this treasure map. I can't seem to figure it out.",
						Player = {
							{"I'm on it.", "StartQuest", "TQ2"},
						}
					},
					[2] = "EXIT",
				},
				[5] = {
					[1] = {
						NPC = "You did it! Here's your reward.",
						Player = {
							{"Thank you!", 2, "ProgressQuest", "TQ2"},
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
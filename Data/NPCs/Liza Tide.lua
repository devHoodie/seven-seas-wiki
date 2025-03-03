return {
	ID = 8,
	NPCName = "Liza Tide",
	Talk = {
		[1] = {
			NPC = "Thank you for saving me from the navy.",
			Player = {
				{"I'd like to talk about a quest!", 4, "HASQUESTFROMNPC"},
				{"No problem!", 3},
				{"Got any jobs for me?", 2, "DAILYINFO", "Can we talk about the wasps?"}, 
			}
		},
		[2] =  "CHECK_DAILY_STATUS", 
		[3] =  "EXIT",
		[4] = {
			NPC = "What quest would you like to talk about?",
			Player = "GET_QUEST_RESPONSES"
		}
	},

	QuestResponses = {
		["Q1"] ={
			Steps = {
				[6] = {
					[1] = {
						NPC = "I can't believe I let the Navy catch me. Those fools..",
						Player = {
							{"It's okay, I have a question for you.", 2},
						}
					},
					[2] = {
						NPC = "What is it?",
						Player = {
							{"I was wondering if you wanted to rejoin Albert Sparrows crew.", 3},
						}
					},
					[3] = {
						NPC = "I don't know about that.. I think it's too risky.",
						Player = {
							{"Why do you think it's too risky?", 5},
						}
					},
					[4] = "EXIT",
					[5] = {
						NPC = "Albert has arrests warrants out from multiple countries.",
						Player = {
							{"Let me guess, you don't want to be arrested again?", 6},
						}
					},
					[6] = {
						NPC = "Correct. It's too scary. If he didn't have them, I would join.",
						Player = {
							{"Do you know where they keep these arrest warrants?", 7},
						}
					},
					[7] = {
						NPC = "Probably on Kingshead, though I wouldn't count on it.",
						Player = {
							{"Thanks, I'll be back soon.", 4, "ProgressQuest", "Q1"},
						}
					},
				},
				[9] = {
					[1] = {
						NPC = "Welcome back, any news?",
						Player = {
							{"Yes. I found Albert's arrest warrants.", 2},
						}
					},
					[2] = {
						NPC = "That's good, let me see them.",
						Player = {
							{"Here you go.", 3},
						}
					},
					[3] = {
						NPC = "...",
						Player = {
							{"...", 5},
						}
					},
					[4] = "EXIT",
					[5] = {
						NPC = "Ok this is awesome, I hope there isn't anymore.",
						Player = {
							{"Will you join Albert's crew?", 6},
						}
					},
					[6] = {
						NPC = "Alright sure, let me know when you guys need me.",
						Player = {
							{"Thanks! Albert will be happy to hear that.", 4, "ProgressQuest", "Q1"},
						}
					},
				}
			}
		}
	}
}
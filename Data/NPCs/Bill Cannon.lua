return {
	ID = 1,
	NPCName = "Bill Cannon",
	DailyInfo = {
		DailyQuestCooldown = 6 * 60 * 60,
		ID = "Q2",
		InProgress = {
			[1] = {
				NPC = "How's them ships coming along?",
				Player = {
					{"Still working on it.", 3},
					{"What do I have to do again?", 2},
				}
			},
			[2] = {
				NPC = "Sink $getDynamicRequirement:Sink and come back to me!",
				Player = {
					{"Okay, captain!", 3},
				}
			},
			[3] = "EXIT",
		},
		Completed = {
			[1] = {
				NPC = "Fine work with the ships matey! Here's yer reward!",
				Player = {
					{"Thanks!", 2, "ProgressQuest", "Q2"},
				}
			},
			[2] = "EXIT"
		},
		Available = {
			[1] = {
				NPC = "Arrr! I'm missing some ship materials to repair some ships.",
				Player = {
					{"I'll handle it!", 2},
					{"Maybe later..", 3}
				}
			},
			[2] = {
				NPC = "Sink $getDynamicRequirement:Sink and come back to me!",
				Player = {
					{"Aye aye, Captain!", "AcceptDailyQuest"},
					{"Maybe later..", 3}
				}
			},
			[3] = "EXIT"
		},
		NotAvailable = {
			[1] = {
				NPC = "I'll have another job for you in $getNextQuestTime",
				Player = {
					{"Ok, captain!", 2},
				}
			},
			[2] = "EXIT"
		}
	},

	Talk = {
		[1] = {
			NPC = "Ahoy matey! Here to work or just chatterboxin'?",
			Player = {
				{"How do ships work?", 2},
				{"Got any jobs for me?", 3, "DAILYINFO", "Can we talk about your ship materials?"}, 
				{"I'd like to talk about a quest!", 5, "HASQUESTFROMNPC"},    
				{"Maybe later, captain!", 4},    
			}
		},
		[2] = {
			NPC = "Ya sail where ya please! Take treasure from slowpoke navy ships - easy as pie!",
			Player = {
				{"Aye aye, makes sense!", 4},
				{"Got it! Any jobs right now?", 3, "DAILYINFO", "Can we talk about your ship materials?"}, 
			}
		},
		[3] = "CHECK_DAILY_STATUS",
		[4] = "EXIT",
		[5] = {
			NPC = "What quest would you like to talk about?",
			Player = "GET_QUEST_RESPONSES"
		}
	},
	
	QuestResponses = {
		["Q1"] ={
			Steps = {
				[1] = {
					[1] = {
						NPC = "test 1",
						Player = {
							{"test 2", 2},
							{"exit", 3},   
						}
					},
					[2] = {
						NPC = "text 3",
						Player = {
							{"exit", 3, "ProgressQuest", "Q1"},
						}
					},
					[3] = "EXIT",
				}
			}
		}
	}
}
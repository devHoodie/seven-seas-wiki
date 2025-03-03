return {
	ID = 2,
	NPCName = "Jack Smith",
	DailyInfo = {
		DailyQuestCooldown = 6 * 60 * 60,
		ID = "Q3",
		InProgress = {
			[1] = {
				NPC = "What's the deal with those enemies?",
				Player = {
					{"Still working on it.", 3},
					{"What do I have to do again?", 2},
				}
			},
			[2] = {
				NPC = "Kill $getDynamicRequirement:Kill and come back to me!",
				Player = {
					{"Okay, captain!", 3},
				}
			},
			[3] = "EXIT",
		},
		Completed = {
			[1] = {
				NPC = "Thank you for taking down those enemies. Here's your reward.",
				Player = {
					{"Of course!", 2, "ProgressQuest", "Q3"},
				}
			},
			[2] = "EXIT"
		},
		Available = {
			[1] = {
				NPC = "There are some enemies threatning to take our land..",
				Player = {
					{"What do you need?", 2},
					{"Maybe later..", 3}
				}
			},
			[2] = {
				NPC = "Kill $getDynamicRequirement:Kill to clear our lands!",
				Player = {
					{"Aye, I'm on it!", "AcceptDailyQuest"},
					{"Maybe later..", 3}
				}
			},
			[3] = "EXIT"
		},
		NotAvailable = {
			[1] = {
				NPC = "I'll have another job for you in $getNextQuestTime",
				Player = {
					{"Ok!", 2},
				}
			},
			[2] = "EXIT"
		}
	},
	Talk = {
		[1] = {
			NPC = "Ahoy! What burns in yer powder keg?",
			Player = {
				{"What's yer iron menu, matey?", 2},
				{"Got any jobs for me?", 3, "DAILYINFO", "Can we talk about the enemies?"}, 
				{"I'd like to talk about a quest!", 5, "HASQUESTFROMNPC"},    
				{"Maybe later!", 4},    
			}
		},
		[2] = {
			NPC = "Cannonballs that crack hulls! Pistol shot that bites! Take yer pick!",
			Player = {
				{"Aye, sounds like a good deal.", 4},
				{"Anything you need help with?", 3, "DAILYINFO", "Can we talk about the enemies?"}, 
			}
		},
		[3] = "CHECK_DAILY_STATUS",
		[4] = "EXIT",
		[5] = {
			NPC = "What quest would you like to talk about?",
			Player = "GET_QUEST_RESPONSES"
		}
	},
	TreasureMapQuests = {
		["TQ4"] = {
			Steps = {
				[1] = {
					[1] = {
						NPC = "You found me! Here, take this treasure map. I can't seem to figure it out.",
						Player = {
							{"I'm on it.", "StartQuest", "TQ4"},
						}
					},
					[2] = "EXIT",
				},
				[6] = {
					[1] = {
						NPC = "You did it! Here's your reward.",
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
return {
	ID = 5,
	NPCName = "Albert Sparrow",
	Quests = {
		"Q1",	
	},
	Talk = {
		[1] = {
			NPC = "What do you want..?",
			Player = {
				{"What are you doing here all alone?", 2, "ProgressQuest", "Q0"},
				{"Maybe later, captain!", 4},    
			}
		},
		[2] = {
			NPC = "Well.. my crew left me. I don't know what else to do..",
			Player = {
				{"Why did they leave?", 3},
			}
		},
		[3] = {
			NPC = "The Navy took our ship. There's nothing we can do without one!",
			Player = {
				{"Want help getting your ship back?", 5},
				{"Talk to you later!", 4},
			}
		},
		[4] = "EXIT",
		[5] = {
			NPC = "Well first you'll need to convince the crew to work for us.",
			Player = {
				{"I'm on it, where do I start?", 6},
				{"Nevermind, maybe later.", 4},
			}
		},
		[6] = {
			NPC = "Find Rascal Rose. She'll know what to do.",
			Player = {
				{"Ok, see you soon.", "StartQuest", "Q1"},
				{"Nevermind, maybe later.", 4},
			}
		},
	},
	DuringQuest = {
		["Q1"] = {
			[1] = {
				NPC = "What's up?",
				Player = {
					{"How are you doing?", 3},
					{"I'd like to talk about a quest!", 2, "HASQUESTFROMNPC"},   
				}
			},
			[2] = {
				NPC = "What quest would you like to talk about?",
				Player = "GET_QUEST_RESPONSES"
			},
			[3] = {
				NPC = "I'm doing better. You've given me hope.",
				Player = {
					{"That's good to hear.", 4},
				}
			},
			[4] = "EXIT"
		}
	},
	AfterQuest = {
		["Q1"] = {
			[1] = {
				NPC = "Thank you for saving our ship and bring us back together.",
				Player = {
					{"Of course! Any time.", 2},
				}
			},
			[2] = "EXIT"
		}
	},
	QuestResponses = {
		["Q1"] ={
			Steps = {
				[3] = {
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
	},
	TreasureMapQuests = {
		["TQ3"] = {
			Steps = {
				[1] = {
					[1] = {
						NPC = "You found me! Here, take this treasure map. I can't seem to figure it out.",
						Player = {
							{"I'm on it.", "StartQuest", "TQ3"},
						}
					},
					[2] = "EXIT",
				},
				[5] = {
					[1] = {
						NPC = "You did it! Here's your reward.",
						Player = {
							{"Thank you!", 2, "ProgressQuest", "TQ3"},
						}
					},
					[2] = "EXIT",
				}
			},
		}
	},
}
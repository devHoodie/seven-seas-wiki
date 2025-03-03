return {
	ID = 6,
	NPCName = "Rascal Rose",
	Quests = {"Q1"},
	Talk = {
		[1] = {
			NPC = "You seem new around here.",
			Player = {
				{"Why do you say that?", 2},  
				{"I'd like to talk about a quest!", 4, "HASQUESTFROMNPC"},  
				{"See you later.", 3},    
			}
		},
		[2] = {
			NPC = "Well just look at you!",
			Player = {
				{"That's not very nice..", 3},
			}
		},
		[3] = "EXIT",
		[4] = {
			NPC = "What quest would you like to talk about?",
			Player = "GET_QUEST_RESPONSES"
		},
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
	TreasureMapQuests = {
		["TQ1"] = {
			Steps = {
				[1] = {
					[1] = {
						NPC = "You found me! Here, take this treasure map. I can't seem to figure it out.",
						Player = {
							{"I'm on it.", "StartQuest", "TQ1"},
						}
					},
					[2] = "EXIT",
				},
				[4] = {
					[1] = {
						NPC = "You did it! Here's your reward.",
						Player = {
							{"Thank you!", 2, "ProgressQuest", "TQ1"},
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
						NPC = "Albert mentioned you'd be coming.",
						Player = {
							{"So you know what I'm here for.", 2},
							{"Nevermind.", 4},   
						}
					},
					[2] = {
						NPC = "Yeah I heard you want some information on his old crew.",
						Player = {
							{"Yeah, can you help me?", 3}, 
							--{"exit", 3, "ProgressQuest", "Q1"},
							{"Nevermind.", 4}, 
						}
					},
					[3] = {
						NPC = "Well it's going to cost you.",
						Player = {
							{"What do you need?", 5},
							{"Nevermind.", 4},   
						}
					},
					[4] = "EXIT",
					[5] = {
						NPC = "I need some scorpion eyes for a potion, but I can't bring myself to kill them.",
						Player = {
							{"I'll do it. How many do you need?", 6},
							{"Nevermind.", 4},   
						}
					},
					[6] = {
						NPC = "Five should do the trick.",
						Player = {
							{"I'll be back soon.", 4, "ProgressQuest", "Q1"},
						}
					},
				},
				[3] = {
					[1] = {
						NPC = "Thank you for the scorpion eyes.",
						Player = {
							{"No problem, can you tell me about Albert's crew?", 2},
						}
					},
					[2] = {
						NPC = "One his shipmates, Webb Whiteley, was arrested by the Navy.",
						Player = {
							{"Do you know where I can find him?", 3}, 
							--{"exit", 3, "ProgressQuest", "Q1"},
							{"Nevermind.", 4}, 
						}
					},
					[3] = {
						NPC = "Probably on a Navy Panther out in the ocean.",
						Player = {
							{"I'll go find him.", 4, "ProgressQuest", "Q1"},
							{"Nevermind.", 4},   
						}
					},
					[4] = "EXIT",
				},
				[10] = {
					[1] = {
						NPC = "Welcome back, how did it go with Whiteley?",
						Player = {
							{"I was able to save him and he agreed to rejoin the crew.", 2},
						}
					},
					[2] = {
						NPC = "That's good to hear. The next person you should probably bring in is Liza Tide",
						Player = {
							{"Do you know where I can find her?", 3}, 
							--{"exit", 3, "ProgressQuest", "Q1"},
							{"Nevermind.", 4}, 
						}
					},
					[3] = {
						NPC = "She hangs around Tortuga most days. That's really all I know about her.",
						Player = {
							{"I'll go find her.", 4, "ProgressQuest", "Q1"},
							{"Nevermind.", 4},   
						}
					},
					[4] = "EXIT",
				},
			}
		}
	}
}
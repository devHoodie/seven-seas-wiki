// Game Data
const gameData = {
    ships: {
        "Light Sloop": {
            Index: 1,
            Name: "Light Sloop",
            CargoHold: 6,
            MaxPlayers: 4,
            Health: 800,
            SailHealth: 400,
            CannonMaxDistance: 125,
            CannonMinDistance: 10,
            Price: 100,
            Cannons: 4,
            CargoRarities: [
                { type: "Treasure Chest", chance: 90 },
                { type: "Loot Pouch", chance: 70 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Silver", chance: 70 },
                { type: "Bronze", chance: 20 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Ferret"
        },
        "Light Barque": {
            Index: 2,
            Name: "Light Barque",
            CargoHold: 8,
            MaxPlayers: 5,
            Health: 1250,
            SailHealth: 600,
            CannonMaxDistance: 185,
            CannonMinDistance: 10,
            Price: 350,
            Cannons: 6,
            CargoRarities: [
                { type: "Treasure Chest", chance: 70 },
                { type: "Loot Pouch", chance: 50 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Silver", chance: 65 },
                { type: "Bronze", chance: 15 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Panther"
        },
        "Light Galleon": {
            Index: 3,
            Name: "Light Galleon",
            CargoHold: 10,
            MaxPlayers: 6,
            Health: 1650,
            SailHealth: 850,
            CannonMaxDistance: 165,
            CannonMinDistance: 10,
            Price: 750,
            Cannons: 6,
            CargoRarities: [
                { type: "Treasure Chest", chance: 65 },
                { type: "Loot Pouch", chance: 45 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Silver", chance: 55 },
                { type: "Bronze", chance: 5 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Bulwark"
        },
        "Sloop": {
            Index: 4,
            Name: "Sloop",
            CargoHold: 9,
            MaxPlayers: 8,
            Health: 2500,
            SailHealth: 1000,
            CannonMaxDistance: 235,
            CannonMinDistance: 10,
            Price: 1250,
            Cannons: 8,
            CargoRarities: [
                { type: "Skull Chest", chance: 95 },
                { type: "Loot Chest", chance: 85 },
                { type: "Treasure Chest", chance: 45 },
                { type: "Loot Pouch", chance: 25 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Emerald", chance: 99 },
                { type: "Sapphire", chance: 93 },
                { type: "Gold", chance: 80 },
                { type: "Silver", chance: 65 },
                { type: "Bronze", chance: 20 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Greyhound"
        },
        "Barque": {
            Index: 5,
            Name: "Barque",
            CargoHold: 12,
            MaxPlayers: 9,
            Health: 3500,
            SailHealth: 1200,
            CannonMaxDistance: 300,
            CannonMinDistance: 25,
            Price: 1950,
            Cannons: 8,
            CargoRarities: [
                { type: "Skull Chest", chance: 90 },
                { type: "Loot Chest", chance: 75 },
                { type: "Treasure Chest", chance: 35 },
                { type: "Loot Pouch", chance: 15 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Emerald", chance: 98 },
                { type: "Sapphire", chance: 90 },
                { type: "Gold", chance: 70 },
                { type: "Silver", chance: 55 },
                { type: "Bronze", chance: 10 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Centurion"
        },
        "Galleon": {
            Index: 6,
            Name: "Galleon",
            CargoHold: 14,
            MaxPlayers: 10,
            Health: 4350,
            SailHealth: 1400,
            CannonMaxDistance: 265,
            CannonMinDistance: 25,
            Price: 2500,
            Cannons: 12,
            CargoRarities: [
                { type: "Skull Chest", chance: 90 },
                { type: "Loot Chest", chance: 75 },
                { type: "Treasure Chest", chance: 35 },
                { type: "Loot Pouch", chance: 15 },
                { type: "Cargo Crate", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Emerald", chance: 97 },
                { type: "Sapphire", chance: 85 },
                { type: "Gold", chance: 45 },
                { type: "Silver", chance: 20 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Vanguard"
        },
        "War Sloop": {
            Index: 7,
            Name: "War Sloop",
            CargoHold: 16,
            MaxPlayers: 12,
            Health: 6500,
            SailHealth: 2500,
            CannonMaxDistance: 300,
            CannonMinDistance: 10,
            Price: 8500,
            Cannons: 14,
            CargoRarities: [
                { type: "Royal Chest", chance: 97 },
                { type: "Skull Chest", chance: 75 },
                { type: "Loot Chest", chance: 50 },
                { type: "Treasure Chest", chance: 20 },
                { type: "Loot Pouch", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Ruby", chance: 97 },
                { type: "Emerald", chance: 80 },
                { type: "Sapphire", chance: 60 },
                { type: "Gold", chance: 35 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Kingfisher"
        },
        "War Barque": {
            Index: 8,
            Name: "War Barque",
            CargoHold: 20,
            MaxPlayers: 16,
            Health: 9500,
            SailHealth: 2850,
            CannonMaxDistance: 450,
            CannonMinDistance: 25,
            Price: 13500,
            Cannons: 16,
            CargoRarities: [
                { type: "Royal Chest", chance: 96 },
                { type: "Skull Chest", chance: 65 },
                { type: "Loot Chest", chance: 25 },
                { type: "Treasure Chest", chance: 10 },
                { type: "Loot Pouch", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Ruby", chance: 96 },
                { type: "Emerald", chance: 74 },
                { type: "Sapphire", chance: 50 },
                { type: "Gold", chance: 10 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Man O' War"
        },
        "War Galleon": {
            Index: 9,
            Name: "War Galleon",
            CargoHold: 24,
            MaxPlayers: 18,
            Health: 12000,
            SailHealth: 3550,
            CannonMaxDistance: 400,
            CannonMinDistance: 40,
            Price: 18500,
            Cannons: 20,
            CargoRarities: [
                { type: "Royal Chest", chance: 95 },
                { type: "Skull Chest", chance: 65 },
                { type: "Loot Chest", chance: 25 },
                { type: "Treasure Chest", chance: 10 },
                { type: "Loot Pouch", chance: 0 }
            ],
            KeyChestRarities: [
                { type: "Ruby", chance: 95 },
                { type: "Emerald", chance: 80 },
                { type: "Sapphire", chance: 45 },
                { type: "Gold", chance: 10 },
                { type: "None", chance: 0 }
            ],
            NPCName: "Navy Monarch"
        }
    },
    shipNames: {
        First: [
            "Azure", "Barnacle", "Bilge", "Black", "Blade", "Blue", "Bountyhunter", "Buccaneer",
            "Crimson", "Cursed", "Cutthroat", "Dark", "Dark-blade", "Dark-sail", "Dark-water",
            "Dark-wind", "Driftwood", "Enchanted", "Eternal", "Fighting", "Fire-sail", "Floundering",
            "Fortune", "Freebooter", "Frost", "Fugitive", "Ghostly", "Golden", "Green", "Gun",
            "Gunwale", "Harbinger", "Headhunter", "Immortal", "Intrepid", "Iron", "Laughing",
            "Lightning", "Lone", "Marbled", "Midnight", "Moonraker", "Morning", "Mystical", "Night",
            "Noble", "Oblivion", "Obsidian", "Outlaw", "Radiant", "Ravager", "Red", "Renegade",
            "Riptide", "Rusty", "Sapphire", "Savage", "Savvy", "Scallywag", "Scarlet", "Sea",
            "Shadow", "Silent", "Silver", "Siren", "Skysail", "Spectral", "Star-chaser", "Storm",
            "Storm-sail", "Sun", "Swift", "The", "Tide", "Twilight", "Unyielding", "Vagrant",
            "Velvet", "Victory", "Viridian", "Wanderer", "Wave", "White", "Wicked", "Wind-racer",
            "Windjammer", "Yellow", "Zephyr"
        ],
        Second: [
            "Albatross", "Avenger", "Banshee", "Basilisk", "Beacon", "Brig", "Brigand", "Bull",
            "Champion", "Chariot", "Cobra", "Comet", "Conqueror", "Corsair", "Crest", "Cutter",
            "Dancer", "Defender", "Demon", "Despoiler", "Destroyer", "Dog", "Dragon", "Eagle",
            "Eclipse", "Eel", "Enchantress", "Eternity", "Executioner", "Explorer", "Falcon",
            "Firelight", "Fish", "Forager", "Fox", "Frostfire", "Fury", "General", "Goddess",
            "Griffin", "Guardian", "Harpoon", "Hawk", "Horizon", "Hunter", "Inferno", "Juggernaut",
            "King", "Knight", "Legend", "Leopard", "Lion", "Maelstrom", "Mariner", "Mercenary",
            "Mermaid", "Minnow", "Mongrel", "Monarch", "Moonracer", "Navigator", "Nemesis",
            "Nightshade", "Odyssey", "Phantom", "Phoenix", "Pillager", "Plunderer", "Privateer",
            "Prowler", "Queen", "Raider", "Ransom", "Rapscallion", "Raptor", "Raven", "Reaver",
            "Rebel", "Rescuer", "Revenge", "Rogue", "Rose", "Runner", "Sabre", "Seafarer",
            "Seeker", "Sentinel", "Serpent", "Shark", "Shadowclaw", "Song", "Specter", "Stallion",
            "Star", "Starborn", "Starfire", "Starlight", "Strider", "Sultan", "Squall", "Swan",
            "Tempest", "Thunder", "Tiger", "Titan", "Treasure", "Trident", "Tsunami", "Vanguard",
            "Viking", "Vindicator", "Voyager", "Walker", "Warrior", "Widow", "Witch", "Wolf",
            "Wraith", "Wrath"
        ]
    },
    cannonballs: {
        "Round Shot": {
            ID: 1,
            Rarity: "Common",
            Price: 0,
            Name: "Round Shot",
            Shots: 3,
            Cooldown: 0.85,
            ReloadTime: 1.5,
            BaseTravelTime: 0.85,
            MaxTravelDistance: 350,
            MinTravelDistance: 5,
            Damages: {
                Sail: 20,
                Hull: 40
            },
            Description: "A basic all around cannonball"
        },
        "Chain Shot": {
            ID: 2,
            Rarity: "Common",
            Price: 2,
            Name: "Chain Shot",
            Shots: 3,
            Cooldown: 0.85,
            ReloadTime: 1.5,
            BaseTravelTime: 1,
            MaxTravelDistance: 250,
            MinTravelDistance: 5,
            Damages: {
                Sail: 70,
                Hull: 20
            },
            Description: "Cannonball effective against masts and sails"
        },
        "Firebrand": {
            ID: 3,
            Rarity: "Uncommon",
            Price: 4,
            Name: "Firebrand",
            Shots: 3,
            Cooldown: 1.1,
            ReloadTime: 1.5,
            BaseTravelTime: 0.95,
            MaxTravelDistance: 400,
            MinTravelDistance: 30,
            Damages: {
                Sail: 25,
                Hull: 65
            },
            Description: "Cannonball that does good damage to hulls."
        },
        "Thunderbolt": {
            ID: 4,
            Rarity: "Rare",
            Price: 10,
            Name: "Thunderbolt",
            Shots: 3,
            Cooldown: 2,
            ReloadTime: 1.5,
            BaseTravelTime: 0.7,
            MaxTravelDistance: 535,
            MinTravelDistance: 40,
            Damages: {
                Sail: 175,
                Hull: 145
            },
            Description: "Cannonball that travels fast and has high damage overall.."
        },
        "Explosive": {
            ID: 5,
            Rarity: "Epic",
            Price: 14,
            Name: "Explosive",
            Shots: 3,
            Cooldown: 4,
            ReloadTime: 1.5,
            BaseTravelTime: 1.3,
            MaxTravelDistance: 150,
            MinTravelDistance: 25,
            Damages: {
                Sail: 55,
                Hull: 350
            },
            Description: "Cannonball that does heavy damage to hulls."
        },
        "Fury": {
            ID: 6,
            Rarity: "Legendary",
            Price: 20,
            Name: "Fury",
            Shots: 3,
            Cooldown: 1.3,
            ReloadTime: 1.5,
            BaseTravelTime: 0.85,
            MaxTravelDistance: 400,
            MinTravelDistance: 45,
            Damages: {
                Sail: 250,
                Hull: 250
            },
            Description: "A furious cannonball"
        }
    },
    bullets: {
        // We'll need to get these from Bullets.lua
    },
    enemies: {
        // We'll need to get these from Enemies.lua
    },
    itemTypes: {
        // We'll need to get these from ItemTypes.lua
    },
    plunder: {
        // We'll need to get these from Plunder.lua
    },
    gamepasses: {
        // We'll need to get these from Gamepasses.lua
    },
    sounds: {
        // We'll need to get these from Sounds.lua
    },
    icons: {
        // We'll need to get these from Icons.lua
    },
    skills: {
        
        "Sword": {
            Name: "Sword",
            Passives: [
                {
                    Name: "Duelist's Grace",
                    Description: "Increased movement speed by %% while equipped",
                    BonusPerPoint: 5,
                    Level: 6,
                    Image: "rbxassetid://110333298053033"
                },
                {
                    Name: "Endurance",
                    Description: "Increased character maximum health by %%",
                    BonusPerPoint: 2,
                    Level: 12,
                    Image: "rbxassetid://122835144072989"
                }
            ],
            Actions: [
                {
                    Index: 1,
                    Level: 1,
                    Description: "Sweep",
                    Image: "rbxassetid://17638460356",
                    Text: "A wide circular slash that hits all nearby enemies.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 2,
                    Level: 3,
                    Description: "Brawl",
                    Image: "rbxassetid://17638498534",
                    Text: "Fight dirty by punching an enemy! Slows for a short time.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 3,
                    Level: 7,
                    Description: "Parry",
                    Image: "rbxassetid://125975453304874",
                    Text: "Blocks incoming attacks for 2 seconds.",
                    BonusPerPoint: 0.5,
                    BonusType: "s"
                },
                {
                    Index: 4,
                    Level: 13,
                    Description: "Bladestorm",
                    Image: "rbxassetid://111534453912110",
                    Text: "A barrage of quick slashes with a devastating final blow.",
                    BonusPerPoint: 5,
                    BonusType: " Damage"
                },
                {
                    Index: 5,
                    Level: 19,
                    Description: "Heal",
                    Image: "rbxassetid://91660827443683",
                    Text: "Heals you for 20% of your max health instantly.",
                    BonusPerPoint: 2,
                    BonusType: "%"
                },
                {
                    Index: 6,
                    Level: 26,
                    Description: "Strike",
                    Image: "rbxassetid://113388742037463",
                    Text: "Your next slash deals 200% more damage.",
                    BonusPerPoint: 10,
                    BonusType: "%"
                }
            ]
        },
        "Gun": {
            Name: "Gun",
            Passives: [
                {
                    Name: "Dodge",
                    Description: "%% chance to dodge projectiles from ranged enemies",
                    BonusPerPoint: 2,
                    Level: 6,
                    Image: "rbxassetid://78107705579815"
                },
                {
                    Name: "Lucky Shot",
                    Description: "%% chance to not use ammo when firing",
                    BonusPerPoint: 2,
                    Level: 16,
                    Image: "rbxassetid://109863560637865"
                }
            ],
            Actions: [
                {
                    Index: 1,
                    Level: 1,
                    Description: "Lead Shot",
                    Image: "rbxassetid://109863560637865",
                    Text: "Standard ammunition, a basic lead ball with unlimited use. 4 base damage.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 2,
                    Level: 2,
                    Description: "Venom Shot",
                    Image: "rbxassetid://131905711455328",
                    Text: "A lead ball coated with deadly poison. 11 base damage.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 3,
                    Level: 6,
                    Description: "Bane Shot",
                    Image: "rbxassetid://81128744045671",
                    Text: "A strong bullet cursed by Davy Jones himself. Decreases attack power by 25%. 16 base damage.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 4,
                    Level: 10,
                    Description: "Drag Shot",
                    Image: "rbxassetid://121715186089314",
                    Text: "A brass polished bullet that slow down your target. 22 base damage.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                },
                {
                    Index: 5,
                    Level: 17,
                    Description: "Silver Shot",
                    Image: "rbxassetid://131751109487573",
                    Text: "A bullet made of solid silver. Powerful against the undead but ineffective against the living. 45 base damage.",
                    BonusPerPoint: 3,
                    BonusType: " Damage"
                }
            ]
        },
        "Sailing": {
            Name: "Sailing",
            Passives: [
                {
                    Name: "Windcatcher",
                    Description: "Harness the power of the wind: %% increase in speed",
                    BonusPerPoint: 3,
                    Level: 4,
                    Image: "rbxassetid://121305795964881"
                },
                {
                    Name: "Tacking",
                    Description: "Learn to turn your ship faster: %% increase in turning radius",
                    BonusPerPoint: 2,
                    Level: 9,
                    Image: "rbxassetid://87356015056169"
                },
                {
                    Name: "Captain's Trust",
                    Description: "Outgoing damage increased by %% more damage while steering",
                    BonusPerPoint: 1,
                    Level: 14,
                    Image: "rbxassetid://110308802983202"
                }
            ],
            Actions: [
                {
                    Index: 1,
                    Level: 1,
                    Description: "Portside Cannons",
                    Image: "rbxassetid://17172501644",
                    Type: "Charging",
                    Text: "Shoots your portside cannons. Charge it to shoot further.",
                    BonusPerPoint: -0.5,
                    BonusType: "s Cooldown"
                },
                {
                    Index: 2,
                    Level: 1,
                    Description: "Starboard Cannons",
                    Image: "rbxassetid://17172501469",
                    Type: "Charging",
                    Text: "Shoots your starboard cannons. Charge it to shoot further.",
                    BonusPerPoint: -0.5,
                    BonusType: "s Cooldown"
                },
                {
                    Index: 3,
                    Level: 4,
                    Description: "Full Sail",
                    Image: "rbxassetid://111414388062290",
                    Text: "Acceleration and max speed increased by 50% for 5 seconds",
                    BonusPerPoint: 3,
                    BonusType: "%"
                },
                {
                    Index: 4,
                    Level: 8,
                    Description: "Come About",
                    Image: "rbxassetid://119334598848604",
                    Text: "Turning speed increased by 50% for 4 seconds",
                    BonusPerPoint: 3,
                    BonusType: "%"
                },
                {
                    Index: 5,
                    Level: 16,
                    Description: "Open Fire",
                    Image: "rbxassetid://90670312845934",
                    Text: "All outgoing damage increased by 50% for 4 seconds",
                    BonusPerPoint: 3,
                    BonusType: "%"
                },
                {
                    Index: 6,
                    Level: 22,
                    Description: "Take Cover",
                    Image: "rbxassetid://105554205345668",
                    Text: "All incoming damage decreased by 75% for 3 seconds",
                    BonusPerPoint: 1,
                    BonusType: "%"
                }
            ]
        },
        "Cannoning": {
            Name: "Cannoning",
            Passives: [
                {
                    Name: "Shrapnel",
                    Description: "%% chance to splinter dealing an additional 1/3rd damage.",
                    BonusPerPoint: 2,
                    Level: 8,
                    Image: "rbxassetid://78273131053483"
                },
                {
                    Name: "Lucky Shot",
                    Description: "%% chance to not use a cannonball when firing",
                    BonusPerPoint: 2,
                    Level: 15,
                    Image: "rbxassetid://17171918913"
                }
            ],
            Actions: [
                {
                    Index: 1,
                    Level: 1,
                    Description: "Round Shot",
                    Image: "rbxassetid://17171918913",
                    Text: "The basic medium-ranged shot. Infinite ammo.",
                    BonusPerPoint: -0.05,
                    BonusType: "s cooldown"
                },
                {
                    Index: 2,
                    Level: 2,
                    Description: "Chain Shot",
                    Image: "rbxassetid://17171918798",
                    Text: "Two iron balls connected by a chain. Designed to tear down of sails and masts.",
                    BonusPerPoint: -0.05,
                    BonusType: "s cooldown"
                },
                {
                    Index: 3,
                    Level: 5,
                    Description: "Firebrand",
                    Image: "rbxassetid://77937918881880",
                    Text: "A flaming medium-range round capable of lighting ships on fire.",
                    BonusPerPoint: -0.05,
                    BonusType: "s cooldown"
                },
                {
                    Index: 4,
                    Level: 11,
                    Description: "Thunderbolt",
                    Image: "rbxassetid://112092940707916",
                    Text: "A highly charged, long-range cannonball that causes a lightning bolt to strike where it lands.",
                    BonusPerPoint: -0.05,
                    BonusType: "s cooldown"
                },
                {
                    Index: 5,
                    Level: 17,
                    Description: "Explosive",
                    Image: "rbxassetid://99209062431317",
                    Text: "A mighty exploding cannonball. Highly volatile and extremely heavy, limited range.",
                    BonusPerPoint: -0.05,
                    BonusType: "s cooldown"
                }
            ]
        }
    },
    quests: {
        "Q0": {
            name: "Learning The Ropes",
            type: "Tutorial",
            description: "A guide into The New World. Learn how to become a pirate master.",
            startNPC: "Bill Cannon"
        },
        "Q1": {
            name: "Great Navy Heist",
            type: "Main Story",
            description: "Help Albert Sparrow rebuild his crew",
            startNPC: "Albert Sparrow"
        },
        "Q2": {
            name: "Ship Fixer",
            type: "Daily",
            description: "Helping Bill Cannon with his ship supplies.",
            startNPC: "Bill Cannon"
        },
        "Q3": {
            name: "Pirates Duty",
            type: "Daily",
            description: "Helping Jack Smith clear out enemies that try to take over pirate land.",
            startNPC: "Jack Smith"
        },
        "Q4": {
            name: "Exterminator",
            type: "Daily",
            description: "Helping Webb Whiteley clear out the wasps in Devil's Anvil",
            startNPC: "Webb Whiteley"
        },
        "TQ1": {
            name: "Treasure Map #1",
            type: "TreasureMap",
            description: "The petals blossom on this beautiful flower"
        },
        "TQ2": {
            name: "Treasure Map #2",
            type: "TreasureMap",
            description: "Never trust someone who's always smiling."
        },
        "TQ3": {
            name: "Treasure Map #3",
            type: "TreasureMap",
            description: "A legend flaps it's wings across the ocean"
        },
        "TQ4": {
            name: "Treasure Map #4",
            type: "TreasureMap",
            description: "The hammer smashes iron casts with grace of fire"
        }
    },
    npcs: [
        {
            id: 1,
            name: "Bill Cannon",
            dailyQuest: "Q2"
        },
        {
            id: 2,
            name: "Jack Smith",
            dailyQuest: "Q3"
        },
        {
            id: 3,
            name: "Cap'n Avenor"
        },
        {
            id: 4,
            name: "Dodgy Dexter"
        },
        {
            id: 5,
            name: "Albert Sparrow"
        },
        {
            id: 6,
            name: "Rascal Rose"
        },
        {
            id: 7,
            name: "Webb Whiteley",
            dailyQuest: "Q4"
        },
        {
            id: 8,
            name: "Liza Tide"
        }
    ],
    gameplay: {
        enemies: {
            "Baby Fly Trap Lvl. 1": "Baby Fly Trap",
            "Giant Fly Trap Lvl. 6": "Giant Fly Trap",
            "Wasp Lvl. 7": "Wasp",
            "Giant Wasp Lvl. 18": "Giant Wasp",
            "Giant Crab Lvl. 4": "Giant Crab",
            "Giant Crab Lvl. 11": "Giant Crab Elite",
            "Navy Guard Lvl. 4": "Navy Guard",
            "Navy Marine Lvl. 8": "Navy Marine",
            "Navy Sergeant Lvl. 15": "Navy Sergeant",
            "Admiral Edward Vernon Lvl. 24": "Admiral Vernon",
            "Skeleton Lvl. 5": "Skeleton",
            "Skeleton Lvl. 13": "Spectral Skeleton",
            "Francis Baunt Lvl. 17": "Francis Baunt",
            "Jerry Strauss Lvl. 13": "Jerry Strauss",
            "Undead Maitre Lvl. 14": "Undead Maitre",
            "Dreg Lvl. 23": "Dreg"
        },
        bullets: {
            "Lead Shot": {
                id: 1,
                damage: 4,
                rarity: "Common",
                speed: 8,
                range: 50,
                description: "Standard lead ammunition"
            },
            "Venom Shot": {
                id: 2,
                damage: 11,
                rarity: "Common",
                price: 5,
                effect: {
                    name: "Venoms",
                    type: "DOT",
                    color: "Green",
                    duration: 4,
                    tickDamage: 2,
                    ticks: 4
                },
                description: "Poisoned ammunition that deals damage over time"
            },
            "Bane Shot": {
                id: 3,
                damage: 16,
                rarity: "Uncommon",
                price: 10,
                effect: {
                    name: "Weakens",
                    type: "Weaken",
                    duration: 4,
                    multiplier: 0.75
                },
                description: "Cursed ammunition that weakens enemies"
            },
            "Drag Shot": {
                id: 4,
                damage: 22,
                rarity: "Rare",
                price: 25,
                effect: {
                    name: "Slows",
                    type: "Slow",
                    duration: 3,
                    multiplier: 0.6
                },
                description: "Heavy ammunition that slows down targets"
            },
            "Silver Shot": {
                id: 5,
                damage: 45,
                rarity: "Epic",
                price: 65,
                effect: {
                    name: "Undead bonus",
                    bonus: "Dead",
                    weakness: "Living"
                },
                description: "Silver ammunition effective against undead enemies"
            },
            "Steel Shot": {
                id: 6,
                damage: 55,
                rarity: "Legendary",
                price: 65,
                effect: {
                    name: "Living bonus",
                    bonus: "Living",
                    weakness: "Dead"
                },
                description: "Steel ammunition effective against living enemies"
            }
        },
        cannonballs: {
            "Round Shot": {
                id: 1,
                rarity: "Common",
                price: 0,
                shots: 3,
                cooldown: 0.85,
                reloadTime: 1.5,
                baseTravelTime: 0.85,
                maxDistance: 350,
                minDistance: 5,
                damages: {
                    sail: 20,
                    hull: 40
                },
                description: "A basic all around cannonball"
            },
            "Chain Shot": {
                id: 2,
                rarity: "Common",
                price: 2,
                shots: 3,
                cooldown: 0.85,
                reloadTime: 1.5,
                baseTravelTime: 1,
                maxDistance: 250,
                minDistance: 5,
                damages: {
                    sail: 70,
                    hull: 20
                },
                description: "Cannonball effective against masts and sails"
            },
            "Firebrand": {
                id: 3,
                rarity: "Uncommon",
                price: 4,
                shots: 3,
                cooldown: 1.1,
                reloadTime: 1.5,
                baseTravelTime: 0.95,
                maxDistance: 400,
                minDistance: 30,
                damages: {
                    sail: 25,
                    hull: 65
                },
                description: "Cannonball that does good damage to hulls"
            },
            "Thunderbolt": {
                id: 4,
                rarity: "Rare",
                price: 10,
                shots: 3,
                cooldown: 2,
                reloadTime: 1.5,
                baseTravelTime: 0.7,
                maxDistance: 535,
                minDistance: 40,
                damages: {
                    sail: 175,
                    hull: 145
                },
                description: "Cannonball that travels fast and has high damage overall"
            },
            "Explosive": {
                id: 5,
                rarity: "Epic",
                price: 14,
                shots: 3,
                cooldown: 4,
                reloadTime: 1.5,
                baseTravelTime: 1.3,
                maxDistance: 150,
                minDistance: 25,
                damages: {
                    sail: 55,
                    hull: 350
                },
                description: "Cannonball that does heavy damage to hulls"
            },
            "Fury": {
                id: 6,
                rarity: "Legendary",
                price: 20,
                shots: 3,
                cooldown: 1.3,
                reloadTime: 1.5,
                baseTravelTime: 0.85,
                maxDistance: 400,
                minDistance: 45,
                damages: {
                    sail: 250,
                    hull: 250
                },
                description: "A furious cannonball"
            }
        },
        items: {
            weapons: {
                swords: {
                    // Common
                    "Rusty Cutlass": {
                        damage: 4,
                        rarity: "Common",
                        description: "A rusty cutlass useful for learning.",
                        level: 1,
                        sellPrice: 3
                    },
                    "Training Sabre": {
                        damage: 3,
                        rarity: "Common",
                        description: "A rusty sabre useful for learning.",
                        level: 1,
                        sellPrice: 2
                    },
                    "Brine Cutlass": {
                        damage: 5,
                        rarity: "Common",
                        description: "A seaworn cutlass often found on sunken ships.",
                        level: 1,
                        sellPrice: 4
                    },
    
                    // Uncommon
                    "Ironvein Cutlass": {
                        damage: 9,
                        rarity: "Uncommon",
                        description: "A sturdy cutlass forged from iron-rich veins.",
                        level: 8,
                        sellPrice: 10
                    },
                    "Ironvein Sabre": {
                        damage: 8,
                        rarity: "Uncommon",
                        description: "A durable sabre crafted from iron ore.",
                        level: 6,
                        sellPrice: 8
                    },
                    "Pyrestone Sabre": {
                        damage: 7,
                        rarity: "Uncommon",
                        description: "A sabre infused with the essence of flames.",
                        level: 4,
                        sellPrice: 7
                    },
    
                    // Rare
                    "Krakenfang Cutlass": {
                        damage: 13,
                        rarity: "Rare",
                        description: "A cutlass said to be made from the fangs of a legendary sea beast.",
                        level: 15,
                        sellPrice: 50
                    },
                    "Gleam Cutlass": {
                        damage: 12,
                        rarity: "Rare",
                        description: "A brilliantly polished cutlass that gleams in the light.",
                        level: 14,
                        sellPrice: 40
                    },
                    "Watervein Cutlass": {
                        damage: 11,
                        rarity: "Rare",
                        description: "A cutlass that flows with the energy of the tides.",
                        level: 13,
                        sellPrice: 30
                    },
    
                    // Epic
                    "Bloodheart Cutlass": {
                        damage: 17,
                        rarity: "Epic",
                        description: "A sinister cutlass rumored to thirst for battle.",
                        level: 21,
                        sellPrice: 230
                    },
                    "Viperfang Sabre": {
                        damage: 16,
                        rarity: "Epic",
                        description: "A sabre coated in venom, striking swift and deadly.",
                        level: 19,
                        sellPrice: 200
                    },
                    "Shadowgold Sabre": {
                        damage: 15,
                        rarity: "Epic",
                        description: "A mysterious sabre forged from darkened gold.",
                        level: 17,
                        sellPrice: 180
                    },
    
                    // Legendary
                    "Goldblade Sabre": {
                        damage: 27,
                        rarity: "Legendary",
                        description: "A sabre of pure gold, radiating untold power.",
                        level: 25,
                        sellPrice: 550
                    },
                    "Viperfang Cutlass": {
                        damage: 24,
                        rarity: "Legendary",
                        description: "A cutlass of unmatched precision, infused with lethal venom.",
                        level: 23,
                        sellPrice: 480
                    }
                },
                guns: {
                    // Common Guns
                    "Crude Flintlock": {
                        damage: 2,
                        reloadTime: 1.9,
                        range: "25-35",
                        rarity: "Common",
                        description: "A rusty flintlock used by beginners.",
                        subType: "Flintlock",
                        level: 1,
                        sellPrice: 2
                    },
                    "Ironheart Blunderbuss": {
                        damage: 5,
                        reloadTime: 2.4,
                        range: "20-40",
                        rarity: "Common",
                        description: "A sturdy blunderbuss with a reinforced iron frame.",
                        subType: "Blunderbuss",
                        level: 1,
                        sellPrice: 5
                    },
                    "Brine Flintlock": {
                        damage: 3,
                        reloadTime: 1.7,
                        range: "25-35",
                        rarity: "Common",
                        description: "A salt-worn flintlock favored by coastal marauders.",
                        subType: "Flintlock",
                        level: 1,
                        sellPrice: 3
                    },
    
                    // Uncommon Guns
                    "Dreadbronze Flintlock": {
                        damage: 5,
                        reloadTime: 1.6,
                        range: "30-45",
                        rarity: "Uncommon",
                        description: "A bronze-cast flintlock known for its reliability.",
                        subType: "Flintlock",
                        level: 4,
                        sellPrice: 10
                    },
                    "Beetle Flintlock": {
                        damage: 6,
                        reloadTime: 1.4,
                        range: "25-45",
                        rarity: "Uncommon",
                        description: "Carved from beetle chitin, this flintlock is surprisingly durable.",
                        subType: "Flintlock",
                        level: 5,
                        sellPrice: 12
                    },
                    "Saberline Blunderbuss": {
                        damage: 12,
                        reloadTime: 2.2,
                        range: "20-35",
                        rarity: "Uncommon",
                        description: "A sleek blunderbuss with a serrated barrel for close encounters.",
                        subType: "Blunderbuss",
                        level: 6,
                        sellPrice: 24
                    },
    
                    // Rare Guns
                    "Venomshade Flintlock": {
                        damage: 12,
                        reloadTime: 1.4,
                        range: "35-65",
                        rarity: "Rare",
                        description: "Infused with venomous alloys, each shot carries a toxic bite.",
                        subType: "Flintlock",
                        level: 8,
                        sellPrice: 34
                    },
                    "Bloodheart Blunderbuss": {
                        damage: 17,
                        reloadTime: 2.4,
                        range: "35-40",
                        rarity: "Rare",
                        description: "A brutal blunderbuss that resonates with the wielder's fury.",
                        subType: "Blunderbuss",
                        level: 11,
                        sellPrice: 44
                    },
                    "Ironvein Musket": {
                        damage: 21,
                        reloadTime: 2.5,
                        range: "50-130",
                        rarity: "Rare",
                        description: "A long-barreled musket with precision iron sights.",
                        subType: "Musket",
                        level: 14,
                        sellPrice: 52
                    },
    
                    // Epic Guns
                    "Goldbone Blunderbuss": {
                        damage: 21,
                        reloadTime: 1.9,
                        range: "25-45",
                        rarity: "Epic",
                        description: "A gilded blunderbuss symbolizing both wealth and power.",
                        subType: "Blunderbuss",
                        level: 17,
                        sellPrice: 230
                    },
                    "General's Musket": {
                        damage: 28,
                        reloadTime: 2.0,
                        range: "50-150",
                        rarity: "Epic",
                        description: "Issued to high-ranking officers, this musket boasts unmatched accuracy.",
                        subType: "Musket",
                        level: 21,
                        sellPrice: 270
                    },
    
                    // Legendary Guns
                    "Aristocrat Blunderbuss": {
                        damage: 29,
                        reloadTime: 1.0,
                        range: "30-50",
                        rarity: "Legendary",
                        description: "An exquisitely crafted blunderbuss for the elite.",
                        subType: "Blunderbuss",
                        level: 26,
                        sellPrice: 580
                    },
                    "Aristocrat Flintlock": {
                        damage: 25,
                        reloadTime: 0.825,
                        range: "40-75",
                        rarity: "Legendary",
                        description: "A masterwork flintlock adorned with precious metals.",
                        subType: "Flintlock",
                        level: 25,
                        sellPrice: 500
                    }
                }
            },
            chests: {
                "Bronze Key Chest": {
                    type: "Key Chest",
                    rarity: "Common",
                    keyType: "Bronze",
                    minGold: 50,
                    maxGold: 150
                },
                "Silver Key Chest": {
                    type: "Key Chest",
                    rarity: "Uncommon",
                    keyType: "Silver",
                    minGold: 150,
                    maxGold: 300
                },
                "Gold Key Chest": {
                    type: "Key Chest",
                    rarity: "Rare",
                    keyType: "Gold",
                    minGold: 300,
                    maxGold: 600
                },
                "Sapphire Key Chest": {
                    type: "Key Chest",
                    rarity: "Epic",
                    keyType: "Sapphire",
                    minGold: 600,
                    maxGold: 1200
                },
                "Emerald Key Chest": {
                    type: "Key Chest",
                    rarity: "Epic",
                    keyType: "Emerald",
                    minGold: 800,
                    maxGold: 1600
                },
                "Ruby Key Chest": {
                    type: "Key Chest",
                    rarity: "Legendary",
                    keyType: "Ruby",
                    minGold: 1000,
                    maxGold: 2000
                }
            },
            keys: {
                "Bronze Key": {
                    type: "Key",
                    rarity: "Common",
                    chestType: "Bronze Key Chest"
                },
                "Silver Key": {
                    type: "Key",
                    rarity: "Uncommon",
                    chestType: "Silver Key Chest"
                },
                "Gold Key": {
                    type: "Key",
                    rarity: "Rare",
                    chestType: "Gold Key Chest"
                },
                "Sapphire Key": {
                    type: "Key",
                    rarity: "Epic",
                    chestType: "Sapphire Key Chest"
                },
                "Emerald Key": {
                    type: "Key",
                    rarity: "Epic",
                    chestType: "Emerald Key Chest"
                },
                "Ruby Key": {
                    type: "Key",
                    rarity: "Legendary",
                    chestType: "Ruby Key Chest"
                }
            },
            
        }
    }
};

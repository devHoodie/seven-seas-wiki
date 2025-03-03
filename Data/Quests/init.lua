local NPCs = require(script.Parent.NPCs)
local Utils = require(game:GetService("ReplicatedStorage").Modules.Utils)
local Enemies = require(game:GetService("ReplicatedStorage").Data.Enemies)
local Quests = {
	Types = {
		MAIN = "MainStory",
		DAILY = "Daily",
		WEEKLY = "Weekly",
		TIMED = "Timed"
	},
	TeasureQuests = require(script.TreasureQuests),
	QuestData = {
		["Q0"] = {
			ID = "Q0",
			Name = "Learning The Ropes",
			Type = "Tutorial",
			Description = "A guide into The New World. Learn how to become a pirate master.",
			Prerequisites = {},
			Steps = {
				[1] = {
					Action = "Talk",
					TargetNPC = 1, -- Bill Cannon's ID
					Description = "Ask Bill Cannon for help getting started."
				},
				[2] = {
					Action = "Kill",
					Target = 2,
					RequiredCount = 1,
					Rewards = {
						{"XP", 15}
					},
					Description = "Kill the first of Jolly Roger's skeleton",
				},
				[3] = {
					Action = "Kill",
					Target = 1,
					RequiredCount = 1,
					Rewards = {
						{"XP", 15}
					},
					Description = "Kill the second of Jolly Roger's skeleton",
				},
				[4] = {
					Action = "Talk",
					TargetNPC = 1, -- Bill Cannon's ID
					Description = "Ask Bill Cannon for help again",
				},
				[5] = {
					Action = "Set Sail",
					Description = "Try to take down Jolly Roger's ship once",
				},
				[6] = {
					Action = "Talk",
					TargetNPC = 1, -- Bill Cannon's ID
					Description = "Tell Bill Cannon what happened",
				},
				[7] = {
					Action = "Open Chest",
					Description = "Open your bronze chest.",
				},
				[8] = {
					Action = "Talk",
					TargetNPC = 5, 
					Description = "Talk to Albert Sparrow to start the main quest.",
				},
			},
			Rewards = {
				{"Gold", 25},
				{"XP", 15},
				{"Silver Key", "Key", "Silver", 1}
			},
		},
		
		["Q1"] = require(script.Q1),
		["Q2"] = {
			Name = "Ship Fixer",
			ID = "Q2",
			NPCId = 1,
			Description = "Helping Bill Cannon with his ship supplies.",
			Type = "Daily",
			Prerequisites = {},
			Steps = {
				[1] = {
					Action = "Sink",
					Target = "Dynamic",
					Rewards = {
						{"XP", 40}
					},
					RequiredCount = "Dynamic",
					Description = "Sink enemy ships to help Bill Cannon with his ship supplies.",
				},
				[2] = {
					Action = "Talk",
					TargetNPC = 1,
					Description = "Talk to Bill Cannon to finish the quest",
				}
			},
			Rewards = {
				{"Gold", "Dynamic", 20, 5}, --minimum, addition per player level
				{"XP", "Dynamic", 40, 20},
				{"Dynamic", "Ammo", "CannonAmmo", 20}, --amount
				{"Dynamic", "Key"},
			},
			TimeLimit = nil,
		},
		["Q3"] = {
			Name = "Pirates Duty",
			ID = "Q3",
			NPCId = 2,
			Description = "Helping Jack Smith clear out enemies that try to take over pirate land.",
			Type = "Daily",
			Prerequisites = {},
			Steps = {
				[1] = {
					Action = "Kill",
					Target = "Dynamic",
					Rewards = {
						{"XP", 40}
					},
					RequiredCount = 15,
					Description = "All kinds of enemies are trying to take over pirate terrority.",
				},
				[2] = {
					Action = "Talk",
					TargetNPC = 2,
					Description = "Talk to Jack Smith to finish the quest",
				}
			},
			Rewards = {
				{"Gold", "Dynamic", 20, 5}, --minimum, addition per player level
				{"XP", "Dynamic", 40, 20},
				{"Dynamic", "Ammo", "GunAmmo", 20}, --amount
				{"Dynamic", "Key"},
			},
		},
		["Q4"] = {
			Name = "Exterminator",
			ID = "Q4",
			NPCId = 7,
			Description = "Helping Webb Whiteley clear out the wasps in Devil's Anvil",
			Type = "Daily",
			Prerequisites = {},
			Steps = {
				[1] = {
					Action = "Kill",
					Target = 9,
					Rewards = {
						{"XP", 40}
					},
					RequiredCount = 20,
					Description = "Kill wasps to for Webb Whiteley to feel safer on Devil's Anvil",
				},
				[2] = {
					Action = "Talk",
					TargetNPC = 7,
					Description = "Talk to Webb Whiteley to finish the quest",
				}
			},
			Rewards = {
				{"Gold", "Dynamic", 20, 2}, --minimum, addition per player level
				{"XP", "Dynamic", 40, 20},
				{"Dynamic", "Key"},
			},
			TimeLimit = nil,
		},
	},
	
	Utils = {
	}
}

local function getEnemiesInLevelRange(minLvl, maxLvl)
	local tier = {}
	for id, enemy in pairs(Enemies) do
		if enemy.Level >= minLvl and enemy.Level <= maxLvl then
			table.insert(tier, { id = id, enemy = enemy, minLvl = minLvl, maxLvl = maxLvl })
		end
	end
	-- Sort by enemy level (ascending)
	table.sort(tier, function(a, b) return a.enemy.Level < b.enemy.Level end)
	-- Assign base weights: highest for lowest level, decreasing linearly
	local n = #tier
	for i, entry in ipairs(tier) do
		entry.baseWeight = n - i + 1  -- e.g., for 5 enemies: 5, 4, 3, 2, 1
	end
	return tier
end


Quests.Utils.getDynamicRequirement = function(action, userId, data, questStep, questId)
	if questStep and not questStep.Target then
		return
	end
	if questStep and typeof(questStep.RequiredCount) == "number" and questStep.Target ~= "Dynamic" then
		local foundIDFromTarget = nil
	
		for i, enemy in Enemies do
			if enemy.ID == questStep.Target then
				foundIDFromTarget = enemy.DisplayName
				break
			end
		end
		
		return {amount = questStep.RequiredCount, target = questStep.Target, text = questStep.RequiredCount.. " " .. (foundIDFromTarget or questStep.Target) .. " "}
	end

	if action == "Sink" then
		local timesDoneQuest = 0

		for i,v in data.QuestData.Completed do
			if v[1] == questId then
				timesDoneQuest = v[2] or 1
				break
			end
		end

		local avgLvl = (data.Skills.Sailing.Level + data.Skills.Cannoning.Level)/2
		local minAmount = 5
		local maxAmount = 20
		local amountToSink = math.floor(math.min(math.max(avgLvl, minAmount), maxAmount))

		local ships = {
			-- Tier 1: 0-13
			{ name = "Navy Ferret", baseWeight = 3, minLvl = 0, maxLvl = 12 },
			{ name = "Navy Panther", baseWeight = 2, minLvl = 0, maxLvl = 12 },
			{ name = "Navy Bulwark", baseWeight = 1, minLvl = 0, maxLvl = 12 },

			-- Tier 2: 14-24
			{ name = "Navy Greyhound", baseWeight = 6, minLvl = 13, maxLvl = 22 },
			{ name = "Navy Centurion", baseWeight = 4, minLvl = 13, maxLvl = 22 },
			{ name = "Navy Vanguard", baseWeight = 1, minLvl = 13, maxLvl = 22 },

			-- Tier 3: 24-30
			{ name = "Navy Kingfisher", baseWeight = 5, minLvl = 23, maxLvl = 30 },
			{ name = "Man O' War", baseWeight = 3, minLvl = 23, maxLvl = 30 },
			{ name = "Navy Monarch", baseWeight = 1, minLvl = 23, maxLvl = 30 }
		}

		local avgLvl = math.floor((data.Skills.Sailing.Level + data.Skills.Cannoning.Level) / 2)
		local minAmount = 3
		local maxAmount = 15
		local amountToSink = math.floor(minAmount + ((avgLvl - 1) / (30 - 1)) * (maxAmount - minAmount))


		local chosenShip = "Navy Greyhound"

		local function adjustWeights(tier, avgLvl)
			local scalingFactor = (avgLvl - tier[1].minLvl) / (tier[1].maxLvl - tier[1].minLvl)

			local minWeight = 0.15 * (tier[1].baseWeight + tier[2].baseWeight + tier[3].baseWeight)

			tier[1].weight = math.max(tier[1].baseWeight * (1 - scalingFactor), minWeight)

			tier[3].weight = tier[3].baseWeight + (tier[1].baseWeight * scalingFactor)

			if scalingFactor >= 0.5 then
				tier[2].weight = tier[3].weight
			else
				tier[2].weight = tier[2].baseWeight
			end
		end

		local tier = {}
		if avgLvl >= 0 and avgLvl <= 12 then
			tier = { ships[1], ships[2], ships[3] }
		elseif avgLvl >= 13 and avgLvl <= 22 then
			tier = { ships[4], ships[5], ships[6] } 
		elseif avgLvl >= 23 and avgLvl <= 30 then
			tier = { ships[7], ships[8], ships[9] } 
		end

		-- Adjust weights for the selected tier
		if #tier > 0 then
			adjustWeights(tier, avgLvl)

			-- Calculate total weight for the tier
			local totalWeight = 0
			for _, ship in ipairs(tier) do
				totalWeight = totalWeight + ship.weight
			end
			local generator = Random.new(userId + timesDoneQuest)
			-- Randomly select a ship based on weights
			local randomValue = generator:NextNumber() * totalWeight
			local cumulativeWeight = 0

			for _, ship in ipairs(tier) do
				cumulativeWeight = cumulativeWeight + ship.weight
				if randomValue <= cumulativeWeight then
					chosenShip = ship.name
					break
				end
			end
		end

		return {amount = amountToSink, target = chosenShip, text = amountToSink .. " ".. chosenShip .. " "}
	elseif action == "Kill" then
		local timesDoneQuest = 0
		for i,v in data.QuestData.Completed do
			if v[1] == questId then
				timesDoneQuest = v[2] or 1
				break
			end
		end
		local avgLvl = math.floor((data.Skills.Gun.Level + data.Skills.Sword.Level) / 2)
		local generator = Random.new(userId + timesDoneQuest)

		local chosenTarget = 1
		local questData = Quests.QuestData[questId] or Quests.TeasureQuests[questId]
		local QuestsStep1 = questStep or questData.Steps[1]

		local lowLevel = getEnemiesInLevelRange(0, 12)
		local midLevel = getEnemiesInLevelRange(13, 22)
		local highLevel = getEnemiesInLevelRange(23, 30)


		local function adjustWeights(tier, avgLvl)

			-- Calculate scaling factor
			local minLvl = tier[1].minLvl
			local maxLvl = tier[1].maxLvl
			local scalingFactor = (avgLvl - minLvl) / (maxLvl - minLvl)
			scalingFactor = math.clamp(scalingFactor, 0, 1)

			-- Calculate total base weight for minWeight
			local totalBaseWeight = 0
			for _, enemy in ipairs(tier) do
				totalBaseWeight = totalBaseWeight + enemy.baseWeight
			end
			local minWeight = 0.15 * totalBaseWeight

			-- Adjust first and last items
			local first = tier[1]
			local last = tier[#tier]

			first.weight = math.max(first.baseWeight * (1 - scalingFactor), minWeight)
			local actualLoss = first.baseWeight - first.weight  -- Weight lost due to clamping

			if #tier > 1 then
				last.weight = last.baseWeight + actualLoss  -- Transfer lost weight to last item
			end

			-- Adjust middle items (positions 2 to n-1)
			for i = 2, (#tier - 1) do
				if i == 2 and scalingFactor >= 0.5 then
					-- For the second item, mirror the last item's weight if scaling >=50%
					tier[i].weight = last.weight
				else
					-- Keep other middle items at base weight
					tier[i].weight = tier[i].baseWeight
				end
			end
		end
		local tier = {}
		if avgLvl >= 0 and avgLvl <= 12 then
			tier = lowLevel
		elseif avgLvl >= 13 and avgLvl <= 22 then
			tier = midLevel
		elseif avgLvl >= 23 and avgLvl <= 30 then
			tier = highLevel
		end
		
		-- Adjust weights for the selected tier
		if #tier > 0 then
			adjustWeights(tier, avgLvl)

			-- Calculate total weight for the tier
			local totalWeight = 0
			for _, enemy in ipairs(tier) do
				totalWeight = totalWeight + enemy.weight
			end
			local generator = Random.new(userId + timesDoneQuest)
			-- Randomly select a ship based on weights
			local randomValue = generator:NextNumber() * totalWeight
			local cumulativeWeight = 0

			for _, enemy in ipairs(tier) do
				cumulativeWeight = cumulativeWeight + enemy.weight
				if randomValue <= cumulativeWeight then
					chosenTarget = enemy.id
					break
				end
			end
		end

		local enemyData = Enemies[chosenTarget]
		return {amount = QuestsStep1.RequiredCount, target = chosenTarget, text = QuestsStep1.RequiredCount.. " " .. enemyData.DisplayName .. " "}
	end
end

Quests.Utils.getNextQuestTime = function(_, _, data, _, questId)
	local npcID = Quests.QuestData[questId].NPCId
	local npcData = NPCs.IDToNPC[npcID]
	local questCooldown = npcData.DailyInfo.DailyQuestCooldown

	local lastCompletionTime = 0

	for _, questEntry in ipairs(data.QuestData.Completed) do
		if questEntry[1] == questId and questEntry[3] then
			if questEntry[3] > lastCompletionTime then
				lastCompletionTime = questEntry[3]
			end
		end
	end

	local nextAvailableTime = lastCompletionTime + questCooldown
	local currentTime = os.time()
	local timeLeft = math.max(nextAvailableTime - currentTime, 0)

	return {
		nextTime = nextAvailableTime,
		timeLeft = timeLeft,
		text = Utils.toHMS(timeLeft)
	}
end

Quests.Utils.processString = function(str, userId, data, questStep, questId)
	local processed = str:gsub("%$([%w_]+:?[%w_]*)%s*()", function(match)
		local funcName, param = match:match("([^:]+):?(.*)")
		local func = Quests.Utils[funcName]

		param = param and param:gsub("^%s*(.-)%s*$", "%1") or nil

		if not func then return "[MISSING_FUNCTION]".. funcName end

		local result = func(param ~= "" and param or nil, userId, data, questStep, questId)

		if type(result) == "table" then
			return result.text or ""
		end

		return tostring(result or "")
	end)

	return processed
end

return Quests
local Lootbox = {}

for _,v in script:GetChildren() do
	Lootbox[v.Name] = require(v)
end

local function normalizeWeights(dataTable, boostedRarities)
	local adjustedWeights = {}
	local totalAdjustedWeight = 0

	for rarity, data in pairs(dataTable) do
		local adjustedRarity = data.Rarity

		if boostedRarities and boostedRarities[rarity] then
			adjustedRarity = adjustedRarity * boostedRarities[rarity]
		end

		adjustedWeights[rarity] = adjustedRarity
		totalAdjustedWeight = totalAdjustedWeight + adjustedRarity
	end

	local normalizedWeights = {}
	for rarity, adjustedRarity in pairs(adjustedWeights) do
		normalizedWeights[rarity] = (adjustedRarity / totalAdjustedWeight) * 100
	end

	return normalizedWeights
end

local function selectRarity(dataTable, boostedRarities)
	local normalizedWeights = normalizeWeights(dataTable, boostedRarities)
	local totalWeight = 0
	local cumulativeWeights = {}

	for rarity, weight in pairs(normalizedWeights) do
		totalWeight = totalWeight + weight
		table.insert(cumulativeWeights, {totalWeight = totalWeight, rarity = rarity})
	end

	local randomWeight = math.random() * totalWeight
	for _, weightData in ipairs(cumulativeWeights) do
		if randomWeight <= weightData.totalWeight then
			return weightData.rarity
		end
	end
end

function Lootbox:getRandomItem(dataTable, boostedRarities)
	local selectedRarity = selectRarity(dataTable, boostedRarities)
	local items = dataTable[selectedRarity].Items
	local randomIndex = math.random(#items)
	return items[randomIndex], selectedRarity
end

return Lootbox
local Module = {}

Module.TypesToIndex = {}
Module.SubTypesToIndex = {}

Module.ItemTypes = {
	"Sword", "Ship", "Gun",
	"Key Chest", "Key",
	"Ammo",
	"Treasure",
}

Module.ItemSubTypes = {
	"Cutlass", "Flintlock",
	"Bronze", "Silver", "Gold",
	"Sapphire", "Emerald", "Ruby",
	"Cannonball", "Sabre", "Blunderbuss", "Musket",
	"Map"
}

for i,v in Module.ItemTypes do
	Module.TypesToIndex[v] = i
end

for i,v in Module.ItemSubTypes do
	Module.SubTypesToIndex[v] = i
end

return Module
local module = {}
module.Passes = {}
module.Passes["Merchant's Friend"] = {
	Index = 1,
	ID = 1070873268,
	Name = "Merchant's Friend",
	SafeName = "MerchantsFriend",
	Description = "15% lower prices on all shops \n 10% increase when selling",
}

module.Passes["Pirate Pack"] = {
	Index = 0,
	ID = 1079237783,
	Name = "Pirate Pack",
	SafeName = "PiratePack",
	Description2 = "x10 Silver Keys | x5 Silver Chests",
	Description1 = "x6 Gold Keys | x3 Gold Chests | x500 Gold",
}


module.Passes["Death's Friend"] = {
	Index = 2,
	ID = 1070755641,
	Name = "Death's Friend",
	SafeName = "DeathsFriend",
	Description = "You will no longer lose gold from dying"
}

module.Passes["Key Finder"] = {
	Index = 3,
	ID = 1070518130,
	Name = "Key Finder",
	SafeName = "KeyFinder",
	Description = "10% boosted chances when killing enemies for key drops",
}

module.Passes["Lucky Pirate"] = {
	Index = 4,
	ID = 1071056671,
	Name = "Lucky Pirate",
	SafeName = "LuckyPirate",
	Description = "2.5% Boosted Legendary and 5% boosted Epic rarities from Key Chests and increased ammo and Gold from Key Chests",
}

module.Passes["Supporter"] = {
	Index = 5,
	ID = 1071082537,
	Name = "Supporter",
	SafeName = "Supporter",
	Description = "Buy this if you'd like to support the game! You will get a blue name label in the game.",
}

module.IDToPass = {}

for i,v in module.Passes do
	module.IDToPass[v.ID] = v.Name
end


return module

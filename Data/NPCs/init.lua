local module = {}
module.NPCs = {}
module.IDToNPC = {}

for _, npc in script:GetChildren() do
	module.NPCs[npc.Name] = require(npc)
end

for _, npc in module.NPCs do
	module.IDToNPC[npc.ID] = npc
end

return module

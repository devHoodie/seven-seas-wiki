local Debris = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundHandler = require(ReplicatedStorage.Modules.SoundHandler)
local Sounds = require(ReplicatedStorage.Data.Sounds)
local cannonballs = {}

local function newCannonBall(id, rarity, price, name, asset, shots, cooldown, reload, baseTravel, maxTravel, minTravel, sailDamage, hullDamage, onHit, description)
	cannonballs[name] = {
		ID = id,
		Rarity = rarity,
		Price = price,
		Name = name,
		Asset = asset,
		Shots = shots,
		Cooldown = cooldown,
		ReloadTime = reload,
		BaseTravelTime = baseTravel,
		MaxTravelDistance = maxTravel,
		MinTravelDistance = minTravel,
		Damages = {
			Sail = sailDamage,
			Hull = hullDamage,
		},
		OnHit = onHit,
		Description = description
	}
end

local function ballHit(hitCFrame, partHit)
	local explosion = ReplicatedStorage.Assets.Misc.Explosion:Clone()
	explosion.CFrame = hitCFrame
	local id = if partHit.Parent.Name == "Sail" then Sounds.impacts.sail else Sounds.impacts.wood[math.random(1,#Sounds.impacts.wood)]
	explosion.Parent = workspace
	SoundHandler.playQuickSound(explosion.Position, id, .6, 0, 350)
	explosion.Explosion:Emit(5)
	Debris:AddItem(explosion, .25)
end


local function ballHit2(hitCFrame, partHit)
	local explosion = ReplicatedStorage.Assets.Misc.Explosion:Clone()
	explosion.CFrame = hitCFrame
	local id = if partHit.Parent.Name == "Sail" then Sounds.impacts.sail else Sounds.impacts.wood[math.random(1,#Sounds.impacts.wood)]
	explosion.Parent = workspace
	SoundHandler.playQuickSound(explosion.Position, id, .6, 0, 350)
	explosion.Explosion:Emit(15)
	Debris:AddItem(explosion, .5)
end

local function lightningHit(hitCFrame, partHit)
	local mouseHit = hitCFrame
	local model = ReplicatedStorage.Assets.Misc.Lightning:Clone()
	model:PivotTo(hitCFrame)
	model.Parent = workspace
	local hitCF = CFrame.new(mouseHit.Position)
	local cloudCF = hitCF + Vector3.new(0, 35, 0)
	model.Hit.LightningSound:Play()
	local attachmentsList = {}
	local attachmentsAmount = math.random(7, 11)

	local increment = (hitCF.Position - cloudCF.Position).Magnitude / attachmentsAmount

	local lastWidth = Random.new():NextNumber(1.3, 2.4)

	task.spawn(function()
		for i = 1, attachmentsAmount do

			local attachment = Instance.new("Attachment")
			game:GetService("Debris"):AddItem(attachment, 1)
			table.insert(attachmentsList, attachment)

			local basePos = Vector3.new(0, -(i-1) * increment, 0)
			local rx = Random.new():NextNumber(-4, 4)
			local ry = Random.new():NextNumber(-3, 3)
			local rz = Random.new():NextNumber(-4, 4)
			basePos += Vector3.new(rx, ry, rz)

			if i == 1 then
				basePos = Vector3.new(0, 0, 0)
			elseif i == attachmentsAmount then
				basePos =  hitCF.Position - cloudCF.Position
			end

			attachment.Position = basePos
			attachment.Parent = model.Top

			if i > 1 then
				local beam = Instance.new("Beam")
				game:GetService("Debris"):AddItem(beam, 1)
				beam.Parent = model.Top

				beam.Attachment0 = attachmentsList[i-1]
				beam.Attachment1 = attachment

				beam.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 170, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 85, 255))}
				beam.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0)}
				beam.LightInfluence = 0
				beam.Brightness = 3
				beam.LightEmission = 3
				beam.FaceCamera = true

				beam.Width0 = lastWidth

				local randomWidth = math.clamp(lastWidth + Random.new():NextNumber(-0.4, 0.2), 0.3, 1)
				beam.Width1 = randomWidth
				lastWidth = randomWidth
			end

			task.wait(Random.new():NextNumber(0.01, 0.02))
		end
		
		model.Top:Destroy()
		task.wait(4)
		model:Destroy()
	end)
end

newCannonBall(1, "Common", 0,"Round Shot", ReplicatedStorage.Assets.Cannonballs["Round Shot"], 3, .85, 1.5, .85, 350, 5, 20, 40, ballHit,
	"A basic all around cannonball"
)
newCannonBall(2, "Common", 2, "Chain Shot", ReplicatedStorage.Assets.Cannonballs["Chain Shot"], 3, .85, 1.5, 1, 250, 5, 70, 20, ballHit,
	"Cannonball effective against masts and sails"
)

newCannonBall(3, "Uncommon", 4, "Firebrand", ReplicatedStorage.Assets.Cannonballs["Firebrand"], 3, 1.1, 1.5, .95, 400, 30, 25, 65, ballHit,
	"Cannonball that does good damage to hulls."
)

newCannonBall(4, "Rare", 10, "Thunderbolt", ReplicatedStorage.Assets.Cannonballs["Thunderbolt"], 3, 2, 1.5, .7, 535, 40, 175, 145, lightningHit,
	"Cannonball that travels fast and has high damage overall.."
)

newCannonBall(5, "Epic", 14, "Explosive", ReplicatedStorage.Assets.Cannonballs["Explosive"], 3, 4, 1.5, 1.3, 150, 25, 55, 350, ballHit2,
	"Cannonball that does heavy damage to hulls."
)

newCannonBall(6, "Legendary", 20,"Fury", ReplicatedStorage.Assets.Cannonballs["Fury"], 3, 1.3, 1.5, .85, 400, 45, 250, 250, ballHit,
	"A furious cannonball"
)

return cannonballs

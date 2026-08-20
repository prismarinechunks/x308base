AddCSLuaFile()

DEFINE_BASECLASS("base_anim")

ENT.PrintName = "Custom Health Kit"
ENT.Category = "308 Base"

ENT.Editable = true

ENT.AdminOnly = true
ENT.Spawnable = true

function ENT:SetupDataTables()
self:NetworkVar("Int",0,"Recover",{
	KeyName = "recover",
	Edit = {
		type = "Int",
		min = 0,
		max = 99999999,
		order = 1
	}
})

self:NetworkVar("Bool",1,"IgnoreMaxHP",{
	KeyName = "ignoremaxhp",
	Edit = {
		type = "Bool",
		order = 2
	}
})
end

function ENT:SpawnFunction(ply,tr,c)
if not tr.Hit then return end

	local ent = ents.Create(c)

	if not IsValid(ent) then return end

		ent:SetPos(tr.HitPos + tr.HitNormal * 16)

		ent:SetRecover(100)
		ent:SetIgnoreMaxHP(true)

		ent:SetCreator(ply)

		ent:Spawn()
		ent:Activate()

		return ent
		end

		function ENT:Initialize()
		if SERVER then
			self:SetModel("models/Items/HealthKit.mdl")

			self:PhysicsInit(SOLID_VPHYSICS)
			self:SetMoveType(MOVETYPE_VPHYSICS)
			self:SetSolid(SOLID_VPHYSICS)

			self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

			local p = self:GetPhysicsObject()

			if IsValid(p) then
				p:Wake()
				end
				end
				end

				function ENT:Use(a)
				if not IsValid(a) then return end

					if not a:IsPlayer() then return end

						if a:Health() >= a:GetMaxHealth() and not self:GetIgnoreMaxHP() then
							return
							end

							local hp = a:Health() + self:GetRecover()

							if not self:GetIgnoreMaxHP() then
								hp = math.min(hp,a:GetMaxHealth())
								end

								a:SetHealth(hp)

								a:EmitSound("items/smallmedkit1.wav")

								SafeRemoveEntity(self)
								end

								function ENT:Think()
								end

								function ENT:OnTakeDamage()
								return true
								end

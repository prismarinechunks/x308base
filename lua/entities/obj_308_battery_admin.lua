AddCSLuaFile()

DEFINE_BASECLASS("base_anim")

ENT.PrintName = "Custom Suit Battery"

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


self:NetworkVar("Bool",1,"IgnoreMaxPower",{
	KeyName = "ignoremaxpower",
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

		ent:SetIgnoreMaxPower(true)

		ent:SetCreator(ply)


		ent:Spawn()

		ent:Activate()


		return ent

		end


		function ENT:Initialize()

		if SERVER then

			self:SetModel("models/Items/battery.mdl")


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


						if a:Armor() >= a:GetMaxArmor() and not self:GetIgnoreMaxPower() then
							return
							end


							local armor = a:Armor() + self:GetRecover()


							if not self:GetIgnoreMaxPower() then
								armor = math.min(armor,a:GetMaxArmor())
								end


								a:SetArmor(armor)


								a:EmitSound("items/battery_pickup.wav")


								SafeRemoveEntity(self)

								end


								function ENT:Think()
								end


								function ENT:OnTakeDamage()
								return true
								end

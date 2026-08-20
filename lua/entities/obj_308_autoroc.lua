AddCSLuaFile()

DEFINE_BASECLASS("base_anim")

ENT.Type = "anim"

ENT.PrintName = ""

ENT.Spawnable = false


if SERVER then

	function ENT:Initialize()

	self:SetModel("models/weapons/w_missile_closed.mdl")

	self.Timer = CurTime() + .3

	self:PhysicsInit(SOLID_VPHYSICS)

	self:SetMoveType(MOVETYPE_FLYGRAVITY)

	self:SetSolid(SOLID_VPHYSICS)

	self:SetCollisionGroup(13)

	self:SetGravity(.8)

	end


	function ENT:Touch(ent)

	if not IsValid(ent) then return end

		if self:GetOwner() ~= ent
			and ent:GetClass() ~= self:GetClass()
			and (
				ent:IsPlayer()
				or ent:IsNPC()
				or IsNextBot3(ent)
				or ent:IsWorld()
				or ent:GetMoveType() == MOVETYPE_VPHYSICS
			) then

			self:Explosion()

			end

			end


			function ENT:Think()

			if not self.Timer then
				self.Timer = CurTime()+.3
				end


				if self.Timer < CurTime() then

					if self.Timer ~= 0 then

						self:SetModel("models/weapons/w_missile.mdl")

						self:EmitSound("weapons/rpg/rocket1.wav")

						self:SetMoveType(MOVETYPE_FLY)

						util.SpriteTrail(
							self,
					   0,
					   Color(200,200,200,255),
										 true,
					   5,
					   10,
					   1,
					   .5,
					   "trails/smoke.vmt"
						)

						self.Timer = 0

						elseif self:GetSolid() ~= 0 then

							local owner = self:GetOwner()

							if IsValid(owner) then

								self:SetAngles(
									(owner:GetEyeTrace().HitPos - self:GetPos()):Angle()
								)

								end


								self:SetVelocity(self:GetForward()*500)


								local flash = ents.Create("env_muzzleflash")

								if IsValid(flash) then

									flash:SetPos(self:GetPos())
									flash:SetKeyValue("scale","5")
									flash:Spawn()
									flash:Fire("Fire",0,0)

									end

									end

									end

									end


									function ENT:OnRemove()

									self:StopSound("weapons/rpg/rocket1.wav")

									end


									function ENT:Explosion()

									if self.Hit then return end

										self.Hit = true


										self:StopSound("weapons/rpg/rocket1.wav")


										sound.Play(
											"weapons/explode"..math.random(3,5)..".wav",
												   self:GetPos()
										)


										self:EmitSound(
											"3088083421/exp/explode"..math.random(1,4)..".ogg",
													   511
										)


										local explo = ents.Create("env_explosion")

										if IsValid(explo) then

											explo:SetOwner(self:GetOwner())

											explo:SetPos(self:GetPos())

											explo:SetKeyValue("iMagnitude","0")

											explo:SetKeyValue("spawnflags","369")

											explo:Spawn()

											explo:Activate()

											explo:Fire("Explode","",0)

											end


											local explo2 = ents.Create("env_physexplosion")

											if IsValid(explo2) then

												explo2:SetOwner(self:GetOwner())

												explo2:SetPos(self:GetPos())

												explo2:SetKeyValue("magnitude","100")

												explo2:SetKeyValue("radius","240")

												explo2:SetKeyValue("spawnflags","3")

												explo2:Spawn()

												explo2:Activate()

												explo2:Fire("Explode","",0)

												end


												util.BlastDamage(
													self:GetOwner() or self,
																 self:GetOwner() or self,
																 self:GetPos(),
																 700,
							 150
												)


												local d = EffectData()

												d:SetOrigin(self:GetPos())

												d:SetMagnitude(1)

												util.Effect("308_explosion",d)


												self:SetCollisionGroup(COLLISION_GROUP_NONE)

												self:SetMoveType(MOVETYPE_NONE)

												self:SetSolid(SOLID_NONE)

												self:SetNoDraw(true)

												self:DrawShadow(false)


												SafeRemoveEntityDelayed(self,3)

												end

												end

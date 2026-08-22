-- Created By Xero Chunks
AddCSLuaFile()
ENT.Base = "npc_308t_turret"
ENT.PrintName = "Heavy Turret"
if GAME308_LANMath == 2 then
	ENT.PrintName = "重型炮塔"
	end
ENT.Category = "Xbase | NPCs"
	ENT.HP = 225
	ENT.Material = "phoenix_storms/cube"
	ENT.Model = "models/hunter/misc/sphere175x175.mdl"
	ENT.AttRange2 = 1750
	ENT.RA_Dmg = 15

	function ENT:CustomInit()
	self:EmitSound("3088083421/shelter/build_complete.wav")
	timer.Simple(0, function()
	if not IsValid(self) then return end
		self:SetPos(self:GetPos() + Vector(0, 0, 30))
		if not SERVER then return end
			local function CreateDecoration(model, pos, ang, scale, material, parent)
			local ent = ents.Create("prop_physics")
			if not IsValid(ent) then
				return
				end
				ent:SetModel(model)
				ent:SetPos(pos)
				if ang then
					ent:SetAngles(ang)
					end
					if scale then
						ent:SetModelScale(scale)
						end
						if material then
							ent:SetMaterial(material)
							end
							ent:SetOwner(self)
							ent:Spawn()
							ent:SetSolid(SOLID_NONE)
							ent:SetMoveType(MOVETYPE_NONE)
							if IsValid(parent) then
								ent:SetParent(parent)
								end
								ent:Activate()
								self:DeleteOnRemove(ent)
								return ent
								end
								CreateDecoration(
									"models/hunter/misc/cone1x1.mdl",
						 self:GetPos() - Vector(0, 0, 50),
												 nil,
						 nil,
						 "phoenix_storms/cube"
								)
								CreateDecoration(
									"models/hunter/tubes/tube1x1x2.mdl",
						 self:GetPos() - Vector(0, 0, 50),
												 nil,
						 0.5,
						 "phoenix_storms/cube"
								)
								local barrelPos = self:GetPos() + self:GetForward() * 30
								self.Gu = {}
								for i = 1, 4 do
									local offset
									if i == 1 then
										offset = self:GetRight() * 3 + self:GetUp() * 3
										elseif i == 2 then
											offset = -self:GetRight() * 3 - self:GetUp() * 3
											elseif i == 3 then
												offset = -self:GetRight() * 3 + self:GetUp() * 3
												else
													offset = self:GetRight() * 3 - self:GetUp() * 3
													end
													local barrel = CreateDecoration(
														"models/mechanics/robotics/a3.mdl",
											 barrelPos + offset,
											 self:GetForward():Angle(),
																					0.5,
											 "phoenix_storms/gear",
											 self
													)
													if IsValid(barrel) then
														table.insert(self.Gu, barrel)
														end
														end
														end)
	end

	function ENT:CustomThink()
	if not IsValid(self) then return end
		local enemy = self:GetEnemy()
		if IsValid(enemy) then
			local ang = (enemy:EyePos() - self:GetPos()):Angle()
			self:SetAngles(ang)
			else
				self:SetAngles(Angle(0, CurTime() * 35, 0))
				end
				end

				function ENT:RangeAtt()
				if not IsValid(self) then return end
					local enemy = self:GetEnemy()
					if not IsValid(enemy) then
						self.Timer = 0
						return
						end
						self.Timer = CurTime() + 0.09
						if self.FireB then
							self:FireB(
								self:GetPos()
								+ self:GetForward() * 50
								+ self:GetUp() * 3
								+ self:GetRight() * 3
							)
							end
							sound.Play(
								"3088083421/shelter/turret-1.wav",
				  self:GetPos(),
									   150
							)
							end

							function ENT:CustomOnKilled()
							if not IsValid(self) then return end
								self:EmitSound(
									"3088083421/shelter/crash.wav",
					   150
								)
								if SERVER then
									local exp = ents.Create("env_explosion")
									if IsValid(exp) then
										exp:SetPos(self:GetPos())
										exp:SetOwner(self)
										exp:SetKeyValue("iMagnitude", "0")
										exp:SetKeyValue("spawnflags", "305")
										exp:Spawn()
										exp:Activate()
										exp:Fire("Explode", "", 0)
										end
										end
										timer.Simple(0, function()
										if IsValid(self) then
											SafeRemoveEntity(self)
											end
											end)
										end

										Add308Nextbot(ENT)

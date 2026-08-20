-- Created By XeroChunks
AddCSLuaFile()
ENT.Base = "npc_308_man"
ENT.PrintName = "Turret"
if GAME308_LANMath == 2 then
	ENT.PrintName = "炮塔"
	end
	ENT.Category = "308 NPC"
	ENT.Factions = {FACTION_REBELS}
	ENT.BBox = Vector(40, 40, 40)
	ENT.BBox2 = -Vector(40, 40, 40)
	ENT.BloodColor = 3
	ENT.Scale = 0.5
	ENT.HP = 175
	ENT.StartSpeed = 0
	ENT.AllowMove = false
	ENT.PhysgunDisabled = true
	ENT.Gravity = 0
	ENT.Model = "models/hunter/blocks/cube1x1x1.mdl"
	ENT.AttRange = 0
	ENT.AttRange2 = 1500
	ENT.RA_Dmg = 15

	function ENT:CustomInit()
	self:EmitSound("3088083421/shelter/build_complete.wav")
	timer.Simple(0, function()
	if not IsValid(self) then return end
		self:SetPos(self:GetPos() + Vector(0, 0, 30))
		if not SERVER then return end
			local function CreateDecoration(model, pos, ang, scale, parent)
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
								"models/hunter/blocks/cube05x05x025.mdl",
						self:GetPos() - Vector(0, 0, 50)
							)
							CreateDecoration(
								"models/hunter/tubes/tube1x1x2.mdl",
						self:GetPos() - Vector(0, 0, 50),
											 nil,
						0.5
							)
							self.Gu = CreateDecoration(
								"models/mechanics/robotics/a3.mdl",
								self:GetPos() + self:GetForward() * 30,
													   self:GetForward():Angle(),
													   0.5,
								  self
							)
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
						self.Timer = CurTime() + 0.35
						sound.Play(
							"3088083421/shelter/turret-1.wav",
				 self:GetPos(),
								   150
						)
						if self.FireB then
							self:FireB(self:GetPos() + self:GetForward() * 50)
							end
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

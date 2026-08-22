-- Created By Xero Chunks

if not CanGame308() or not game.SinglePlayer() then return end

	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("shared.lua")

	include("shared.lua")

	GAME308 = 0
	SF308 = 0
	SF308T = 0

	function ENT:SpawnFunction(ply, tr)
	if not tr.Hit or ply.Shield then return end

		local ent = ents.Create("obj_308_ls")
		ent:SetPos(tr.HitPos + tr.HitNormal)
		ent:Spawn()

		return ent
		end

		function ENT:Initialize()
		if GAME308 > 0 then
			self.Dont = true
			self:Remove()
			return
			end

			self.Name = ""
			self.Math = 0
			self.EndM = 0

			self:SetMoveType(MOVETYPE_NONE)
			self:SetSolid(SOLID_NONE)
			self:SetNoDraw(true)

			self.Timer = CurTime() + 10
			self.Timer2 = CurTime()
			self.Timer3 = CurTime()
			self.Timert = CurTime()
			self.Phase = 0

			local tr = util.TraceHull({
				start = self:GetPos(),
									  endpos = self:GetPos() + Vector(0,0,99999999),
									  filter = self
			})

			if not tr.Hit or not tr.HitSky then
				_308TextAll(GAME308_LAN["nosky"], {
					y = .9,
					fin = .15,
					chan = 1
				})

				self:Remove()
				return
				end

				self.EPos = tr.HitPos
				self.R = self:GetPos():Distance(tr.HitPos)

				if self.R < 1500 then
					_308TextAll(GAME308_LAN["nosky1"], {
						y = .9,
						fin = .15,
						chan = 1
					})

					self:Remove()
					return
					end

					self.PosZ = self.EPos.z - 2600

					local function CreatePart(model, x, y)
					local e = ents.Create("prop_physics")

					e:SetModel(model)
					e:SetPos(self.EPos - Vector(x,y,2500))
					e:Spawn()

					local phys = e:GetPhysicsObject()

					if IsValid(phys) then
						phys:EnableMotion(false)
						end

						self:DeleteOnRemove(e)
						end

						CreatePart("models/hunter/plates/plate16x16.mdl",0,0)

						for _,pos in pairs({
							{569,-190},
							{-569,-190},
							{-190,569},
							{-190,-569},
							{569,190},
							{-569,190},
							{190,569},
							{190,-569}
						}) do
						CreatePart(
							"models/hunter/blocks/cube8x8x8.mdl",
				 pos[1],
				 pos[2]
						)
						end

						hook.Add("PlayerDisconnected","SF3081",function(p)
						if IsValid(self) and p.IsSF30A then
							self.Math = self.Math - 1
							end
							end)
						end

						function ENT:OnRemove()
						if self.Dont then return end

							SF308T = 0

							hook.Remove("PlayerDisconnected","SF3081")

							for _,p in ipairs(player.GetAll()) do
								GAME308 = 0
								SF308 = 0

								Muss330(p)

								p:EmitSound("3088083421/mg/end.wav")

								p.IsSF30 = false
								p.IsSF30A = nil
								p.NextSpawnTime = CurTime()

								if self.Math > 1 then
									p:ChatPrint(GAME308_LAN1["End2"])
									else
										if p:Alive() then
											self.Name = p:Nick()
											end

											p:ChatPrint(GAME308_LAN1["r"] .. self.Name)
											end
											end
											end

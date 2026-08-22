-- Created By Xero Chunks

if not CanGame308() then return end

	local SinglePlayerScale = 1

	if game.SinglePlayer() then
		SinglePlayerScale = 0
		end

		AddCSLuaFile("cl_init.lua")
		AddCSLuaFile("shared.lua")

		include("shared.lua")

		GAME308 = 0
		SF308 = 0
		SF308T = 0


		if not game.SinglePlayer() then

			function ENT:SpawnFunction(ply, tr)

			if not IsValid(ply) then return end
				if not tr.Hit or ply.Shield then return end

					if #ents.FindByClass("obj_308_la") > 0 then
						return
						end

						local ent = ents.Create("obj_308_la")

						if not IsValid(ent) then return end

							ent:SetPos(tr.HitPos + tr.HitNormal)
							ent:SetCreator(ply)

							ent:Spawn()
							ent:Activate()

							return ent
							end

							end


							if SERVER then


								function ENT:Initialize()

								if GAME308 > 0 then
									self.Dont = true
									self:Remove()
									return
									end


									self.Name = ""
									self.Math = 0
									self.EndM = 0
									self.Phase = 0
									self.PPhase = 0

									self.Timer = CurTime() + 10
									self.Timert = CurTime()

									self.CreatedProps = {}
									self.Players = {}


									self:SetMoveType(MOVETYPE_NONE)
									self:SetSolid(SOLID_NONE)
									self:SetNoDraw(true)


									local tr = util.TraceHull({

										start = self:GetPos(),

															  endpos = self:GetPos() +
															  Vector(0,0,99999999),

															  filter = self,

															  mins = Vector(-16,-16,-16),
															  maxs = Vector(16,16,16)

									})


									if not tr.Hit or not tr.HitSky then

										_308TextAll(
											GAME308_LAN["nosky"],
					  {
						  y = .9,
						  fin = .15,
						  chan = 1
					  }
										)

										self.Dont = true
										self:Remove()

										return
										end


										self.EPos = tr.HitPos

										self.R = self:GetPos():Distance(self.EPos)


										if self.R < 1500 then

											_308TextAll(
												GAME308_LAN["nosky1"],
					   {
						   y = .9,
						   fin = .15,
						   chan = 1
					   }
											)

											self.Dont = true
											self:Remove()

											return
											end


											self.PosZ = self.EPos.z - 2600


											GAME308 = 1
											SF308 = 1


											local function CreateLAProp(model,x,y)

											local ent = ents.Create("prop_physics")

											if not IsValid(ent) then return end


												ent:SetModel(model)

												ent:SetPos(
													self.EPos -
													Vector(x,y,2500)
												)


												ent:Spawn()
												ent:Activate()


												local phys = ent:GetPhysicsObject()

												if IsValid(phys) then

													phys:EnableMotion(false)

													end


													self:DeleteOnRemove(ent)

													table.insert(
														self.CreatedProps,
						  ent
													)


													return ent

													end



													CreateLAProp(
														"models/hunter/plates/plate16x16.mdl",
						  0,
						  0
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  569,
						  -190
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  -569,
						  -190
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  -190,
						  569
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  -190,
						  -569
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  569,
						  190
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  -569,
						  190
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  190,
						  569
													)


													CreateLAProp(
														"models/hunter/blocks/cube8x8x8.mdl",
						  190,
						  -569
													)


													hook.Add(
														"PlayerDisconnected",
					  "SF3081_" .. self:EntIndex(),

															 function(ply)

															 if not IsValid(self) then return end

																 if ply.IsSF30A then

																	 self.Math = math.max(
																		 self.Math - 1,
									   0
																	 )

																	 end

																	 self.Players[ply] = nil

																	 end
													)


													_308TextAll(
														GAME308_LAN["hp"],
						 {
							 y = .2,
							 fin = .05
						 }
													)

													end

													-- Created By Xero Chunks

													if not SERVER then return end


														function ENT:OnRemove()

														if self.Dont then return end


															hook.Remove(
																"PlayerDisconnected",
						   "SF3081_" .. self:EntIndex()
															)


															SF308T = 0
															GAME308 = 0
															SF308 = 0

															GAME308UNWEP = nil


															for _,ply in ipairs(player.GetAll()) do

																if not IsValid(ply) then continue end


																	ply:EmitSound(
																		"3088083421/mg/end.wav"
																	)


																	ply.IsSF30 = nil
																	ply.IsSF30A = nil
																	ply.LA308 = nil


																	ply.NextSpawnTime = CurTime()


																	if self.Math > 1 then

																		ply:ChatPrint(
																			GAME308_LAN1["End3"]
																		)

																		else

																			if ply:Alive() then
																				self.Name = ply:Nick()
																				end


																				ply:ChatPrint(
																					GAME308_LAN1["r"] ..
																					self.Name
																				)

																				end

																				end

																				end



																				function ENT:Think()

																				if not IsValid(self) then return end


																					GAME308 = 1
																					SF308 = 1
																					GAME308UNWEP = 1



																					for _,ply in ipairs(player.GetAll()) do

																						if not IsValid(ply) then continue end


																							if not ply.IsSF30 then

																								ply.IsSF30 = true
																								ply.IsSF30A = true

																								self.Math = self.Math + 1

																								self.Players[ply] = true


																								else

																									if not ply:Alive()
																										and ply.IsSF30A
																										and self.Phase > 0 then

																										ply.IsSF30A = nil

																										self.Math = math.max(
																											self.Math - 1,
											   0
																										)

																										end


																										if self.Math < 1 then

																											self.EndM = self.EndM + 1

																											if self.EndM > 7 then

																												SafeRemoveEntity(self)

																												return

																												end

																												end

																												end

																												end



																												local ti = math.max(
																													0,
												math.floor(
													self.Timer - CurTime()
												)
																												)



																												if self.Phase < 1 then


																													for _,ply in ipairs(player.GetAll()) do

																														if IsValid(ply) then

																															ply:PrintMessage(
																																HUD_PRINTCENTER,
												GAME308_LAN1["gtd"] ..
												GAME308_LAN1["t"] ..
												ti ..
												GAME308_LAN1["t0"]
																															)

																															end

																															end



																															else


																																if self.Math > SinglePlayerScale then


																																	for _,ply in ipairs(player.GetAll()) do

																																		if not IsValid(ply) then continue end


																																			if self.PPhase == 0 then

																																				ply:PrintMessage(
																																					HUD_PRINTCENTER,
													 GAME308_LAN1["la"] ..
													 ti ..
													 GAME308_LAN1["rs"] ..
													 self.Math
																																				)

																																				else

																																					ply:PrintMessage(
																																						HUD_PRINTCENTER,
													  GAME308_LAN1["la1"] ..
													  ti ..
													  GAME308_LAN1["rs"] ..
													  self.Math
																																					)

																																					end

																																					end



																																					if self.Timer <= CurTime() then


																																						if self.PPhase < 1 then


																																							self.PPhase = 1

																																							self.Timer = CurTime() + 10


																																							for i = 1, math.max(self.Math - SinglePlayerScale,0) do


																																								local weapon = ents.Create(
																																									"weapon_308_r"
																																								)


																																								if IsValid(weapon) then

																																									weapon:SetPos(
																																										self.EPos -
																																										Vector(
																																											math.random(-350,350),
																																											   math.random(-350,350),
																																											   2000
																																										)
																																									)


																																									weapon:Spawn()

																																									self:DeleteOnRemove(
																																										weapon
																																									)


																																									SafeRemoveEntityDelayed(
																																										weapon,
																 10
																																									)

																																									end


																																									end



																																									else


																																										self.PPhase = 0


																																										for _,ply in ipairs(player.GetAll()) do

																																											if not IsValid(ply) then continue end


																																												if not ply.LA308
																																													and ply:Alive() then

																																													ply:Kill()

																																													ply.NextSpawnTime =
																																													CurTime() + 9999

																																													end


																																													ply.LA308 = nil

																																													ply:StripWeapons()

																																													end


																																													self.Timer = CurTime() + 5


																																													end


																																													end



																																													else


																																														SafeRemoveEntity(self)

																																														return


																																														end



																																														for _,ply in ipairs(player.GetAll()) do

																																															if IsValid(ply)
																																																and ply:Alive()
																																																and ply:GetPos().z < self.PosZ then


																																																ply:Kill()

																																																ply.NextSpawnTime =
																																																CurTime() + 9999


																																																ply:Spectate(
																																																	OBS_MODE_ROAMING
																																																)

																																																end

																																																end


																																																end





																																																if self.Timer <= CurTime() then


																																																	self.Phase = self.Phase + 1



																																																	if self.Phase < 2 then


																																																		self.Timer = CurTime() + 10

																																																		self.PPhase = 0



																																																		for _,ply in ipairs(player.GetAll()) do


																																																			if not IsValid(ply) then continue end


																																																				ply:Spawn()


																																																				ply:SetPos(
																																																					self.EPos -
																																																					Vector(
																																																						200,
															200,
															2480
																																																					)
																																																				)


																																																				ply:StripWeapons()


																																																				ply:SetMaxHealth(1)
																																																				ply:SetHealth(1)

																																																				ply:SetArmor(0)


																																																				ply:SetRunSpeed(450)
																																																				ply:SetWalkSpeed(450)
																																																				ply:SetJumpPower(300)


																																																				ply:SetMaterial("")



																																																				timer.Simple(
																																																					2,
																 function()

																 if not IsValid(self)
																	 or not IsValid(ply) then
																	 return
																	 end


																	 ply:EmitSound(
																		 "3088083421/mg/start" ..
																		 math.random(3) ..
																		 ".wav"
																	 )


																	 end
																																																				)


																																																				end


																																																				SF308T = 1



																																																				end


																																																				end



																																																				self:NextThink(
																																																					CurTime() + .1
																																																				)

																																																				return true

																																																				end
																																																			end

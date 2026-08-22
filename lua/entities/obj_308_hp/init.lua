-- Created By Xero Chunks

if not CanGame308() then return end

	local singlePlayer = game.SinglePlayer()
	local damageOffset = singlePlayer and 0 or 1

	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("shared.lua")

	include("shared.lua")

	HP308 = 0
	SF308 = 0
	SF308T = 0

	ENT.Remain = 30
	ENT.T = 0

	if not singlePlayer then
		function ENT:SpawnFunction(ply, tr)
		if not tr.Hit or ply.Shield then return end

			local ent = ents.Create("obj_308_hp")

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
					if HP308 > 0 then
						self.Dont = true
						SafeRemoveEntity(self)
						return
						end

						HP308 = 1
						SF308 = 1

						self.Name = ""
						self.Math = 0
						self.EndM = 0
						self.Phase = 0
						self.PPhase = 0
						self.Timer = CurTime() + 10
						self.Timer2 = CurTime() + 15
						self.Timert = CurTime()

						self:SetMoveType(MOVETYPE_NONE)
						self:SetSolid(SOLID_NONE)
						self:SetNoDraw(true)

						local trace = util.TraceHull({
							start = self:GetPos(),
													 endpos = self:GetPos() + Vector(0, 0, 99999999),
													 filter = self
						})

						if not trace.Hit or not trace.HitSky then
							_308TextAll(
								GAME308_LAN["nosky"],
				   {
					   y = 0.9,
					   fin = 0.15,
					   chan = 1
				   }
							)

							self.Dont = true
							SafeRemoveEntity(self)
							return
							end

							self.EPos = trace.HitPos
							self.R = self:GetPos():Distance(trace.HitPos)

							MsgAll("\ndistance:" .. self.R)

							if self.R < 500 then
								_308TextAll(
									GAME308_LAN["nosky1"],
					{
						y = 0.9,
						fin = 0.15,
						chan = 1
					}
								)

								self.Dont = true
								SafeRemoveEntity(self)
								return
								end

								self.PosZ = self.EPos.z - 2600

								local function createPlatform(model, x, y)
								local ent = ents.Create("prop_physics")

								if not IsValid(ent) then return end

									ent:SetModel(model)
									ent:SetPos(
										self.EPos - Vector(x, y, 2500)
									)

									ent:Spawn()
									ent:Activate()

									local phys = ent:GetPhysicsObject()

									if IsValid(phys) then
										phys:EnableMotion(false)
										end

										self:DeleteOnRemove(ent)
										end

										createPlatform(
											"models/hunter/plates/plate16x16.mdl",
						 0,
						 0
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 569,
						 -190
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 -569,
						 -190
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 -190,
						 569
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 -190,
						 -569
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 569,
						 190
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 -569,
						 190
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 190,
						 569
										)

										createPlatform(
											"models/hunter/blocks/cube8x8x8.mdl",
						 190,
						 -569
										)

										_308TextAll(
											GAME308_LAN["hp"],
					  {
						  y = 0.2,
						  fin = 0.05
					  }
										)

										hook.Add(
											"PlayerDisconnected",
				   "SF3081",
				   function(ply)

				   if not IsValid(self) then return end

					   if ply.IsSF30A then
						   self.Math = math.max(
							   self.Math - 1,
							  0
						   )
						   end
						   end
										)
										end


										function ENT:OnRemove()
										if self.Dont then return end

											HP308 = 0
											SF308 = 0
											SF308T = 0

											GAME308UNWEP = nil

											hook.Remove(
												"PlayerDisconnected",
					   "SF3081"
											)

											for _, ply in ipairs(player.GetAll()) do

												if not IsValid(ply) then continue end

													ply.IsSF30 = nil
													ply.IsSF30A = nil
													ply.NextSpawnTime = CurTime()

													if ply:Alive() then
														ply:SetMoveType(MOVETYPE_WALK)
														end

														ply:SetGravity(1)

														if self.Math > 1 then
															ply:ChatPrint(
																GAME308_LAN1["End3"]
															)
															else
																if ply:Alive() then
																	self.Name = ply:Nick()
																	end

																	ply:ChatPrint(
																		GAME308_LAN1["r"]
																		..
																		self.Name
																	)
																	end

																	ply:EmitSound(
																		"3088083421/mg/end.wav"
																	)
																	end

																	Muss330()
																	end


																	function ENT:Think()

																	if not IsValid(self) then return end

																		GAME308 = 1
																		HP308 = 1
																		SF308 = 1
																		GAME308UNWEP = 1

																		for _, ply in ipairs(player.GetAll()) do

																			if not IsValid(ply) then continue end

																				if not ply.IsSF30 then

																					ply.IsSF30 = true
																					ply.IsSF30A = true

																					self.Math = self.Math + 1

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

																							if self.Math <= 0 then
																								self.EndM = self.EndM + 1

																								if self.EndM > 7 then
																									self.Completed = false
																									SafeRemoveEntity(self)
																									return
																									end
																									else
																										self.EndM = 0
																										end
																										end
																										end


																										local timeLeft = math.floor(
																											self.Timer - CurTime()
																										)


																										if self.Phase < 1 then

																											for _, ply in ipairs(player.GetAll()) do

																												if not IsValid(ply) then continue end

																													ply:PrintMessage(
																														4,
											  GAME308_LAN1["gte"]
											  ..
											  GAME308_LAN1["t"]
											  ..
											  timeLeft
											  ..
											  GAME308_LAN1["t0"]
																													)
																													end

																													else

																														if self.Math > damageOffset then

																															for _, ply in ipairs(player.GetAll()) do

																																if not IsValid(ply) then continue end

																																	ply:PrintMessage(
																																		4,
												  GAME308_LAN1["hp"]
												  ..
												  GAME308_LAN1["rs"]
												  ..
												  self.Math
																																	)

																																	if ply:Alive() then

																																		ply:TakeDamage(
																																			math.random(
																																				math.max(1, 2 - damageOffset),
																																						2
																																			),
												 self
																																		)

																																		else

																																			ply.NextSpawnTime =
																																			CurTime() + 9999

																																			end
																																			end


																																			if self.Timer2 <= CurTime() then

																																				self.PPhase = 1
																																				self.Timer2 = CurTime() + 1

																																				local healthCount =
																																				math.max(
																																					self.Math - damageOffset,
											 0
																																				)

																																				for i = 1, healthCount do

																																					local vial =
																																					ents.Create(
																																						"item_healthvial"
																																					)

																																					if IsValid(vial) then

																																						vial:SetPos(
																																							self.EPos
																																							-
																																							Vector(
																																								math.random(-350, 350),
																																								   math.random(-350, 350),
																																								   2000
																																							)
																																						)

																																						vial:Spawn()
																																						vial:Activate()

																																						vial:SetModel(
																																							"models/props_junk/PopCan01a.mdl"
																																						)

																																						SafeRemoveEntityDelayed(
																																							vial,
															  8
																																						)

																																						self:DeleteOnRemove(
																																							vial
																																						)
																																						end
																																						end
																																						end

																																						else

																																							self.Completed = true
																																							SafeRemoveEntity(self)
																																							return
																																							end


																																							for _, ply in ipairs(player.GetAll()) do

																																								if not IsValid(ply) then continue end

																																									if ply:GetPos().z < self.PosZ
																																										and ply:Alive() then

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

																																											self.Phase =
																																											self.Phase + 1


																																											if self.Phase < 2 then

																																												self.Timer =
																																												CurTime() + math.huge

																																												self.Timer2 =
																																												CurTime() + 5

																																												self.PPhase = 0


																																												for _, ply in ipairs(player.GetAll()) do

																																													if not IsValid(ply) then continue end

																																														ply:Spawn()

																																														ply:SetPos(
																																															self.EPos
																																															-
																																															Vector(
																																																200,
													  200,
													  2480
																																															)
																																														)

																																														ply:StripWeapons()
																																														ply:StripAmmo()

																																														ply:SetMaxHealth(100)
																																														ply:SetHealth(100)
																																														ply:SetArmor(0)

																																														ply:SetRunSpeed(450)
																																														ply:SetWalkSpeed(450)
																																														ply:SetJumpPower(300)


																																														if damageOffset == 0 then

																																															ply:ChatPrint(
																																																GAME308_LAN1["pi"]
																																															)
																																															end


																																															local target =
																																															ply

																																															timer.Simple(
																																																2,
															function()

															if not IsValid(self)
																or not IsValid(target) then
																return
																end

																target:EmitSound(
																	"3088083421/mg/start"
																	..
																	math.random(3)
																	..
																	".wav"
																)
																end
																																															)
																																															end

																																															SF308T = 1
																																															end
																																															end


																																															self:NextThink(
																																																CurTime() + 0.1
																																															)

																																															return true
																																															end
																																															end

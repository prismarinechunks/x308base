-- Created By Xero Chunks

if not CanGame308() then return end

	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("shared.lua")

	include("shared.lua")

	GAME308 = 0
	SF308 = 0
	SF308T = 0

	if not game.SinglePlayer() then
		function ENT:SpawnFunction(ply, tr)
		if not IsValid(ply) or not tr.Hit or ply.Shield then return end
			if #ents.FindByClass("obj_308_km") > 0 then return end

				local ent = ents.Create("obj_308_km")
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

							for _, ent in ipairs(ents.FindByClass("obj_308_km")) do
								if ent ~= self then
									SafeRemoveEntity(ent)
									end
									end

									self.Name = ""
									self.Math = 0
									self.EndM = 0
									self.Phase = 0
									self.Timer = CurTime() + 10
									self.Timert = CurTime()

									self.CreatedProps = {}
									self.ActivePlayers = {}

									self:SetMoveType(MOVETYPE_NONE)
									self:SetSolid(SOLID_NONE)
									self:SetNoDraw(true)

									local tr = util.TraceHull({
										start = self:GetPos(),
															  endpos = self:GetPos() + Vector(0, 0, 99999999),
															  filter = self,
															  mins = Vector(-16, -16, -16),
															  maxs = Vector(16, 16, 16)
									})

									if not tr.Hit or not tr.HitSky then
										_308TextAll(GAME308_LAN["nosky"], {
											y = 0.9,
											fin = 0.15,
											chan = 1
										})

										self.Dont = true
										self:Remove()
										return
										end

										self.EPos = tr.HitPos
										self.R = self:GetPos():Distance(self.EPos)

										if self.R < 1500 then
											_308TextAll(GAME308_LAN["nosky1"], {
												y = 0.9,
												fin = 0.15,
												chan = 1
											})

											self.Dont = true
											self:Remove()
											return
											end

											self.PosZ = self.EPos.z - 900

											GAME308 = 1
											SF308 = 1

											local function CreateArenaProp(model, pos, ang, color)
											local ent = ents.Create("prop_physics")
											if not IsValid(ent) then return end

												ent:SetModel(model)
												ent:SetPos(pos)
												ent:SetAngles(ang or angle_zero)

												if color then
													ent:SetColor(color)
													end

													ent:Spawn()
													ent:Activate()

													local phys = ent:GetPhysicsObject()
													if IsValid(phys) then
														phys:EnableMotion(false)
														end

														self:DeleteOnRemove(ent)
														table.insert(self.CreatedProps, ent)

														return ent
														end

														self.Portal = CreateArenaProp(
															"models/effects/portalrift.mdl",
											self.EPos - Vector(0, 0, 1350),
																					  Angle(180, 0, 0)
														)

														if IsValid(self.Portal) then
															self.Portal:SetModelScale(15, 0)
															end

															self.Road1 = CreateArenaProp(
																"models/props_phx/huge/road_long.mdl",
											self.EPos - Vector(0, 0, 800)
															)

															self.Road2 = CreateArenaProp(
																"models/props_phx/huge/road_long.mdl",
											self.EPos - Vector(450, 0, 800)
															)

															self.Road3 = CreateArenaProp(
																"models/props_phx/huge/road_long.mdl",
											self.EPos - Vector(-450, 0, 800)
															)

															self.Road4 = CreateArenaProp(
																"models/props_phx/huge/road_long.mdl",
											self.EPos - Vector(-900, 0, 800),
																						 angle_zero,
											Color(255, 0, 0)
															)

															self.Road5 = CreateArenaProp(
																"models/props_phx/huge/road_long.mdl",
											self.EPos - Vector(900, 0, 800)
															)

															self:ScheduleRoadEvent(32, self.Road4, self.Road5)
															self:ScheduleRoadEvent(52, self.Road5, self.Road3)
															self:ScheduleRoadEvent(72, self.Road3, self.Road2)
															self:ScheduleRoadEvent(92, self.Road2, self.Road1)

															timer.Simple(107, function()
															if not IsValid(self) or not IsValid(self.Road1) then return end
																self.Road1:SetModel("models/props_phx/huge/road_medium.mdl")
																end)

															timer.Simple(113, function()
															if not IsValid(self) or not IsValid(self.Road1) then return end
																self.Road1:SetModel("models/props_phx/huge/road_short.mdl")
																end)

															hook.Add("PlayerDisconnected", "SF3081_" .. self:EntIndex(), function(ply)
															if not IsValid(self) then return end

																if ply.IsSF30A then
																	self.Math = math.max(self.Math - 1, 0)
																	end

																	self.ActivePlayers[ply] = nil
																	end)

															_308TextAll(GAME308_LAN["hp"], {
																y = 0.2,
																fin = 0.05
															})
															end

															function ENT:ScheduleRoadEvent(delay, movingRoad, warningRoad)
															timer.Simple(delay, function()
															if not IsValid(self) then return end
																if not IsValid(movingRoad) then return end

																	local phys = movingRoad:GetPhysicsObject()

																	if IsValid(phys) then
																		phys:EnableMotion(true)
																		phys:Wake()
																		end

																		if IsValid(warningRoad) then
																			warningRoad:SetColor(Color(255, 0, 0))
																			end
																			end)
															end

															function ENT:OnRemove()
															if self.Dont then return end

																local hookName = "SF3081_" .. self:EntIndex()
																hook.Remove("PlayerDisconnected", hookName)

																SF308T = 0
																GAME308 = 0
																SF308 = 0

																for _, ply in ipairs(player.GetAll()) do
																	if IsValid(ply) then
																		Muss330(ply)

																		if self.Math > 1 then
																			ply:ChatPrint(GAME308_LAN1["End1"])

																			if ply:Alive() then
																				ply:Kill()
																				end
																				end

																				ply:EmitSound("3088083421/mg/end.wav")
																				ply.IsSF30 = nil
																				ply.IsSF30A = nil
																				ply.SF308B = nil
																				ply.NextSpawnTime = CurTime()
																				end
																				end
																				end

																				-- Created By Xero Chunks

																				if not SERVER then return end

																					function ENT:Think()
																					if not IsValid(self) then return end

																						GAME308 = 1
																						SF308 = 1

																						for _, ply in ipairs(player.GetAll()) do
																							if IsValid(ply) then
																								if not ply.IsSF30 then
																									ply.IsSF30 = true
																									ply.IsSF30A = true
																									ply.SF308B = nil

																									self.Math = self.Math + 1
																									self.ActivePlayers[ply] = true
																									else
																										if not ply:Alive() and ply.IsSF30A and self.Phase > 0 then
																											ply.IsSF30A = nil
																											self.Math = math.max(self.Math - 1, 0)
																											end

																											if self.Phase > 0 and self.Math < 2 and not game.SinglePlayer() then
																												self.EndM = self.EndM + 1

																												if self.EndM > 9 then
																													if ply:Alive() then
																														self.Name = ply:Nick()
																														end

																														SafeRemoveEntity(self)
																														return
																														end
																														elseif game.SinglePlayer() and self.Math < 1 then
																															self.EndM = self.EndM + 1

																															if self.EndM > 9 then
																																SafeRemoveEntity(self)
																																return
																																end
																																end
																																end
																																end
																																end

																																local ti = math.max(0, math.floor(self.Timer - CurTime()))

																																for _, ply in ipairs(player.GetAll()) do
																																	if not IsValid(ply) then continue end

																																		if self.Phase < 1 then
																																			ply:PrintMessage(
																																				HUD_PRINTCENTER,
													GAME308_LAN1["gt7"] ..
													GAME308_LAN1["t"] ..
													ti ..
													GAME308_LAN1["t0"]
																																			)

																																			self.MathR = math.random(13)
																																			ply.SF308B = nil

																																			elseif self.Phase < 2 then
																																				ply:PrintMessage(
																																					HUD_PRINTCENTER,
													 GAME308_LAN1["rt"] ..
													 ti ..
													 GAME308_LAN1["rs"] ..
													 self.Math
																																				)

																																				if ply:GetPos().z < self.PosZ and ply:Alive() then
																																					ply:Kill()
																																					ply.NextSpawnTime = CurTime() + 110
																																					end
																																					end
																																					end

																																					if self.Phase >= 1 and self.Timert <= CurTime() then
																																						self.Timert = CurTime() + 0.1

																																						local prop = ents.Create("prop_physics")

																																						if IsValid(prop) then
																																							prop:SetModel("models/props_c17/canister_propane01a.mdl")

																																							local positions = {
																																								-675,
																																								-225,
																																								225,
																																								675
																																							}

																																							local x = positions[math.random(#positions)]

																																							prop:SetPos(
																																								self.EPos -
																																								Vector(
																																									x,
											   math.random(-1200, 1200),
																																									   600
																																								)
																																							)

																																							prop:Spawn()
																																							prop:Activate()

																																							local phys = prop:GetPhysicsObject()

																																							if IsValid(phys) then
																																								phys:EnableMotion(true)
																																								end

																																								self:DeleteOnRemove(prop)
																																								SafeRemoveEntityDelayed(prop, 10)
																																								end
																																								end

																																								if self.Timer <= CurTime() then
																																									self.Phase = self.Phase + 1

																																									if self.Phase == 1 then
																																										for _, ply in ipairs(player.GetAll()) do
																																											if not IsValid(ply) then continue end

																																												ply:Spawn()

																																												ply:SetPos(
																																													self:GetPos() +
																																													Vector(0, 0, self.R - 780)
																																												)

																																												ply:StripWeapons()
																																												ply:StripAmmo()

																																												ply:SetMaxHealth(30)
																																												ply:SetHealth(30)
																																												ply:SetArmor(0)

																																												ply:SetRunSpeed(250)
																																												ply:SetWalkSpeed(250)
																																												ply:SetJumpPower(200)

																																												ply:SetMaterial("")

																																												timer.Simple(2, function()
																																												if not IsValid(self) or not IsValid(ply) then return end

																																													Muss330(
																																														ply,
													 "music/hl1_song11.mp3"
																																													)

																																													ply:EmitSound(
																																														"3088083421/mg/start" ..
																																														math.random(3) ..
																																														".wav"
																																													)

																																													if not ply:HasWeapon("weapon_physcannon") then
																																														ply:Give("weapon_physcannon")
																																														end
																																														end)
																																												end

																																												SF308T = 1
																																												self.Timer = CurTime() + 112

																																												elseif self.Phase > 1 then
																																													SafeRemoveEntity(self)
																																													return
																																													end
																																													end

																																													self:NextThink(CurTime() + 0.1)
																																													return true
																																													end

																																													end

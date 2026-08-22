-- Created By Xero Chunks

if !CanGame308() then return end

	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("shared.lua")
	include("shared.lua")

	X308 = X308 or {}

	GAME308 = 0
	SU308 = 0
	SU308T = 0

	ENT.Remain = 30
	ENT.T = 0
	ENT.ZTa2 = {}

	local t = {
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_headcrab",
		"npc_308_headcrab",
		"npc_308_ztstr",
		"npc_308_ztstr"
	}

	local t2 = {
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbfast",
		"npc_308_zbstr",
		"npc_308_zbfast3",
		"npc_308_zbboom",
		"npc_308_zbboom",
		"npc_308_zbboom",
		"npc_308_zbminiboss"
	}

	function ENT:SpawnFunction(ply, tr)
	if !tr.Hit or ply.Shield then return end

		local ent = ents.Create("obj_308_surv")
		if !IsValid(ent) then return end

			ent:SetPos(tr.HitPos + tr.HitNormal)
			ent:SetCreator(ply)
			ent:Spawn()
			ent:Activate()

			return ent
			end

			function ENT:Initialize()
			local existing = ents.FindByClass("obj_308_surv")

			if X308.Active and X308.Mode != "surv" then
				self.Dont = true
				self:Remove()
				return
				end

				if #existing > 1 then
					self.Dont = true
					self:Remove()
					return
					end

					X308.Active = true
					X308.Mode = "surv"

					if game.GetMap() != "gm_flatgrass" and game.GetMap() != "gm_hl1_lily_flatgrass_13" then
						if _308TextAll then
							_308TextAll(GAME308_LAN["gamemap"], {
								y = .9,
								chan = 3,
								fxtime = 1,
								col2 = "255 100 100"
							})
							end

							self.Dont = true
							self:Remove()
							return
							end

							if RunConsoleCommand then
								RunConsoleCommand("wby_CLEANBODY_308")
								end

								self:SetMoveType(MOVETYPE_NONE)
								self:SetSolid(SOLID_NONE)
								self:SetNoDraw(true)

								self.Timer = CurTime() + 10
								self.Timer2 = CurTime() + 15

								self.AmbT1 = CurTime() + math.Rand(18, 20)
								self.AmbT2 = CurTime() + math.Rand(18, 20)
								self.AmbT3 = CurTime() + math.Rand(19, 22)

								if RemoveByClass308 then
									RemoveByClass308("prop_physics")
									end

									if RemoveAllWeapon308 then
										RemoveAllWeapon308()
										end

										local s = ents.Create("edit_sky")

										if IsValid(s) then
											s:SetNoDraw(true)
											s:Spawn()
											s:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
											s:SetTopColor(Vector(0, .1, 0))
											s:SetBottomColor(Vector(0, .2, 0))
											s:SetDuskColor(Vector(.1, .1, .2))
											s:SetDuskIntensity(.3)
											s:SetDrawStars(true)
											s:SetSunColor(Vector(0, 0, 0))
											s:SetSunSize(1)

											self:DeleteOnRemove(s)
											end

											local f = ents.Create("edit_fog")

											if IsValid(f) then
												f:SetNoDraw(true)
												f:Spawn()
												f:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
												f:SetFogStart(1)
												f:SetFogEnd(800)
												f:SetFogColor(Vector(0, 0, 0))
												f:SetDensity(1)

												self:DeleteOnRemove(f)
												end
												end

												function ENT:OnRemove()
												if self.Dont then return end

													X308.Active = false
													X308.Mode = nil

													if RemoveByClass308 then
														RemoveByClass308("prop_physics")
														end

														RunConsoleCommand("wb3_infammo", "0")

														if Muss330 then
															Muss330()
															end

															if _308StopSoundAll then
																_308StopSoundAll()
																end

																for _, p in pairs(player.GetAll()) do
																	if self.End then
																		local message = "YOU MAKE IT TO " .. self.T .. "!"

																		p:ChatPrint(message)

																		if _308TextAll then
																			_308TextAll(message, {
																				y = .87,
																				fxtime = 1,
																				col = "255 255 255",
																				chan = 1
																			})
																			end
																			end

																			GAME308 = 0
																			SU308 = 0
																			SU308T = 0
																			GAME308UNWEP = nil
																			GAME308UNSPAWN = nil
																			p.NextSpawnTime = CurTime()
																			end
																			end

																			function ENT:SpawnProp()
																			local props = {
																				{Vector(-260, 1018, -12736), Angle(-1, 88, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(-4, 1017, -12736), Angle(0, 91, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(252, 1024, -12736), Angle(-1, 90, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(260, -1019, -12736), Angle(-1, -92, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(4, -1015, -12736), Angle(0, -90, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(-251, -1019, -12736), Angle(-1, -90, -1), "models/props_wasteland/interior_fence002d.mdl"},
																				{Vector(-11173, -14050, -8525), Angle(-1, 73, 0), "models/props_combine/combine_citadel001.mdl"},
																				{Vector(-6538, -4681, -12800), Angle(0, 99, -1), "models/props_buildings/project_building02.mdl"},
																				{Vector(-963, -7867, -12037), Angle(0, -16, 0), "models/props_buildings/watertower_002a.mdl"},
																				{Vector(4721, -5986, -12799), Angle(0, 38, -1), "models/props_buildings/row_church_fullscale.mdl"},
																				{Vector(5288, -3910, -11977), Angle(3, 171, -4), "models/props_buildings/watertower_001a.mdl"},
																				{Vector(6870, -858, -11249), Angle(0, -137, 0), "models/props_buildings/building_002a.mdl"},
																				{Vector(8656, -4112, -11256), Angle(-1, -140, -1), "models/props_buildings/building_002a.mdl"},
																				{Vector(6109, 1718, -12803), Angle(0, 136, -1), "models/props_buildings/row_res_1_fullscale.mdl"},
																				{Vector(4096, 5813, -12800), Angle(0, -77, -1), "models/props_buildings/project_building02.mdl"},
																				{Vector(1026, 6894, -11392), Angle(-1, 157, 0), "models/props_buildings/building_002a.mdl"},
																				{Vector(-3573, 6132, -12803), Angle(-1, -150, 0), "models/props_buildings/row_res_1_fullscale.mdl"},
																				{Vector(-5841, 3111, -12800), Angle(0, 88, -1), "models/props_buildings/project_building03.mdl"}
																			}

																			for _, data in ipairs(props) do
																				local e = ents.Create("prop_physics")

																				if IsValid(e) then
																					e:SetPos(data[1])
																					e:SetAngles(data[2])
																					e:SetModel(data[3])
																					e.X308SurvivalProp = true
																					e:Spawn()

																					local phys = e:GetPhysicsObject()

																					if IsValid(phys) then
																						phys:EnableMotion(false)
																						end

																						self:DeleteOnRemove(e)
																						end
																						end
																						end

																						function ENT:SpawnZombie(list)
																						local class = _308Table(list)

																						if !class then return end

																							local z = ents.Create(class)

																							if !IsValid(z) then return end

																								z:SetAngles(Angle(0, math.random(-360, 360), 0))

																								local v = Vector(0, 0, -12800) - z:GetForward() * 2000
																								local tries = 0

																								while !util.IsInWorld(v) and tries < 20 do
																									tries = tries + 1

																									z:SetAngles(Angle(0, math.random(-360, 360), 0))
																									v = Vector(0, 0, -12800) - z:GetForward() * 2000
																									end

																									if !util.IsInWorld(v) then
																										z:Remove()
																										return
																										end

																										z.JudgeDelay = 2
																										z:SetPos(v)
																										z:Spawn()
																										z:Activate()

																										self:DeleteOnRemove(z)
																										table.insert(self.ZTa2, z)
																										end

																										function ENT:Think()
																										local ti = math.floor(self.Timer - CurTime())

																										GAME308 = 1

																										if !self.Do then
																											if !self.Do2 then
																												self.Do2 = true

																												timer.Simple(5, function()
																												if IsValid(self) then
																													self:SpawnProp()
																													end
																													end)
																												end

																												for _, p in pairs(player.GetAll()) do
																													p:PrintMessage(
																														HUD_PRINTCENTER,
											GAME308_LAN1["gtf"] ..
											GAME308_LAN1["t"] ..
											ti ..
											GAME308_LAN1["t0"]
																													)
																													end
																													else
																														GAME308UNWEP = 1
																														GAME308UNSPAWN = 1

																														local alive = false

																														for _, p in pairs(player.GetAll()) do
																															if p:Alive() then
																																if self.T > 3 and (p:Health() > 101 or GetConVarNumber("ai_disabled") == 1) then
																																	p:Kill()
																																	else
																																		alive = true
																																		end
																																		end

																																		if p:GetPos().z > -12648 then
																																			p:SetVelocity(Vector(0, 0, -10))
																																			end
																																			end

																																			if !alive then
																																				self.End = true
																																				SafeRemoveEntity(self)
																																				return
																																				end

																																				self.T = self.T + 1

																																				for _, p in pairs(player.GetAll()) do
																																					p:SetRunSpeed(250)
																																					p:SetWalkSpeed(200)
																																					p:SetJumpPower(1)
																																					end

																																					local tickColor = self.T > 420 and "255 0 0" or "255 255 255"

																																					if _308TextAll then
																																						_308TextAll("Tick:" .. self.T, {
																																							y = .9,
																																							time = 9999,
																																							fin = .15,
																																							chan = 1,
																																							col = tickColor,
																																							col2 = tickColor
																																						})
																																						end

																																						for x, z in pairs(self.ZTa2) do
																																							if !IsValid(z) then
																																								if RunConsoleCommand then
																																									RunConsoleCommand("wby_CLEANBODY_308")
																																									end

																																									table.remove(self.ZTa2, x)
																																									end
																																									end

																																									if self.AmbT1 < CurTime() then
																																										self.AmbT1 = CurTime() + math.Rand(3, 5)

																																										sound.Play(
																																											"ambient/levels/prison/inside_battle_zombie" ..
																																											math.random(2, 3) ..
																																											".wav",
													 self:GetPos(),
																																												   0
																																										)
																																										end

																																										if self.AmbT2 < CurTime() then
																																											self.AmbT2 = CurTime() + math.Rand(.5, 1.5)

																																											sound.Play(
																																												"ambient/levels/prison/inside_battle" ..
																																												math.random(9) ..
																																												".wav",
													  self:GetPos(),
																																													   0
																																											)
																																											end

																																											if self.AmbT3 < CurTime() then
																																												self.AmbT3 = CurTime() + math.Rand(2, 4)

																																												sound.Play(
																																													"ambient/levels/prison/inside_battle_soldier" ..
																																													math.random(3) ..
																																													".wav",
													   self:GetPos(),
																																														   0
																																												)
																																												end

																																												if self.Timer < CurTime() and #self.ZTa2 < 26 then
																																													if game.SinglePlayer() then
																																														self.Timer = CurTime() + 1 + #self.ZTa2 / 10
																																														else
																																															self.Timer = CurTime() + .75
																																															end

																																															self:SpawnZombie(t)
																																															end

																																															if self.Timer2 < CurTime() and #self.ZTa2 < 26 and self.T > 420 then
																																																self.Timer2 = CurTime() + 1.5
																																																self:SpawnZombie(t2)
																																																end
																																																end

																																																if self.Timer <= CurTime() and !self.Do then
																																																	self.Do = true

																																																	RunConsoleCommand("wb3_infammo", "1")

																																																	for _, p in pairs(player.GetAll()) do
																																																		if Muss330 then
																																																			Muss330(p, "3088083421/mg/zamb.ogg", 100, 100)
																																																			end
																																																			end

																																																			if _308PlaySoundAll then
																																																				_308PlaySoundAll("3088083421/mg/surv/nz_end.mp3")
																																																				end

																																																				for _, p in pairs(player.GetAll()) do
																																																					p:Spawn()
																																																					p:SetPos(Vector(288, 678, -12800))
																																																					p:StripWeapons()
																																																					p:SetHealth(100)
																																																					p:SetMaxHealth(100)
																																																					p:SetArmor(100)
																																																					p:SetModel("models/player/group03/male_0" .. math.random(9) .. ".mdl")

																																																					timer.Simple(2, function()
																																																					if IsValid(p) and IsValid(self) then
																																																						p:Give("weapon_308_p90")
																																																						p:Give("weapon_308_sh")
																																																						end
																																																						end)
																																																					end

																																																					timer.Simple(0, function()
																																																					if IsValid(self) then
																																																						SU308T = 1
																																																						end
																																																						end)
																																																					end

																																																					self:NextThink(CurTime())
																																																					return true
																																																					end

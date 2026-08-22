-- Created By Xero Chunks

if !CanGame308() then return end

	AddCSLuaFile("cl_init.lua")
	AddCSLuaFile("shared.lua")

	include("shared.lua")

	GAME308 = 0
	BED308 = 0
	bedwar308 = 0

	local function ValidPlayer(p)
	return IsValid(p) and p:IsPlayer()
	end

	local function TakeAmmo(p, amount, ammo)
	if p:GetAmmoCount(ammo) < amount then return false end
		p:SetAmmo(p:GetAmmoCount(ammo) - amount, ammo)
		return true
		end

		local function AddStored(p, key, amount)
		p:SetNWInt(key, p:GetNWInt(key, 0) + amount)
		end

		local function RemoveStored(p, key, amount)
		local cur = p:GetNWInt(key, 0)

		if cur < amount then
			return false
			end

			p:SetNWInt(key, cur - amount)
			return true
			end


			_308CreateNet("bedwar308_stp0", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !TakeAmmo(p, 5, "pistol") then return end

					AddStored(p, "_30pistol", 5)
					end)


			_308CreateNet("bedwar308_stp01", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !RemoveStored(p, "_30pistol", 5) then return end

					p:GiveAmmo(5, "pistol")
					end)


			_308CreateNet("bedwar308_stp1", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !TakeAmmo(p, 20, "pistol") then return end

					AddStored(p, "_30pistol", 20)
					end)


			_308CreateNet("bedwar308_stp11", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !RemoveStored(p, "_30pistol", 20) then return end

					p:GiveAmmo(20, "pistol")
					end)


			_308CreateNet("bedwar308_stp2", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !TakeAmmo(p, 40, "pistol") then return end

					AddStored(p, "_30pistol", 40)
					end)


			_308CreateNet("bedwar308_stp21", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !RemoveStored(p, "_30pistol", 40) then return end

					p:GiveAmmo(40, "pistol")
					end)


			_308CreateNet("bedwar308_sts", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !TakeAmmo(p, 1, "smg1") then return end

					AddStored(p, "_30SMG", 1)
					end)


			_308CreateNet("bedwar308_sts1", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !RemoveStored(p, "_30SMG", 1) then return end

					p:GiveAmmo(1, "smg1")
					end)


			_308CreateNet("bedwar308_sta", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !TakeAmmo(p, 1, "ar2") then return end

					AddStored(p, "_30AR2", 1)
					end)


			_308CreateNet("bedwar308_sta1", function()
			local p = net.ReadEntity()

			if !ValidPlayer(p) then return end
				if !RemoveStored(p, "_30AR2", 1) then return end

					p:GiveAmmo(1, "ar2")
					end)

			-- Created By Xero Chunks

			_308CreateNet("bedwar308_camera", function()
			local p = net.ReadEntity()

			if !IsValid(p) or not p:IsPlayer() then return end
				if p:HasWeapon("gmod_camera") then return end
					if p:GetAmmoCount("pistol") < 1 then return end

						p:SetAmmo(p:GetAmmoCount("pistol") - 1, "pistol")
						p:Give("gmod_camera")
						p:ChatPrint("It's FREE now!")
						end)

			_308CreateNet("bedwar308_b", function()
			local p = net.ReadEntity()

			if !IsValid(p) or not p:IsPlayer() then return end
				if p:GetAmmoCount("pistol") < 1 then return end

					p:SetAmmo(p:GetAmmoCount("pistol") - 1, "pistol")
					p:GiveAmmo(4, "308block")
					end)

			local function BuyWeapon(p, weapon, ammo, cost)
			if not IsValid(p) or not p:IsPlayer() then return end
				if p:HasWeapon(weapon) then return end
					if p:GetAmmoCount(ammo) < cost then return end

						p:SetAmmo(p:GetAmmoCount(ammo) - cost, ammo)
						p:Give(weapon)
						end

						_308CreateNet("bedwar308_crowbar", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_crowbar", "pistol", 30)
						end)

						_308CreateNet("bedwar308_stunstick", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_stunstick", "pistol", 35)
						end)

						_308CreateNet("bedwar308_wornd", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_worndagger", "smg1", 7)
						end)

						_308CreateNet("bedwar308_knife", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_knife", "smg1", 8)
						end)

						_308CreateNet("bedwar308_torch", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_torch", "smg1", 5)
						end)

						_308CreateNet("bedwar308_swordd", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_sworddiamond", "ar2", 4)
						end)

						_308CreateNet("bedwar308_sh", function()
						BuyWeapon(net.ReadEntity(), "weapon_308_sh", "ar2", 3)
						end)

						_308CreateNet("bedwar308_frag", function()
						local p = net.ReadEntity()

						if not IsValid(p) or not p:IsPlayer() then return end
							if p:GetAmmoCount("smg1") < 4 then return end

								p:SetAmmo(p:GetAmmoCount("smg1") - 4, "smg1")

								if p:HasWeapon("weapon_frag") then
									p:GiveAmmo(1, "grenade")
									else
										p:Give("weapon_frag")
										end
										end)

						_308CreateNet("bedwar308_begg", function()
						local p = net.ReadEntity()

						if not IsValid(p) or not p:IsPlayer() then return end
							if p:GetAmmoCount("smg1") < 6 then return end

								p:SetAmmo(p:GetAmmoCount("smg1") - 6, "smg1")

								if p:HasWeapon("weapon_308_begg") then
									p:GiveAmmo(1, "AR2AltFire")
									else
										p:Give("weapon_308_begg")
										end
										end)

						_308CreateNet("bedwar308_epearl", function()
						local p = net.ReadEntity()

						if not IsValid(p) or not p:IsPlayer() then return end
							if p:GetAmmoCount("ar2") < 2 then return end

								p:SetAmmo(p:GetAmmoCount("ar2") - 2, "ar2")

								if p:HasWeapon("weapon_308_epearl") then
									p:GiveAmmo(1, "308enderpearl")
									else
										p:Give("weapon_308_epearl")
										end
										end)

						_308CreateNet("bedwar308_rpg", function()
						local p = net.ReadEntity()

						if not IsValid(p) or not p:IsPlayer() then return end
							if p:GetAmmoCount("smg1") < 5 then return end

								p:SetAmmo(p:GetAmmoCount("smg1") - 5, "smg1")

								if p:HasWeapon("weapon_308_rpg") then
									p:GiveAmmo(1, "RPG_Round")
									else
										p:Give("weapon_308_rpg")
										end
										end)

						local function SetArmor(p, level, model, color, ammo, cost)
						if not IsValid(p) or not p:IsPlayer() then return end
							if p._30Armor <= level then return end
								if p:GetAmmoCount(ammo) < cost then return end

									p._30Armor = level

									if IsValid(p._30Armor2) then
										p._30Armor2:Remove()
										end

										local w = ents.Create("prop_physics")

										if not IsValid(w) then return end

											w:SetModel(model)
											w:SetColor(color or p:GetColor())
											w:SetSolid(SOLID_NONE)
											w:SetMoveType(MOVETYPE_NONE)
											w:SetOwner(p)
											w:SetParent(p)
											w:AddEffects(EF_BONEMERGE)
											w:DrawShadow()

											local bone = w:LookupBone("ValveBiped.Bip01_Head1")

											if bone then
												w:ManipulateBoneScale(bone, Vector(0.01, 0.01, 0.01))
												end

												p._30Armor2 = w

												p:SetAmmo(p:GetAmmoCount(ammo) - cost, ammo)
												p:SetArmor(level == 0.9 and 10 or level == 0.7 and 30 or 50)
												end

												_308CreateNet("bedwar308_a1", function()
												local p = net.ReadEntity()

												if not IsValid(p) or not p:IsPlayer() then return end

													SetArmor(
														p,
					  0.9,
					  "models/player/police.mdl",
					  p:GetColor(),
															 "pistol",
					  50
													)
													end)

												_308CreateNet("bedwar308_a2", function()
												local p = net.ReadEntity()

												if not IsValid(p) or not p:IsPlayer() then return end

													SetArmor(
														p,
					  0.7,
					  "models/player/riot.mdl",
					  p:GetColor(),
															 "smg1",
					  5
													)
													end)

												_308CreateNet("bedwar308_a3", function()
												local p = net.ReadEntity()

												if not IsValid(p) or not p:IsPlayer() then return end

													SetArmor(
														p,
					  0.5,
					  "models/player/combine_super_soldier.mdl",
					  p:GetColor(),
															 "ar2",
					  4
													)
													end)

												_308CreateNet("bedwar308_pjump", function()
												local p = net.ReadEntity()

												if not IsValid(p) or not p:IsPlayer() then return end
													if p:GetAmmoCount("ar2") < 2 then return end

														p:SetGravity(1.2)
														p:SetAmmo(p:GetAmmoCount("ar2") - 2, "ar2")
														end)

												_308CreateNet("bedwar308_pspeed", function()
												local p = net.ReadEntity()

												if not IsValid(p) or not p:IsPlayer() then return end
													if p:GetAmmoCount("ar2") < 1 then return end
														if p:GetWalkSpeed() >= 275 then return end

															p:SetWalkSpeed(275)
															p:SetRunSpeed(275)
															p:SetAmmo(p:GetAmmoCount("ar2") - 1, "ar2")
															end)

												if not game.SinglePlayer() then
													function ENT:SpawnFunction(ply, tr)
													if not tr.Hit or ply.Shield or #ents.FindByClass("game308_ban") > 0 then
														return
														end

														game.CleanUpMap()

														local ent = ents.Create("obj_308_bedwar")

														if not IsValid(ent) then return end

															ent:SetPos(tr.HitPos + tr.HitNormal * 10)
															ent:Spawn()
															ent:Activate()

															return ent
															end
															end

															hook.Add("PlayerSpawn", "BEDWAR308", function(p)
															if BED308 <= 0 then return end

																p._30Attacker = nil
																p._30Armor = 1

																if IsValid(p._30Armor2) then
																	p._30Armor2:Remove()
																	p._30Armor2 = nil
																	end

																	p:SetMaterial("models/debug/debugwhite")

																	timer.Simple(0, function()
																	if not IsValid(p) or BED308 <= 0 then return end

																		if p._30TeamPos then
																			p:SetPos(p._30TeamPos)
																			end

																			if p._30Team == 1 then
																				p:SetColor(Color(255, 0, 0))
																				else
																					p:SetColor(Color(0, 0, 255))
																					end

																					p:StripWeapons()
																					p:StripAmmo()
																					p:Give("weapon_308_block")

																					p:SetGravity(1.7)
																					p:SetRunSpeed(250)
																					p:SetWalkSpeed(250)
																					p:SetJumpPower(300)
																					end)
																	end)

															if SERVER then
																function ENT:Initialize()
																if GAME308 > 0 then
																	self.Dont = true
																	self:Remove()
																	return
																	end

																	local map = game.GetMap()

																	if map ~= "gm_flatgrass" and map ~= "gm_hl1_lily_flatgrass_13" then
																		_308TextAll(
																			GAME308_LAN["gamemap"],
							  {
								  y = 0.9,
								  chan = 3,
								  fxtime = 1,
								  col2 = "255 100 100"
							  }
																		)

																		self:Remove()
																		return
																		end

																		_30TeamM1 = 0
																		_30TeamM2 = 0
																		_30TeamVec1 = Vector(0, 0, 0)
																		_30TeamVec2 = Vector(0, 0, 0)
																		_30Bedwars = nil
																		_30ITEM = 1
																		_30ITEM2 = 1

																		self.Timer_ = 10
																		self.Timer = CurTime() + 10
																		self.Phase = 0

																		BED308Ent = self

																		self:SetNoDraw(true)
																		self:SetMoveType(MOVETYPE_NONE)
																		self:SetSolid(SOLID_NONE)
																		self:SetPos(Vector(0, 0, 15240))

																		_308GlobalMeleeRange = 200

																		self.EPos = Vector(0, 0, 13145)

																		local function S(v, m, mat)
																		local e = ents.Create("prop_physics")

																		if not IsValid(e) then return end

																			e:SetModel(m)
																			e:SetPos(self.EPos - v)
																			e:SetMaterial(mat)
																			e:Spawn()

																			local phys = e:GetPhysicsObject()

																			if IsValid(phys) then
																				phys:EnableMotion(false)
																				end

																				self:DeleteOnRemove(e)
																				end

																				S(
																					Vector(-2500, -2500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "phoenix_storms/wire/pcb_red"
																				)

																				S(
																					Vector(-2120, -2500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "phoenix_storms/wire/pcb_red"
																				)

																				S(
																					Vector(2500, 2500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "phoenix_storms/wire/pcb_blue"
																				)

																				S(
																					Vector(2120, 2500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "phoenix_storms/wire/pcb_blue"
																				)

																				S(
																					Vector(1000, 1500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "brick/brick_model"
																				)

																				S(
																					Vector(-1000, -1500),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "brick/brick_model"
																				)

																				S(
																					Vector(1500, -1000),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "models/props_pipes/GutterMetal01a"
																				)

																				S(
																					Vector(-1500, 1000),
																				  "models/hunter/blocks/cube8x8x8.mdl",
					  "models/props_pipes/GutterMetal01a"
																				)

																				_308TextAll(
																					GAME308_LAN["bedm2"],
								{
									y = 0.2,
									fin = 0.01
								}
																				)
																				end

																				function ENT:OnRemove()
																				if self.Dont then return end

																					hook.Remove("PlayerDisconnected", "SF3081")

																					BED308 = 0
																					GAME308 = 0

																					for _, p in ipairs(player.GetAll()) do
																						if IsValid(p) then
																							Muss330(p)

																							p:SetGravity(1)
																							p._30Team = nil
																							p._30TeamPos = nil

																							if IsValid(p._30Armor2) then
																								p._30Armor2:Remove()
																								p._30Armor2 = nil
																								end

																								p:SetColor(color_white)
																								p:SetMaterial("")

																								p:EmitSound("3088083421/mg/end.wav")
																								p.NextSpawnTime = CurTime()

																								if self.No then
																									if _30TeamM1 > 0 or IsValid(BED308Ent1) then
																										p:ChatPrint(GAME308_LAN["bedw1"])
																										elseif _30TeamM2 > 0 or IsValid(BED308Ent2) then
																											p:ChatPrint(GAME308_LAN["bedw2"])
																											end
																											end
																											end
																											end

																											BED308Ent = nil
																											BED308Ent1 = nil
																											BED308Ent2 = nil
																											end

																											function ENT:Think()
																											BED308 = 1
																											GAME308 = 1

																											local ti = math.floor(self.Timer - CurTime())

																											if self.Phase < 1 then
																												for _, p in ipairs(player.GetAll()) do
																													if IsValid(p) then
																														p:PrintMessage(
																															HUD_PRINTCENTER,
											 GAME308_LAN1["bedwar"] ..
											 GAME308_LAN1["t"] ..
											 ti ..
											 GAME308_LAN1["t0"]
																														)
																														end
																														end

																														if ti ~= self.Timer_ and ti >= 0 then
																															self.Timer_ = ti

																															if ti == 0 then
																																_308PlaySoundAll("buttons/button17.wav", 90)
																																elseif ti < 3 then
																																	_308PlaySoundAll("buttons/button15.wav")
																																	elseif ti < 5 then
																																		_308PlaySoundAll("buttons/button14.wav")
																																		else
																																			_308PlaySoundAll("buttons/button10.wav")
																																			end
																																			end
																																			elseif self.Phase > 0 then
																																				local l = GAME308_LAN["bedp" .. self.Phase]
																																				local c = "255 255 255"

																																				if self.Phase > 5 then
																																					l = "ERROR"
																																					c = "255 0 0"
																																					end

																																					_308TextAll(
																																						GAME308_LAN1["rt"] ..
																																						ti ..
																																						"\n" ..
																																						GAME308_LAN1["P"] ..
																																						l,
												 {
													 fin = 0.01,
													 y = 0.87,
													 time = 999,
													 col = c
												 }
																																					)

																																					local s = "     √"
																																					local s2 = "     √"

																																					if not IsValid(BED308Ent1) then
																																						s = "     ×"
																																						end

																																						if not IsValid(BED308Ent2) then
																																							s2 = "     ×"
																																							end

																																							_308TextAll(
																																								s .. GAME308_LAN1["rs"] .. _30TeamM1,
												   {
													   y = 0.45,
													   x = 0.01,
													   fin = 0.03,
													   time = 999,
													   col = "255 0 0",
													   chan = 4
												   }
																																							)

																																							_308TextAll(
																																								s2 .. GAME308_LAN1["rs"] .. _30TeamM2,
												   {
													   y = 0.54,
													   x = 0.01,
													   fin = 0.03,
													   time = 999,
													   col = "0 0 255",
													   chan = 3
												   }
																																							)

																																							if ti == 0 and self.Timer_ ~= ti then
																																								self.Timer_ = ti
																																								_308PlaySoundAll("buttons/button15.wav")
																																								end

																																								for _, p in ipairs(player.GetAll()) do
																																									if IsValid(p) then
																																										if p:GetPos().z < 12000 and p:Alive() then
																																											p:TakeDamage(
																																												15,
														p._30Attacker or game.GetWorld()
																																											)
																																											end

																																											if self.IsTime then
																																												p:TakeDamage(0.1, game.GetWorld())
																																												end
																																												end
																																												end

																																												local finished

																																												if game.SinglePlayer() then
																																													finished = _30TeamM1 == 0 and _30TeamM2 == 0
																																													else
																																														finished = _30TeamM1 == 0 or _30TeamM2 == 0
																																														end

																																														if finished then
																																															self.No = true
																																															SafeRemoveEntity(self)
																																															return
																																															end
																																															end

																																															if self.Timer <= CurTime() then
																																																self.Phase = self.Phase + 1

																																																if self.Phase < 2 then
																																																	_30TeamVec1 = Vector(2500, 2500, 13500)
																																																	_30TeamVec2 = Vector(-2500, -2500, 13500)

																																																	local function B(v, team)
																																																	local e = ents.Create("prop_physics")

																																																	if not IsValid(e) then return end

																																																		e:SetModel("models/props_junk/wood_crate002a.mdl")
																																																		e:SetColor(team and Color(255, 0, 0) or Color(0, 0, 255))
																																																		e.IsMCBlock = true
																																																		e:SetMaterial("models/props_c17/FurnitureFabric003a")
																																																		e:SetPos(v)
																																																		e:SetHealth(1)
																																																		e:Spawn()

																																																		local phys = e:GetPhysicsObject()

																																																		if IsValid(phys) then
																																																			phys:EnableMotion(false)
																																																			end

																																																			local eff = ents.Create("obj_308_sprite")

																																																			if IsValid(eff) then
																																																				eff:SetSprite(team and "icon16/flag_red.png" or "icon16/flag_blue.png")
																																																				eff:SetScale(64)
																																																				eff:SetPos(v + Vector(0, 0, 300))
																																																				eff:Spawn()

																																																				e:DeleteOnRemove(eff)
																																																				end

																																																				if team then
																																																					BED308Ent1 = e
																																																					e.BED = 1
																																																					else
																																																						BED308Ent2 = e
																																																						e.BED = 2
																																																						end

																																																						self:DeleteOnRemove(e)
																																																						end

																																																						local function C(v, t, ammo)
																																																						t = t or 1
																																																						ammo = ammo or "pistol"

																																																						local m = "models/props_pipes/GutterMetal01a"
																																																						local c = color_white
																																																						local timerLength = CurTime() + 6

																																																						local e = ents.Create("prop_physics")

																																																						if not IsValid(e) then return end

																																																							e.BEDSP = 1
																																																							e.ItemM = 0
																																																							e.VecT = 0

																																																							if ammo == "ar2" then
																																																								e.BEDSP = 2
																																																								timerLength = CurTime() + 186
																																																								c = Color(255, 255, 0)
																																																								m = "models/shiny"
																																																								elseif ammo == "smg1" then
																																																									e.BEDSP = 2
																																																									timerLength = CurTime() + 66
																																																									m = "models/shiny"
																																																									end

																																																									e.Timer = timerLength
																																																									e:SetModel("models/props_c17/SuitCase_Passenger_Physics.mdl")
																																																									e:SetColor(c)
																																																									e:SetMaterial(m)
																																																									e:SetPos(v)
																																																									e:SetSolid(SOLID_NONE)
																																																									e:Spawn()

																																																									local phys = e:GetPhysicsObject()

																																																									if IsValid(phys) then
																																																										phys:EnableMotion(false)
																																																										end

																																																										self:DeleteOnRemove(e)

																																																										bedwar308 = bedwar308 + 1

																																																										local hookName = "bedwar308" .. bedwar308

																																																										hook.Add("Think", hookName, function()
																																																										if not IsValid(e) then
																																																											hook.Remove("Think", hookName)
																																																											return
																																																											end

																																																											e:SetAngles(
																																																												e:GetAngles() +
																																																												Angle(0, 1.5 + e.ItemM * 0.1, 0)
																																																											)

																																																											e.VecT = Lerp(
																																																												0.3,
																		 e.VecT,
																		 math.sin(CurTime() * 2)
																																																											)

																																																											e:SetPos(
																																																												v + Vector(0, 0, e.VecT * 2)
																																																											)

																																																											for _, g in ipairs(ents.FindInSphere(e:GetPos(), 40)) do
																																																												if g:IsPlayer() and g:Alive() then
																																																													if e.ItemM > 0 then
																																																														g:GiveAmmo(e.ItemM, ammo)
																																																														e.ItemM = 0
																																																														end
																																																														end
																																																														end

																																																														if e.Timer < CurTime() then
																																																															if ammo == "pistol" then
																																																																e.Timer = CurTime() + t * _30ITEM2
																																																																else
																																																																e.Timer = CurTime() + t * _30ITEM
																																																																end

																																																																e.ItemM = e.ItemM + 1
																																																																end
																																																																end)

																																																										return e
																																																										end

																																																										B(_30TeamVec1 + Vector(120, 100), true)
																																																										B(_30TeamVec2 - Vector(120, 100), false)

																																																										C(Vector(2400, 2400, 13540))
																																																										C(Vector(-2400, -2400, 13540))

																																																										local c = C(Vector(-2000, -2500, 13540), 35, "smg1")
																																																										if IsValid(c) then
																																																											c.Timer = CurTime() + 6
																																																											end

																																																											local c2 = C(Vector(2000, 2500, 13540), 35, "smg1")
																																																											if IsValid(c2) then
																																																												c2.Timer = CurTime() + 6
																																																												end

																																																												C(Vector(1000, 1500, 13540), 35, "smg1")
																																																												C(Vector(-1000, -1500, 13540), 35, "smg1")
																																																												C(Vector(-1500, 1000, 13550), 60, "ar2")
																																																												C(Vector(1500, -1000, 13550), 60, "ar2")

																																																												_30TeamVec1 = _30TeamVec1 + Vector(-400, 0, 25)
																																																												_30TeamVec2 = _30TeamVec2 + Vector(400, 0, 25)

																																																												for _, p in ipairs(player.GetAll()) do
																																																													if not IsValid(p) then continue end

																																																														p:SetNWInt("_30pistol", 0)
																																																														p:SetNWInt("_30SMG", 0)
																																																														p:SetNWInt("_30AR2", 0)
																																																														p._30Armor = 1

																																																														local r = math.random(2)

																																																														if r > 1 then
																																																															if _30TeamM2 >= _30TeamM1 then
																																																																p._30TeamPos = _30TeamVec1
																																																																p._30Team = 1
																																																																_30TeamM1 = _30TeamM1 + 1
																																																																else
																																																																p._30TeamPos = _30TeamVec2
																																																																p._30Team = 2
																																																																_30TeamM2 = _30TeamM2 + 1
																																																																end
																																																																else
																																																																if _30TeamM2 <= _30TeamM1 then
																																																																p._30TeamPos = _30TeamVec2
																																																																p._30Team = 2
																																																																_30TeamM2 = _30TeamM2 + 1
																																																																else
																																																																p._30TeamPos = _30TeamVec1
																																																																p._30Team = 1
																																																																_30TeamM1 = _30TeamM1 + 1
																																																																end
																																																																end

																																																																p:Spawn()
																																																																p:StripWeapons()
																																																																p:StripAmmo()
																																																																p:Give("weapon_308_block")

																																																																Muss330(p, "music/hl1_song3.mp3")
																																																																end

																																																																self.Timer = CurTime() + 606

																																																																elseif self.Phase < 3 then
																																																																_30ITEM2 = 0.5
																																																																self.Timer = CurTime() + 600

																																																																for _, p in ipairs(player.GetAll()) do
																																																																if IsValid(p) then
																																																																Muss330(p, "music/hl2_song20_submix0.mp3")
																																																																end
																																																																end

																																																																elseif self.Phase < 4 then
																																																																_30ITEM = 0.5
																																																																self.Timer = CurTime() + 900

																																																																for _, p in ipairs(player.GetAll()) do
																																																																if IsValid(p) then
																																																																Muss330(p, "music/hl2_song1.mp3")
																																																																end
																																																																end

																																																																elseif self.Phase < 5 then
																																																																self.Timer = CurTime() + 900
																																																																_30Bedwars = 1

																																																																for _, p in ipairs(player.GetAll()) do
																																																																if IsValid(p) then
																																																																Muss330(p, "music/hl2_song20_submix4.mp3")
																																																																end
																																																																end

																																																																elseif self.Phase < 6 then
																																																																if IsValid(BED308Ent1) then
																																																																BED308Ent1:TakeDamage(100)
																																																																end

																																																																BED308Ent1 = nil

																																																																if IsValid(BED308Ent2) then
																																																																BED308Ent2:TakeDamage(100)
																																																																end

																																																																BED308Ent2 = nil
																																																																self.Timer = CurTime() + 600

																																																																for _, p in ipairs(player.GetAll()) do
																																																																if IsValid(p) then
																																																																Muss330(p, "music/hl2_song14.mp3")
																																																																end
																																																																end

																																																																else
																																																																self.IsTime = true
																																																																self.Timer = CurTime() + 1200

																																																																for _, p in ipairs(player.GetAll()) do
																																																																if IsValid(p) then
																																																																Muss330(p, "music/hl2_song25_teleporter.mp3")
																																																																end
																																																																end
																																																																end
																																																																end

																																																																self:NextThink(CurTime())
																																																																return true
																																																																end
																																																																end

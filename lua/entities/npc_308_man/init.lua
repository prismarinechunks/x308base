AddCSLuaFile()

-- Created By Xero Chunks
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local function CN()
if system.GetCountry() == "CN" or system.GetCountry() == "HK" or system.GetCountry() == "TW" or system.GetCountry() == "TC" then
	return 1
	end
	end

	local function GNT(p)
	if isfunction(p.GetNoTarget) then
		return p:GetNoTarget()
		else
			return p:IsFlagSet(FL_NOTARGET)
			end
			end

			local function CPTBaseValidTarget(e, n)
			if not IsValid(n) then return false end
				local d = e:Disposition(n)
				if d ~= 1 and d ~= 2 then return false end
					if GNT(n) or n.Dead then return false end
						return true
						end

						local function CPTBasePickClosestEnemy(e, b)
						local ent
						for i, n in ipairs(b) do
							if not e:Visible(n) and e:CanSeeEntities(n) and not e:FindInCone(n, e.ViewAngle) and not e:CanSetAsEnemy(n) and not CPTBaseValidTarget(e, n) and not IsValid(ent) then
								ent = n
								end
								end
								return ent
								end

								function ENT:Initialize()
								if self:_BInit() then
									SafeRemoveEntity(self)
									return
									end
									self:BeforeInit()
									local c = self:GetCreator()
									if navmesh.GetNavAreaCount() < 1 and IsValid(c) and c:IsPlayer() and not c.Nonav308 then
										c.Nonav308 = 1
										if game.SinglePlayer() or c:IsAdmin() or c:IsSuperAdmin() then
											c:ChatPrint(GAME308_LAN1["navmiss"])
											else
												c:ChatPrint(GAME308_LAN1["navser"])
												end
												end
												self:SetModel(_308Table(self.Model) or "models/humans/group01/male_0" .. math.random(1, 9) .. ".mdl")
												if self.UseSprite then
													if self.Sprites ~= {} then
														self:SetSpriteIdle("idle")
														if self.Sprites["walk"] then
															self:SetSpriteWalk("walk")
															end
															if self.Sprites["run"] then
																self:SetSpriteWalk("run")
																end
																end
																self:SetSprite(self.Sprite)
																self:SetSprite4(self.Sprite4)
																self:SetSpriteAnimRate("Move", 1)
																for f, a in pairs(self.SpriteRate) do
																	self:SetSpriteAnimRate(f, a)
																	end
																	end
																	self:SetNWInt("SpriteShake", 0)
																	self:SetNWInt("Dodge", 0)
																	self:SetNWVector("DodgeV", Vector(0, 0, 0))
																	self:SetNWBool("ShowHP", self.ShowHP)
																	self:SetSkin(self.Skin)
																	if self.UseSprite then
																		self:SetMaterial("null")
																		self:SetModel("models/hunter/tubes/tube2x2x4.mdl")
																		self:SetNWInt("SpriteScale", self.SpriteScale)
																		if self.BBox.z > 150 then
																			self:SetModel("models/hunter/blocks/cube8x8x8.mdl")
																			end
																			end
																			self:SetUseType(SIMPLE_USE)
																			self:AddEFlags(EFL_NO_DISSOLVE)
																			self.VJ_AddEntityToSNPCAttackList = true
																			if not self.NoChase then
																				self:SetChase(true)
																				end
																				self._NextT = CurTime()
																				self.SKillEnemy = self.SKillEnemy or " "
																				self.S_Think = self.S_Think or " "
																				self.IsBob = true
																				self.Width = self:BoundingRadius() * 1
																				self:SetCollisionGroup(9)
																				if not self.BBox2 then
																					self:SetBBounds(self.BBox, -Vector(self.BBox.x, self.BBox.y, 0))
																					else
																						self:SetBBounds(self.BBox, self.BBox2)
																						end
																						self.Attacking = false
																						self._Enemys = {}
																						self.Timer = 0
																						self:StartActivity(self.IdleAct)
																						self.Speed = self.StartSpeed
																						if self:GetClass() == "npc_308_man" then
																							self.Att = {{Time = .4, SHit = "Flesh.ImpactHard", SMiss = "WeaponFrag.Throw"}}
																							self.SQuestion = _308BotNQuestion
																							self.SAnswer = _308BotNAnswer
																							self.Factions = {FACTION_REBELS}
																							end
																							self:SetNWBool("AI", true)
																							self:SetColor(self.Color)
																							self:SetModelScale(self.Scale)
																							self.Material = self.Material or " "
																							self:SetMaterial(self.Material)
																							self:SetHealth(self.HP or 100)
																							self:SetMaxHealth(self.HP or 100)
																							self:SetSpeed(self.Speed)
																							self.Hitgroup = 0
																							if self.IsBoss or self.IsBossHP then
																								self:SetHealth(self.HP * #player.GetAll())
																								end
																								self:GiveWeapon(_308Table(self.Weapon))
																								self._NextSoundT = CurTime() + math.Rand(self.NextS_L, self.NextS_H)
																								self:SetAI(self.StartAI)

																								-- Safe loco initialization
																								if self.loco then
																									if isfunction(self.loco.SetGravity) then
																										self.loco:SetGravity(self.Gravity)
																										else
																											self:SetGravity(self.Gravity)
																											end
																											self.loco:SetStepHeight(self.StepHeight)
																											self.loco:SetMaxYawRate(self.YawRate)
																											else
																												self:SetGravity(self.Gravity)
																												end

																												self:SetAcceleration(self.Acceleration)
																												self:SetDeceleration(self.Deceleration)
																												self:SetBloodColor(self.BloodColor)
																												self:SetSolidMask(MASK_NPCSOLID_BRUSHONLY)
																												self:SetNoTarget(self.NoTarget)
																												self:AddFlags(FL_OBJECT)
																												self:AddFlags(FL_CLIENT)
																												self:AddFlags(FL_NPC)
																												if self.UseBullseye then
																													local b = ents.Create("npc_bullseye")
																													if IsValid(b) then
																														b:SetPos(self:EyePos())
																														b:SetAngles(self:GetAngles())
																														b:SetParent(self)
																														b:Spawn()
																														b:SetHealth(999999999)
																														b:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
																														self.bullseye = b
																														end
																														end
																														self._ForceSet = {}
																														self._30Faction = {}
																														self:JoinFaction(self.Factions)
																														if self.StartMus then
																															local i
																															for _, e in pairs(ents.GetAll()) do
																																if IsValid(e) and e ~= self and (e.StartMus or e.StoryMode) then
																																	i = 1
																																	end
																																	end
																																	if not i then
																																		Muss330(self, self.StartMus, self.StartMusPitch, self.StartMusVol)
																																		end
																																		end
																																		self:CustomInit()
																																		self:EmitSound(_308Table(self.SpawnSound))
																																		end

																																		function ENT:SetupDataTables()
																																		self:NetworkVar("Vector", 0, "PlayerColor")
																																		end

																																		hook.Add("ScaleNPCDamage", "308Nextbot1", function(e, h)
																																		if IsValid(e) and e.Is308Bot then
																																			e.Hitgroup = h
																																			end
																																			end)

																																		hook.Add("Think", "308Nextbot2", function()
																																		if #Get308NextBots() < 1 or GAME308 == 1 then
																																			return
																																			end
																																			end)

																																		hook.Add("PlayerDeath", "308Nextbot3.5", function(v, k)
																																		if not IsValid(k) then return end
																																			if k.Is308Bot then
																																				k:_Enemy()
																																				if IsValid(k) then
																																					k:EmitSound(_308Table(k.SKillEnemy), 100, math.random(k.SKillEnemyPitch[1], k.SKillEnemyPitch[2]))
																																					end
																																					if SERVER and k.Infection and GetConVarNumber("wb3_n_infection") > 1 then
																																						local z = ents.Create(string.Trim(k.Infection))
																																						if IsValid(z) then
																																							v._BeI = 1
																																							z._IModel = v:GetModel()
																																							if k.InfectionPM then
																																								if v:LookupBone("ValveBiped.Bip01_Head1") then
																																									if not k.IsMCMob then
																																										if v.GetPlayerColor then
																																											k:SetPlayerColor(v:GetPlayerColor())
																																											end
																																											z._IBg = v:GetBodyGroups()
																																											for kb, b in pairs(v:GetBodyGroups()) do
																																												z:SetBodygroup(b.id, v:GetBodygroup(b.id))
																																												end
																																												z.Color = v:GetColor()
																																												z.Material = v:GetMaterial()
																																												z.Skin = v:GetSkin()
																																												else
																																													k:OnKillEnemy(v)
																																													return
																																													end
																																													end
																																													end
																																													v.HasDeathRagdoll = nil
																																													z:SetPos(v:GetPos())
																																													local a = v:EyeAngles()
																																													a.x = 0
																																													a.z = 0
																																													z:SetAngles(v:GetAngles())
																																													z:SetCreator(k:GetCreator())
																																													z._I = v
																																													z:Spawn()
																																													if v.GetPlayerColor then
																																														k:SetPlayerColor(v:GetPlayerColor())
																																														end
																																														k.Infect = z
																																														k:OnKillEnemy(v)
																																														for kb, b in pairs(v:GetBodyGroups()) do
																																															z:SetBodygroup(b.id, v:GetBodygroup(b.id))
																																															end
																																															z:SetColor(v:GetColor())
																																															z:SetMaterial(v:GetMaterial())
																																															z:SetSkin(v:GetSkin())
																																															if IsValid(k:GetCreator()) and k:GetCreator():IsPlayer() then
																																																undo.Create("Undone " .. (z.PrintName or z:GetClass()) .. " (" .. v:Nick() .. ")")
																																																undo.AddEntity(z)
																																																undo.SetPlayer(v)
																																																undo.Finish()
																																																end
																																																timer.Simple(0, function()
																																																if IsValid(v) then
																																																	v:Spectate(6)
																																																	v:SpectateEntity(v)
																																																	end
																																																	end)
																																																if v:GetModelScale() - .1 < z:GetModelScale() and v:GetModelScale() + .1 > z:GetModelScale() then
																																																	z:SetModelScale(v:GetModelScale())
																																																	end
																																																	if IsValid(v:GetRagdollEntity()) then
																																																		SafeRemoveEntity(v:GetRagdollEntity())
																																																		end
																																																		else
																																																			k:OnKillEnemy(v)
																																																			end
																																																			else
																																																				k:OnKillEnemy(v)
																																																				end
																																																				end
																																																				end)

																																		hook.Add("OnNPCKilled", "308Nextbot3", function(v, k)
																																		if not IsValid(k) then return end
																																			if k.Is308Bot then
																																				k:_Enemy()
																																				if IsValid(k) then
																																					k:EmitSound(_308Table(k.SKillEnemy), 100, math.random(k.SKillEnemyPitch[1], k.SKillEnemyPitch[2]))
																																					end
																																					if SERVER and k.Infection and v:GetClass() ~= k.Infection and (GetConVarNumber("wb3_n_infection") == 1 or GetConVarNumber("wb3_n_infection") > 2) then
																																						local l = string.Trim(k.Infection)
																																						if k.Infection == "npc_308mc_zb" and (string.find(v:GetClass(), "illager") or string.find(v:GetClass(), "villager") or string.find(v:GetClass(), "witch")) then
																																							l = "npc_308mc_zb2"
																																							end
																																							local z = ents.Create(l)
																																							if IsValid(z) then
																																								v._BeI = 1
																																								z._IModel = v:GetModel()
																																								if k.InfectionPM then
																																									if v:LookupBone("ValveBiped.Bip01_Head1") or (k.IsMCMob and v:LookupBone("head")) then
																																										if not k.IsMCMob then
																																											if v.GetPlayerColor then
																																												k:SetPlayerColor(v:GetPlayerColor())
																																												end
																																												for kb, b in pairs(v:GetBodyGroups()) do
																																													z:SetBodygroup(b.id, v:GetBodygroup(b.id))
																																													end
																																													z.Color = v:GetColor()
																																													z.Material = v:GetMaterial()
																																													z.Skin = v:GetSkin()
																																													else
																																														k:OnKillEnemy(v)
																																														return
																																														end
																																														end
																																														end
																																														v.HasDeathRagdoll = nil
																																														z:SetPos(v:GetPos())
																																														local a = v:GetAngles()
																																														a.x = 0
																																														a.z = 0
																																														z:SetAngles(v:GetAngles())
																																														z:SetCreator(k:GetCreator())
																																														z._I = v
																																														z:Spawn()
																																														if v.GetPlayerColor then
																																															k:SetPlayerColor(v:GetPlayerColor())
																																															end
																																															k.Infect = z
																																															k:OnKillEnemy(v)
																																															for kb, b in pairs(v:GetBodyGroups()) do
																																																z:SetBodygroup(b.id, v:GetBodygroup(b.id))
																																																end
																																																z:SetColor(v:GetColor())
																																																z:SetMaterial(v:GetMaterial())
																																																z:SetSkin(v:GetSkin())
																																																if v.GetRagdollEntity and IsValid(v:GetRagdollEntity()) then
																																																	SafeRemoveEntity(v:GetRagdollEntity())
																																																	end
																																																	SafeRemoveEntity(v)
																																																	else
																																																		k:OnKillEnemy(v)
																																																		end
																																																		else
																																																			k:OnKillEnemy(v)
																																																			end
																																																			end
																																																			end)

																																		hook.Add("EntityTakeDamage", "308Nextbot", function(e, d)
																																		if not IsValid(e) then return end
																																			local m = d:GetDamage()
																																			local a = d:GetAttacker()
																																			if e.Is308Bot and m > 0 then
																																				e._LastDI = d
																																				local t = d:GetDamageType()
																																				if IsValid(a) and a.Is308Bot and a:CheckRelationship(e) == 3 then
																																					if not a.Enemys[e] and (t == 4098 or t == 536870912 or t == 536870914 or t == 2 or t == 8194 or t == 4 or t == 128 or t == 131072 or t == 1) then
																																						d:SetDamage(0)
																																						end
																																						elseif (t == 4098 or t == 536870912 or t == 536870914 or t == 2 or t == 8194) and e.IgnoreBullet then
																																							d:SetDamage(m * e.IgnoreBullet)
																																							elseif (t == 4 or t == 128) and e.IgnoreMelee then
																																								d:SetDamage(m * e.IgnoreMelee)
																																								elseif t == 131072 and e.IgnorePoison then
																																									d:SetDamage(m * e.IgnorePoison)
																																									elseif t == 1 and e.IgnoreCrush then
																																										d:SetDamage(m * e.IgnoreCrush)
																																										elseif (t == 8 or t == 8388608 or t == 256967104 or t == 268435464 or t == 4268435464) and e.IgnoreFire then
																																											d:SetDamage(m * e.IgnoreFire)
																																											elseif (t == 64 or t == 134217792) and e.IgnoreBlast then
																																												d:SetDamage(m * e.IgnoreBlast)
																																												end
																																												if e.IgnoreAll then
																																													d:SetDamage(m * e.IgnoreAll)
																																													end
																																													m = d:GetDamage()
																																													if m > 0 then
																																														e:OnTakeDamage(d, e.Hitgroup)
																																														e:_BTakeDamage(d, e.Hitgroup)
																																														e:EmitSound(_308Table(e.STakeDmg), 100, math.random(e.STakeDmgPitch[1], e.STakeDmgPitch[2]))
																																														if e:Health() - m > 0 then
																																															e:OnHurt(d, e.Hitgroup)
																																															e:EmitSound(_308Table(e.SHurt2) or _308Table(e.SHurt), 100, math.random(e.SHurtPitch[1], e.SHurtPitch[2]))
																																															if e.HostileIfBelowHP >= (e:Health() - m) / e:GetMaxHealth() and (e:IsPlayer() or e:IsNPC() or IsNextBot3(e)) then
																																																e:SetRelationships(a, D_HT)
																																																end
																																																end
																																																end
																																																elseif IsValid(a) and a.Is308Bot then
																																																	local t = d:GetDamageType()
																																																	if IsValid(e) and a:CheckRelationship(e) ~= 1 then
																																																		if t == 4098 or t == 536870912 or t == 536870914 or t == 2 or t == 8194 or t == 4 or t == 128 or t == 131072 or t == 1 then
																																																			d:SetDamage(0)
																																																			end
																																																			end
																																																			end
																																																			end)

																																		function ENT:_BTakeDamage() end

																																		function ENT:OnTakeDamage()
																																		if self:GetClass() == "npc_308_man" then
																																			self:EmitSound("vo/npc/male01/pain0" .. math.random(9) .. ".wav")
																																			end
																																			end

																																			function ENT:Think()
																																			if not IsValid(self) then return end

																																				-- CRITICAL FIX: Prevent loco errors if locomotion system is destroyed
																																				if not self.loco then return end

																																					self._DrGBaseFactions = self._30Faction
																																					self:SetAcceleration(self.Acceleration)
																																					self:SetDeceleration(self.Deceleration)
																																					self:SetNWBool("ShowHP", self.ShowHP)
																																					self:SetNWInt("VeloL", self:GetVelocity():Length())
																																					self:SetNWInt("SpriteSequencePer", self.SpriteSequencePer)
																																					self:SetNWInt("DSpeed", self.Speed)
																																					self:SetNWInt("SpriteShake", math.Clamp(self:GetNWInt("SpriteShake") - self.SpriteShakeT, 0, self.SpriteShakeMax))
																																					self:SetNWInt("Dodge", math.Clamp(self:GetNWInt("Dodge") - self._DSpeed, 0, 1))
																																					self:SetNWInt("_HP", self:Health())
																																					if not self.Dead and self:AIable() then
																																						if self.IfBeingAimed or self._BIfBeingAimed then
																																							for _, p in pairs(player.GetAll()) do
																																								local t = util.TraceLine({start = p:GetShootPos(), endpos = p:GetShootPos() + p:GetAimVector() * 1999, filter = p, mask = MASK_SHOT_HULL})
																																								if p:Alive() and t.Entity == self and not GNT(p) and GetConVarNumber("ai_ignoreplayers") ~= 1 then
																																									if self._BIfBeingAimed then
																																										self:_BIfBeingAimed(p)
																																										end
																																										if self.IfBeingAimed then
																																											self:IfBeingAimed(p)
																																											end
																																											end
																																											end
																																											end
																																											if self:HasEnemy() then
																																												local v = self:GetEnemy()
																																												if IsValid(v) and v.CPTBase_Nextbot then
																																													local e = v:GetEnemy()
																																													local n = Get308NextBots()
																																													if #n < 1 then
																																														return e
																																														end
																																														for l, b in ipairs(n) do
																																															if IsValid(b) and (CPTBaseValidTarget(v, b) or not IsValid(e) or v:GetPos():DistToSqr(e:GetPos()) >= v:GetPos():DistToSqr(b:GetPos())) then
																																																e = b
																																																end
																																																end
																																																v:SetEnemy(e)
																																																end
																																																end
																																																if self._NextT < CurTime() then
																																																	self._NextT = CurTime() + self.JudgeDelay
																																																	self:_Enemy()
																																																	end
																																																	if self.HealthRegen and self:Health() < self:GetMaxHealth() and self._Regen < CurTime() then
																																																		self:SetHealth(math.Clamp(self:Health() + self.HealthRegen, 0, self:GetMaxHealth()))
																																																		self._Regen = CurTime() + 1
																																																		end
																																																		if #self.Enemys > 0 then
																																																			if not self._FE then
																																																				self:EmitSound(_308Table(self.SFoundEnemy2) or _308Table(self.SFoundEnemy), 100, math.random(self.SFoundEnemyPitch[1], self.SFoundEnemyPitch[2]))
																																																				self:OnFoundEnemy()
																																																				end
																																																				self._FE = CurTime() + .4 + self.LastEnemyTime
																																																				self._Talking = nil
																																																				elseif #self.Enemys < 1 and self._FE and self._FE < CurTime() then
																																																					self._NextSoundT = CurTime() + math.Rand(self.NextS_L, self.NextS_H)
																																																					self:EmitSound(_308Table(self.SLastEnemy2) or _308Table(self.SLastEnemy), 100, math.random(self.SLastEnemyPitch[1], self.SLastEnemyPitch[2]))
																																																					self.__Idle = 0
																																																					self:OnLastEnemy()
																																																					self._FE = nil
																																																					end
																																																					if GetConVarNumber("wb3_n_moveforward") ~= 0 then
																																																						if not self._O_Ang then
																																																							self._O_Ang = self:GetAngles()
																																																							elseif self._O_Ang ~= self:GetAngles() then
																																																								self:SetAngles(self._O_Ang)
																																																								end
																																																								end
																																																								if not self._O_YawRate and GetConVarNumber("wb3_n_moveforward") ~= 0 then
																																																									self._O_YawRate = self.YawRate
																																																									self.loco:SetMaxYawRate(0)
																																																									elseif self._O_YawRate and GetConVarNumber("wb3_n_moveforward") == 0 then
																																																										self.loco:SetMaxYawRate(self._O_YawRate)
																																																										self._O_YawRate = nil
																																																										end
																																																										if self._NextSoundT < CurTime() then
																																																											self._NextSoundT = CurTime() + math.Rand(self.NextS_L, self.NextS_H)
																																																											if self._FE then
																																																												if #self.Enemys < 1 then
																																																													self:EmitSound(_308Table(self.SAlert), 100, math.random(self.SAlertPitch[1], self.SAlertPitch[2]))
																																																													else
																																																														self:EmitSound(_308Table(self.SCombat2) or _308Table(self.SCombat), 100, math.random(self.SCombatPitch[1], self.SCombatPitch[2]))
																																																														end
																																																														elseif not self._FE then
																																																															if self:AIable() and not self.Dead then
																																																																local r, f
																																																																for _, e in pairs(ents.FindInSphere(self:EyePos(), 260)) do
																																																																if self ~= e and (IsNextBot3(e) or e:IsNPC() or (e:IsPlayer() and e:Alive() and GetConVarNumber("ai_ignoreplayers") ~= 1) and not GNT(e)) then
																																																																if self:CheckRelationship(e) == 3 and not e.Dead and e.Is308Bot and not e._Talking and not self._Talking and #self.SQuestion > 0 and #e.SAnswer > 0 then
																																																																f = e
																																																																end
																																																																r = 1
																																																																end
																																																																end
																																																																if not r then
																																																																self:EmitSound(_308Table(self.S_Think))
																																																																elseif IsValid(f) and GetConVarNumber("wb3_n_talk") == 1 then
																																																																local r = math.random(1, #self.SQuestion)
																																																																local q = self.SQuestion[r]
																																																																local a = self.SAnswer[r]
																																																																if q and a and GetConVarNumber("wb3_n_moveforward") ~= 0 then
																																																																for l = 1, 36 do
																																																																self.loco:FaceTowards(f:GetPos())
																																																																if f.loco and f.loco.FaceTowards then
																																																																f.loco:FaceTowards(self:GetPos())
																																																																end
																																																																end
																																																																self:EmitSound(_308Table(q.Snd))
																																																																self._NextSoundT = CurTime() + q.Delay + math.Rand(self.NextS_L, self.NextS_H) + math.Rand(0, 4)
																																																																f._NextSoundT = CurTime() + q.Delay + math.Rand(self.NextS_L, self.NextS_H) + math.Rand(0, 4)
																																																																self._Talking = 1
																																																																f._Talking = 1
																																																																timer.Simple(q.Delay, function()
																																																																if IsValid(self) then
																																																																if IsValid(f) and not f.Dead and not f._FE and self:GetRangeTo(f) < 261 then
																																																																if f._Talking and self._Talking then
																																																																f:EmitSound(_308Table(a.Snd))
																																																																end
																																																																f._Talking = nil
																																																																end
																																																																if IsValid(f) then
																																																																f._Talking = nil
																																																																end
																																																																self._Talking = nil
																																																																end
																																																																end)
																																																																end
																																																																end
																																																																end
																																																																end
																																																																self:EmitSound(_308Table(self.SIdle2) or _308Table(self.SIdle), 100, math.random(self.SIdlePitch[1], self.SIdlePitch[2]))
																																																																end
																																																																end
																																																																self:_BThink()
																																																																self:AlwayThink()
																																																																if not self:AIable() then
																																																																self:CustomThinkNoAI()
																																																																return
																																																																end
																																																																self:CustomThink()
																																																																self:FindEnemy()
																																																																self:_SIsMoving()
																																																																if self.Timer ~= 0 and self.Timer < CurTime() then
																																																																self.Timer = 0
																																																																self.Attacking = false
																																																																if self.AttSpeed < 1 then
																																																																self:StartActivity(self.IdleAct)
																																																																self:SetSpeed(self.Speed)
																																																																end
																																																																return
																																																																end
																																																																for k, v in pairs(self.Enemys) do
																																																																local dis = self:GetRangeTo(v)
																																																																if not IsValid(v) or v:Health() <= 0 then
																																																																self:_Enemy()
																																																																elseif dis <= self.AttRange + self.BBox.x and self.AttRange > 0 and not self.Attacking and (self:Visible(v) or self.AttackIgnoreWorld) then
																																																																if self.Timer == 0 and IsValid(self:GetEnemy()) and self:Health() > 0 then
																																																																if self.AttFaceTo then
																																																																self:SetAngles(Angle(0, (self:GetEnemy():GetPos() - self:GetPos()):Angle().yaw, 0))
																																																																end
																																																																self:SetSpeed(self.AttSpeed)
																																																																self:Attack()
																																																																self:EmitSound(_308Table(self.SAttack2) or _308Table(self.SAttack), 100, math.random(self.SAttackPitch[1], self.SAttackPitch[2]))
																																																																end
																																																																elseif self.AttRange2 and dis <= self.AttRange2 + self.BBox.x and not self.Attacking and (self:Visible(v) or self.AttackIgnoreWorld) then
																																																																if self.Timer == 0 and IsValid(self:GetEnemy()) and self:Health() > 0 then
																																																																if self.AttFaceTo then
																																																																self:SetAngles(Angle(0, (self:GetEnemy():GetPos() - self:GetPos()):Angle().yaw, 0))
																																																																end
																																																																self:SetSpeed(self.AttSpeed)
																																																																self:RangeAtt()
																																																																end
																																																																end
																																																																end
																																																																end

																																																																function ENT:_SIsMoving()
																																																																self.Moving = nil
																																																																self:SetNWBool("Moving", false)
																																																																self:SetNWBool("Walking", false)
																																																																self:SetNWBool("Running", false)
																																																																if self:HasEnemy() then
																																																																if self.AllowMove and self.Speed > 0 and not (self.A_KeepRange and self:GetRangeTo(self:GetEnemy()) < self.A_KeepRange + self.BBox.x) then
																																																																self.Moving = 1
																																																																self:SetNWBool("Moving", true)
																																																																self:SetNWBool("Walking", true)
																																																																self:SetNWBool("Running", true)
																																																																end
																																																																end
																																																																end

																																																																function ENT:RunBehaviour()
																																																																while true do
																																																																self:Move()
																																																																coroutine.wait(.25)
																																																																end
																																																																end

																																																																function ENT:Move()
																																																																if not self.AllowMove then return end
																																																																if not self.loco then return end -- Safety check

																																																																local enemy = self:GetEnemy()
																																																																if not IsValid(enemy) or enemy:Health() <= 0 then
																																																																self:SetEnemy()
																																																																self:_Enemy()
																																																																return
																																																																end
																																																																local p = enemy:GetPos()
																																																																local path = Path("Follow")
																																																																path:Compute(self, p)
																																																																if self.A_KeepRange and self:GetRangeTo(enemy) < self.A_KeepRange + self.BBox.x then
																																																																return
																																																																end
																																																																if GetConVarNumber("wb3_n_moveforward") ~= 0 then
																																																																p = self:GetPos() + self:GetForward() * 5 + self:GetUp() * 5
																																																																end
																																																																if not path:IsValid() or GetConVarNumber("wb3_n_moveforward") ~= 0 or self.OnlyForward then
																																																																if self.AllowMove and self.AllowMove ~= 0 then
																																																																self.loco:Approach(p, self.Speed)
																																																																end
																																																																return
																																																																end
																																																																while (self.AllowMove == 1 or (IsValid(self:GetEnemy()) and GetConVarNumber("ai_disabled") ~= 1 and self:GetChase() and not self:Visible(self:GetEnemy()) and not self.AttackIgnoreWorld and self:Health() > 0) or (self.AllowMove == 2 and self:Health() > 0)) and (not self.A_KeepRange or not IsValid(self:GetEnemy()) or self:GetRangeTo(self:GetEnemy()) > self.A_KeepRange + self.BBox.x) do
																																																																enemy = self:GetEnemy()
																																																																if IsValid(enemy) and self:AIable() then
																																																																if path:GetAge() > 0.1 then
																																																																path:Compute(self, enemy:GetPos())
																																																																end
																																																																path:Update(self)
																																																																if self.loco:IsStuck() then
																																																																self:HandleStuck()
																																																																return
																																																																end
																																																																coroutine.yield()
																																																																else
																																																																coroutine.yield()
																																																																end
																																																																end
																																																																return
																																																																end

																																																																function ENT:EyePos()
																																																																if self:LookupBone(self.EyePosBone) then
																																																																return (self:GetBonePosition(self:LookupBone(self.EyePosBone)) + self.EyePosOffset)
																																																																else
																																																																return (self:GetPos() + self.EyePosOffset)
																																																																end
																																																																end

																																																																ENT._NU_MELEE = 0

																																																																function ENT:MeleeCancel(a)
																																																																self._NU_MELEE = self._NU_MELEE + 1
																																																																end

																																																																function ENT:Melee(a)
																																																																self:_Enemy()
																																																																if not self.Attacking then
																																																																self.Attacking = true
																																																																a = a or self.Att
																																																																if not a then return end
																																																																for i = 1, #a do
																																																																local r = self.AttRange
																																																																if a[i].Range then
																																																																r = a[i].Range
																																																																end
																																																																r = r + self.BBox.x
																																																																local m = 0
																																																																local n = self._NU_MELEE
																																																																timer.Simple(a[i].Time or 0, function()
																																																																if IsValid(self) and self:Health() > 0 and self._NU_MELEE == n then
																																																																local function melee(p)
																																																																if not IsValid(p) or p:Health() <= 0 or (self.MeleeMultiple ~= 0 and m >= self.MeleeMultiple) then
																																																																self:_Enemy()
																																																																return
																																																																end
																																																																if self:GetRangeTo(p) < r and (not self.LongDistance or self:GetRangeTo(p) >= self.BBox.x + self.LongDistance) and p:Health() > 0 and self.Attacking then
																																																																p:EmitSound(_308Table(a[i].SHit) or " ")
																																																																local dm = a[i].dmg or 10
																																																																if dm > 0 then
																																																																local d = DamageInfo()
																																																																d:SetDamage(dm)
																																																																d:SetDamageType(a[i].Type or DMG_SLASH)
																																																																d:SetInflictor(self)
																																																																d:SetAttacker(self)
																																																																self:OnHitEnemy(p, d, i)
																																																																p:TakeDamageInfo(d)
																																																																end
																																																																m = m + 1
																																																																end
																																																																end
																																																																if self.MeleeMultiple == 1 then
																																																																melee(self:GetEnemy())
																																																																else
																																																																for _, en in pairs(self.Enemys) do
																																																																melee(en)
																																																																end
																																																																end
																																																																if m < 1 then
																																																																self:EmitSound(_308Table(a[i].SMiss) or " ")
																																																																self:OnMissEnemy(i)
																																																																end
																																																																end
																																																																end)
																																																																end
																																																																end
																																																																end

																																																																function ENT:Eyes()
																																																																if not self:AIable() then return end
																																																																local enemy = self:GetEnemy()
																																																																if not IsValid(enemy) or enemy:Health() <= 0 then
																																																																self:SetEnemy()
																																																																self:_Enemy()
																																																																return
																																																																end
																																																																local r
																																																																for k, v in pairs(self.Enemys) do
																																																																if IsValid(v) and v:Health() <= 0 then
																																																																local dis = self:GetRangeTo(v)
																																																																if dis <= self.AttRange + self.BBox.x then
																																																																r = 1
																																																																end
																																																																end
																																																																if r then return false end
																																																																end
																																																																local v = enemy:GetViewEntity()
																																																																local fov = enemy:GetFOV()
																																																																local d = self:GetPos() - v:GetPos()
																																																																local s = d:Length()
																																																																local MaxCos = math.abs(math.cos(math.acos(s / math.sqrt(s * s + self.Width * self.Width)) + fov * (math.pi / 180)))
																																																																d:Normalize()
																																																																if d:Dot(v:EyeAngles():Forward()) > MaxCos then
																																																																return true
																																																																end
																																																																return false
																																																																end

																																																																function ENT:FindEnemy()
																																																																if not self:AIable() then return end
																																																																local d = 99999
																																																																if IsValid(self:GetEnemy()) then
																																																																d = self:GetRangeTo(self:GetEnemy())
																																																																end
																																																																local p = self:GetEnemy() or self.Enemys[1]
																																																																for k, v in pairs(self.Enemys) do
																																																																if not IsValid(v) or v:Health() <= 0 then
																																																																self:_Enemy()
																																																																return
																																																																end
																																																																local t = self:GetRangeTo(v)
																																																																if d > t then
																																																																d = t
																																																																p = v
																																																																end
																																																																end
																																																																local a
																																																																local B
																																																																if IsValid(p) and self:Visible(p) and not self.Dead then
																																																																a = (p:EyePos() - self:EyePos()):Angle() - self:GetAngles()
																																																																if a.yaw < 0 then
																																																																a.yaw = a.yaw + 360
																																																																end
																																																																if a.yaw < 280 and a.yaw > 180 then
																																																																B = 1
																																																																elseif a.yaw <= 180 and a.yaw > 80 then
																																																																B = 1
																																																																end
																																																																if self._Rot < CurTime() and B then
																																																																if GetConVarNumber("wb3_n_moveforward") ~= 0 then
																																																																if self.loco then
																																																																self._Rot = CurTime() + 12.5 / self.loco:GetMaxYawRate()
																																																																self.loco:FaceTowards(p:GetPos())
																																																																end
																																																																end
																																																																end
																																																																end
																																																																self:SetEnemy(p)
																																																																return p
																																																																end

																																																																local thingstoavoid = {
																																																																["prop_physics"] = 1,
																																																																["prop_ragdoll"] = 1,
																																																																}

																																																																function ENT:OnContact(ent)
																																																																if not IsValid(ent) then return end
																																																																if not self.loco then return end -- Safety check

																																																																if self:CustomContact(ent) then return end
																																																																if ent == game.GetWorld() then return "no" end
																																																																if (ent.IsVJBaseSNPC or ent.CPTBase_NPC or ent.IsSLVBaseNPC or ent:GetNWBool("bZelusSNPC")) or (ent:IsNPC() and ent:GetClass() ~= "npc_bullseye" and ent:Health() > 0) or (ent:IsPlayer() and ent:Alive()) or ((IsNextBot3(ent)) and ent ~= self and not ent.Is308Bot) then
																																																																local d = (self:GetPos() - ent:GetPos()):GetNormalized()
																																																																d.z = 0
																																																																if ent:IsPlayer() then
																																																																ent:SetVelocity(self:GetVelocity() - d * 100)
																																																																else
																																																																self.loco:SetVelocity(d * 500 + self:GetVelocity())
																																																																end
																																																																end
																																																																if thingstoavoid[ent:GetClass()] then
																																																																local p = ent:GetPhysicsObject()
																																																																if IsValid(p) then
																																																																p:Wake()
																																																																local d = ent:GetPos() - self:GetPos()
																																																																p:SetVelocity(d * 2)
																																																																end
																																																																end
																																																																local t = {
																																																																HitPos = self:NearestPoint(ent:GetPos()),
																																																																HitEntity = self,
																																																																OurOldVelocity = ent:GetVelocity(),
																																																																DeltaTime = 0,
																																																																TheirOldVelocity = self.loco:GetVelocity(),
																																																																HitNormal = self:NearestPoint(ent:GetPos()):GetNormalized(),
																																																																Speed = ent:GetVelocity().x,
																																																																HitObject = self:GetPhysicsObject(),
																																																																PhysObject = self:GetPhysicsObject()
																																																																}
																																																																if isfunction(ent.DoDamageCode) then
																																																																ent:DoDamageCode(t, self:GetPhysicsObject())
																																																																elseif isfunction(ent.PhysicsCollide) then
																																																																ent:PhysicsCollide(t, self:GetPhysicsObject())
																																																																end
																																																																end

																																																																function ENT:SetDirectPoseAt(v, p, y, c)
																																																																if not isstring(y) then
																																																																return self:SetDirectPoseAt(v, p .. "_pitch", p .. "_yaw", y)
																																																																elseif isentity(v) then
																																																																v = v:WorldSpaceCenter()
																																																																end
																																																																if isvector(v) then
																																																																c = c or self:WorldSpaceCenter()
																																																																local a = (v - c):Angle()
																																																																self:SetPoseParameter(p, math.AngleDifference(a.p, self:GetAngles().p))
																																																																self:SetPoseParameter(y, math.AngleDifference(a.y, self:GetAngles().y))
																																																																else
																																																																self:SetPoseParameter(p, 0)
																																																																self:SetPoseParameter(y, 0)
																																																																end
																																																																end

																																																																function ENT:SetSpriteAnimRate(s, n)
																																																																self:SetNWInt("SpriteRate_" .. s, n)
																																																																end

																																																																function ENT:ScaleSpriteAnimRate(s, n)
																																																																self:SetNWInt("SpriteRate_" .. s, self:GetNWInt("SpriteRate_" .. s) * n)
																																																																end

																																																																function ENT:IsMoving()
																																																																return self:GetNWBool("Moving")
																																																																end

																																																																function ENT:IsRunning()
																																																																return self:GetNWBool("Running")
																																																																end

																																																																function ENT:IsWalking()
																																																																return self:GetNWBool("Walking")
																																																																end

																																																																function ENT:CheckSpace(v)
																																																																local b = self.BBox
																																																																return util.IsInWorld(v) and
																																																																util.IsInWorld(v + Vector(b.x / 2, b.y / 2, b.z)) and
																																																																util.IsInWorld(v + Vector(-b.x / 2, b.y / 2, b.z)) and
																																																																util.IsInWorld(v + Vector(-b.x / 2, -b.y / 2, b.z)) and
																																																																util.IsInWorld(v + Vector(b.x / 2, -b.y / 2, b.z)) and
																																																																util.IsInWorld(v + Vector(0, 0, b.z / 2)) and
																																																																util.IsInWorld(v + Vector(b.x / 2, b.y / 2, 0)) and
																																																																util.IsInWorld(v + Vector(-b.x / 2, b.y / 2, 0)) and
																																																																util.IsInWorld(v + Vector(-b.x / 2, -b.y / 2, 0)) and
																																																																util.IsInWorld(v + Vector(b.x / 2, -b.y / 2, 0)) and
																																																																util.IsInWorld(v + Vector(0, 0, b.z)) and
																																																																util.IsInWorld(v + Vector(b.x / 2, 0, b.z / 2)) and
																																																																util.IsInWorld(v + Vector(-b.x / 2, 0, b.z / 2)) and
																																																																util.IsInWorld(v + Vector(0, -b.y / 2, b.z / 2)) and
																																																																util.IsInWorld(v + Vector(0, -b.y / 2, b.z / 2)) and
																																																																util.IsInWorld(self:WorldSpaceCenter())
																																																																end

																																																																function ENT:Teleport(v, v3)
																																																																if CLIENT then return end
																																																																local f = 0
																																																																if isentity(v3) and IsValid(v3) then
																																																																self:Teleport(v, v3:GetPos())
																																																																return
																																																																end
																																																																v3 = v3 or self:GetPos()
																																																																if not isvector(v3) then
																																																																v3 = self:GetPos()
																																																																end
																																																																local v2 = v3 + VectorRand() * v
																																																																while not self:CheckSpace(v2) and f < 21 do
																																																																f = f + 1
																																																																v2 = v3 + VectorRand() * v
																																																																end
																																																																if f > 20 then
																																																																MsgAll(tostring(self) .. "Teleport Failed")
																																																																return
																																																																end
																																																																self:SetPos(v2)
																																																																end

																																																																function ENT:SetBBounds(v, g)
																																																																self:SetCollisionBounds(v, g)
																																																																self.BBox = v
																																																																end

																																																																function ENT:IsOnGround()
																																																																if self.loco then return self.loco:IsOnGround() end
																																																																return false
																																																																end

																																																																function ENT:HasEnemy()
																																																																return IsValid(self:GetEnemy())
																																																																end

																																																																function ENT:HasEnemys()
																																																																return table.Count(self.Enemys) > 0
																																																																end

																																																																function ENT:OnKilled(d)
																																																																if not IsValid(self) then return end
																																																																local attacker = IsValid(d) and d:GetAttacker() or NULL
																																																																local inflictor = IsValid(d) and d:GetInflictor() or NULL
																																																																hook.Call("OnNPCKilled", GAMEMODE, self, attacker, inflictor)
																																																																if not self.Dead then
																																																																self:OnDead(IsValid(d) and d or self._LastDI, self.Hitgroup)
																																																																self.Dead = 1
																																																																self:SetNWBool("Dead", 1)
																																																																end
																																																																self:EmitSound(_308Table(self.SDie2) or _308Table(self.SDie), 100, math.random(self.SDiePitch[1], self.SDiePitch[2]))
																																																																local r
																																																																if not self:CustomOnKilled(d) then r = 1 end
																																																																if not self:_BOnKilled(d) then r = 1 end
																																																																if r then return end
																																																																if IsValid(self:GetWeapon()) then
																																																																self:GetWeapon():Remove()
																																																																end
																																																																if isstring(self.HasRagdoll) and util.IsValidModel(self.HasRagdoll) then
																																																																self:SetModel(self.HasRagdoll)
																																																																end
																																																																if self.QuickRemove == 1 then
																																																																if util.IsValidModel(self:GetModel()) then
																																																																self:BecomeRagdoll(IsValid(d) and d or self._LastDI)
																																																																end
																																																																SafeRemoveEntityDelayed(self, .075)
																																																																elseif self.QuickRemove then
																																																																self:Remove()
																																																																elseif self.HasRagdoll then
																																																																self:BecomeRagdoll(IsValid(d) and d or self._LastDI)
																																																																end
																																																																end

																																																																function ENT:_BOnKilled()
																																																																return true
																																																																end

																																																																function ENT:CustomOnKilled()
																																																																return true
																																																																end

																																																																function ENT:Jump(m)
																																																																if self.loco and self:IsOnGround() then
																																																																self.loco:SetJumpHeight(m or self.JumpHeight)
																																																																self.loco:Jump()
																																																																end
																																																																end

																																																																function ENT:FireB(p)
																																																																if not IsValid(self) then return end
																																																																local e = self:GetEnemy()
																																																																if not IsValid(e) then return end
																																																																local s = self.RA_Spread
																																																																local m = self:EyePos()
																																																																if p then
																																																																m = p
																																																																else
																																																																if self.RA_FireAttach > -1 then
																																																																local attach = self:GetAttachment(self:LookupAttachment(self.RA_FireAttach))
																																																																if attach then
																																																																m = attach.Pos
																																																																end
																																																																end
																																																																end
																																																																local b = {}
																																																																if self.RA_Muzzle then
																																																																local f = ents.Create("env_muzzleflash")
																																																																if IsValid(f) then
																																																																f:SetPos(m)
																																																																f:SetKeyValue("scale", "1")
																																																																f:SetKeyValue("angles", tostring(self:GetForward():Angle()))
																																																																f:Fire("Fire", 0, 0)
																																																																f:Fire("Kill", 0, .1)
																																																																end
																																																																end
																																																																b.Num = self.RA_Num
																																																																b.Src = m
																																																																s = s + e:GetVelocity():Length() / 100
																																																																for l = 1, self.RA_Num do
																																																																if not IsValid(e) then break end
																																																																local eyePos = e:EyePos()
																																																																if not isvector(eyePos) then break end
																																																																b.Dir = eyePos - m
																																																																if e:IsPlayer() then
																																																																b.Dir = b.Dir + Vector(math.random(-s, s), math.random(-s, s), -8)
																																																																else
																																																																b.Dir = b.Dir + Vector(math.random(-s, s), math.random(-s, s), math.random(-s, s))
																																																																end
																																																																b.Spread = Vector(s, s, 0)
																																																																b.Tracer = self.RA_Tracer
																																																																b.Force = self.RA_Dmg / 5
																																																																b.Damage = self.RA_Dmg
																																																																b.AmmoType = "SMG"
																																																																self:FireBullets(b)
																																																																end
																																																																end

																																																																function ENT:SoundSlotDeath(s)
																																																																if not s then return end
																																																																for i = 1, #s do
																																																																if s[i] then
																																																																if not s[i].Delay then s[i].Delay = 0 end
																																																																if not s[i].Pitch then s[i].Pitch = 100 end
																																																																if not s[i].Volume then s[i].Volume = 100 end
																																																																timer.Simple(s[i].Delay, function()
																																																																if IsValid(self) then
																																																																self:EmitSound(_308Table(s[i].Sound), s[i].Volume, s[i].Pitch)
																																																																if (s[i].Volume == 511 and not s[i].NoEmitAI) or s[i].EmitAI then
																																																																self:InsertSound(1, self:GetPos(), 1500, 3)
																																																																end
																																																																end
																																																																end)
																																																																end
																																																																end
																																																																end

																																																																function ENT:SoundSlot(s)
																																																																if not s then return end
																																																																for i = 1, #s do
																																																																if s[i] then
																																																																if not s[i].Delay then s[i].Delay = 0 end
																																																																if not s[i].Pitch then s[i].Pitch = 100 end
																																																																if not s[i].Volume then s[i].Volume = 100 end
																																																																timer.Simple(s[i].Delay, function()
																																																																if IsValid(self) and self:Health() > 0 then
																																																																self:EmitSound(_308Table(s[i].Sound), s[i].Volume, s[i].Pitch)
																																																																if (s[i].Volume == 511 and not s[i].NoEmitAI) or s[i].EmitAI then
																																																																self:InsertSound(1, self:GetPos(), 1500, 3)
																																																																end
																																																																end
																																																																end)
																																																																end
																																																																end
																																																																end

																																																																function ENT:InsertSound(s, p, v, d)
																																																																if SERVER then
																																																																local a = ents.Create("ai_sound")
																																																																if IsValid(a) then
																																																																a:SetPos(p)
																																																																a:Spawn()
																																																																a:SetKeyValue("soundtype", s)
																																																																a:SetKeyValue("volume", v)
																																																																a:SetKeyValue("duration", d)
																																																																a:Activate()
																																																																a:Fire("EmitAISound")
																																																																timer.Simple(d, function()
																																																																if IsValid(a) then
																																																																a:Remove()
																																																																end
																																																																end)
																																																																end
																																																																end
																																																																end

																																																																-- CRITICAL FIX: Safe wrapper functions for locomotion
																																																																function ENT:SetAcceleration(s)
																																																																if self.loco then self.loco:SetAcceleration(s) end
																																																																end

																																																																function ENT:GetAcceleration()
																																																																if self.loco then return self.loco:GetAcceleration() end
																																																																end

																																																																function ENT:SetDeceleration(s)
																																																																if self.loco then self.loco:SetDeceleration(s) end
																																																																end

																																																																function ENT:GetDeceleration()
																																																																if self.loco then return self.loco:GetDeceleration() end
																																																																end

																																																																function ENT:SetNoTarget(b)
																																																																if b then
																																																																self:AddFlags(FL_NOTARGET)
																																																																else
																																																																self:RemoveFlags(FL_NOTARGET)
																																																																timer.Simple(.2, function()
																																																																if IsValid(self) then
																																																																self:SetRelationships(self.Enemys)
																																																																end
																																																																end)
																																																																end
																																																																end

																																																																function ENT:GetNoTarget()
																																																																return self:IsFlagSet(FL_NOTARGET)
																																																																end

																																																																function ENT:SetLight(s)
																																																																self:SetNWBool("Lig", s)
																																																																end

																																																																function ENT:GetLight()
																																																																return self:GetNWBool("Lig")
																																																																end

																																																																function ENT:SetSprite(s)
																																																																self:SetNetworkedString("Sprite", s)
																																																																end

																																																																function ENT:GetSprite()
																																																																return self:GetNetworkedString("Sprite")
																																																																end

																																																																function ENT:SetSprite4(s)
																																																																self:SetNetworkedString("Sprite4", s)
																																																																end

																																																																function ENT:GetSprite4()
																																																																return self:GetNetworkedString("Sprite4")
																																																																end

																																																																function ENT:GetSpriteWalk()
																																																																return self:GetNetworkedString("SpriteWalk")
																																																																end

																																																																function ENT:SetSpriteWalk(s)
																																																																self:SetNetworkedString("SpriteWalk", s)
																																																																end

																																																																function ENT:GetSpriteRun()
																																																																return self:GetNetworkedString("SpriteRun")
																																																																end

																																																																function ENT:SetSpriteRun(s)
																																																																self:SetNetworkedString("SpriteRun", s)
																																																																end

																																																																function ENT:GetSpriteIdle()
																																																																return self:GetNetworkedString("SpriteIdle")
																																																																end

																																																																function ENT:SetSpriteIdle(s)
																																																																self:SetNetworkedString("SpriteIdle", s)
																																																																end

																																																																function ENT:GetSpriteAnim()
																																																																return self:GetNetworkedString("SpriteAnim")
																																																																end

																																																																function ENT:SetSpriteAnim(s)
																																																																self:SetNetworkedString("SpriteAnim", s)
																																																																self:SetNetworkedString("SpriteAnim2", s)
																																																																self:SetNWBool("SpriteAnimT", true)
																																																																self:SpriteAnimUpdate()
																																																																end

																																																																function ENT:SetSpriteScale(s)
																																																																self:SetNWInt("SpriteScale", s)
																																																																end

																																																																function ENT:GetSpriteScale()
																																																																return self:GetNWInt("SpriteScale")
																																																																end

																																																																function ENT:SetSpriteShake(s)
																																																																self:SetNWInt("SpriteShake", s)
																																																																end

																																																																function ENT:AddSpriteShake(s)
																																																																self:SetNWInt("SpriteShake", s + self:GetNWInt("SpriteShake"))
																																																																end

																																																																function ENT:GetSpriteShake()
																																																																return self:GetNWInt("SpriteShake")
																																																																end

																																																																function ENT:PlayDodge(s)
																																																																if self:GetNWInt("Dodge") > 0 then return end
																																																																self:SetNWInt("DodgeClient", 0)
																																																																self:SetNWInt("DodgeClient", 1)
																																																																self:SetNWInt("Dodge", 1)
																																																																self._DSpeed = s or .02
																																																																local t = util.TraceLine({start = self:EyePos(), endpos = self:EyePos() + self:GetRight() * 80, filter = self})
																																																																local t2 = util.TraceLine({start = self:EyePos(), endpos = self:EyePos() - self:GetRight() * 80, filter = self})
																																																																if not t.Hit then
																																																																self:SetNWVector("DodgeV2", self:GetRight() * 100)
																																																																self:SetNWInt("DodgeV", -100)
																																																																else
																																																																self:SetNWVector("DodgeV2", self:GetRight() * -100)
																																																																self:SetNWInt("DodgeV", 100)
																																																																end
																																																																end

																																																																function ENT:_BInit() end
																																																																function ENT:BeforeInit() end
																																																																function ENT:CustomInit() end
																																																																function ENT:CustomThink() end
																																																																function ENT:CustomThinkNoAI() end
																																																																function ENT:OnFoundEnemy() end
																																																																function ENT:OnKillEnemy() end
																																																																function ENT:OnNewEnemy() end
																																																																function ENT:OnLastEnemy() end
																																																																function ENT:AlwayThink() end

																																																																function ENT:_BThink()
																																																																if IsValid(self:GetEnemy()) then
																																																																self:SetEyeTarget(self:GetEnemy():EyePos())
																																																																self:SetDirectPoseAt(self:GetEnemy():EyePos(), "head_pitch", "head_yaw", self:EyePos())
																																																																self:SetDirectPoseAt(self:GetEnemy():EyePos(), "aim_pitch", "aim_yaw", self:EyePos())
																																																																else
																																																																self:SetEyeTarget(self:EyePos() + self:GetForward() * 15 + Vector(0, 0, 25))
																																																																self:SetDirectPoseAt(nil, "head_pitch", "head_yaw", self:EyePos())
																																																																self:SetDirectPoseAt(nil, "aim_pitch", "aim_yaw", self:EyePos())
																																																																end
																																																																if not self.Attacking then
																																																																if self:GetVelocity():Length() <= 1 and self.__Idle < CurTime() then
																																																																self:StartActivity(self.IdleAct)
																																																																self.__Idle = CurTime() + self:GetSEQDuration()
																																																																elseif self:GetVelocity():Length() > 1 and self.__Idle ~= -1 then
																																																																self:StartActivity(self.MoveAct)
																																																																self.__Idle = -1
																																																																end
																																																																end
																																																																end

																																																																function ENT:_BRemove() end

																																																																function ENT:OnRemove()
																																																																self:CustomOnRemove()
																																																																self:_BRemove()
																																																																if self.UT and self.StoryMode then
																																																																self:ResetMenu()
																																																																end
																																																																if self._Dont then return end
																																																																if self.StoryMode and not self.DontClearOnRemove then
																																																																_308TextClear()
																																																																Muss330()
																																																																return
																																																																end
																																																																local i
																																																																for _, e in pairs(ents.GetAll()) do
																																																																if IsValid(e) and e ~= self and (e.StartMus or e.StoryMode) then
																																																																i = 1
																																																																end
																																																																end
																																																																if not i and self.StartMus and not self.DontClearOnRemove then
																																																																_308TextClear()
																																																																Muss330()
																																																																end
																																																																end

																																																																function ENT:Distance(e)
																																																																if IsValid(e) then
																																																																return e:GetPos():Distance(self:GetPos())
																																																																end
																																																																return 0
																																																																end

																																																																function ENT:CustomOnRemove() end

																																																																local function C(e, dmg, a)
																																																																if not IsValid(e) then return end
																																																																if e:IsPlayer() then
																																																																if not IsValid(a) then a = e end
																																																																local d = DamageInfo()
																																																																d:SetDamage(dmg)
																																																																d:SetDamageType(64)
																																																																d:SetAttacker(a)
																																																																d:SetInflictor(a)
																																																																e:TakeDamageInfo(d)
																																																																elseif IsValid(a) then
																																																																e:TakeDamage(dmg, a)
																																																																else
																																																																e:TakeDamage(dmg)
																																																																end
																																																																end

																																																																function ENT:EXPLOAD(d, x, a)
																																																																self:DisableAI()
																																																																a = a or self
																																																																x = x or 100
																																																																timer.Simple(math.Rand(0, .05), function()
																																																																for k, e in pairs(ents.GetAll()) do
																																																																if IsValid(e) and IsValid(self) and e ~= self then
																																																																local p = self:GetRangeTo(e)
																																																																local dmg = x * (d - p) / d
																																																																if p <= d then
																																																																C(e, dmg, a)
																																																																end
																																																																end
																																																																end
																																																																end)
																																																																end

																																																																function ENT:EXPLOADandRemove(d, x, a)
																																																																self:DisableAI()
																																																																a = a or self
																																																																x = x or 100
																																																																timer.Simple(math.Rand(0, .05), function()
																																																																for k, e in pairs(ents.GetAll()) do
																																																																if IsValid(e) and IsValid(self) and e ~= self then
																																																																local p = self:GetRangeTo(e)
																																																																local dmg = x * (d - p) / d
																																																																if p <= d then
																																																																C(e, dmg, a)
																																																																end
																																																																end
																																																																end
																																																																if IsValid(self) then
																																																																self:Remove()
																																																																end
																																																																end)
																																																																end

																																																																function ENT:SetChase(b)
																																																																self:SetNWBool("Chase", b)
																																																																end

																																																																function ENT:GetChase()
																																																																return self:GetNWBool("Chase")
																																																																end

																																																																function ENT:OnHitEnemy() end
																																																																function ENT:OnMissEnemy() end
																																																																function ENT:OnAttack() end

																																																																function ENT:Kill(m)
																																																																if self:Health() > 0 then
																																																																self:TakeDamage(self:GetMaxHealth() * 100, m)
																																																																end
																																																																end

																																																																function ENT:SetSpeed(s)
																																																																if self.loco then
																																																																if s then
																																																																self.loco:SetDesiredSpeed(s)
																																																																else
																																																																self.loco:SetDesiredSpeed(0)
																																																																end
																																																																end
																																																																end

																																																																function ENT:GetSEQDuration()
																																																																local r = self:SequenceDuration() / self:GetPlaybackRate()
																																																																if r > 99999 then r = 0 end
																																																																return r
																																																																end

																																																																function ENT:ResetSEQ()
																																																																self:SetPlaybackRate(1)
																																																																self.Timer = CurTime()
																																																																self.__Idle = CurTime()
																																																																end

																																																																function ENT:SEQ(s, pb, t)
																																																																if s then
																																																																self:ResetSEQ()
																																																																self:ResetSequenceInfo()
																																																																self:ResetSequence(s)
																																																																self:SetPlaybackRate(pb or 1)
																																																																self.Timer = CurTime() + self:GetSEQDuration()
																																																																self:SetSpeed()
																																																																self.__Idle = CurTime() + self:GetSEQDuration()
																																																																end
																																																																end

																																																																function ENT:PlayAct(s, pb, t)
																																																																if s then
																																																																self:ResetSEQ()
																																																																self:StartActivity(s)
																																																																self:SetPlaybackRate(pb or 1)
																																																																self.Timer = CurTime() + self:GetSEQDuration()
																																																																self:SetSpeed()
																																																																self.__Idle = CurTime() + self:GetSEQDuration()
																																																																end
																																																																end

																																																																function ENT:Attack()
																																																																self:Melee()
																																																																if self.AttSpeed < 1 then
																																																																self:StartActivity(self.IdleAct)
																																																																end
																																																																local s = self.AttSeq2 or self.AttSeq
																																																																self:SEQ(_308Table(s), self.AttRate)
																																																																if self.UseSprite then
																																																																local t = self.AttTime or 0
																																																																self.Timer = CurTime() + t
																																																																else
																																																																self.Timer = CurTime() + (self.AttTime or self:GetSEQDuration())
																																																																end
																																																																self:OnAttack()
																																																																end

																																																																function ENT:RangeAtt() end

																																																																function ENT:IsCombat()
																																																																return self._FE
																																																																end

																																																																function ENT:GetEnemy()
																																																																return self:GetNWEntity("enemy")
																																																																end

																																																																function ENT:SetEnemy(e)
																																																																self:SetNWEntity("enemy", e)
																																																																end

																																																																function ENT:AIable()
																																																																return self:GetNWBool("AI") and GetConVarNumber("ai_disabled") ~= 1
																																																																end

																																																																function ENT:EnableAI(b)
																																																																if b then
																																																																self:SetNWBool("AI", false)
																																																																else
																																																																self:SetNWBool("AI", true)
																																																																end
																																																																end

																																																																function ENT:DisableAI(b)
																																																																if b then
																																																																self:SetNWBool("AI", true)
																																																																else
																																																																self:SetNWBool("AI", false)
																																																																end
																																																																end

																																																																function ENT:SetAI(b)
																																																																self:SetNWBool("AI", b)
																																																																end

																																																																function ENT:EnableAI()
																																																																self:SetNWBool("AI", true)
																																																																end

																																																																function ENT:DisableAI()
																																																																self:SetNWBool("AI", false)
																																																																end

																																																																function ENT:Approach(v, n)
																																																																if self.loco then return self.loco:Approach(v, n) end
																																																																end

																																																																function ENT:OnDead(d) end
																																																																function ENT:OnHurt(d) end
																																																																function ENT:IsDead()
																																																																return self.Dead
																																																																end

																																																																function ENT:CustomContact() end
																																																																function ENT:_BIfBeingAimed(p) end

																																																																function ENT:OutWater()
																																																																if self:WaterLevel() < 1 and not self.w_IsInWater then
																																																																return 1
																																																																end
																																																																end

																																																																function ENT:CreateEntourage(c, p)
																																																																if SERVER and file.Exists("entities/" .. c , "LUA") then
																																																																local e = ents.Create(c)
																																																																if IsValid(e) then
																																																																e:SetSpawnEffect(true)
																																																																e:SetPos(p or self:GetPos())
																																																																e:SetAngles(self:GetAngles())
																																																																e:Spawn()
																																																																self:DeleteOnRemove(e)
																																																																e._30Faction = self._30Faction
																																																																e:SetCreator(self:GetCreator() or self)
																																																																e:SetRelationships(self, 3)
																																																																return e
																																																																end
																																																																end
																																																																end

																																																																function ENT:_Enemy()
																																																																if not IsValid(self) then return end
																																																																local t = {}
																																																																for _, e in pairs(ents.GetAll()) do
																																																																if IsValid(e) and self:CheckRelationship(e) == 1 and e:Health() > 0 and not self._Enemys[e] then
																																																																table.insert(t, e)
																																																																self._Enemys[e] = 1
																																																																self:OnNewEnemy(e)
																																																																if e.Is308Bot and e:CheckRelationship(self) == 4 then
																																																																e:SetRelationships(self, 1)
																																																																elseif e:IsNPC() then
																																																																e:AddEntityRelationship(self, 1, 100)
																																																																end
																																																																end
																																																																end
																																																																for _, e in pairs(self.Enemys) do
																																																																if not IsValid(e) or e:Health() <= 0 or self:CheckRelationship(e) ~= 1 or e:IsFlagSet(FL_NOTARGET) then
																																																																if self:GetEnemy() == e then
																																																																self:SetEnemy()
																																																																self._Enemys[e] = nil
																																																																end
																																																																else
																																																																table.insert(t, e)
																																																																end
																																																																end
																																																																self.Enemys = t
																																																																end

																																																																function ENT:GetFactions()
																																																																return self:GetFaction()
																																																																end

																																																																function ENT:GetFaction()
																																																																return self._30Faction
																																																																end

																																																																function ENT:IsEnemy(e)
																																																																return self:CheckRelationship(e) == 1
																																																																end

																																																																function ENT:IsAfraidOf(e)
																																																																return self:CheckRelationship(e) == 2
																																																																end

																																																																function ENT:IsAlly(e)
																																																																return self:CheckRelationship(e) == 3
																																																																end

																																																																function ENT:IsNeutral(e)
																																																																return self:CheckRelationship(e) == 4
																																																																end

																																																																function ENT:JoinFaction(f)
																																																																if GetConVarNumber("wb3_n_mode") == 1 then return nil
																																																																elseif GetConVarNumber("wb3_n_mode") == 2 then
																																																																if IsValid(self:GetCreator()) then
																																																																self._30Faction = {}
																																																																self._30Faction[string.upper(self:GetCreator():Nick())] = true
																																																																end
																																																																return
																																																																end
																																																																if istable(f) then
																																																																for i, c in ipairs(f) do
																																																																self:JoinFaction(c)
																																																																end
																																																																return
																																																																end
																																																																if not f or self:IsInFaction(f) then return end
																																																																self._30Faction[string.upper(f)] = true
																																																																for i, n in ipairs(Get308NextBots()) do
																																																																n:_Enemy()
																																																																end
																																																																return true
																																																																end

																																																																function ENT:LeaveFaction(f)
																																																																self._30Faction[string.upper(f)] = nil
																																																																end

																																																																function ENT:LeaveFactions()
																																																																self._30Faction = {}
																																																																end

																																																																function ENT:IsInFaction(f)
																																																																if istable(f) then
																																																																local r
																																																																for i, b in pairs(f) do
																																																																if self:IsInFaction(i) then r = 1 end
																																																																end
																																																																return r
																																																																elseif f then
																																																																return self._30Faction[string.upper(f)]
																																																																end
																																																																end

																																																																_308FACTION = {
																																																																["npc_crow"] = FACTION_ANIMALS,
																																																																["npc_monk"] = FACTION_REBELS,
																																																																["npc_pigeon"] = FACTION_ANIMALS,
																																																																["npc_seagull"] = FACTION_ANIMALS,
																																																																["npc_combine_camera"] = FACTION_COMBINE,
																																																																["npc_turret_ceiling"] = FACTION_COMBINE,
																																																																["npc_cscanner"] = FACTION_COMBINE,
																																																																["npc_combinedropship"] = FACTION_COMBINE,
																																																																["npc_combinegunship"] = FACTION_COMBINE,
																																																																["npc_combine_s"] = FACTION_COMBINE,
																																																																["npc_hunter"] = FACTION_COMBINE,
																																																																["npc_helicopter"] = FACTION_COMBINE,
																																																																["npc_manhack"] = FACTION_COMBINE,
																																																																["npc_metropolice"] = FACTION_COMBINE,
																																																																["npc_rollermine"] = FACTION_COMBINE,
																																																																["npc_clawscanner"] = FACTION_COMBINE,
																																																																["npc_stalker"] = FACTION_COMBINE,
																																																																["npc_strider"] = FACTION_COMBINE,
																																																																["npc_turret_floor"] = FACTION_COMBINE,
																																																																["npc_alyx"] = FACTION_REBELS,
																																																																["npc_barney"] = FACTION_REBELS,
																																																																["npc_citizen"] = FACTION_REBELS,
																																																																["npc_dog"] = FACTION_REBELS,
																																																																["npc_magnusson"] = FACTION_REBELS,
																																																																["npc_kleiner"] = FACTION_REBELS,
																																																																["npc_mossman"] = FACTION_REBELS,
																																																																["npc_eli"] = FACTION_REBELS,
																																																																["npc_fisherman"] = FACTION_REBELS,
																																																																["npc_gman"] = FACTION_GMAN,
																																																																["npc_odessa"] = FACTION_REBELS,
																																																																["npc_vortigaunt"] = FACTION_REBELS,
																																																																["npc_breen"] = FACTION_COMBINE,
																																																																["npc_antlion"] = FACTION_ANTLIONS,
																																																																["npc_antlion_grub"] = FACTION_ANTLIONS,
																																																																["npc_antlionguard"] = FACTION_ANTLIONS,
																																																																["npc_antlionguardian"] = FACTION_ANTLIONS,
																																																																["npc_antlion_worker"] = FACTION_ANTLIONS,
																																																																["npc_barnacle"] = FACTION_BARNACLES,
																																																																["npc_headcrab_fast"] = FACTION_ZOMBIES,
																																																																["npc_fastzombie"] = FACTION_ZOMBIES,
																																																																["npc_fastzombie_torso"] = FACTION_ZOMBIES,
																																																																["npc_headcrab"] = FACTION_ZOMBIES,
																																																																["npc_headcrab_black"] = FACTION_ZOMBIES,
																																																																["npc_poisonzombie"] = FACTION_ZOMBIES,
																																																																["npc_zombie"] = FACTION_ZOMBIES,
																																																																["npc_zombie_torso"] = FACTION_ZOMBIES,
																																																																["npc_zombine"] = FACTION_ZOMBIES,
																																																																["monster_alien_grunt"] = FACTION_XEN_ARMY,
																																																																["monster_alien_slave"] = FACTION_XEN_ARMY,
																																																																["monster_human_assassin"] = FACTION_HECU,
																																																																["monster_babycrab"] = FACTION_ZOMBIES,
																																																																["monster_bullchicken"] = FACTION_XEN_WILDLIFE,
																																																																["monster_cockroach"] = FACTION_ANIMALS,
																																																																["monster_alien_controller"] = FACTION_XEN_ARMY,
																																																																["monster_gargantua"] = FACTION_XEN_ARMY,
																																																																["monster_bigmomma"] = FACTION_ZOMBIES,
																																																																["monster_human_grunt"] = FACTION_HECU,
																																																																["monster_headcrab"] = FACTION_ZOMBIES,
																																																																["monster_houndeye"] = FACTION_XEN_WILDLIFE,
																																																																["monster_nihilanth"] = FACTION_XEN_ARMY,
																																																																["monster_scientist"] = FACTION_REBELS,
																																																																["monster_barney"] = FACTION_REBELS,
																																																																["monster_snark"] = FACTION_XEN_WILDLIFE,
																																																																["monster_tentacle"] = FACTION_XEN_WILDLIFE,
																																																																["monster_zombie"] = FACTION_ZOMBIES,
																																																																["npc_apc_dropship"] = FACTION_COMBINE,
																																																																["npc_elite_overwatch_dropship"] = FACTION_COMBINE,
																																																																["npc_civil_protection_tier1_dropship"] = FACTION_COMBINE,
																																																																["npc_civil_protection_tier2_dropship"] = FACTION_COMBINE,
																																																																["npc_shotgunner_dropship"] = FACTION_COMBINE,
																																																																["npc_overwatch_squad_tier1_dropship"] = FACTION_COMBINE,
																																																																["npc_overwatch_squad_tier2_dropship"] = FACTION_COMBINE,
																																																																["npc_overwatch_squad_tier3_dropship"] = FACTION_COMBINE,
																																																																["npc_random_combine_dropship"] = FACTION_COMBINE,
																																																																["npc_strider_dropship"] = FACTION_COMBINE
																																																																}

																																																																function ENT:CheckRelationships(e)
																																																																return self:CheckRelationship(e)
																																																																end

																																																																function ENT:Disposition(e)
																																																																return self:CheckRelationship(e)
																																																																end

																																																																function _308IsInFaction(e, f)
																																																																if not IsValid(e) then return 0 end
																																																																if e:IsNPC() and not e._30Faction then
																																																																local d = _308FACTION[e:GetClass()] or "FACTION_NONE"
																																																																e._30Faction = {}
																																																																e._30Faction[d] = true
																																																																elseif e:IsPlayer() and not e._30Faction then
																																																																e._30Faction = {}
																																																																e._30Faction[FACTION_REBELS] = true
																																																																e._30Faction[string.upper(e:Nick())] = true
																																																																end
																																																																if GetConVarNumber("wb3_n_mode") == 2 and e:IsPlayer() then
																																																																e._30Faction[string.upper(e:Nick())] = true
																																																																elseif GetConVarNumber("wb3_n_mode") == 1 then
																																																																return 1
																																																																end
																																																																e._30Faction = e._30Faction or {}
																																																																if istable(f) then
																																																																local r
																																																																for i, b in pairs(f) do
																																																																if _308IsInFaction(e, i) then r = 1 end
																																																																end
																																																																return r
																																																																elseif f then
																																																																return e._30Faction[string.upper(f)]
																																																																end
																																																																return 0
																																																																end

																																																																function ENT:CheckRelationship(e)
																																																																if not IsValid(e) or GNT(e) or e == self or e:Health() < 1 then return 0 end
																																																																if not IsNextBot3(e) and not e:IsNPC() and (not e:IsPlayer() or (not e:Alive() or GNT(e) or GetConVarNumber("ai_ignoreplayers") == 1)) then return 0 end
																																																																if GetConVarNumber("wb3_n_mode") == 3 then
																																																																if e:IsPlayer() then return 1 end
																																																																return 3
																																																																elseif GetConVarNumber("wb3_n_mode") == 2 then
																																																																if e:GetCreator() ~= self.Owner and self:GetCreator() ~= e and not _308IsInFaction(e, self._30Faction) and (IsNextBot3(e) or e:IsNPC() or (e:IsPlayer() and e:Alive() and not GNT(e) and GetConVarNumber("ai_ignoreplayers") ~= 1)) then
																																																																return 1
																																																																end
																																																																return 3
																																																																elseif GetConVarNumber("wb3_n_mode") == 1 then
																																																																if IsNextBot3(e) or e:IsNPC() or (e:IsPlayer() and e:Alive() and not GNT(e) and GetConVarNumber("ai_ignoreplayers") ~= 1) then
																																																																return 1
																																																																end
																																																																return 3
																																																																end
																																																																if self._ForceSet[e] then
																																																																return self._ForceSet[e]
																																																																elseif e:IsNPC() then
																																																																if _308IsInFaction(e, self._30Faction) then
																																																																return 3
																																																																elseif _308IsInFaction(e, FACTION_ANIMALS) then
																																																																return 4
																																																																else
																																																																return self.DefaultRelationship
																																																																end
																																																																elseif e:IsPlayer() and e:Alive() and not GNT(e) and GetConVarNumber("ai_ignoreplayers") ~= 1 then
																																																																if _308IsInFaction(e, self._30Faction) then
																																																																return 3
																																																																elseif _308IsInFaction(e, FACTION_ANIMALS) then
																																																																return 4
																																																																else
																																																																return self.DefaultRelationship
																																																																end
																																																																elseif e.IsDrGNextbot then
																																																																e._30Faction = e._DrGBaseFactions
																																																																if _308IsInFaction(e, self._30Faction) then
																																																																return 3
																																																																elseif _308IsInFaction(e, FACTION_ANIMALS) then
																																																																return 4
																																																																else
																																																																return self.DefaultRelationship
																																																																end
																																																																elseif not e.Is308Bot and IsNextBot3(e) then
																																																																if _308IsInFaction(e, self._30Faction) then
																																																																return 3
																																																																elseif _308IsInFaction(e, FACTION_ANIMALS) then
																																																																return 4
																																																																else
																																																																return self.DefaultRelationship
																																																																end
																																																																elseif e.Is308Bot then
																																																																if e:IsInFaction(self._30Faction) then
																																																																return 3
																																																																elseif e:IsInFaction(FACTION_ANIMALS) then
																																																																return 4
																																																																else
																																																																return self.DefaultRelationship
																																																																end
																																																																else
																																																																return 0
																																																																end
																																																																end

																																																																function ENT:AddEntityRelationship(e, n)
																																																																return self:SetRelationships(e, n)
																																																																end

																																																																function ENT:SetRelationship(e, n)
																																																																return self:SetRelationships(e, n)
																																																																end

																																																																function ENT:SetRelationships(v, n)
																																																																if not IsValid(v) then return end
																																																																if istable(v) then
																																																																for _, e in pairs(v) do
																																																																n = n or self:CheckRelationship(e)
																																																																self:SetRelationships(e, n)
																																																																end
																																																																return
																																																																end
																																																																n = n or self:CheckRelationship(v)
																																																																if not v:IsPlayer() and v:IsFlagSet(FL_NOTARGET) then n = 0 end
																																																																self._ForceSet[v] = n
																																																																if v:IsNPC() then
																																																																v:AddEntityRelationship(self, n, 100)
																																																																if v.IsVJBaseSNPC then
																																																																timer.Simple(.1, function()
																																																																if IsValid(v) and IsValid(self) then
																																																																if v.VJ_AddCertainEntityAsEnemy then v.VJ_AddCertainEntityAsEnemy[#v.VJ_AddCertainEntityAsEnemy + 1] = self end
																																																																if v.CurrentPossibleEnemies then v.CurrentPossibleEnemies[#v.CurrentPossibleEnemies + 1] = self end
																																																																end
																																																																end)
																																																																elseif v.CPTBase_NPC then
																																																																local o = v.LocateEnemies
																																																																v.LocateEnemies = function(v)
																																																																local e = o(v)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																local b = CPTBasePickClosestEnemy(v, n)
																																																																if not IsValid(b) then return e
																																																																elseif IsValid(e) and v:GetPos():DistToSqr(e:GetPos()) < v:GetPos():DistToSqr(b:GetPos()) then
																																																																return e
																																																																elseif v:GetPos():DistToSqr(b:GetPos()) <= v.FindEntitiesDistance ^ 2 then
																																																																return b
																																																																end
																																																																end
																																																																o = v.FindAllEnemies
																																																																v.FindAllEnemies = function(v)
																																																																local e = o(v)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																for l, b in ipairs(n) do
																																																																if not CPTBaseValidTarget(v, b) then return e
																																																																elseif IsValid(e) and v:GetPos():DistToSqr(e:GetPos()) < v:GetPos():DistToSqr(b:GetPos()) then
																																																																return e
																																																																else
																																																																return b
																																																																end
																																																																end
																																																																end
																																																																end
																																																																if IsValid(self.bullseye) then
																																																																v:AddEntityRelationship(self.bullseye, n, 100)
																																																																end
																																																																elseif IsNextBot3(v) then
																																																																-- Placeholder for future implementation
																																																																end
																																																																if SERVER then
																																																																hook.Add("OnEntityCreated", "308nextbot_created", function(m)
																																																																if #Get308NextBots() < 1 then return end
																																																																if m.IsVJBaseSNPC then
																																																																timer.Simple(.1, function()
																																																																if IsValid(m) then
																																																																for k, e in ipairs(Get308NextBots()) do
																																																																m:AddEntityRelationship(e, D_HT, 100)
																																																																if m.VJ_AddCertainEntityAsEnemy then m.VJ_AddCertainEntityAsEnemy[#m.VJ_AddCertainEntityAsEnemy + 1] = e end
																																																																if m.CurrentPossibleEnemies then m.CurrentPossibleEnemies[#m.CurrentPossibleEnemies + 1] = e end
																																																																if IsValid(e.bullseye) then
																																																																m:AddEntityRelationship(e.bullseye, D_HT, 100)
																																																																end
																																																																end
																																																																end
																																																																end)
																																																																elseif m.CPTBase_NPC then
																																																																local o = m.LocateEnemies
																																																																m.LocateEnemies = function(m)
																																																																local e = o(m)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																local b = CPTBasePickClosestEnemy(m, n)
																																																																if not IsValid(b) then return e
																																																																elseif IsValid(e) and m:GetPos():DistToSqr(e:GetPos()) < m:GetPos():DistToSqr(n:GetPos()) then
																																																																return e
																																																																elseif m:GetPos():DistToSqr(n:GetPos()) <= m.FindEntitiesDistance ^ 2 then
																																																																return n
																																																																end
																																																																end
																																																																o = m.FindAllEnemies
																																																																m.FindAllEnemies = function(m)
																																																																local e = o(m)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																for l, b in ipairs(n) do
																																																																if not CPTBaseValidTarget(m, b) then return e
																																																																elseif IsValid(e) and m:GetPos():DistToSqr(e:GetPos()) < m:GetPos():DistToSqr(b:GetPos()) then
																																																																return e
																																																																else
																																																																return b
																																																																end
																																																																end
																																																																end
																																																																end
																																																																if not m.Is308Bot then return end
																																																																for l, v in pairs(ents.GetAll()) do
																																																																if v.CPTBase_NPC then
																																																																local o = v.LocateEnemies
																																																																v.LocateEnemies = function(v)
																																																																local e = o(v)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																local b = CPTBasePickClosestEnemy(v, n)
																																																																if not IsValid(b) then return e
																																																																elseif IsValid(e) and v:GetPos():DistToSqr(e:GetPos()) < v:GetPos():DistToSqr(n:GetPos()) then
																																																																return e
																																																																elseif v:GetPos():DistToSqr(n:GetPos()) <= v.FindEntitiesDistance ^ 2 then
																																																																return n
																																																																end
																																																																end
																																																																o = v.FindAllEnemies
																																																																v.FindAllEnemies = function(v)
																																																																local e = o(v)
																																																																local n = Get308NextBots()
																																																																if #n < 1 then return e end
																																																																for l, b in ipairs(n) do
																																																																if not CPTBaseValidTarget(v, b) then return e
																																																																elseif IsValid(e) and v:GetPos():DistToSqr(e:GetPos()) < v:GetPos():DistToSqr(b:GetPos()) then
																																																																return e
																																																																else
																																																																return b
																																																																end
																																																																end
																																																																end
																																																																end
																																																																end
																																																																end)
																																																																end
																																																																end

																																																																function ENT:PercentageFrozen()
																																																																return 0
																																																																end

																																																																function ENT:GetViewModel()
																																																																return self
																																																																end

																																																																function ENT:GetShootPos()
																																																																if IsValid(self:GetActiveWeapon()) then
																																																																local w = self:GetActiveWeapon()
																																																																for b = 0, (w:GetBoneCount() - 1) do
																																																																local l = self:LookupBone(w:GetBoneName(b))
																																																																if l then
																																																																return self:GetBonePosition(l)
																																																																end
																																																																end
																																																																return self:WorldSpaceCenter()
																																																																else
																																																																return self:WorldSpaceCenter()
																																																																end
																																																																end

																																																																function ENT:GetActiveWeapon()
																																																																return self:GetWeapon()
																																																																end

																																																																function ENT:GetWeapon()
																																																																if self.GetNW2Entity then
																																																																return self:GetNW2Entity("_308wep")
																																																																else
																																																																return self:GetNWEntity("_308wep")
																																																																end
																																																																end

																																																																function ENT:SetActiveWeapon(w)
																																																																return self:SetWeapon(w)
																																																																end

																																																																function ENT:SetWeapon(w)
																																																																if self.SetNW2Entity then
																																																																self:SetNW2Entity("_308wep", w)
																																																																else
																																																																self:SetNWEntity("_308wep", w)
																																																																end
																																																																end

																																																																function ENT:GiveWeapon(c)
																																																																if SERVER and c then
																																																																local g = ents.Create(c)
																																																																if IsValid(g) then
																																																																g:Spawn()
																																																																if not self:PickupWeapon(g) then
																																																																g:Remove()
																																																																end
																																																																end
																																																																end
																																																																end

																																																																function ENT:DropWeapon()
																																																																local w = self:GetActiveWeapon()
																																																																if SERVER and IsValid(w) then
																																																																if self.NoMissMDL and self.IsMCMob then
																																																																w:ManipulateBoneAngles(0, Angle(0, 0, 0))
																																																																end
																																																																w:SetSolid(SOLID_VPHYSICS)
																																																																w:SetMoveType(MOVETYPE_VPHYSICS)
																																																																w:SetParent()
																																																																w:SetOwner()
																																																																w:RemoveEffects(EF_BONEMERGE)
																																																																w:SetLocalPos(self:WorldSpaceCenter())
																																																																w:SetPos(self:WorldSpaceCenter())
																																																																w:SetVelocity(self:GetForward() * 250 + self:GetVelocity())
																																																																local p = w:GetPhysicsObject()
																																																																if IsValid(p) then
																																																																p:EnableGravity(true)
																																																																p:Wake()
																																																																p:SetVelocity(self:GetForward() * 250 + self:GetVelocity())
																																																																end
																																																																end
																																																																end

																																																																function ENT:HaveWeapon(c)
																																																																return self:HasWeapon(c)
																																																																end

																																																																function ENT:HasWeapon(c)
																																																																if IsValid(self:GetActiveWeapon()) and self:GetActiveWeapon():GetClass() == c then
																																																																return 1
																																																																end
																																																																end

																																																																function ENT:PickupWeapon(w)
																																																																if not IsValid(w) or not w:IsWeapon() or self:HasWeapon(w:GetClass()) then
																																																																return false
																																																																end
																																																																w:SetSolid(SOLID_NONE)
																																																																w:SetMoveType(MOVETYPE_NONE)
																																																																w:SetOwner(self)
																																																																w:SetParent(self)
																																																																w:AddEffects(EF_BONEMERGE)
																																																																local p = self:GetPos() + Vector(math.random(-9999, 9999), math.random(-9999, 9999), math.random(-9999, 9999))
																																																																local r = 0
																																																																while util.IsInWorld(p) and r < 51 do
																																																																r = r + 1
																																																																p = self:GetPos() + Vector(math.random(-9999, 9999), math.random(-9999, 9999), math.random(-9999, 9999))
																																																																end
																																																																w:SetPos(Vector())
																																																																self:OnPickupWeapon(w, w:GetClass())
																																																																if self.SetNW2Entity then
																																																																self:SetNW2Entity("_308wep", w)
																																																																else
																																																																self:SetNWEntity("_308wep", w)
																																																																end
																																																																return 1
																																																																end

																																																																function ENT:OnPickupWeapon() end

																																																																function ENT:StripWeapon()
																																																																if IsValid(self:GetActiveWeapon()) then
																																																																self:GetActiveWeapon():Remove()
																																																																if self.SetNW2Entity then
																																																																self:SetNW2Entity("_308wep", nil)
																																																																else
																																																																self:SetNWEntity("_308wep", nil)
																																																																end
																																																																end
																																																																end

																																																																function ENT:CreateDynamicMDL(m)
																																																																if not m or not util.IsValidModel(m) then
																																																																return false
																																																																end
																																																																local w = ents.Create("prop_physics")
																																																																if IsValid(w) then
																																																																w:DrawShadow()
																																																																w:SetPos(self:GetPos())
																																																																w:SetSolid(SOLID_NONE)
																																																																w:SetMoveType(MOVETYPE_NONE)
																																																																w:SetModel(m)
																																																																w:SetOwner(self)
																																																																w:SetParent(self)
																																																																w:AddEffects(EF_BONEMERGE)
																																																																self.Effect_Wep[#self.Effect_Wep + 1] = w
																																																																return w
																																																																end
																																																																return false
																																																																end

																																																																if CLIENT then
																																																																function ENT:Draw()
																																																																if not self:GetNoDraw() then
																																																																self:DrawModel()
																																																																if self.IsBoss or self.IsBossHP then
																																																																-- Boss HP display code would go here
																																																																end
																																																																end
																																																																end
																																																																end

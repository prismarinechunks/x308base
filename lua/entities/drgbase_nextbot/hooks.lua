-- Created By Xero Chunks

local MultDamagePlayer = CreateConVar("drgbase_multiplier_damage_players", "1", {
	FCVAR_ARCHIVE,
	FCVAR_NOTIFY,
	FCVAR_REPLICATED
})

local MultDamageNPC = CreateConVar("drgbase_multiplier_damage_npc", "1", {
	FCVAR_ARCHIVE,
	FCVAR_NOTIFY,
	FCVAR_REPLICATED
})

local RemoveDead = CreateConVar("drgbase_remove_dead", "0", {
	FCVAR_ARCHIVE,
	FCVAR_NOTIFY,
	FCVAR_REPLICATED
})

local RemoveRagdolls = GetConVar("drgbase_remove_ragdolls")

local DamagePlayerMultiplier = MultDamagePlayer:GetFloat()
local DamageNPCMultiplier = MultDamageNPC:GetFloat()

cvars.AddChangeCallback("drgbase_multiplier_damage_players", function(_, _, new)
DamagePlayerMultiplier = tonumber(new) or 1
end, "DrGBase_XBase_PlayerDamage")

cvars.AddChangeCallback("drgbase_multiplier_damage_npc", function(_, _, new)
DamageNPCMultiplier = tonumber(new) or 1
end, "DrGBase_XBase_NPCDamage")

function ENT:LastHitGroup()
return self:GetNW2Int("DrGBaseLastHitGroup", 0)
end

function ENT:_InitHooks()
if CLIENT then return end

	self._DrGBaseLastDmgInflicted = {}
	end

	if SERVER then

		function ENT:OnTakeDamage(dmg)
		self:SpotEntity(dmg:GetAttacker())
		end

		function ENT:OnFatalDamage() end
		function ENT:OnDowned() end
		function ENT:OnDealtDamage() end

		local function NextbotDeath(self, dmg)
		if not IsValid(self) then return end

			if self:HasWeapon() and self.DropWeaponOnDeath then
				self:DropWeapon()
				end

				if self.RagdollOnDeath then
					self:BecomeRagdoll(dmg)
					else
						self:Remove()
						end
						end

						function ENT:OnTraceAttack() end

						function ENT:_HandleTraceAttack(dmg, dir, tr)
						self:SetNW2Int("DrGBaseLastHitGroup", tr.HitGroup)
						self._DrGBaseHitGroupToHandle = true
						end

						function ENT:OnInjured(dmg)
						local damage = dmg:GetDamage()

						if damage <= 0 or self:GetGodMode() then
							self._DrGBaseHitGroupToHandle = false
							dmg:ScaleDamage(0)
							return
							end

							self:Timer(0, self._UpdateHealth)

							local hitgroup = self._DrGBaseHitGroupToHandle and self:LastHitGroup() or HITGROUP_GENERIC
							local attacker = dmg:GetAttacker()
							local res = self:OnTakeDamage(dmg, hitgroup)

							if IsValid(attacker) and DrGBase.IsTarget(attacker) then
								if self:IsAlly(attacker) then
									local tolerance = (self._DrGBaseAllyDamageTolerance[attacker] or 0) + self.AllyDamageTolerance
									self._DrGBaseAllyDamageTolerance[attacker] = tolerance
									self:AddEntityRelationship(attacker, D_HT, tolerance)

									elseif self:IsAfraidOf(attacker) then
										local tolerance = (self._DrGBaseAfraidOfDamageTolerance[attacker] or 0) + self.AfraidDamageTolerance
										self._DrGBaseAfraidOfDamageTolerance[attacker] = tolerance
										self:AddEntityRelationship(attacker, D_HT, tolerance)

										elseif self:IsNeutral(attacker) then
											local tolerance = (self._DrGBaseNeutralDamageTolerance[attacker] or 0) + self.NeutralDamageTolerance
											self._DrGBaseNeutralDamageTolerance[attacker] = tolerance
											self:AddEntityRelationship(attacker, D_HT, tolerance)
											end
											end

											if res == true or self:IsDown() or self:IsDead() then
												self._DrGBaseHitGroupToHandle = false
												dmg:ScaleDamage(0)
												return
												end

												if isnumber(res) then
													dmg:SetDamage(res)
													end

													if dmg:GetDamage() >= self:Health() then
														if self:OnFatalDamage(dmg, hitgroup) then
															self._DrGBaseHitGroupToHandle = false

															self:SetNW2Bool("DrGBaseDown", true)
															self:SetNW2Int(
																"DrGBaseDowned",
							  self:GetNW2Int("DrGBaseDowned", 0) + 1
															)

															self:SetHealth(1)

															local sounds = self.OnDownedSounds
															if #sounds > 0 then
																self:EmitSound(sounds[math.random(#sounds)])
																end

																local noTarget = self:GetNoTarget()
																self:SetNoTarget(true)

																local data = util.DrG_SaveDmg(dmg)

																self:CallInCoroutine(function(self)
																self:OnDowned(util.DrG_LoadDmg(data), hitgroup)

																if self:Health() <= 0 then
																	self:SetHealth(1)
																	end

																	self:SetNoTarget(noTarget)
																	self:SetNW2Bool("DrGBaseDown", false)
																	end)
																else
																	self:SetHealth(0)
																	end

																	dmg:ScaleDamage(0)
																	return
																	end

																	self._DrGBaseHitGroupToHandle = false

																	local sounds = self.OnDamageSounds
																	if #sounds > 0 then
																		self:EmitSlotSound(
																			"DrGBaseDamageSounds",
									 self.DamageSoundDelay,
									 sounds[math.random(#sounds)]
																		)
																		end

																		if isfunction(self.OnTookDamage) then
																			local data = util.DrG_SaveDmg(dmg)

																			self:ReactInCoroutine(function(self)
																			if self:IsDown() then return end

																				local newDmg = util.DrG_LoadDmg(data)
																				self:OnTookDamage(newDmg, hitgroup)
																				end)

																			elseif isfunction(self.AfterTakeDamage) then
																				local data = util.DrG_SaveDmg(dmg)
																				local now = CurTime()

																				self:ReactInCoroutine(function(self)
																				if self:IsDown() then return end

																					local newDmg = util.DrG_LoadDmg(data)
																					self:AfterTakeDamage(newDmg, CurTime() - now, hitgroup)
																					end)
																				end
																				end

																				function ENT:OnKilled(dmg)
																				if self:IsDead() then return end

																					local hitgroup = self._DrGBaseHitGroupToHandle and self:LastHitGroup() or HITGROUP_GENERIC

																					self._DrGBaseHitGroupToHandle = false

																					self:SetHealth(0)
																					self:SetNW2Bool("DrGBaseDying", true)

																					self:DrG_DeathNotice(
																						dmg:GetAttacker(),
																										 dmg:GetInflictor()
																					)

																					local deathSounds = self.OnDeathSounds
																					if #deathSounds > 0 then
																						self:EmitSound(deathSounds[math.random(#deathSounds)])
																						end

																						if dmg:IsDamageType(DMG_DISSOLVE) then
																							self:DrG_Dissolve()
																							end

																							if isfunction(self.OnDeath) then
																								local data = util.DrG_SaveDmg(dmg)

																								self.BehaveThread = coroutine.create(function()
																								self:SetNW2Bool("DrGBaseDying", false)
																								self:SetNW2Bool("DrGBaseDead", true)

																								if RemoveDead:GetBool() and RemoveRagdolls:GetFloat() >= 0 then
																									self:Timer(RemoveRagdolls:GetFloat(), self.Remove)
																									end

																									local now = CurTime()
																									local result = self:OnDeath(
																										util.DrG_LoadDmg(data),
																																hitgroup
																									)

																									if result == nil then
																										result = util.DrG_LoadDmg(data)

																										if CurTime() > now then
																											result:SetDamageForce(Vector(0, 0, 1))
																											end
																											end

																											NextbotDeath(self, result)
																											end)
																								else
																									self:SetNW2Bool("DrGBaseDying", false)
																									self:SetNW2Bool("DrGBaseDead", true)

																									NextbotDeath(self, dmg)
																									end
																									end

																									hook.Add("EntityTakeDamage", "DrGBaseNextbotDealtDamage", function(ent, dmg)
																									local attacker = dmg:GetAttacker()

																									if not IsValid(attacker) or not attacker.IsDrGNextbot then
																										return
																										end

																										if attacker == ent then
																											return true
																											end

																											if ent:IsPlayer() then
																												dmg:ScaleDamage(DamagePlayerMultiplier)
																												else
																													dmg:ScaleDamage(DamageNPCMultiplier)
																													end

																													local result = attacker:OnDealtDamage(ent, dmg)

																													if isnumber(result) then
																														dmg:ScaleDamage(result)
																														elseif result == true then
																															return true
																															end

																															attacker._DrGBaseLastDmgInflicted[ent] = {
																																data = util.DrG_SaveDmg(dmg),
																											 time = CurTime()
																															}
																															end)

																									function ENT:LastDamageDealt(ent)
																									local last = self._DrGBaseLastDmgInflicted[ent]

																									if not last then
																										return nil, -1
																										end

																										return util.DrG_LoadDmg(last.data), last.time
																										end

																										function ENT:OnCombineBall() end

																										function ENT:OnPhysDamage(ent, data)
																										return data.TheirOldVelocity:Length() * data.HitObject:GetMass() / 1000
																										end

																										function ENT:_HandleCollide(data)
																										local ent = data.HitEntity

																										if not IsValid(ent) then return end

																											local class = ent:GetClass()
																											local phys = data.HitObject

																											if class == "prop_combine_ball" then
																												if self:IsFlagSet(FL_DISSOLVING) then return end

																													if not self:OnCombineBall(ent) then
																														if not self:IsDead() then
																															local dmg = DamageInfo()
																															local owner = ent:GetOwner()

																															dmg:SetAttacker(IsValid(owner) and owner or ent)
																															dmg:SetInflictor(ent)
																															dmg:SetDamage(1000)
																															dmg:SetDamageType(DMG_DISSOLVE)
																															dmg:SetDamageForce(ent:GetVelocity())

																															self:TakeDamageInfo(dmg)
																															else
																																self:DrG_Dissolve()
																																end

																																ent:EmitSound("NPC_CombineBall.KillImpact")
																																end

																																return
																																end

																																if ent:IsPlayerHolding() then return end

																																	local damage = math.floor(self:OnPhysDamage(ent, data))

																																	if damage <= math.max(0, self.MinPhysDamage) then
																																		return
																																		end

																																		local dmg = DamageInfo()

																																		if ent:IsVehicle() then
																																			local driver = ent:GetDriver()

																																			if IsValid(driver) then
																																				dmg:SetAttacker(driver)
																																				else
																																					dmg:SetAttacker(ent)
																																					end

																																					dmg:SetDamageType(DMG_VEHICLE)
																																					else
																																						local attacker = ent:GetPhysicsAttacker()

																																						dmg:SetAttacker(IsValid(attacker) and attacker or ent)
																																						dmg:SetDamageType(DMG_CRUSH)
																																						end

																																						dmg:SetInflictor(ent)
																																						dmg:SetDamage(damage)
																																						dmg:SetDamageForce(phys:GetVelocity())

																																						self:TakeDamageInfo(dmg)
																																						end

																																						hook.Add("OnEntityCreated", "DrGBaseAddPhysicsCollideCallback", function(ent)
																																						ent:DrG_Timer(0, function()
																																						if not IsValid(ent) then return end

																																							ent:AddCallback("PhysicsCollide", function(ent, data)
																																							if not isfunction(ent.PhysicsCollide) then return end

																																								local hit = data.HitEntity

																																								if IsValid(hit) and hit.IsDrGNextbot then
																																									ent:PhysicsCollide(data, data.PhysObject)
																																									end
																																									end)
																																							end)
																																						end)

																																						function ENT:OnFallDamage(speed)
																																						return 0
																																						end

																																						function ENT:OnLeaveGround() end

																																						function ENT:_HandleLeaveGround()
																																						self:SetNW2Bool("DrGBaseOnGround", false)
																																						self:UpdateAnimation()
																																						self:UpdateSpeed()

																																						if isfunction(self.OnLeftGround) then
																																							self:ReactInCoroutine(self.OnLeftGround)
																																							end
																																							end

																																							function ENT:OnLandOnGround() end

																																							function ENT:_HandleLandOnGround()
																																							self:SetNW2Bool("DrGBaseOnGround", true)
																																							self:UpdateAnimation()
																																							self:UpdateSpeed()
																																							self:InvalidatePath()

																																							local damage = math.floor(
																																								self:OnFallDamage(self._DrGBaseDownSpeed)
																																							)

																																							if damage > math.max(0, self.MinFallDamage) then
																																								local dmg = DamageInfo()

																																								dmg:SetDamage(damage)
																																								dmg:SetDamageType(DMG_FALL)

																																								self:TakeDamageInfo(dmg)
																																								end

																																								if isfunction(self.OnLandedOnGround) then
																																									self:ReactInCoroutine(self.OnLandedOnGround)
																																									end
																																									end

																																									function ENT:GetPreviousNavArea()
																																									return self._DrGBasePreviousNavArea
																																									end

																																									function ENT:GetNavArea()
																																									return self._DrGBaseNavArea
																																									end

																																									function ENT:OnNavAreaChanged() end

																																									function ENT:_HandleNavAreaChanged(old, new)
																																									self._DrGBasePreviousNavArea = old
																																									self._DrGBaseNavArea = new
																																									end

																																									hook.Add("vFireEntityStartedBurning", "DrGBaseNextbotOnIgniteVFire", function(ent)
																																									if ent.IsDrGNextbot then
																																										ent:OnIgnite()
																																										end
																																										end)

																																									end

-- Created By Xero Chunks

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
self.__MustRemove = true

self.AType = self.AType or math.random(11)
self.AmmoM = self.AmmoM or 1

self:SetUseType(SIMPLE_USE)

self:SetModel("models/Items/BoxSRounds.mdl")

local t = self.AType

if t == 1 then
	self:SetModel("models/Items/item_item_crate.mdl")
	self:SetModelScale(.3)

	elseif t == 2 then
		self:SetModel("models/Items/combine_rifle_ammo01.mdl")

		elseif t == 3 then
			self:SetModelScale(.25)

			elseif t == 4 then
				self:SetModel("models/Items/BoxMRounds.mdl")
				self:SetModelScale(.3)

				elseif t == 5 then
					if self.AmmoM > 1 then
						self:SetModel("models/Items/357ammo.mdl")
						else
							self:SetModel("models/Items/AR2_Grenade.mdl")
							self:SetNoDraw(true)

							local shell = ents.Create("prop_dynamic")

							if IsValid(shell) then
								shell:SetModel("models/weapons/shell.mdl")
								shell:SetAngles(self:GetAngles())
								shell:SetPos(self:GetPos())
								shell:SetSolid(SOLID_NONE)
								shell:SetMoveType(MOVETYPE_NONE)
								shell:SetParent(self)
								shell:Spawn()
								end
								end

								elseif t == 6 then
									self:SetModel("models/Items/CrossbowRounds.mdl")

									elseif t == 7 then
										if self.AmmoM > 1 then
											self:SetModel("models/Items/BoxBuckshot.mdl")
											else
												self:SetModel("models/Items/AR2_Grenade.mdl")
												self:SetNoDraw(true)

												local shell = ents.Create("prop_dynamic")

												if IsValid(shell) then
													shell:SetModel("models/weapons/shotgun_shell.mdl")
													shell:SetAngles(self:GetAngles())
													shell:SetPos(self:GetPos())
													shell:SetSolid(SOLID_NONE)
													shell:SetMoveType(MOVETYPE_NONE)
													shell:SetParent(self)
													shell:Spawn()
													end
													end

													elseif t == 8 or t == 9 or t == 10 or t == 11 then
														self:SetModel("models/Items/item_item_crate.mdl")

														if self.AmmoM < 2 then
															self:SetModel("models/Items/AR2_Grenade.mdl")
															else
																self:SetModelScale(.5)
																self:SetColor(Color(100,255,100))
																end

																if t == 10 and self.AmmoM < 2 then
																	self:SetModel("models/weapons/w_eq_fraggrenade.mdl")

																	elseif t == 11 then
																		if self.AmmoM < 2 then
																			self:SetModel("models/weapons/w_slam.mdl")
																			else
																				self:SetModelScale(.5)
																				self:SetColor(Color(255,100,100))
																				end

																				elseif t == 8 then
																					if self.AmmoM < 2 then
																						self:SetModel("models/weapons/w_missile_closed.mdl")
																						else
																							self:SetModelScale(.8)
																							end
																							end

																							elseif t == 14 then
																								self:SetModel("models/Items/item_item_crate.mdl")
																								self:SetColor(Color(255,215,100))
																								self:SetModelScale(.2)
																								end

																								self:PhysicsInit(SOLID_VPHYSICS)
																								self:SetMoveType(MOVETYPE_VPHYSICS)
																								self:SetSolid(SOLID_VPHYSICS)
																								self:SetCollisionGroup(COLLISION_GROUP_WEAPON)

																								local phys = self:GetPhysicsObject()

																								if IsValid(phys) then
																									phys:Wake()
																									else
																										self:PhysicsInitSphere(2, "wood")
																										self:SetElasticity(.1)

																										local v = Vector(1,1,1)
																										self:SetCollisionBounds(-v,v)
																										end

																										local cv = GetConVar("wb3_clipremove")

																										if cv and cv:GetInt() > 0 then
																											SafeRemoveEntityDelayed(self, cv:GetInt())
																											end
																											end

																											function ENT:Think()
																											if not self:IsInWorld() then
																												SafeRemoveEntity(self)
																												end
																												end

																												function ENT:Use(ply)
																												if not IsValid(ply) or not ply:IsPlayer() or not ply:Alive() then return end

																													if self.AmmoM < 1 then
																														ply:ChatPrint(GAME308_LAN1["ammo" .. math.random(3)])
																														return
																														end

																														ply:GiveAmmo(self.AmmoM, self.AType)

																														SafeRemoveEntity(self)
																														end

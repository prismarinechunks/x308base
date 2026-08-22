AddCSLuaFile()

DEFINE_BASECLASS("base_anim")

ENT.PrintName = "Ammo Supply"
ENT.Category = "Xbase | NPCs"

ENT.Editable = true
ENT.Spawnable = true

ENT.Tabl = {}
ENT.Timer = {}
ENT.Timer2 = {}

ENT.PickableTime = 0

function ENT:SetupDataTables()

self:NetworkVar("Float",0,"PickupTime",{
	KeyName = "pickuptime",
	Edit = {
		type = "Float",
		min = 0,
		max = 9.99,
		order = 1
	}
})

self:NetworkVar("Int",1,"MaxAmmo",{
	KeyName = "maxammo",
	Edit = {
		type = "Int",
		min = 1,
		max = 9999,
		order = 2
	}
})

self:NetworkVar("Int",2,"PickableTimes",{
	KeyName = "pickabletimes",
	Edit = {
		type = "Int",
		min = 0,
		max = 999,
		order = 3
	}
})

self:NetworkVar("Bool",3,"SecondaryAmmo",{
	KeyName = "secondaryammo",
	Edit = {
		type = "Bool",
		title = "Allow secondary ammo?",
		order = 4
	}
})

if SERVER then
	self:NetworkVarNotify("PickableTimes",self.OnTimesChanged)
	end
	end

	if SERVER then

		function ENT:OnTimesChanged(name,old,new)
		if old ~= new then
			self.PickableTime = new
			end
			end

			end

			function ENT:SpawnFunction(ply,tr,c)

			if not tr.Hit then return end

				local ent = ents.Create(c)

				if not IsValid(ent) then return end

					ent:SetPos(tr.HitPos + tr.HitNormal * 16)

					ent:SetPickupTime(1)
					ent:SetMaxAmmo(180)
					ent:SetSecondaryAmmo(true)
					ent:SetPickableTimes(0)

					ent:SetCreator(ply)

					ent:Spawn()
					ent:Activate()

					return ent
					end


					function ENT:Initialize()

					if SERVER then

						self:SetModel("models/hunter/blocks/cube2x2x1.mdl")

						self:PhysicsInit(SOLID_VPHYSICS)
						self:SetMoveType(MOVETYPE_VPHYSICS)
						self:SetSolid(SOLID_VPHYSICS)

						self:SetNoDraw(true)
						self:SetUseType(SIMPLE_USE)

						local p = self:GetPhysicsObject()

						if IsValid(p) then
							p:Wake()
							end


							local function PH(model,pos,ang)

							local e = ents.Create("prop_physics")

							if not IsValid(e) then return end

								e:SetModel(model)
								e:SetPos(pos)
								e:SetAngles(ang)

								e:Spawn()

								e:SetSolid(SOLID_NONE)
								e:SetMoveType(MOVETYPE_NONE)
								e:SetParent(self)

								end


								local f = self:GetForward()
								local r = self:GetRight()
								local u = self:GetUp()


								PH("models/Items/ammocrate_ar2.mdl",self:GetPos()-u*8-f*30-r*19,Angle(0,0,0))
								PH("models/Items/ammocrate_smg1.mdl",self:GetPos()-u*8+f*14+r*18,Angle(0,60,0))
								PH("models/Items/item_item_crate.mdl",self:GetPos()-u*7-f*24+r*18,Angle(0,-30,80))

								PH("models/Items/ammocrate_grenade.mdl",self:GetPos()-u*8+f*16-r*25,Angle(0,260,0))

								PH("models/Items/BoxSRounds.mdl",self:GetPos()+u*10+f*16-r*25,Angle(90,0,0))
								PH("models/Items/BoxSRounds.mdl",self:GetPos()+u*6+f*10-r*25,Angle(0,20,0))

								PH("models/Items/BoxMRounds.mdl",self:GetPos()+u*7.5+f*13+r*17,Angle(0,160,0))
								PH("models/Items/BoxBuckshot.mdl",self:GetPos()+u*8-f*4-r*15,Angle(0,20,0))

								PH("models/Items/357ammo.mdl",self:GetPos()+u*8-f*24-r*38,Angle(0,20,0))

								PH("models/Items/combine_rifle_cartridge01.mdl",self:GetPos()+u*9-f*24-r*18,Angle(0,0,90))
								PH("models/Items/combine_rifle_cartridge01.mdl",self:GetPos()+u*9-f*32-r*6,Angle(0,20,90))

								PH("models/Items/BoxBuckshot.mdl",self:GetPos()+u*8-f*4-r*15,Angle(0,20,0))


								local glow = ents.Create("prop_physics")

								if IsValid(glow) then

									glow:SetModel("models/props_phx/construct/glass/glass_curve360x2.mdl")
									glow:SetPos(self:GetPos()+Vector(0,0,70))
									glow:SetAngles(Angle(0,0,180))

									glow:Spawn()

									glow:SetSolid(SOLID_NONE)
									glow:SetMoveType(MOVETYPE_NONE)
									glow:SetMaterial("models/props_combine/portalball001_sheet")
									glow:SetParent(self)

									end
									end
									end


									function ENT:Use(a)

									if not IsValid(a) or not a:IsPlayer() then return end

										if self.Timer2[a] and self.Timer2[a] > CurTime() then
											return
											end


											self.Tabl[a] = self.Tabl[a] or 0
											self.Timer[a] = self.Timer[a] or 0


											if self.Tabl[a] < CurTime() then

												a:PrintMessage(4,"Picking up ammo...")

												a:EmitSound("items/ammo_pickup.wav")

												self.Tabl[a] = CurTime()+.2
												self.Timer[a] = CurTime()+self:GetPickupTime()

												elseif self.Timer[a] < CurTime() then

													self.PickableTime = self.PickableTime - 1

													self.Timer2[a] = CurTime()+1.5


													if SERVER then
														a:ScreenFade(SCREENFADE.IN,Color(250,120,0,55),.5,0)
														end


														a:PrintMessage(4,"Pick up success!")

														a:EmitSound("3088083421/mg/supplyammo.wav")


														for _,wep in pairs(a:GetWeapons()) do

															local primary = wep:GetPrimaryAmmoType()

															if primary >= 0 then
																a:GiveAmmo(self:GetMaxAmmo(),primary)
																end


																local secondary = wep:GetSecondaryAmmoType()

																if self:GetSecondaryAmmo() and secondary >= 0 then
																	a:GiveAmmo(self:GetMaxAmmo(),secondary)
																	end

																	end


																	if self.PickableTime == 0 then
																		SafeRemoveEntity(self)
																		end

																		end
																		end


																		function ENT:Think()
																		end


																		function ENT:OnTakeDamage()
																		return true
																		end

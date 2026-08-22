-- Created By Xero Chunks

AddCSLuaFile()

if SERVER then
	resource.AddFile("sound/weapons/nofuckoff01.wav")
	resource.AddFile("sound/weapons/nofuckoff02.wav")
	resource.AddFile("materials/weapons/nfoicon.vmt")
	resource.AddFile("materials/weapons/nfoicon.vtf")
	end

	SWEP.Base = "weapon_308_base"

	SWEP.PrintName = "No Fuck Off"
	SWEP.Author = "Xero Chunks"
	SWEP.Instructions = "Left Click: Say no fuck off. The target you're looking at will disintegrate."

	SWEP.Spawnable = true
	SWEP.AdminSpawnable = true
	SWEP.Category = "X Base | Melee"

	SWEP.ViewModel = ""
	SWEP.WorldModel = ""
	SWEP.HoldType = "normal"

	SWEP.Primary.ClipSize = -1
	SWEP.Primary.DefaultClip = -1
	SWEP.Primary.Automatic = false
	SWEP.Primary.Ammo = "none"

	SWEP.Secondary.ClipSize = -1
	SWEP.Secondary.DefaultClip = -1
	SWEP.Secondary.Automatic = false
	SWEP.Secondary.Ammo = "none"

	SWEP.DrawAmmo = false

	if CLIENT then
		SWEP.Slot = 1
		SWEP.SlotPos = 1
		SWEP.DrawCrosshair = true
		SWEP.WepSelectIcon = surface.GetTextureID("weapons/nfoicon")

		killicon.Add(
			"weapon_x308_nofuckoff",
			"weapons/nfoicon",
			Color(255, 255, 255)
		)
		end

		local NoFuckOffSound = Sound("weapons/nofuckoff01.wav")
		local BoomSound = Sound("weapons/nofuckoff02.wav")

		local function IsValidTarget(ent)
		return IsValid(ent) and (
			ent:IsPlayer() or
			ent:IsNPC() or
			ent:IsNextBot()
		)
		end

		function SWEP:Initialize()
		self:SetHoldType(self.HoldType)

		if SERVER then
			util.PrecacheSound("weapons/nofuckoff01.wav")
			util.PrecacheSound("weapons/nofuckoff02.wav")
			end
			end

			function SWEP:Deploy()
			self:SetNoDraw(true)
			return true
			end

			function SWEP:PrimaryAttack()
			local owner = self:GetOwner()

			if not IsValid(owner) then return end

				self:SetNextPrimaryFire(CurTime() + 1.3)

				owner:EmitSound(NoFuckOffSound, 350)

				if CLIENT then return end

					if owner.PlayScene then
						owner:PlayScene("scenes/nofuckoff.vcd")
						end

						timer.Simple(1.01, function()
						if not IsValid(self) then return end
							if not IsValid(owner) then return end

								local trace = owner:GetEyeTrace()
								local target = trace.Entity

								if not IsValidTarget(target) then return end

									local targetName = "x308_nofuckoff_" .. target:EntIndex() .. "_" .. math.random(10000, 99999)

									target:SetName(targetName)

									local damage = DamageInfo()
									damage:SetDamage(target:Health() + 999999)
									damage:SetAttacker(owner)
									damage:SetInflictor(self)
									damage:SetDamageType(DMG_DISSOLVE)
									damage:SetDamageForce(Vector(0, 1, 0))

									target:TakeDamageInfo(damage)

									if not IsValid(target) then return end

										local dissolver = ents.Create("env_entity_dissolver")

										if not IsValid(dissolver) then return end

											dissolver:SetKeyValue("dissolvetype", "4")
											dissolver:SetKeyValue("magnitude", "0")
											dissolver:SetPos(target:GetPos())
											dissolver:SetPhysicsAttacker(owner)
											dissolver:Spawn()
											dissolver:Activate()

											dissolver:Fire("Dissolve", targetName, 0)
											dissolver:Fire("Kill", "", 0.1)

											target:EmitSound(BoomSound, 400)
											end)
						end

						function SWEP:SecondaryAttack()
						end

						function SWEP:Reload()
						end

						function SWEP:Think()
						end

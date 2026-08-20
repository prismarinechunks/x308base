SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["r"]
SWEP.Category = "308..' Base"
SWEP.HoldType = "normal"
SWEP.AdminOnly=true
SWEP.Canrepick=false
SWEP.ViewModel=""
SWEP.WorldModel="models/Combine_Helicopter/helicopter_bomb01.mdl"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = false
SWEP.SA_IsSight = false

SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.WElements = {["1"] = { type = "Model", model = "models/hunter/misc/sphere2x2.mdl", bone = "ValveBiped.Bip01_Spine", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(0, 0, 255, 153), surpresslightning = false, material = "models/spawn_effect2", skin = 0, bodygroup = {} }}
function SWEP:IfOwnHurt(d)
d:GetAttacker():TakeDamage(d:GetDamage()*2,self.Owner)
end
function SWEP:CustomInit()
self:SetMaterial("models/spawn_effect2")
end
function SWEP:OnDrop2()
self:SetMaterial("models/spawn_effect2")
end
SF308=0
if SERVER then
function SWEP:CustomEquip()if SF308>0 then
self:SetMaterial("null")
self.Owner.LA308=1
end
end
end
function SWEP:PrimaryAttack()end
function SWEP:Reload()end

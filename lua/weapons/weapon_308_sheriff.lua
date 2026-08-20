SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Sheriff"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "357"
SWEP.BlockPrimary=true
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "."
SWEP.TextColor=Color(0,0,155)

SWEP.PA_Sound = "murdermystery/shoot.wav"
SWEP.PA_Damage = 500
SWEP.PA_TakeAmmo = 0
SWEP.PA_Anim = nil
SWEP.PA_Anim1 = "fire"
SWEP.PA_Anim2 = "fire"
SWEP.PA_Anim3 = "fire"
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_VeloS = 100000
SWEP.PA_Spread = 0
SWEP.PA_AimSpread = 0
SWEP.PA_AimRecoil = 0
SWEP.ClipExtraBullet = false
SWEP.SA_IsSight= false
SWEP.PA_Delay = 2.8
SWEP.DrawTime = .1
SWEP.AmmoHUD=2
SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.Hide=1
if SERVER then
MD308=0
function SWEP:Reload()end
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:CustomDeploy()
if self.Hide==0 then
self:SecondaryAttack(1)
end
end
function SWEP:SecondaryAttack(t)
if t||self:GetNextPrimaryFire()<CurTime()||self.Hide<1 then
self:SetNextSecondaryFire(CurTime()+.3)
self:SetNextPrimaryFire(CurTime()+.5)
if self.Hide<1 then self.Hide=1 self.HoldType="revolver" self:SetMaterial("")self:PlayAnim("draw")self.Owner:EmitSound("murdermystery/draw.wav")self.DrawAnimRate=1
else self.Hide=0 self.HoldType="normal" self:SetMaterial("null")self:PlayAnim("holster",2,9999)self.DrawAnimRate=0
end
end
end
function SWEP:CustomThink()
if self.Hide<1 then self:SetNextPrimaryFire(CurTime()+10)
end
end
end

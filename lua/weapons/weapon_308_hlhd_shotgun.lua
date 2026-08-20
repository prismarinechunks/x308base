if !util.IsValidModel("models/weapons/half-life/v_shotgun.mdl")then return end--ye ,2x Egg
SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HLHD Shotgun"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/half-life/v_shotgun.mdl"
SWEP.WorldModel = "models/weapons/half-life/w_shotgun.mdl"

SWEP.TextIcon="vgui/entities/weapon_shotgun_hl"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Secondary.Automatic = true
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {{Sound="weapons/shotgun/sbarrel1.wav"},{Delay=.4,Sound="weapons/shotgun/scock1.wav"}}
SWEP.PA_Sound3 = {{Sound="weapons/shotgun/dbarrel1.wav"},{Delay=.9,Sound="weapons/shotgun/scock1.wav"}}
SWEP.ReloadSound2 = {{Delay=.2,Sound="weapons/shotgun/reload1.wav"}}
SWEP.ReloadSound3 = {{Delay=.2,Sound="weapons/shotgun/scock1.wav"}}
SWEP.PA_Damage = 8
SWEP.PA_Delay = .95
SWEP.PA_Recoil = 3
SWEP.PA_Spread = .13
SWEP.PA_AimSpread = .13
SWEP.PA_AimRecoil = 2.8
SWEP.PA_Num=6

SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="reload"
SWEP.ReloadAnim3="pump"

SWEP.ReloadStart=.4
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.3
SWEP.ReloadInEnd=.05
SWEP.ReloadEnd=.7

SWEP.UseHands=false
SWEP.NormalDraw=true
SWEP.SA_IsSight=false

SWEP.CenterPos = Vector( 0, -30, 0 )

function SWEP:CustomPrimary(m)
self:FireB()
if !m then
self:PlayAnim("shoot")
else
self:SetNextSecondaryFire(CurTime()+1.2)
self:FireB()
self:PlayAnim("shoot_big")
end
self.Owner:MuzzleFlash()
end
function SWEP:SecondaryAttack()
if self:Clip1()>1 then
self:PrimaryAttack(1)
self:TakePrimaryAmmo(1)
self:SetNextPrimaryFire(CurTime()+1.4)
self:SetNextSecondaryFire(CurTime()+1.4)
end end
if !util.IsValidModel("models/weapons/half-life/v_9mmhandgun.mdl")then return end--ye ,Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HLHD 9mm"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/half-life/v_9mmhandgun.mdl"
SWEP.WorldModel = "models/weapons/half-life/w_9mmhandgun.mdl"

SWEP.SA_IsSight=false
SWEP.SwayScale = 3
SWEP.Primary.ClipSize = 17
SWEP.Primary.DefaultClip = 17
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.CusClipMDL="models/weapons/half-life/w_9mmclip.mdl"
SWEP.UseHands=false
SWEP.TextIcon="vgui/entities/weapon_9mmhandgun"
SWEP.PA_Sound = "weapons/pl_gun3.wav"
SWEP.PA_Damage = 11
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .8
SWEP.PA_Delay = .3
SWEP.ReloadTime = 1.7
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1
SWEP.ReloadAnim="reload_noshot"
SWEP.ReloadSound = {
{Sound="items/9mmclip2.wav"},
{Delay=.9,Sound="items/9mmclip1.wav"}
}
SWEP.HaveBoltPull=false

SWEP.CenterPos = Vector( 0, -40, 0 )
function SWEP:ShootAnim()
if self:Clip1()<1 then
self:PlayAnim("shoot_empty",1,math.huge)
self.ReloadAnim="reload"
else
self:PlayAnim("shoot")
end
self:SetNextSecondaryFire(CurTime()+.3)
end
function SWEP:AfterReload()
self.ReloadAnim="reload_noshot"
end
function SWEP:SecondaryAttack()
self:PrimaryAttack()
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
end
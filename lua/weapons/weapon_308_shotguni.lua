SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["shotguni"]
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"

SWEP.Primary.ClipSize = 999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Text_Semi="Semi-Auto"
SWEP.Text_Auto="MAD Auto"

SWEP.ReloadDelay=.35
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.PA_Sound = "3088083421/soulknight/shoot2.mp3"
SWEP.ReloadSound = {
{Delay=.1,Sound="3088083421/soulknight/pickup.mp3"}
}
SWEP.ReloadSound3 = {
{Delay=0,Sound="3088083421/soulknight/toggle.mp3"}
}
SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.ReRate2=2
SWEP.ReloadStart=.5
SWEP.ReloadDelay=.3
SWEP.ReloadIn=.2
SWEP.ReloadInEnd=.1
SWEP.ReloadEnd=.4

SWEP.PA_TakeAmmo = 1
SWEP.PA_Damage = 6
SWEP.PA_Num=8
SWEP.PA_Delay = .01
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .2
SWEP.PA_AimSpread = .2
SWEP.PA_AimRecoil = 1.7

SWEP.SA_Delay = .1
SWEP.NormalDraw=true

SWEP.SightPos = Vector(-7, 110, 2.63)
SWEP.SightAng = Angle(0, -.7, 0)
SWEP.CenterPos = Vector( -2, 90, 0 )
SWEP.CenterAng = Angle(0, -4, 0)

function SWEP:ShootAnim()
if self:Clip1()>=750 then
self:SetNextPrimaryFire(CurTime()+.05)
self.Primary.Automatic=true
elseif self:Clip1()<200 then
self.Primary.Automatic=false
elseif self:Clip1()<500 then
self:SetNextPrimaryFire(CurTime()+.1)
self.Primary.Automatic=true
elseif self:Clip1()<750 then
self:SetNextPrimaryFire(CurTime()+.08)
self.Primary.Automatic=true
end
self:PlayAnim(self.PA_Anim..math.random(2))
end

function SWEP:IfOwnHurt()
self.Owner:EmitSound("3088083421/soulknight/hurt.mp3")
end
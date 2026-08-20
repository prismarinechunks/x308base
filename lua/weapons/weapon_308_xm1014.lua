SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "XM1014"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"

SWEP.Primary.ClipSize = 7
SWEP.Primary.DefaultClip = 7
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.PA_Damage = 18
SWEP.PA_Delay = .26
SWEP.PA_Recoil = 2.3
SWEP.PA_Spread = .1
SWEP.PA_AimSpread = .1
SWEP.PA_AimRecoil = 2
SWEP.PA_Num=6

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.ReRate2=1.5
SWEP.Text_Auto="Auto"
SWEP.TextType="308CS"
SWEP.Text="B"
SWEP.ReloadStart=.6
SWEP.ReloadDelay=.3
SWEP.ReloadIn=.2
SWEP.ReloadInEnd=.05
SWEP.ReloadEnd=.4

SWEP.SA_Delay = .1
SWEP.NormalDraw=true

SWEP.SightPos = Vector(-7, 110, 2.63)
SWEP.SightAng = Angle(0, -.7, 0)
SWEP.CenterPos = Vector( -2, 90, 0 )
SWEP.CenterAng = Angle(0, -4, 0)
function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
end
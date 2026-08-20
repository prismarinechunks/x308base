SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M3 Super90"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = "weapons/xm1014/xm1014-1.wav"
SWEP.PA_Sound2 = {
{Delay=.6,Sound="weapons/m3/m3_pump.wav"}
}
SWEP.PA_Damage = 19
SWEP.PA_Delay = .86
SWEP.PA_Recoil = 3
SWEP.PA_Spread = .13
SWEP.PA_AimSpread = .13
SWEP.PA_AimRecoil = 2.8
SWEP.PA_Num=9

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.TextType="308CS"
SWEP.Text="k"
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.3
SWEP.ReloadInEnd=.1
SWEP.ReloadEnd=1

SWEP.SA_Delay = .1
SWEP.NormalDraw=false

SWEP.SightPos = Vector(-7.69, 110, 3.47)
SWEP.SightAng = Angle(0, 0, -.1)
SWEP.CenterPos = Vector( -3, 90, 0 )
SWEP.CenterAng = Angle(0, 0, -2)

function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
end
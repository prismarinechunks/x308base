SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "AK-47"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/ak47/ak47-1.wav",Pitch=95}
}
SWEP.PA_Damage = 36
SWEP.PA_Delay = .09
SWEP.NormalDraw = false
SWEP.PA_Recoil = 1.6
SWEP.PA_Spread = .03
SWEP.PA_AimSpread = .02
SWEP.PA_AimRecoil = 1.4
SWEP.SA_SightFOV = 70

SWEP.TextType="308CS"
SWEP.Text="b"

SWEP.ReloadAnim = "ak47_reload"
SWEP.BAnim="ak47_draw"
SWEP.ReloadAnimD2={
{Anim="ak47_reload"},
{Delay=1.8,Anim="ak47_draw",Rate=1.1}
}
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ReloadTime = 1.9
SWEP.StopRAnimTime = 1.9
SWEP.BoltPullTime=2.2
SWEP.ClipoutTime = 0.6
SWEP.ClipinTime = 1.65
SWEP.ReloadTime2 = 2.5
SWEP.SightPos = Vector(-6.501, 170, 2.1)
SWEP.SightAng = Angle(2.5, 0.2, 0)
SWEP.CenterPos = Vector( 0, 130, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
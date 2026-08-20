SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Annabelle"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_annabelle.mdl"
SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = 2
SWEP.Primary.Ammo = "buckshot"

SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {
	{Delay=0,Sound="3088083421/wep/deploy/deploy_cod_3.wav"}
}
SWEP.PA_Sound = "weapons/shotgun/shotgun_fire6.wav"
SWEP.PA_Damage = 18
SWEP.PA_TakeAmmo = 1
SWEP.PA_Num = 8
SWEP.PA_Delay = .5
SWEP.PA_Recoil = 4
SWEP.PA_Spread = .08
SWEP.PA_AimSpread = .08
SWEP.PA_AimRecoil = 3
SWEP.SA_SightFOV = 70
SWEP.NoPullClip=true

SWEP.SA_Delay = .1
SWEP.ClipExtraBullet = false
SWEP.NormalDraw=true

SWEP.ReloadAnimD={
{Anim="idle_to_lowered",Time=5},
{Delay=.9,Anim="lowered_to_idle"}
}
SWEP.ReloadAnimD2={
{Anim="idle_to_lowered",Time=5},
{Delay=1.1,Anim="lowered_to_idle"}
}
SWEP.ReloadSound = {
{Delay=0,Sound="weapons/shotgun/shotgun_reload1.wav"},
{Delay=.45,Sound="weapons/shotgun/shotgun_cock.wav"}
}
SWEP.ReloadSound2 = {
{Delay=0,Sound="weapons/shotgun/shotgun_reload1.wav"},
{Delay=.45,Sound="weapons/shotgun/shotgun_reload2.wav"},
{Delay=.9,Sound="weapons/shotgun/shotgun_cock.wav"}
}
SWEP.ClipoutTime=.1
SWEP.ClipinTime=.8
SWEP.ClipinTime2=1
SWEP.ReloadTime = 1
SWEP.ReloadTime2 = 1.3
SWEP.SightPos = Vector(-8.25, 80, 5.6)
SWEP.SightAng = Angle(.5, .7, 0)
SWEP.CenterPos = Vector(-4,100,1)

SWEP.ViewModelBoneMods = {
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_annabelle.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(-.4, 3.088, -1.831), angle = Angle(-96.84, 80, -16), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:ClipVelocity(p)return Vector(0,0,40)+p:GetForward()*-80
end

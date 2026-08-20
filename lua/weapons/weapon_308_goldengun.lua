SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Golden Gun"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.Primary.ClipSize=1
SWEP.Primary.DefaultClip=1
SWEP.Primary.Automatic=false
SWEP.Primary.Ammo="SniperPenetratedRound"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType="HL2MPTypeDeath"
SWEP.TextColor=Color(255,255,0)
SWEP.Text="-"

SWEP.ClipExtraBullet = false
SWEP.PA_Sound="weapons/flaregun/fire.wav"
SWEP.PA_Damage =358
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .8
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 2.4
SWEP.ReloadAnimRate=.5
SWEP.ReloadTime = 2.6
SWEP.ClipoutTime = .6
SWEP.ClipinTime =1.95
SWEP.BoltPullTime=2.1
SWEP.ReloadTime2=3
SWEP.Color=Color(255,255,0)
SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, 0.879, 1.067), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.111), color = Color(255, 255, 0, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.square", rel = "", pos = Vector(0, -0.003, -4.014), angle = Angle(0, 0, 0), size = Vector(0.061, 0.061, 0.184), color = Color(255, 255, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} }
}
SWEP.DrawAnimE="drawempty"
SWEP.IdleAnimE="idle01empty"
SWEP.PA_AnimE={{Anim="fireempty"}}
SWEP.ReloadSound = {
{Sound="weapons/pistol/pistol_reload1.wav",Pitch=50}
}
SWEP.ReloadSound2 = {
{Sound="weapons/pistol/pistol_reload1.wav",Pitch=50},
{Delay=2,Sound="3088083421/wep/reload/pis_sliderelease.ogg",Pitch=50}
}

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-6, 100, 2.6)
SWEP.SightAng = Angle(1, -1.1, -1)
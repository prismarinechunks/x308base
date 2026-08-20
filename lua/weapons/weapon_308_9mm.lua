SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = ".9mm Pistol"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.Primary.ClipSize = 18
SWEP.Primary.DefaultClip = 18
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "-"

SWEP.PA_Sound = "weapons/pistol/pistol_fire2.wav"
SWEP.PA_Damage = 8
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = .8
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.2
SWEP.ReloadTime = 1.3
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1
SWEP.BoltPullTime=1
SWEP.ReloadTime2 = 1.6
SWEP.DrawAnimE="drawempty"
SWEP.IdleAnimE="idle01empty"
SWEP.PA_AnimE={{Anim="fireempty"}}

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-6, 100, 2.6)
SWEP.SightAng = Angle(1, -1.1, -1)
function SWEP:BasInit()if self:GetClass()=="weapon_308_pistol" then self.ReloadSound2={{Sound="weapons/pistol/pistol_reload1.wav",Pitch=100},{Delay=1,Sound="3088083421/wep/reload/pis_sliderelease.ogg"}}self.ReloadSound={{Sound="weapons/pistol/pistol_reload1.wav",Pitch=100}}end end
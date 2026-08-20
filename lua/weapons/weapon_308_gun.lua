--huh?
SWEP.Base = "weapon_308_base"
SWEP.PrintName = "Gun...?"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.SwayScale = 3
SWEP.Primary.ClipSize = 88
SWEP.Primary.DefaultClip = 88
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0

SWEP.PA_Damage = 5
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .001
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1
SWEP.ReloadTime = 1.1
SWEP.ClipoutTime = .2
SWEP.ClipinTime = .96
SWEP.ReloadTime2 = 1.6
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="3088083421/wep/shoot/minigun_1.ogg",Volume=511}
}
SWEP.ReloadSound = {
{Sound="3088083421/wep/reload/pis1_clipout.ogg"},
{Delay=.5,Sound="3088083421/wep/reload/pis1_clipin.ogg"}
}
SWEP.ReloadSound2 = {
{Sound="3088083421/wep/reload/pis1_clipout.ogg"},
{Delay=.5,Sound="3088083421/wep/reload/pis1_clipin.ogg"},
{Delay=1.1,Sound="weapons/usp/usp_sliderelease.wav"},
}

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.SightPos = Vector(-6, 100, 2.6)
SWEP.SightAng = Angle(1, -1.1, -1)
function SWEP:PASound()
self.PA_Sound2[1].Pitch=55+75*(self:Clip1()/38)
self:SoundSlot(self.PA_Sound2)
self.PA_Damage = 65*(self:Clip1()/38)+10
self.PA_Delay = .1*(self:Clip1()/38)
end

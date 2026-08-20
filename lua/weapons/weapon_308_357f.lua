SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "The \"Fastest\" Magnum"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "."

SWEP.NoUseClip=true
SWEP.PA_Sound = "weapons/357/357_fire2.wav"
SWEP.PA_Damage = 55
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.NormalDraw = true
SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 5
SWEP.ClipExtraBullet = false
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .1
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ReloadAnimRate=2
SWEP.StopRAnimTime = 1.3
SWEP.ReloadTime = 1.4
SWEP.ClipoutTime = .75
SWEP.ClipinTime = 1.2
SWEP.ReloadTime2 = 1.6
SWEP.BoltPullTime=1.5

SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-4.69, 45, .7)
SWEP.SightAng = Angle(0, -.14, 0)
function SWEP:ShootAnim()
self:PlayAnim("fire",3)
end

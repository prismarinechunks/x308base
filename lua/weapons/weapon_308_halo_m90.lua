if !util.IsValidModel("models/vuthakral/halo/weapons/c_hum_m90.mdl")then return end
SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HALO M90A"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/vuthakral/halo/weapons/c_hum_m90.mdl"
SWEP.WorldModel = "models/vuthakral/halo/weapons/w_m90.mdl"

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Slot = 3
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Damage = 6
SWEP.PA_Delay = 1
SWEP.PA_Recoil = 3
SWEP.PA_Spread = .16
SWEP.PA_AimSpread = .16
SWEP.PA_AimRecoil = 2.8
SWEP.PA_Num=11

SWEP.ReloadAnim1="reload_enter"
SWEP.ReloadAnim2="reload_loop"
SWEP.ReloadAnim3="reload_exit"
SWEP.TextIcon="vgui/entities/drchalo_shotgun"
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.5
SWEP.ReloadIn=.3
SWEP.ReloadInEnd=0
SWEP.ReloadEnd=1

SWEP.SA_Delay = .1
SWEP.NormalDraw=false

SWEP.SightPos = Vector(-4.67, -10, -.1)
SWEP.CenterPos = Vector( 0, 60, -1 )
SWEP.DeployScale=30
function SWEP:BeforePA()
self.PA_Sound="vuthakral/halo/weapons/m90/fire"..math.random(0,2)..".wav"
self.PA_SoundDist="vuthakral/halo/weapons/m90/dist"..math.random(0,2)..".wav"
end
function SWEP:ShootAnim()self:PlayAnim("fire"..math.random(3))end
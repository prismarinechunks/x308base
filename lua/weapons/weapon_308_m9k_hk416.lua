if !util.IsValidModel("models/weapons/v_hk416rif.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M9K HK416"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/v_hk416rif.mdl"
SWEP.WorldModel = "models/weapons/w_hk_416.mdl"
SWEP.CSMuzzleFlashes=true

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/twinkie_hk416/m4a1_unsil-1.wav"
SWEP.PA_Damage = 32
SWEP.PA_Force = 10
SWEP.PA_Delay = .078
SWEP.PA_Recoil = 1.4
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = 1.2
SWEP.SA_SightFOV = 70

SWEP.IdleAnim = "idle_unsil"
SWEP.BAnim="draw_unsil"
SWEP.ReloadAnim = "reload_unsil"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.7
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.3
SWEP.ReloadTime = 1.8
SWEP.ReloadTime2 = 2.8
SWEP.BoltPullTime=2.2
SWEP.SightPos = Vector( -2.9, 20, .48 )
SWEP.SightAng = Angle( 0, .05, 0 )
SWEP.CenterPos = Vector( 1, 10, 0 )
SWEP.Ser=nil
function SWEP:ShootAnim()
if self.Ser then
self:PlayAnim("shoot3",.1,.2)
else
self:PlayAnim("shoot"..math.random(3).."_unsil",1,.2)
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:SetNextPrimaryFire(CurTime()+2)
self.BoltPullTimer=CurTime()+2
if self.Ser then
self:SetModel("models/weapons/w_rif_m4a1.mdl")
self.BAnim="draw_unsil"
self.Ser=nil
self.PA_Sound = "weapons/twinkie_hk416/m4a1_unsil-1.wav"
self:PlayAnim("detach_silencer")
self.IdleAnim = "idle_unsil"
self.ReloadAnim = "reload_unsil"
self.PA_Damage = 32
self.ReloadTime = 1.8
self.StopRAnimTime = 1.7
self.ClipinTime = 1.3
else
self:SetModel("models/weapons/w_rif_m4a1_silencer.mdl")
self.BAnim="draw"
self.Ser=1
self.PA_Sound = "weapons/twinkie_hk416/m4a1-1.wav"
self:PlayAnim("add_silencer")
self.IdleAnim = "idle"
self.ReloadAnim = "reload"
self.ReloadTime = 2
self.StopRAnimTime = 1.9
self.PA_Damage = 31
self.ClipinTime = 1.5
end
end
end

SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "USP"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.CSMuzzleFlashes = true
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = 12
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextType = "308CS"
SWEP.Text = "y"
SWEP.CustomAmmoIcon ="M"

SWEP.IdleAnim = "idle_unsil"
SWEP.BAnim="draw_unsil"
SWEP.IdleAnimRate = 0
SWEP.ReloadAnim = "reload_unsil"
SWEP.PA_Sound = "weapons/usp/usp_unsil-1.wav"
SWEP.PA_Damage = 33
SWEP.PA_Recoil = 1.2
SWEP.PA_Spread = .01
SWEP.PA_AimSpread = .008
SWEP.PA_AimRecoil = .9
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.9
SWEP.ReloadTime = 2
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.6
SWEP.ReloadTime2 = 2.6
SWEP.BoltPullTime=2.35
SWEP.CenterPos = Vector( 0, 59, 0 )
SWEP.SightPos = Vector(-5.92, 100, 2.65)
function SWEP:ShootAnim()
if self:GetNWInt("Ser")==1 then
if self:Clip1()<1 then self:PlayAnim("shootlast",1,99999)else self:PlayAnim("shoot"..math.random(3))end
else
if self:Clip1()<1 then self:PlayAnim("shootlast_unsil",1,99999)else self:PlayAnim("shoot"..math.random(3).."_unsil")end end
end
function SWEP:CustomThink()
if self:GetNWInt("Ser")==1 then
self.BAnim="draw"
self.Ser=1
self.PA_Sound = "weapons/usp/usp1.wav"
self.IdleAnim = "idle"
self.ReloadAnim = "reload"
self.PA_Damage = 29
else
self.BAnim="draw_unsil"
self.Ser=nil
self.PA_Sound = "weapons/usp/usp_unsil-1.wav"
self.IdleAnim = "idle_unsil"
self.ReloadAnim = "reload_unsil"
self.PA_Damage = 33
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
if self:GetNWInt("Ser")==0 then
self:SetNextPrimaryFire(CurTime()+2.7)
self.BoltpullTimer=CurTime()+2.7
self:PlayAnim("add_silencer")
self:SetNWInt("Ser",1)
else
self:SetNextPrimaryFire(CurTime()+2.5)
self.BoltpullTimer=CurTime()+2.5
self:PlayAnim("detach_silencer")
self:SetNWInt("Ser",0)
end
end
end

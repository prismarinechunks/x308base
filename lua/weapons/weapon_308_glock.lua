SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Glock 18"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.TextType="308CS"
SWEP.Text="c"

SWEP.BAnim="glock_draw"
SWEP.ReloadAnim = "glock_reload"
SWEP.PA_Sound = "weapons/glock/glock18-1.wav"
SWEP.PA_Damage = 24
SWEP.PA_Force = 4
SWEP.PA_Recoil = .1
SWEP.PA_Spread = .01
SWEP.PA_AimSpread = .008
SWEP.PA_AimRecoil = .08
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime = 1.85
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.5
SWEP.ReloadTime2 = 2.2
SWEP.BoltPullTime=1.9

SWEP.CenterPos = Vector( 0, 90, 0 )
SWEP.CenterAng = Angle( 0, 0, 0 )
SWEP.SightPos = Vector(-5.79, 130, 2.96)
SWEP.SightAng = Angle(0,0,0)
function SWEP:CustomPrimary()
self:FireB()
self.Owner:MuzzleFlash()
if self.Burst then
self:PlayAnim("glock_shootburst1")
self:SetNextPrimaryFire(CurTime()+.45)
local a=self.HMath
for i=1,2 do
timer.Simple(i*.03,function()if !IsValid(self)||!self:CUnHos(a)||self:Clip1()<1 then return end
self:TakePrimaryAmmo(1)
self.Owner:EmitSound("weapons/glock/glock18-1.wav",511)
self:ShootAnim()
self:FireB()
self.Owner:MuzzleFlash()
end)
end
else
self:PlayAnim("glock_firesingle")
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
if self.Burst then
self.Text_Semi="Semi-Auto"
self.PA_Spread = .01
self.PA_AimSpread = .008
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=nil
self:EmitSound("weapons/smg1/switch_single.wav")
else
self.Text_Semi="Burst"
self.PA_Spread = .02
self.PA_AimSpread = .014
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=1
self:EmitSound("weapons/smg1/switch_burst.wav")
end
end
end
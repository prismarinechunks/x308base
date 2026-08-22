SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Famas"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"

SWEP.Primary.ClipSize = 25
SWEP.Primary.DefaultClip = 25
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound = "weapons/famas/famas-1.wav"
SWEP.PA_Damage = 30
SWEP.PA_Delay = .08
SWEP.PA_Recoil = 1.2
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .021
SWEP.PA_AimRecoil = 1
SWEP.SA_SightFOV = 70

SWEP.TextType="308CS"
SWEP.Text="t"

SWEP.NormalDraw=true
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2
SWEP.ClipoutTime = .62
SWEP.ClipinTime = 1.6
SWEP.ReloadTime = 2.1
SWEP.ReloadTime2 = 3.1
SWEP.BoltPullTime=2.5
SWEP.BSound={{Sound="weapons/famas/famas_forearm.wav"}}
SWEP.SightPos = Vector(-6.25,80,1.2)
SWEP.SightAng = Angle(0, 0, 0)
SWEP.CenterPos = Vector( -1.5, 50, 0 )
SWEP.CenterAng = Angle( 0, -2.1, 0 )
SWEP.SA_Cross=true
function SWEP:CustomPrimary()
self:ShootAnim()
self:FireB()
self.Owner:MuzzleFlash()
if self.Burst then
self:SetNextPrimaryFire(CurTime()+.5)
local a=self.HMath
for i=1,2 do
timer.Simple(.08*i,function()if !IsValid(self)||!self:CUnHos(a)||self:Clip1()<1 then return end
self:TakePrimaryAmmo(1)
self.Owner:EmitSound("weapons/famas/famas-1.wav",511)
self:ShootAnim()
self:FireB()
self.Owner:MuzzleFlash()
end)
end
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
if self.Burst then
self.Text_Auto="Auto"
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=nil
self:EmitSound("weapons/m4a1/m4a1_silencer_off.wav",100,200)
else
self.Text_Auto="Burst"
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=1
self:EmitSound("weapons/m4a1/m4a1_silencer_on.wav",100,200)
end
end
end

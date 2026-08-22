SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M4A1"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.PA_Sound=""
SWEP.PA_Damage = 32
SWEP.PA_Delay = .078
SWEP.PA_Recoil = 1.4
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = 1.2
SWEP.SA_SightFOV = 70

SWEP.TextType="308CS"
SWEP.Text="w"
SWEP.PA_Sound2={{Sound="weapons/m4a1/m4a1_unsil-1.wav",Volume=511}}

SWEP.IdleAnim = "idle_unsil"
SWEP.BAnim="draw_unsil"
SWEP.ReloadAnim = "reload_unsil"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2.23
SWEP.ClipoutTime = .62
SWEP.ClipinTime = 1.8
SWEP.ReloadTime = 2.3
SWEP.ReloadTime2 = 3
SWEP.BoltPullTime=2.5
SWEP.SightPos = Vector(-7.9,80,-.5)
SWEP.SightAng = Angle(3, -1.5, -4)
SWEP.CenterPos = Vector( -1.5, 50, 0 )
SWEP.CenterAng = Angle( 0, -2.1, 0 )
SWEP.Ser=nil
function SWEP:ShootAnim()
if self:GetNWInt("Ser")==1 then
self:PlayAnim("shoot3",1,.2)else
self:PlayAnim("shoot"..math.random(3).."_unsil",1,.2)end
end
function SWEP:CustomThink()
if self:GetNWInt("Ser")==1 then
self:SetModel("models/weapons/w_rif_m4a1_silencer.mdl")
self.BAnim="draw"
self.Ser=1
self.PA_Sound2={{Sound="weapons/m4a1/m4a1-1.wav"}}
self.IdleAnim = "idle"
self.ReloadAnim = "reload"
self.PA_Damage = 31
else
self:SetModel("models/weapons/w_rif_m4a1.mdl")
self.BAnim="draw_unsil"
self.Ser=nil
self.PA_Sound2={{Sound="weapons/m4a1/m4a1_unsil-1.wav",Volume=511}}
self.IdleAnim = "idle_unsil"
self.ReloadAnim = "reload_unsil"
self.PA_Damage = 32
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:SetNextPrimaryFire(CurTime()+2)
self.BoltPullTimer=CurTime()+2
if self:GetNWInt("Ser")==0 then
self:PlayAnim("add_silencer")
self:SetNWInt("Ser",1)
else
self:PlayAnim("detach_silencer")
self:SetNWInt("Ser",0)
end
end
end

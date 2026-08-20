SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Deagle"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/deagle/deagle-1.wav"
SWEP.PA_Damage = 53

SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 4

SWEP.SA_SightFOV = 70
SWEP.SA_Delay = .1
SWEP.DrawTime = .5

SWEP.BAnim="draw"
SWEP.TextType="308CS"
SWEP.Text="f"
SWEP.CustomAmmoIcon ="U"

SWEP.NormalDraw = true
SWEP.StopRAnimTime = 1.4
SWEP.BoltPullTime=1.7
SWEP.ReloadTime = 1.5
SWEP.ReloadTime2 = 2
SWEP.ClipoutTime = 0.54
SWEP.ClipinTime = 1.4

SWEP.CenterPos = Vector( 0, 68, 0 )
SWEP.SightPos = Vector(-6.38, 125, 2.2)
function SWEP:ShootAnim()
if self:Clip1()>0 then
self:PlayAnim("shoot"..math.random(2))else
self:PlayAnim("shoot_empty",1,99999)end
end
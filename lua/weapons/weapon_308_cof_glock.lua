if !util.IsValidModel("models/cof/weapons/glock/v_glock.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "COF Glock"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"

SWEP.TextIcon="cof/vgui/weapons/glock/640_glock_slot"
SWEP.ViewModel = "models/cof/weapons/glock/v_glock.mdl"
SWEP.WorldModel = "models/cof/weapons/glock/w_glock.mdl"
SWEP.PA_Sound = "cof/weapons/glock/glock_fire.wav"
SWEP.PA_DryFireSound="cof/weapons/weapon_fire_empty.wav"
SWEP.PA_AnimDryFire="shoot_noshot"

SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = 15
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.BSound={{Sound="cof/weapons/glock/glock_slide.wav"}}
SWEP.DrawSound={{Sound={"cof/weapons/sleeve_generic1.wav","cof/weapons/sleeve_generic2.wav","cof/weapons/sleeve_generic3.wav"}}}
SWEP.DrawTime=.7
SWEP.UseHands=false
SWEP.PA_Damage = 13
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1.8
SWEP.PA_Spread = .018
SWEP.PA_AimSpread = .015
SWEP.PA_AimRecoil = 1.4
SWEP.PA_Delay = .1
SWEP.ReloadTime = 2.5
SWEP.ReloadTime2 = 3.2
SWEP.BoltPullTime=2.7
SWEP.ClipoutTime = .3
SWEP.ClipinTime = 1.78
SWEP.DrawAnim="draw"
SWEP.FirstDeployAnim="draw_first"
SWEP.PA_Anim=ACT_VM_PRIMARYATTACK1
SWEP.PA_AnimE={{Anim="shoot_empty_1"}}
SWEP.DrawAnimE="draw_noshot"
SWEP.IdleAnimE="idle1_noshot"
SWEP.ReloadAnimD={{Anim="reload"}}
SWEP.ReloadAnimD2={{Anim="reload_noshot"}}
SWEP.SA_Delay = .1
SWEP.SightPos = Vector( -8.1, -10, 5.06 )
SWEP.CenterPos = Vector( 0, 0, 0 )
SWEP.Melee1=10
function SWEP:MeleeSound()self.Owner:EmitSound("cof/weapons/melee_hit.wav")end
function SWEP:HitEnt()self.Owner:EmitSound("cof/weapons/melee_hit.wav")end
function SWEP:HitWorld()self.Owner:EmitSound("cof/weapons/melee_hit.wav")end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayAnim("melee")self:EmitSound(_308Table({"cof/weapons/sleeve_generic1.wav","cof/weapons/sleeve_generic2.wav","cof/weapons/sleeve_generic3.wav"}))
self:Melee(.3,1,.9,40)end
end
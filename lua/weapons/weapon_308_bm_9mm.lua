if !util.IsValidModel("models/vj_weapons/v_glock.mdl")and !util.IsValidModel("models/bms/weapons/v_glock.mdl")then return end--ye ,Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "BM 9mm"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
if util.IsValidModel("models/bms/weapons/v_glock.mdl")then
SWEP.ViewModel = "models/bms/weapons/v_glock.mdl"
SWEP.WorldModel = "models/bms/weapons/w_glock.mdl"
SWEP.TextIcon="bms/vgui/hud/weapon_glock"
SWEP.PA_Sound = "bms/weapons/glock/single.wav"
elseif util.IsValidModel("models/vj_weapons/v_glock.mdl")then
SWEP.TextIcon="vgui/entities/weapon_vj_glock17"
SWEP.ViewModel = "models/vj_weapons/v_glock.mdl"
SWEP.WorldModel = "models/vj_weapons/w_glock.mdl"
SWEP.PA_Sound = "vj_weapons/glock_17/glock17_single.wav"
SWEP.PA_SoundDist = "vj_weapons/glock_17/glock17_single_dist.wav"
SWEP.ReloadSound = {{Sound="vj_weapons/glock_17/reload.wav"}}
SWEP.ReloadSound2 = {{Sound="vj_weapons/glock_17/reload.wav"}}
end

SWEP.Primary.ClipSize = 17
SWEP.Primary.DefaultClip = 17
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.UseHands=false
SWEP.PA_Damage = 12
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.PA_AimSpread = .017
SWEP.PA_AimRecoil = .8
SWEP.PA_Delay = .1
SWEP.ReloadTime = 2
SWEP.BoltPullTime=1.8
SWEP.ReloadTime2 = 2.2
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.5
SWEP.DrawAnim="draw1"
SWEP.FirstDeployAnim="draw_admire"
SWEP.PA_AnimE={{Anim="shoot_empty",Time=math.huge}}
SWEP.ReloadAnimD={{Anim="gun_reload"}}
SWEP.ReloadAnimD2={{Anim="gun_reload_empty"}}
SWEP.SA_Delay = .1
SWEP.SightPos = Vector( -3.77, 10, 2.47 )

SWEP.CenterPos = Vector( 0, 0, 0 )
function SWEP:ShootAnim()self:PlayAnim("fire"..math.random(2))end
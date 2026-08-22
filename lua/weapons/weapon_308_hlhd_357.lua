if !util.IsValidModel("models/weapons/half-life/v_357.mdl")then return end--ye ,Egg
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HLHD Magnum"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/half-life/v_357.mdl"
SWEP.WorldModel = "models/weapons/half-life/w_357.mdl"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "357"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.UseHands=false
SWEP.NoUseClip=true
SWEP.TextIcon="vgui/entities/weapon_357_hl"
SWEP.PA_Sound = "weapons/357/357_shot1.wav"
SWEP.PA_Damage = 55
SWEP.BSound={{Sound="weapons/357/357_reload3.wav"}}
SWEP.ReloadSound={{Delay=2,Sound="weapons/357/357_reload2.wav"}}
SWEP.ReloadSound2={{Delay=2,Sound="weapons/357/357_reload2.wav"}}
SWEP.PA_Anim = nil
SWEP.PA_Anim1 = "fire"
SWEP.PA_Anim2 = "fire"
SWEP.PA_Anim3 = "fire"
SWEP.NormalDraw = true
SWEP.PA_Recoil = 7
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 5
SWEP.ClipExtraBullet = false
SWEP.PA_Delay = .8
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2.55
SWEP.ReloadTime = 2.6
SWEP.ClipoutTime = 1.5
SWEP.ClipinTime = 2.1
SWEP.ReloadTime2 = 3
SWEP.BoltPullTime=2.6
SWEP.SA_IsSight=false

SWEP.CenterPos = Vector( 0, -40, -1 )
SWEP.SightPos = Vector(-5.5, -20, 1.7)
SWEP.SightAng = Angle(0, -.14, 0)
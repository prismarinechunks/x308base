SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "308 M4A1"
SWEP.Category = "x308 Base | Guns"
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
SWEP.FDrawSound={{Sound="weapons/m4a1/m4a1_deploy.wav"},{Sound="weapons/m4a1/m4a1_boltpull.wav",Delay=.2}}
SWEP.ReloadSound={{Sound="3088083421/wep/reload/arif4_clipout.wav",Delay=.3},{Sound="3088083421/wep/reload/arif4_clipin.wav",Delay=1.1}}
SWEP.ReloadSound2={{Sound="3088083421/wep/reload/arif4_clipout.wav",Delay=.3},{Sound="3088083421/wep/reload/arif4_clipin.wav",Delay=1.1},{Sound="3088083421/wep/reload/arif4_boltpull.wav",Delay=1.7}}

SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.2
SWEP.ReloadTime = 1.6
SWEP.ReloadTime2 = 2.2
SWEP.BoltPullTime=1.8
SWEP.ViewModelBoneMods = {
	["v_weapon.m4_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 1.527), angle = Angle(0, 0, 0) }
}

SWEP.MCFirstDrawAnim={
{Pos=Vector(-2,95,-.1),Ang=Angle(-9,0,2),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(20,0)}}},
{Time=.4,Pos=Vector(2,25,-.1),Ang=Angle(1,20,2),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-9,7),angle=Angle(-18,0,5)}}},
{Delay=.4,Time=.25,Pos=Vector(-2,65,-.1),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(),angle=Angle()}}}
}
SWEP.MCDrawAnim={
{Pos=Vector(-2,95,-19)},
{Time=.2,Pos=Vector(-2,65,-.1)}
}
SWEP.MCIdleAnim={
{Time=1,Pos=Vector(-2,65,-.1),A={{Bone="v_weapon.m4_Eject"},{Bone="ValveBiped.Bip01_L_Clavicle"}}},
{Delay=1,Time=1,Pos=Vector(-2,65,0)},
}
SWEP.MCInIdle2Anim={
{Time=.1,Pos=Vector(-7.9,70,-.5),Ang=Angle(3, -1.5, -4)},
}
SWEP.MCIdleAnim2={
{Time=9,Pos=Vector(-7.9,70,-.5),Ang=Angle(3, -1.5, -4),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
}
SWEP.MCInIdleAnim={
{Time=.5,Pos=Vector(-2,65,-.1)},
}
SWEP.PA_MCAnim={
{Time=.05,Pos=Vector(-2,98,0),Ang=Angle(3),A={{Bone="v_weapon.m4_Eject",pos=Vector(-0.12, -0.262),angle=Angle(0,86)}}},
{Delay=.05,Time=.05,Pos=Vector(-2,65),Ang=Angle(),A={{Bone="v_weapon.m4_Eject",pos=Vector(),angle=Angle()}}},
}
SWEP.PA_MCAnim2={
{Time=.05,Pos=Vector(-7.9,90,-.5),Ang=Angle(3, -1.5, -4),A={{Bone="v_weapon.m4_Eject",pos=Vector(-0.12, -0.262),angle=Angle(0,86)}}},
{Delay=.05,Time=.05,Pos=Vector(-7.9,70,-.5),Ang=Angle(3, -1.5, -4),A={{Bone="v_weapon.m4_Eject",pos=Vector(),angle=Angle()}}},
}
SWEP.MCReloadAnim={
{Delay=.1,Time=.2,Pos=Vector(-2,59,2),Ang=Angle(0,8),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-2,-3),angle=Angle(0,-15)}}},
{Delay=.4,Time=.3,Pos=Vector(1,59,2),Ang=Angle(0,18),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17,-3)},{Bone="v_weapon.m4_Clip",pos=Vector(0,-17)}}},
{Delay=1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-3,-3)},{Bone="v_weapon.m4_Clip",pos=Vector()}}},
{Delay=1.4,Time=.2,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
}
SWEP.MCReloadAnim2={
{Delay=.1,Time=.2,Pos=Vector(-2,59,2),Ang=Angle(0,8),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-2,-3),angle=Angle(0,-15)}}},
{Delay=.4,Time=.3,Pos=Vector(1,59,2),Ang=Angle(0,18),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17,-3)},{Bone="v_weapon.m4_Clip",pos=Vector(0,-17)}}},
{Delay=1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-3,-3)},{Bone="v_weapon.m4_Clip",pos=Vector()}}},
{Delay=1.6,Time=.2,Pos=Vector(-8,30,1),Ang=Angle(0,-25,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-1,-6)}}},
{Delay=2,Time=.2,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
}
SWEP.MeleeAnim={
{Delay=0,Time=.1,Pos=Vector(-2,6,2),Ang=Angle(9,-18,-25)},
{Delay=.1,Time=.2,Pos=Vector(2,-19),Ang=Angle(-35,68,-5)},
{Delay=.3,Time=.6,Pos=Vector(-2,65)},
}
SWEP.ReviewAnim={
{Time=.5,Pos=Vector(10,35,0),Ang=Angle(4,58,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(50)}}},
{Delay=.5,Time=2,Pos=Vector(10,35,0),Ang=Angle(3,58,5)},
{Delay=3,Time=1,Pos=Vector(9,35,-6),Ang=Angle(24,58,10)},
{Delay=4,Time=1,Pos=Vector(10,35,-6),Ang=Angle(23,58,10)},
{Delay=5.5,Time=.5,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.Melee1=14
function SWEP:MeleeSound()self:EmitSound("Flesh.ImpactHard")end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")
self:Melee(.2,1,.8,40)end
end
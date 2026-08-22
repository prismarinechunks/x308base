SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "308 Deagle"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"

SWEP.ClipinTime = 1
SWEP.ReloadTime = 1.4
SWEP.ReloadTime2 = 1.6
SWEP.Primary.ClipSize =7
SWEP.Primary.DefaultClip =7
SWEP.Primary.Ammo="357"
SWEP.TextType="308CS"
SWEP.Text="f"
SWEP.CustomAmmoIcon ="U"
SWEP.Slot = 1
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/deagle/deagle-1.wav"
SWEP.PA_Damage = 53

SWEP.PA_Delay = .3
SWEP.PA_Recoil = 5
SWEP.PA_Spread = 0.02
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 4
SWEP.ReloadSound={{Sound="weapons/deagle/de_slideback.wav"},{Sound="3088083421/wep/reload/all_clipout.ogg",Delay=.1},{Sound="3088083421/wep/reload/all_clipin.ogg",Delay=.8}}
SWEP.ReloadSound2={{Sound="3088083421/wep/reload/all_clipout.ogg",Delay=.1},{Sound="3088083421/wep/reload/all_clipin.ogg",Delay=.8},{Sound="3088083421/wep/reload/pis_cod_sliderelease.wav",Delay=1.1}}

SWEP.MCDrawAnim={
{Pos=Vector(0,95,-19),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
{Time=.2,Pos=Vector(0,65,-.1)}
}
SWEP.MCIdleAnim={
{Pos=Vector(0,65,0),A={{Bone="v_weapon.Deagle_Slide"},{Bone="ValveBiped.Bip01_L_Clavicle"}}},
{Time=1,Pos=Vector(0,65,-.1)},
{Delay=1,Time=1,Pos=Vector(0,65,0)},
}
SWEP.MCInIdle2Anim={
{Time=.1,Pos=Vector(-6.38, 65, 2.2)},
}
SWEP.MCIdleAnim2={
{Time=9,Pos=Vector(-6.38, 65, 2.2),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
}
SWEP.MCInIdleAnim={
{Time=.5,Pos=Vector(0,65,-.1)},
}
SWEP.PA_MCAnim={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.15,Pos=Vector(0,65),Ang=Angle(),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
}
SWEP.PA_MCAnimE={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(0,65),Ang=Angle()},
}
SWEP.PA_MCAnim2={
{Time=.1,Pos=Vector(-6.38, 65,1.2),Ang=Angle(1),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(-6.38, 65, 2.2),Ang=Angle(),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
}
SWEP.PA_MCAnim2E={
{Time=.1,Pos=Vector(-6.38, 65,1.2),Ang=Angle(1),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(-6.38, 65, 2.2),Ang=Angle(),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()}}},
}
SWEP.MCReloadAnim={
{Delay=.1,Time=.3,Pos=Vector(2,9,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17),angle=Angle(0,-15)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,-17)}}},
{Delay=.7,Time=.2,Pos=Vector(2,9,2),Ang=Angle(0,8,15),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-1)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,0,0)}}},
{Delay=1.1,Time=.2,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
}
SWEP.MCReloadAnim2={
{Delay=.1,Time=.3,Pos=Vector(2,9,2),Ang=Angle(0,8,5),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17),angle=Angle(0,-15)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,-17)}}},
{Delay=.7,Time=.2,Pos=Vector(2,9,2),Ang=Angle(0,8,15),A={{Bone="v_weapon.Deagle_Slide",pos=Vector(0,0,1.5)},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-1)},{Bone="v_weapon.Deagle_Clip",pos=Vector(0,0,0)}}},
{Delay=1.1,Time=.2,Pos=Vector(2,29),Ang=Angle(-1,9,-5),A={{Bone="v_weapon.Deagle_Slide",pos=Vector()},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
{Delay=1.5,Time=.1,Pos=Vector(0,65)},
}
SWEP.MeleeAnim={
{Delay=0,Time=.1,Pos=Vector(2,6,2),Ang=Angle(60,-8,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(195,-9)}}},
{Delay=.1,Time=.2,Pos=Vector(2,-19),Ang=Angle(-35,28,-5)},
{Delay=.3,Time=.4,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.HitAnim={
{Time=.3,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.ReviewAnim={
{Time=.5,Pos=Vector(16,35,-1),Ang=Angle(4,58,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(50)}}},
{Delay=.5,Time=2,Pos=Vector(16,35,-1),Ang=Angle(3,58,5)},
{Delay=3,Time=1,Pos=Vector(15,35,-9),Ang=Angle(24,58,10)},
{Delay=4,Time=1,Pos=Vector(16,35,-9),Ang=Angle(23,58,10)},
{Delay=5.5,Time=.5,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.Melee1=11
function SWEP:MeleeSound()self:PlayMCAnim(self.HitAnim)self:EmitSound("3088083421/wep/melee/punch.wav")end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")
self:Melee(.25,1,.7,40)end
end
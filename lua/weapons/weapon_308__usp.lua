SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "308 USP"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"

SWEP.ClipinTime = .9
SWEP.ReloadTime = 1.2
SWEP.ReloadTime2 = 1.6
SWEP.Primary.ClipSize =12
SWEP.Primary.DefaultClip =12
SWEP.Primary.Ammo="pistol"
SWEP.TextType = "308CS"
SWEP.Text = "y"
SWEP.CustomAmmoIcon ="M"
SWEP.Slot = 1
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/usp/usp_unsil-1.wav"
SWEP.PA_Damage = 33
SWEP.PA_Recoil = 1.2
SWEP.PA_Spread = .01
SWEP.PA_AimSpread = .008
SWEP.PA_AimRecoil = .9
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .09
SWEP.SA_Delay = .1
SWEP.ReloadSound={{Sound="weapons/usp/usp_clipout.wav",Delay=.1},{Sound="weapons/elite/elite_rightclipin.wav",Delay=.7}}
SWEP.ReloadSound2={{Sound="weapons/usp/usp_clipout.wav",Delay=.1},{Sound="weapons/elite/elite_deploy.wav",Delay=.4},{Sound="weapons/elite/elite_rightclipin.wav",Delay=.8},{Sound="weapons/usp/usp_sliderelease.wav",Delay=1.2}}
SWEP.ViewModelBoneMods = {
	["v_weapon.USP_Silencer"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.MCDrawAnim={
{Pos=Vector(0,95,-19),A={{Bone="v_weapon.USP_Slide",pos=Vector()}}},
{Time=.2,Pos=Vector(0,65,-.1)}
}
SWEP.MCIdleAnim={
{Pos=Vector(0,65,0),A={{Bone="v_weapon.USP_Slide"},{Bone="ValveBiped.Bip01_L_Clavicle"}}},
{Time=1,Pos=Vector(0,65,-.1)},
{Delay=1,Time=1,Pos=Vector(0,65,0)},
}
SWEP.MCInIdle2Anim={
{Time=.1,Pos=Vector(-5.92, 100, 2.72)},
}
SWEP.MCIdleAnim2={
{Time=9,Pos=Vector(-5.92, 100, 2.72),A={{Bone="v_weapon.USP_Slide",pos=Vector()}}},
}
SWEP.MCInIdleAnim={
{Time=.5,Pos=Vector(0,65,-.1)},
}
SWEP.PA_MCAnim={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.USP_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.15,Pos=Vector(0,65),Ang=Angle(),A={{Bone="v_weapon.USP_Slide",pos=Vector()}}},
}
SWEP.PA_MCAnimE={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.USP_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(0,65),Ang=Angle()},
}
SWEP.PA_MCAnim2={
{Time=.1,Pos=Vector(-5.92, 110, 2.72),Ang=Angle(1),A={{Bone="v_weapon.USP_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(-5.92, 100, 2.72),Ang=Angle(),A={{Bone="v_weapon.USP_Slide",pos=Vector()}}},
}
SWEP.PA_MCAnim2E={
{Time=.1,Pos=Vector(-6.38, 65,1.2),Ang=Angle(1),A={{Bone="v_weapon.USP_Slide",pos=Vector(0,0,1.5)}}},
{Delay=.1,Time=.1,Pos=Vector(-6.38, 65, 2.2),Ang=Angle(),A={{Bone="v_weapon.USP_Slide",pos=Vector()}}},
}
SWEP.MCReloadAnim={
{Delay=.1,Time=.3,Pos=Vector(2,29,2),Ang=Angle(0,8,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17),angle=Angle(0,-15)},{Bone="v_weapon.USP_Clip",pos=Vector(0,-17)}}},
{Delay=.4,Time=.15,Pos=Vector(5,29,1),Ang=Angle(5,8,27)},
{Delay=.55,Time=.15,Pos=Vector(6,29,1),Ang=Angle(1,8,48)},
{Delay=.7,Time=.2,Pos=Vector(9,29,2),Ang=Angle(4,8,55),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-3),angle=Angle(0,-40)},{Bone="v_weapon.USP_Clip",pos=Vector()}}},
{Delay=1,Time=.15,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(),angle=Angle()}}},
}
SWEP.MCReloadAnim2={
{Delay=.1,Time=.4,Pos=Vector(2,29,2),Ang=Angle(0,8,5),A={{Bone="v_weapon.USP_Slide",pos=Vector(0,0,1.5)},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17),angle=Angle(0,-15)},{Bone="v_weapon.USP_Clip",pos=Vector(0,-170)}}},
{Delay=.5,Time=.15,Pos=Vector(5,29,1),Ang=Angle(5,8,27),A={{Bone="v_weapon.USP_Parent",angle=Angle(0,0,-120)}}},
{Delay=.65,Time=.15,Pos=Vector(6,29,1),Ang=Angle(1,8,48),A={{Bone="v_weapon.USP_Parent",angle=Angle(0,0,-240)}}},
{Delay=.8,Time=.2,Pos=Vector(9,29,2),Ang=Angle(4,8,55),A={{Bone="v_weapon.USP_Parent",angle=Angle(0,0,-360)},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-3),angle=Angle(0,-40)},{Bone="v_weapon.USP_Clip",pos=Vector()}}},
{Delay=1.2,Time=.15,Pos=Vector(2,29),Ang=Angle(-1,9,-5),A={{Bone="v_weapon.USP_Slide",pos=Vector()},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
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
SWEP.Melee1=10
function SWEP:MeleeSound()self:PlayMCAnim(self.HitAnim)self:EmitSound("3088083421/wep/melee/punch.wav")end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")
self:Melee(.25,1,.65,40)end
end
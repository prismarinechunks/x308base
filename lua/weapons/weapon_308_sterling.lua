SWEP.Base = "weapon_308_baseflan"
SWEP.PrintName = "Sterling"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ShowWorldModel=false
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 ={{Sound="weapons/sg552/sg552-1.wav",Pitch=180,Volume=511}}
SWEP.PA_Damage = 25
SWEP.ViewModel = "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel = "models/weapons/w_rif_sg552.mdl"
SWEP.Primary.ClipSize=34
SWEP.Primary.DefaultClip=34
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Recoil = .7
SWEP.PA_Spread = .02
SWEP.PA_Delay = .075
SWEP.PA_AimSpread = .017
SWEP.PA_AimRecoil = .6
SWEP.BSound={
{Sound="3088083421/wep/reload/arif_boltpull.ogg"}
}
SWEP.ReloadSound={
{Sound="3088083421/wep/reload/rif1_clipout.ogg"},
{Sound="3088083421/wep/reload/smg_clipin.ogg",Delay=1.2}
}
SWEP.ReloadSound2={
{Sound="3088083421/wep/reload/rif1_clipout.ogg"},
{Sound="3088083421/wep/reload/smg_clipin.ogg",Delay=1.2},
{Sound="3088083421/wep/reload/arif_boltpull.ogg",Delay=1.5}
}
SWEP.SA_SightFOV = 50
SWEP.SA_Delay = .4

SWEP.NormalDraw = true
SWEP.BoltPullTime=1.7
SWEP.ReloadTime=1.5
SWEP.ReloadTime2=2.2
SWEP.ClipoutTime=.1
SWEP.ClipinTime=1.3
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 7.02), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.RE_Anim={
{Ang=Angle(0,5,0),Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-3, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 10), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,8,0),Delay=.1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-7, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 14), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-1,15,0),Delay=.2,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-11, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 18), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-2,19,0),Delay=.3,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-17, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 22), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-3,24,0),Delay=.4,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-5,19,0),Delay=.6,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-4,16,0),Delay=.7,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-1,18,0),Delay=.8,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,22,0),Delay=1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,7,0),Delay=1.1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-17, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 22), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,-7,0),Delay=1.2,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-7, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 14), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=1,Delay=1.3,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 7.02), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
}
SWEP.RE_Anim2={
{Ang=Angle(0,5,0),Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-3, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 10), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,8,0),Delay=.1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-7, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 14), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-1,15,0),Delay=.2,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-11, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 18), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-2,19,0),Delay=.3,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-17, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 22), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-3,24,0),Delay=.4,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-5,16,0),Delay=.6,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-4,11,0),Delay=.7,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(-1,18,0),Delay=.8,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,24,0),Delay=1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-99, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 99), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,7,0),Delay=1.1,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-17, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 22), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=Angle(0,-7,0),Delay=1.2,Bone={
	["v_weapon.sg552_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(-7, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 14), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) }
}},
{Ang=1,Delay=1.3,Bone={
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(20,0,5),Delay=1.5,Pos=Vector(0,80,-5),Bone={
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(12.553, 2.137, -5.387), angle = Angle(0, 0, -27.191) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(17,0,5),Delay=1.7,Pos=Vector(0,80,-5),Bone={
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(11.821, -0.161, -5.433), angle = Angle(0, 0, -27.191) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Chamber"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 3.375), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(20,0,5),Delay=1.8,Pos=Vector(0,120,-5),Bone={
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(12.553, 2.137, -5.387), angle = Angle(0, 0, -27.191) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(14,0,0),Delay=2,Pos=Vector(0,99,-3),Bone={
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=1,Delay=2.1,Pos=1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.667, -5.86, 7.02), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}},
}
SWEP.CenterPos = Vector(-1,80,0)
SWEP.SightPos = Vector(-7.99,60,5.07)
SWEP.VElements = {
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0.616, -1.134, 6.635), angle = Angle(0, 0, 0), size = Vector(0.136, 0.086, 0.679), color = Color(123, 127, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 0, -16.9), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.379), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metaL4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 1.243, 8.788), angle = Angle(0, 0, 57.589), size = Vector(0.085, 0.085, 0.128), color = Color(78, 81, 83, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 5.072, 25.919), angle = Angle(0, 0, 0), size = Vector(0.079, 0.5, 0.101), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Parent", rel = "2++++++", pos = Vector(-6.607, 0, -1.086), angle = Angle(18.104, 0, 0), size = Vector(0.638, 0.123, 0.328), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 0, -6.327), angle = Angle(0, 0, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "v_weapon.sg552_Chamber", rel = "", pos = Vector(1.371, -0.895, -2.585), angle = Angle(0, 53.492, 0), size = Vector(0.17, 0.026, 0.119), color = Color(156, 160, 163, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 0, -17.784), angle = Angle(0, 0, 0), size = Vector(0.125, 0.125, 0.032), color = Color(199, 201, 204, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "", pos = Vector(0, -4.631, -9.325), angle = Angle(0, 0, 0), size = Vector(0.119, 0.135, 0.388), color = Color(156, 160, 163, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.sg552_Clip", rel = "", pos = Vector(-4.194, -1.77, -1.913), angle = Angle(0, 0, 0), size = Vector(0.638, 0.122, 0.328), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 0, -8.455), angle = Angle(0, 0, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, -2.119, -17.621), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.019), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-1.356, -0.104, 3.28), angle = Angle(0, 0, 0), size = Vector(0.196, 0.158, 0.367), color = Color(123, 127, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 0, -8.455), angle = Angle(0, -48.882, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0.822, -0.226, 14.961), angle = Angle(0, 0, -90), size = Vector(0.052, 0.076, 0.057), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 2.865, 7.801), angle = Angle(0, -90, 90), size = Vector(0.145, 0.145, 0.145), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 2.354, 17.263), angle = Angle(0, 0, 30.957), size = Vector(0.035, 0.035, 0.228), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.sg552_Parent", rel = "1", pos = Vector(0, 1.953, 11.076), angle = Angle(0, 0, 2.7), size = Vector(0.035, 0.035, 0.338), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.616, -1.134, 6.635), angle = Angle(0, 0, 0), size = Vector(0.136, 0.086, 0.679), color = Color(123, 127, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -16.9), angle = Angle(0, 0, 0), size = Vector(0.104, 0.104, 0.379), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metaL4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.243, 8.788), angle = Angle(0, 0, 57.589), size = Vector(0.085, 0.085, 0.128), color = Color(78, 81, 83, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 5.072, 25.919), angle = Angle(0, 0, 0), size = Vector(0.079, 0.5, 0.101), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++++++", pos = Vector(-6.607, 0, -1.086), angle = Angle(18.104, 0, 0), size = Vector(0.638, 0.123, 0.328), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -6.327), angle = Angle(0, 0, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["1+++++++"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(1.256, -1.599, 3.746), angle = Angle(0, 53.492, 0), size = Vector(0.17, 0.026, 0.119), color = Color(156, 160, 163, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -17.784), angle = Angle(0, 0, 0), size = Vector(0.125, 0.125, 0.032), color = Color(199, 201, 204, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/mechanics/robotics/claw.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.865, 7.801), angle = Angle(0, -90, 90), size = Vector(0.145, 0.145, 0.145), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-2.597, 0, 3.19), angle = Angle(0, 0, 0), size = Vector(0.638, 0.122, 0.328), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.119, -17.621), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.019), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.354, 17.263), angle = Angle(0, 0, 30.957), size = Vector(0.035, 0.035, 0.228), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-1.356, -0.104, 3.28), angle = Angle(0, 0, 0), size = Vector(0.196, 0.158, 0.367), color = Color(123, 127, 123, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -8.455), angle = Angle(0, -48.882, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.822, -0.226, 14.961), angle = Angle(0, 0, -90), size = Vector(0.052, 0.076, 0.057), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.977, 0.879, -5.441), angle = Angle(0, 90, -81.362), size = Vector(0.119, 0.135, 0.388), color = Color(156, 160, 163, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -8.455), angle = Angle(0, 0, 0), size = Vector(0.034, 0.034, 0.093), color = Color(144, 144, 144, 255), surpresslightning = false, material = "hunter/mywindow", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.953, 11.076), angle = Angle(0, 0, 2.7), size = Vector(0.035, 0.035, 0.338), color = Color(147, 145, 145, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
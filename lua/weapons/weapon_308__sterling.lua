SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "308 Sterling"
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
SWEP.HaveBoltPull=false
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
SWEP.ReloadTime=1.7
SWEP.ReloadTime2=2.2
SWEP.ClipoutTime=.1
SWEP.ClipinTime=1.3
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
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-40.806, 17.513, 159.171) },
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.713, -14.039, 0) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.MCDrawAnim={
{Pos=Vector(0,95,-19),A={{Bone="v_weapon.sg552_Chamber",pos=Vector()}}},
{Time=.2,Pos=Vector(0,65,-.1)}
}
SWEP.MCIdleAnim={
{Pos=Vector(0,65,0),A={{Bone="v_weapon.sg552_Chamber"},{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6)}}},
{Time=1,Pos=Vector(0,65,-.1)},
{Delay=1,Time=1,Pos=Vector(0,65,0)},
}
SWEP.MCInIdle2Anim={
{Time=.1,Pos=Vector(-7.99,60,5.07)},
}
SWEP.MCIdleAnim2={
{Time=9,Pos=Vector(-7.99,60,5.07),A={{Bone="v_weapon.sg552_Chamber",pos=Vector()}}},
}
SWEP.MCInIdleAnim={
{Time=.5,Pos=Vector(0,65,-.1)},
}
SWEP.PA_MCAnim={
{Time=.02,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.sg552_Chamber",pos=Vector(0,0,3)}}},
{Delay=.02,Time=.15,Pos=Vector(0,65),Ang=Angle(),A={{Bone="v_weapon.sg552_Chamber",pos=Vector()}}},
}
SWEP.PA_MCAnimE={
{Time=.1,Pos=Vector(0,95,0),Ang=Angle(5),A={{Bone="v_weapon.sg552_Chamber",pos=Vector(0,0,3)}}},
{Delay=.1,Time=.1,Pos=Vector(0,65),Ang=Angle()},
}
SWEP.PA_MCAnim2={
{Time=.05,Pos=Vector(-7.99,80,5.07),A={{Bone="v_weapon.sg552_Chamber",pos=Vector(0,0,3)}}},
{Delay=.05,Time=.1,Pos=Vector(-7.99,60,5.07),A={{Bone="v_weapon.sg552_Chamber",pos=Vector()}}},
}
SWEP.MCReloadAnim={
{Delay=.1,Time=.3,Pos=Vector(2,49,2),Ang=Angle(0,20,-9),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6),angle=Angle(70,-15)},{Bone="v_weapon.sg552_Clip",pos=Vector(-22,-7)}}},
{Delay=.6,Time=.5,Pos=Vector(2,49,2),Ang=Angle(0,15,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(40,-15)}}},
{Delay=1.1,Time=.2,Pos=Vector(2,49,2),Ang=Angle(0,12,15),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6)},{Bone="v_weapon.sg552_Clip",pos=Vector()}}},
{Delay=1.4,Time=.3,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6)}}},
}
SWEP.MCReloadAnim2={
{Delay=.1,Time=.3,Pos=Vector(2,49,2),Ang=Angle(0,20,-9),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6),angle=Angle(70,-15)},{Bone="v_weapon.sg552_Clip",pos=Vector(-22,-7)}}},
{Delay=.6,Time=.5,Pos=Vector(2,49,2),Ang=Angle(0,15,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(40,-15)}}},
{Delay=1.1,Time=.2,Pos=Vector(2,49,2),Ang=Angle(0,12,15),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6)},{Bone="v_weapon.sg552_Clip",pos=Vector()}}},
{Delay=1.4,Time=.3,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(1,-2,6)}}},
}
SWEP.MeleeAnim={
{Time=.16,Pos=Vector(2,6,2),Ang=Angle(60,-8,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(0,-90)}}},
{Delay=.16,Time=.2,Pos=Vector(2,-19),Ang=Angle(-35,28,-5)},
{Delay=.36,Time=.4,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(),pos=Vector(1,-2,6)}}},
}
SWEP.ReviewAnim={
{Time=.5,Pos=Vector(19,35,0),Ang=Angle(4,58,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(50)}}},
{Delay=.5,Time=2,Pos=Vector(19,35,0),Ang=Angle(3,58,5)},
{Delay=3,Time=1,Pos=Vector(18,35,-6),Ang=Angle(24,58,10)},
{Delay=4,Time=1,Pos=Vector(19,35,-6),Ang=Angle(23,58,10)},
{Delay=5.5,Time=.5,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(),pos=Vector(1,-2,6)}}},
}
SWEP.Melee1=15
function SWEP:MeleeSound()self:EmitSound("3088083421/wep/melee/punch.wav")end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")self:Melee(.25,1,.8,43)end
end
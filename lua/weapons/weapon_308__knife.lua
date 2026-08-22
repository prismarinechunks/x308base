SWEP.Base = "weapon_308_base2melee"
SWEP.PrintName="308 "..GAME308_LANWEP["knife"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "knife"
SWEP.Slot = 0
SWEP.Spawnable = true

SWEP.NormalDraw=true

SWEP.TextType = "308CS"
SWEP.Text = "j"

SWEP.DrawSound={{Delay=.23,Sound="weapons/knife/knife_deploy1.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/knife_stab.wav",Pitch=110}}
SWEP.MeleeSM={{Sound="weapons/knife/knife_slash1.wav"}}
SWEP.MeleeSM2={{Sound="weapons/knife/knife_slash1.wav"}}
SWEP.MeleeSW={{Sound="weapons/knife/knife_hitwall1.wav"}}
SWEP.CenterPos = Vector(0,65,0)

SWEP.MCDrawAnim={
{Pos=Vector(0,95,-19)},
{Time=.2,Pos=Vector(0,65,-.1)}
}
SWEP.MCIdleAnim={
{A={{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle()},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()},{Bone="v_weapon.Knife_Handle",angle=Angle()}}},
{Time=1,Pos=Vector(0,65,-.1)},
{Delay=1,Time=1},
{Delay=2,Time=1,Pos=Vector(0,65,-.1)},
{Delay=3,Time=1,A={
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(-3.204,-23.673,-2.376)},
{Bone="v_weapon.Knife_Handle",angle=Angle(0,-60.382)},
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(32,-19.622,-16.021)}
}},
{Delay=4,Time=1.5,A={
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(7.76, -37.389, -2.376)},
{Bone="v_weapon.Knife_Handle",angle=Angle(36.629, -67.066, 11.885)},
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(32,-19.622,-16.021)}
}},
{Delay=5.5,Time=.5,A={{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle()},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()},{Bone="v_weapon.Knife_Handle",angle=Angle()}}},
}
SWEP.MeleeAnim={
[1]={
{Time=.1,Pos=Vector(2,6,2),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(50.042, 4.785, 3.627)},
{Bone="v_weapon.Knife_Handle",angle=Angle()},
}},
{Delay=.1,Time=.15,Pos=Vector(2,-19),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(-75.45, 1.478, -6.862)},
}},
{Delay=.25,Time=.2,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_R_Clavicle"},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
},
[3]={
{Time=.1,Pos=Vector(2,6,2),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(32.084, 50.053, 0)},
{Bone="v_weapon.Knife_Handle",angle=Angle()},
}},
{Delay=.1,Time=.15,Pos=Vector(2,-19),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(-122.804, 53.803, 1.868)},
}},
{Delay=.25,Time=.2,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_R_Clavicle"},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
},
[2]={
{Time=.1,Pos=Vector(2,6,2),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",pos = Vector(5.068, 3.282, -4.205), angle = Angle(39.832, -21.89, -17.07)},
{Bone="v_weapon.Knife_Handle",angle=Angle()},
}},
{Delay=.1,Time=.15,Pos=Vector(2,-19),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",pos = Vector(5.068, 3.282, -4.205), angle = Angle(-59.767, -26.6, -21.939)},
}},
{Delay=.25,Time=.2,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_R_Clavicle"},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
}
SWEP.MeleeAnim2={
{Time=.15,Pos=Vector(2,6,2),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle",pos=Vector(0,0,-13.98),angle=Angle(10.88, -123.51, -22.522)},
{Bone="v_weapon.Knife_Handle",angle=Angle()},
}},
{Delay=.15,Time=.15,Pos=Vector(2,-19),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle", pos =Vector(-0.057, 20.743, -15.542), angle = Angle(-77.08, -142.012, -61.909)},
}},
{Delay=.3,Time=.5,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_R_Clavicle"},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.HitAnim={
{Time=.2,Pos=Vector(2,-19),A={
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(-10.197, -29.487, -79.902)},
{Bone="ValveBiped.Bip01_R_Clavicle", pos =Vector(-0.057, 20.743, -15.542), angle = Angle(-77.08, -142.012, -61.909)},
}},
{Delay=.2,Time=.6,Pos=Vector(0,65),A={{Bone="ValveBiped.Bip01_R_Clavicle"},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.ReviewAnim={
{Time=1,A={
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(-3.204,-23.673,-2.376)},
{Bone="v_weapon.Knife_Handle",angle=Angle(0,-60.382)},
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(32,-19.622,-16.021)}
}},
{Delay=1,Time=1.5,A={
{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle(7.76, -37.389, -2.376)},
{Bone="v_weapon.Knife_Handle",angle=Angle(36.629, -67.066, 11.885)},
{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(32,-19.622,-16.021)}
}},
{Delay=3,Time=.5,A={{Bone="ValveBiped.Bip01_R_Clavicle",angle=Angle()},{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()},{Bone="v_weapon.Knife_Handle",angle=Angle()}}},
}
function SWEP:MAnim(ty)
if ty==1 then
self:PlayMCAnim(self.MeleeAnim[math.random(3)])self.Multiple=3
else
self:PlayMCAnim(self.MeleeAnim2)self.Multiple=1
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")
else
self:SoundSlot(self.MeleeSH2)
self:PlayMCAnim(self.HitAnim)
end
end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
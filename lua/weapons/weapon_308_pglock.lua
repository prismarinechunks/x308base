SWEP.Base = "weapon_308_baseflan" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "[R-R ANIM]Glock 18"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.ClipSize = 17
SWEP.Primary.DefaultClip = 17
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.ReloadSound = {
{Sound="3088083421/wep/9mmclip2.wav",Delay=.3},
{Sound="3088083421/wep/9mmclip1.wav",Delay=1.2},
}
SWEP.ReloadSound2 = {
{Sound="3088083421/wep/9mmclip2.wav",Delay=.3},
{Sound="3088083421/wep/9mmclip1.wav",Delay=1.2},
}
SWEP.RE_Anim={
{Pos=Vector(5, 60, 0),Ang=Angle(2, 5, 0),Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.492, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(7, 50, -1),Ang=Angle(4, 15, 0),Delay=.1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-3.139, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(12, 30, -2),Ang=Angle(6.864, 25.179, 0),Delay=.2,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(8, 27, 0),Delay=.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.548, -0.246), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(8.5, 26, 0),Delay=.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.548, -0.246), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(7, 24, 0),Delay=.55,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -5.54, -0.649), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(10, 24, 0),Delay=.6,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, 0), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(8, 24, 0),Delay=1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-19.976, 8.609, -8.146), angle = Angle(48.685, 18.656, -72.083) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -4.928, -0.649), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(10, 24, 0),Delay=1.1,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-17.489, 4.519, -10.353), angle = Angle(45.766, 16.023, -57.334) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -4.314, -0.137), angle = Angle(0, -4.522, 0) }
}},
{Ang=Angle(12, 24, 0),Delay=1.2,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-13.084, 1.827, -13.141), angle = Angle(42.221, 12.086, -42.652) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.152, -2.46, -0.449), angle = Angle(0, -0.028, 0) }
}},
{Pos=Vector(11, 70, -4),Ang=Angle(15, 24, 3),Delay=1.3,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.837, 2.063, -14.256), angle = Angle(32.348, -15.363, -44.014) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.874, -0.036), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(6, 60, -2),Ang=Angle(9, 14, 5),Delay=1.4,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-8.811, 1.218, -11.617), angle = Angle(17.288, -31.581, -36.965) }
}},
{Pos=Vector(3, 70, -1),Ang=Angle(3, 7, 3),Delay=1.5,Bone={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.838, 0.497, -1.834), angle = Angle(0, 20.461, 0) }
}},
{Delay=1.6,Pos=1,Ang=1}
}
SWEP.RE_Anim2={
{Pos=Vector(5, 60, 0),Ang=Angle(2, 5, 0),Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.492, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(7, 50, -1),Ang=Angle(4, 15, 0),Delay=.1,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-3.139, 0, 0), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(12, 30, -2),Ang=Angle(6.864, 25.179, 0),Delay=.2,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-10, 0, 0), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(8, 27, 0),Delay=.4,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.548, -0.246), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(8.5, 26, 0),Delay=.5,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -1.548, -0.246), angle = Angle(0, 0, 0) }
}},
{Ang=Angle(7, 24, 0),Delay=.55,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.549, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -5.54, -0.649), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(10, 24, 0),Delay=.6,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -30, 0), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(8, 24, 0),Delay=1,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-19.976, 8.609, -8.146), angle = Angle(48.685, 18.656, -72.083) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -4.928, -0.649), angle = Angle(0, -11.002, 0) }
}},
{Ang=Angle(10, 24, 0),Delay=1.1,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-17.489, 4.519, -10.353), angle = Angle(45.766, 16.023, -57.334) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.513, -4.314, -0.137), angle = Angle(0, -4.522, 0) }
}},
{Ang=Angle(12, 24, 0),Delay=1.2,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-13.084, 1.827, -13.141), angle = Angle(42.221, 12.086, -42.652) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0.152, -2.46, -0.449), angle = Angle(0, -0.028, 0) }
}},
{Pos=Vector(11, 70, -4),Ang=Angle(15, 24, 3),Delay=1.3,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-9.837, 2.063, -14.256), angle = Angle(32.348, -15.363, -44.014) },
	["v_weapon.Glock_Clip"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.874, -0.036), angle = Angle(0, 0, 0) }
}},
{Pos=Vector(6, 60, -2),Ang=Angle(9, 14, 5),Delay=1.4,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(1.223, -0.332, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-8.811, 1.218, -11.617), angle = Angle(17.288, -31.581, -36.965) }
}},
{Pos=Vector(3, 70, -1),Ang=Angle(3, 7, 3),Delay=1.5,Bone={
	["v_weapon.Glock_Slide"] = { scale = Vector(1, 1, 1), pos = Vector(.6, -.16, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.838, 0.497, -1.834), angle = Angle(0, 20.461, 0) }
}},
{Delay=1.6,Pos=1,Ang=1}
}

SWEP.BAnim="glock_draw"
SWEP.PA_Sound = "weapons/glock/glock18-1.wav"
SWEP.PA_Damage = 24
SWEP.PA_Recoil = .1
SWEP.PA_Spread = .01
SWEP.PA_AimSpread = .008
SWEP.PA_AimRecoil = .08
SWEP.SA_SightFOV = 60
SWEP.PA_Delay = .3
SWEP.SA_Delay = .1
SWEP.ReloadTime = 1.8
SWEP.ClipoutTime = .5
SWEP.ClipinTime = 1.4
SWEP.ReloadTime2 = 1.8
SWEP.BoltPullTime=1.6

SWEP.CenterPos = Vector( 0, 90, 0 )
SWEP.SightPos = Vector(-5.79, 130, 2.96)
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0, -10), angle = Angle(0, 0, 0), size = Vector(10, 10, 10), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
function SWEP:CustomPrimary()
self:FireB()
self.Owner:MuzzleFlash()
if self.Burst then
self:PlayAnim("glock_shootburst1")
self:SetNextPrimaryFire(CurTime()+.45)
local a=self.HMath
for i=1,2 do
timer.Simple(i*.03,function()if !IsValid(self)||!self:CUnHos(a)||self:Clip1()<1 then return end
self:TakePrimaryAmmo(1)
self.Owner:EmitSound("weapons/glock/glock18-1.wav",511)
self:ShootAnim()
self:FireB()
self.Owner:MuzzleFlash()
end)
end
else
self:PlayAnim("glock_firesingle")
end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
if self.Burst then
self.Text_Semi="Semi-Auto"
self.PA_Spread = .01
self.PA_AimSpread = .008
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=nil
self:EmitSound("weapons/smg1/switch_single.wav")
else
self.Text_Semi="Burst"
self.PA_Spread = .02
self.PA_AimSpread = .014
self:SetNextPrimaryFire(CurTime()+.2)
self.BoltpullTimer=CurTime()+.2
self.Burst=1
self:EmitSound("weapons/smg1/switch_burst.wav")
end
end
end
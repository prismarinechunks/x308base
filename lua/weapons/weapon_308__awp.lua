SWEP.Base = "weapon_308_base2" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "308 AWP"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.SA_SightFOV = 10
SWEP.SA_Delay = 1
SWEP.DrawCross=false

SWEP.ShootScale=4
SWEP.ShootSpeed=.08
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.2
SWEP.BoltPullTime = 2
SWEP.ReloadTime = 1.5
SWEP.ReloadTime2 = 2.2
SWEP.Primary.ClipSize=10
SWEP.Primary.DefaultClip=10
SWEP.Primary.Automatic=true
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.PA_Recoil = 5
SWEP.PA_Spread = .1
SWEP.PA_Delay = 1.5
SWEP.PA_AimSpread = .00009
SWEP.PA_AimRecoil = 4
SWEP.PA_Range=300
SWEP.BlockPrimary=true

SWEP.PA_VeloS = 500
SWEP.Slot = 2
SWEP.Spawnable = true
SWEP.ReloadSound={{Sound="weapons/awp/awp_clipout.wav"},{Sound="weapons/awp/awp_clipin.wav",Delay=1.1}}
SWEP.ReloadSound2={{Sound="weapons/awp/awp_clipout.wav"},{Sound="weapons/awp/awp_clipin.wav",Delay=1.1},{Sound="weapons/scout/scout_bolt.wav",Delay=1.6}}
SWEP.PA_Sound = "weapons/awp/awp1.wav"
SWEP.PA_Sound2={{Sound="weapons/scout/scout_bolt.wav",Delay=.6}}

SWEP.TextType="308CS"
SWEP.Text="r"
SWEP.Text_Auto="Bolt-Action"

SWEP.SightPos = Vector(0,1000,0)
SWEP.CenterPos = Vector( -2, 90,-1)

SWEP.MCDrawAnim={
{Pos=Vector(-2,95,-19)},
{Time=.2,Pos=Vector(-2,65,-.1)}
}
SWEP.MCIdleAnim={
{Time=1,Pos=Vector(-2,65,-.1),A={{Bone="ValveBiped.Bip01_L_Clavicle"}}},
{Delay=1,Time=1,Pos=Vector(-2,65,0)},
}
SWEP.MCInIdle2Anim={{Pos=Vector(0,300)}}SWEP.MCIdleAnim2={{Pos=Vector(0,300)}}
SWEP.MCInIdleAnim={
{Pos=Vector(-7.9,70,-.5),Ang=Angle(3, -1.5, -4)},
{Time=.5,Pos=Vector(-2,65,-.1)},
}
SWEP.PA_MCAnim={
{Time=.1,Pos=Vector(-2,98,0),Ang=Angle(3)},
{Delay=.1,Time=.3,Pos=Vector(-2,65),Ang=Angle()},
{Delay=.5,Time=.2,Pos=Vector(-8,30,1),Ang=Angle(0,-15,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=-Vector(8,6,6),angle=Angle(5,14,-34)}}},
{Delay=.7,Time=.3,Pos=Vector(-8,50,1),Ang=Angle(0,-21,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=-Vector(8,9,6),angle=Angle(5,16,-35)}}},
{Delay=1,Time=.3,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle"}}},
}
SWEP.PA_MCAnimE={
{Time=.1,Pos=Vector(-2,98,0),Ang=Angle(3)},
{Delay=.1,Time=.3,Pos=Vector(-2,65),Ang=Angle()}}
SWEP.PA_MCAnim2={{Pos=Vector(0,300)}}
SWEP.MCReloadAnim={
{Delay=.1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(0,-5)}}},
{Delay=.4,Time=.3,Pos=Vector(1,59,2),Ang=Angle(0,7,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17,-3)},{Bone="v_weapon.awm_clip",pos=Vector(0,-17)}}},
{Delay=1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8,35),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-2,-3)},{Bone="v_weapon.awm_clip",pos=Vector()}}},
{Delay=1.4,Time=.2,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector()}}},
}
SWEP.MCReloadAnim2={
{Delay=.1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(0,-5)}}},
{Delay=.4,Time=.3,Pos=Vector(1,59,2),Ang=Angle(0,7,25),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-17,-3)},{Bone="v_weapon.awm_clip",pos=Vector(0,-17)}}},
{Delay=1,Time=.2,Pos=Vector(1,59,2),Ang=Angle(0,8,35),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=Vector(-2,-3)},{Bone="v_weapon.awm_clip",pos=Vector()}}},
{Delay=1.5,Time=.2,Pos=Vector(-8,30,1),Ang=Angle(0,-15,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=-Vector(8,6,6),angle=Angle(5,14,-34)}}},
{Delay=1.7,Time=.3,Pos=Vector(-8,50,1),Ang=Angle(0,-21,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",pos=-Vector(8,9,6),angle=Angle(5,16,-35)}}},
{Delay=2,Time=.2,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle"}}},
}
SWEP.MeleeAnim={
{Delay=0,Time=.1,Pos=Vector(-2,6,2),Ang=Angle(9,-18,-25)},
{Delay=.1,Time=.2,Pos=Vector(2,-19),Ang=Angle(-35,68,-5)},
{Delay=.3,Time=.6,Pos=Vector(-2,65)},
}
SWEP.ReviewAnim={
{Time=.5,Pos=Vector(12,35,0),Ang=Angle(4,58,5),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle(50)}}},
{Delay=.5,Time=2,Pos=Vector(12,35,0),Ang=Angle(3,58,5)},
{Delay=3,Time=1,Pos=Vector(11,35,-6),Ang=Angle(24,58,10)},
{Delay=4,Time=1,Pos=Vector(12,35,-6),Ang=Angle(23,58,10)},
{Delay=5.5,Time=.5,Pos=Vector(-2,65),A={{Bone="ValveBiped.Bip01_L_Clavicle",angle=Angle()}}},
}
SWEP.Melee1=18
function SWEP:MeleeSound()self:EmitSound("Flesh.ImpactHard")end
function SWEP:HitEnt()self:MeleeSound()end
function SWEP:HitWorld()self:MeleeSound()end
function SWEP:CusESA()if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.ReviewAnim)end
end
function SWEP:CusEPA()
if self:GetNextPrimaryFire()<CurTime()then
self:PlayMCAnim(self.MeleeAnim)self:EmitSound("3088083421/wep/melee/linkedslash.mp3")
self:Melee(.2,1,.9,40)end
end
function SWEP:CusHUD()
x = ScrW()/2
y = ScrH()/2
sw = surface.ScreenWidth()
sh = surface.ScreenHeight()
	if self.Scope==1 and self:GetNextPrimaryFire()<CurTime()then
		surface.SetDrawColor(255,255,255,255)

		surface.DrawLine(x,y+100,x,y-100)
		surface.DrawLine(x+100,y,x-100,y)

		surface.DrawLine(x+30,y+10,x+30,y-10)
		surface.DrawLine(x+60,y+10,x+60,y-10)
		surface.DrawLine(x+10,y+30,x-10,y+30)
		surface.DrawLine(x+10,y+60,x-10,y+60)

		surface.DrawLine(x-30,y+10,x-30,y-10)
		surface.DrawLine(x-60,y+10,x-60,y-10)
		surface.DrawLine(x+10,y-30,x-10,y-30)
		surface.DrawLine(x+10,y-60,x-10,y-60)

		surface.SetDrawColor(0,0,0,255)
		surface.DrawRect(0,0,sw,sh/6)
		surface.DrawRect(0,sh-sh/6,sw,sh/3)
		surface.DrawRect(sw-sw/3,0,sw/3,sh)
		surface.DrawRect(0,0,sw/3,sh)
	end
end

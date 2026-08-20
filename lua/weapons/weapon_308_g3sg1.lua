SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "G3 SG1"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawCross=false
SWEP.PA_Sound = "weapons/g3sg1/g3sg1-1.wav"
SWEP.PA_Damage = 80
SWEP.ViewModel = "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel = "models/weapons/w_snip_g3sg1.mdl"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
SWEP.PA_Recoil = .1
SWEP.PA_Spread = .09
SWEP.PA_Delay = .25
SWEP.PA_AimSpread = .001
SWEP.PA_AimRecoil = .16
SWEP.PA_Range=280
SWEP.ReloadAnimD={
{Anim="reload",Rate=1.3,Time=2.55}
}
SWEP.BSound = {
{Sound="weapons/g3sg1/g3sg1_slide.wav"}
}
SWEP.PA_VeloS = 1200
SWEP.SA_SightFOV = 10
SWEP.SA_Delay = 1

SWEP.TextType="308CS"
SWEP.Text="i"
SWEP.NormalDraw = true
SWEP.ClipoutTime = 1.55
SWEP.ClipinTime = 2.3
SWEP.ReloadTime = 2.6
SWEP.ReloadTime2 = 4.3
SWEP.ClipoutTime2 = 1.85
SWEP.ClipinTime2 = 2.9
SWEP.BoltPullTime=3.8

SWEP.CenterPos = Vector(0,80,0)
SWEP.SightPos = Vector(0,780,0)

function SWEP:CusHUD()
x = ScrW()/2
y = ScrH()/2
sw = surface.ScreenWidth()
sh = surface.ScreenHeight()
	if self.Scope==1 then
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

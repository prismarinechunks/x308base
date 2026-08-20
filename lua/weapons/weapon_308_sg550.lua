SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "SG550"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/sg550/sg550-1.wav",Pitch=95,Volume=511}
}
SWEP.DrawCross=false
SWEP.PA_Damage = 69
SWEP.ViewModel = "models/weapons/cstrike/c_snip_sg550.mdl"
SWEP.WorldModel = "models/weapons/w_snip_sg550.mdl"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .1
SWEP.PA_Delay = .25
SWEP.PA_AimSpread = .001
SWEP.PA_AimRecoil = .2
SWEP.PA_Range=270

SWEP.BSound = {
{Sound="weapons/sg550/sg550_boltpull.wav"}
}
SWEP.PA_VeloS = 800
SWEP.SA_SightFOV = 10
SWEP.SA_Delay = 1

SWEP.TextType="308CS"
SWEP.Text="o"
SWEP.StopRAnimTime = 2.6
SWEP.NormalDraw = true
SWEP.ReloadTime = 2.7
SWEP.ReloadTime2 = 3.6
SWEP.ClipoutTime = .8
SWEP.ClipinTime = 2.15
SWEP.BoltPullTime=3

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

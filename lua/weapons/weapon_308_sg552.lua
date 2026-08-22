SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "SG552"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/sg552/sg552-1.wav"
SWEP.PA_Damage = 32
SWEP.ViewModel = "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel = "models/weapons/w_rif_sg552.mdl"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"
SWEP.PA_Recoil = .6
SWEP.PA_Spread = .018
SWEP.PA_Delay = .089
SWEP.PA_AimSpread = .009
SWEP.PA_AimRecoil = .5
SWEP.BSound = {
{Sound="weapons/sg552/sg552_boltpull.wav"}
}
SWEP.SA_SightFOV = 50
SWEP.SA_Delay = .4

SWEP.TextType="308CS"
SWEP.Text="A"
SWEP.StopRAnimTime = 1.6
SWEP.NormalDraw = true
SWEP.BoltPullTime=2.1
SWEP.ReloadTime = 1.6
SWEP.ReloadTime2 = 2.6
SWEP.ClipoutTime = .6
SWEP.ClipinTime = 1.4

SWEP.CenterPos = Vector(0,80,0)
SWEP.SightPos = Vector(-7.85,290,2.55)
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

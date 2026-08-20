SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Scout"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/scout/scout_fire-1.wav"
SWEP.PA_Damage = 75
SWEP.PA_TakeAmmo = 1
SWEP.ViewModel = "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
SWEP.PA_Recoil = 4
SWEP.PA_Spread = .1
SWEP.PA_Delay = 1.25
SWEP.PA_AimSpread = .0001
SWEP.PA_AimRecoil = 3.5
SWEP.PA_Range=270
SWEP.DrawCross=false

SWEP.PA_VeloS = 2400
SWEP.SA_SightFOV = 17
SWEP.SA_Delay = .6

SWEP.TextType="308CS"
SWEP.Text="n"
SWEP.CustomAmmoIcon ="S"
SWEP.StopRAnimTime = 1.5
SWEP.NormalDraw = true
SWEP.DrawAnimRate = .9
SWEP.DrawTime = 1
SWEP.ReloadTime = 1.6
SWEP.ReloadTime2 = 2.8
SWEP.BoltPullTime=2.1
SWEP.ClipoutTime = .71
SWEP.ClipinTime = 1.4

SWEP.Text_Auto="Bolt-Action"
SWEP.CenterPos = Vector( 0, 80, 0 )
SWEP.SightPos = Vector(0, 245, 0)
function SWEP:ShootAnim()
if self:Clip1()<1 then
self:PlayAnim("shoot",1,.17)else
self:PlayAnim("shoot")
end
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

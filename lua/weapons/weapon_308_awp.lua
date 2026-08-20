SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "AWP"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "weapons/awp/awp1.wav"
SWEP.PA_Damage = 114
SWEP.ViewModel = "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SniperPenetratedRound"
SWEP.PA_Recoil = 5
SWEP.PA_Spread = .1
SWEP.PA_Delay = 1.5
SWEP.PA_AimSpread = .00009
SWEP.PA_AimRecoil = 4
SWEP.PA_Range=300
SWEP.BlockPrimary=true

SWEP.PA_VeloS = 500
SWEP.ReloadAnim = "awm_reload"
SWEP.DrawAnim = "awm_draw"
SWEP.SA_SightFOV = 10
SWEP.SA_Delay = 1
SWEP.DrawCross=false

SWEP.TextType="308CS"
SWEP.Text="r"
SWEP.StopRAnimTime = 2.6
SWEP.NormalDraw = true
SWEP.ReloadTime = 2.7
SWEP.ReloadTime2 = 3.8
SWEP.ClipoutTime = 0.8
SWEP.ClipinTime = 1.9
SWEP.BoltPullTime=3

SWEP.Text_Auto="Bolt-Action"
SWEP.CenterPos = Vector(-2,80,0)
SWEP.SightPos = Vector(-2,380,0)

function SWEP:ShootAnim()
if self:Clip1()<1 then
self:PlayAnim("awm_fire",1,.2)else
self:PlayAnim("awm_fire")
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

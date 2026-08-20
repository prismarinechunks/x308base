if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_awm.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS AWM"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/fosterz/weapons/viewmodels/c_awm.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true

SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SniperPenetratedRound"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.TextIcon="entities/weapon_cf_awm"
SWEP.PA_Sound = "weapons/awm/g_shoot_awm.wav"
SWEP.PA_Sound2 = {
{Delay=.5,Sound="weapons/awm/g_reload_awm.wav"}
}
SWEP.NormalDraw = true
SWEP.PA_Damage = 114
SWEP.PA_Recoil = 5
SWEP.PA_Spread = .1
SWEP.PA_Delay = 1.2
SWEP.PA_AimSpread = .00009
SWEP.PA_AimRecoil = 4
SWEP.PA_Range=300
SWEP.BlockPrimary=true

SWEP.PA_VeloS = 500
SWEP.StopRAnimTime = 1.2
SWEP.ReloadTime = 1.3
SWEP.ReloadTime2 = 2
SWEP.BoltPullTime = 1.8
SWEP.ClipoutTime = .27
SWEP.ClipinTime = 1.1
SWEP.DrawTime = .8
SWEP.BTime = 1
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=2
SWEP.DrawSound = {
{Delay=.3,Sound="weapons/awm/g_reload_awm.wav"}
}
SWEP.DrawAnimRate=1
SWEP.ReloadAnim="vk.com/cf_source_reload"
SWEP.ReloadAnimRate=.5
SWEP.ReloadSound = {
{Delay=.2,Sound="weapons/awm/g_mzc_awm_clipout.wav"},
{Delay=.7,Sound="weapons/awm/g_mzc_awm_clipin.wav"}
}
SWEP.ReloadSound2 = {
{Delay=.2,Sound="weapons/awm/g_mzc_awm_clipout.wav"},
{Delay=.7,Sound="weapons/awm/g_mzc_awm_clipin.wav"},
{Delay=1.5,Sound="weapons/awm/g_reload_awm.wav"}
}
SWEP.SA_SightFOV = 10
SWEP.SA_Delay = 1
SWEP.DrawCross=false
SWEP.Text_Auto="Bolt-Action"
SWEP.CenterPos = Vector(-2,80,2)
SWEP.SightPos = Vector(-1,1000,2)
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_awm.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0.935, 0), angle = Angle(-9, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
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
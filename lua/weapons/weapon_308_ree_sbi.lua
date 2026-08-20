if !util.IsValidModel("models/weapons/v_pist_ree_sbi.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Ree SBI-45"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/v_pist_ree_sbi.mdl"
SWEP.WorldModel = "models/weapons/w_pist_ree_sbi.mdl"
SWEP.PA_Sound = "weapons/ree/sbi/123.wav"
SWEP.CSMuzzleFlashes = true

SWEP.Primary.ClipSize=8
SWEP.Primary.DefaultClip=8
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo="357"

SWEP.BobScale=.75
SWEP.SwayScale=.75
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true

SWEP.UseHands=false
SWEP.PA_Damage=37
SWEP.NormalDraw=true
SWEP.StopRAnimTime = 2.1
SWEP.PA_Recoil=.95
SWEP.PA_Spread=.019
SWEP.PA_AimSpread=.016
SWEP.PA_AimRecoil=.8
SWEP.PA_Delay=.1
SWEP.ReloadTime=2.2
SWEP.BoltPullTime=2.2
SWEP.ReloadTime2=2.5
SWEP.ClipoutTime=.5
SWEP.ClipinTime=1.85
SWEP.PA_AnimE={{Anim="shoot_empty",Time=math.huge}}
SWEP.ReloadAnim="reload"
SWEP.SA_Delay = .1
SWEP.SightPos=Vector(-2.21,30,1.1)
SWEP.SightAng=Angle(.1,2,0)
SWEP.CenterPos = Vector(-1,40,.5)
SWEP.CenterAng=Angle(.1,2,0)
--function SWEP:ShootAnim()self:PlayAnim("sh"..math.random(2))end
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "Glock 18", rel = "", pos = Vector(0, -1.65, -0.506), angle = Angle(0, 0, 90), size = Vector(0.3, 0.3, 0.421), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 2.16, 0.954), angle = Angle(90, 0, 0), size = Vector(0.1, 0.072, 0.072), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 0.592, 0.809), angle = Angle(0, 0, 90), size = Vector(0.068, 0.068, 0.103), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/squad/sf_bars/sf_bar1.mdl", bone = "Glock 18", rel = "1+++", pos = Vector(-80, -1.992, 0), angle = Angle(0, 0, 0), size = Vector(10, 0.009, 0.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "model_color", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "Glock 18", rel = "1+++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "model_color", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 1.44, 1.289), angle = Angle(0, 0, 90), size = Vector(0.072, 0.143, 0.048), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
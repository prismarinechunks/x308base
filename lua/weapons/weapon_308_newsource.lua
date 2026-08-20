if !util.IsValidModel("models/weapons/v_uglock18c.mdl")then return end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Glock-18 - NS"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "revolver"
SWEP.SwayScale=.75
SWEP.BobScale=.75
SWEP.ViewModel = "models/weapons/v_uglock18c.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.PA_Sound =""
SWEP.PA_Sound2={{Sound="weapons/glock/glock18c-1.wav",Pitch=80,Volume=511}}
SWEP.CSMuzzleFlashes = true

SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "Glock 18", rel = "", pos = Vector(0, -1.65, -0.506), angle = Angle(0, 0, 90), size = Vector(0.3, 0.3, 0.421), color=Color(0,170,255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 2.16, 0.954), angle = Angle(90, 0, 0), size = Vector(0.1, 0.072, 0.072), color=Color(0,170,255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 0.592, 0.809), angle = Angle(0, 0, 90), size = Vector(0.068, 0.068, 0.103), color=Color(0,170,255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/squad/sf_bars/sf_bar1.mdl", bone = "Glock 18", rel = "1+++", pos = Vector(-1201, -1.992, 0), angle = Angle(0, 0, 0), size = Vector(100, .02, .04), color = Color(255, 0, 0, 255), surpresslightning = true, material = "model_color", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "Glock 18", rel = "1+++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(.005,.005,.005), color = Color(255, 0, 0, 155), surpresslightning = true, material = "model_color", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "Glock 18", rel = "1", pos = Vector(0, 1.44, 1.289), angle = Angle(0, 0, 90), size = Vector(0.072, 0.143, 0.048), color=Color(0,170,255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.44, 1.289), angle = Angle(0, 0, 90), size = Vector(0.072, 0.143, 0.048), color=Color(0,170,255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2", pos = Vector(8.569, -0.389, 2.579), angle = Angle(0, 90, -90), size = Vector(0.3, 0.3, 0.421), color=Color(0,170,255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.16, 0.954), angle = Angle(90, 0, 0), size = Vector(0.1, 0.072, 0.072), color=Color(0,170,255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/weapons/w_uglock18c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 1.276, 0.875), angle = Angle(-3.422, -2.408, 180), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 0, 0, 255), surpresslightning = true, material = "model_color", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.592, 0.809), angle = Angle(0, 0, 90), size = Vector(0.09, 0.068, 0.14), color=Color(0,170,255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.BSound={{Sound="weapons/glock/glock_sliderelease.wav"}}
SWEP.DrawTime=.5
SWEP.UseHands=false
SWEP.PA_Damage = 21
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1.3
SWEP.PA_Spread = .015
SWEP.PA_AimSpread = .014
SWEP.PA_AimRecoil = 1.1
SWEP.PA_Delay = .1
SWEP.ReloadTime = 1.9
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime2 = 3
SWEP.BoltPullTime=2
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.63
SWEP.PlayIdleAnimOnEmpty=false
SWEP.PA_AnimE={{Anim="firelast",Time=math.huge}}
SWEP.ReloadAnim="reload"
SWEP.ReloadAnim2="reload"
SWEP.SA_Delay = .1
SWEP.SightPos = Vector( -2.55, 0, .08 )
SWEP.CenterPos = Vector( -1, 10, 0 )
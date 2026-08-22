SWEP.Base = "weapon_308_baseshotgun" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M1894"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ShowWorldModel=false

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = false
SWEP.Slot = 2
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 ={{Sound="3088083421/wep/shoot/as501.wav",Pitch=250},{Delay=.2,Sound="3088083421/wep/reload/all1_boltpull.wav",Pitch=250}}
SWEP.PA_Damage = 68
SWEP.PA_Delay = .6
SWEP.PA_Recoil = 1.3
SWEP.PA_Spread = .015
SWEP.PA_AimSpread = .005
SWEP.PA_AimRecoil = 1
SWEP.PA_Num=1

SWEP.PA_Anim="shoot"
SWEP.ReloadAnim1="start_reload"
SWEP.ReloadAnim2="insert"
SWEP.ReloadAnim3="after_reload"
SWEP.IdleAnimRate=0
SWEP.Text_Semi="Lever-Action"
SWEP.Text="Winchester"
SWEP.ReloadStart=.4
SWEP.ReloadDelay=.45
SWEP.ReloadIn=.4
SWEP.ReloadInEnd=.1
SWEP.ReloadEnd=.4

SWEP.SA_Delay = .1
SWEP.SightPos = Vector(-6.96, 80, 2.83)
SWEP.SightAng = Angle(0, -.7, 0)
SWEP.CenterPos = Vector( -3,70, 0 )
SWEP.CenterAng = Angle(0, -4, 0)
SWEP.ViewModelBoneMods = {
	["v_weapon.xm1014_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.5,-1.5,-1.2), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-6.56, 0, 0) }
}
SWEP.VElements = {
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1+++++", pos = Vector(0, -0.394, 6.072), angle = Angle(0, 0, 0), size = Vector(0.101, 0.127, 0.221), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.557, -2.609), angle = Angle(0, 0, 0), size = Vector(0.032, 0.032, 0.254), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.087, 16.75), angle = Angle(0, 0, 15), size = Vector(0.086, 0.086, 0.241), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -1.436, -12.749), angle = Angle(0, 0, 0), size = Vector(0.032, 0.032, 0.573), color = Color(103, 103, 103, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_phx/trains/trackslides_outer.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0.912, 14.982), angle = Angle(0, 0, 95.228), size = Vector(0.05, 0.03, 0.116), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0.3, -1.754, 6.157), angle = Angle(0, 0, 0), size = Vector(0.009, 0.035, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.238, -0.829), angle = Angle(0, 0, 0), size = Vector(0.046, 0.061, 0.194), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.912, -11.947), angle = Angle(0, 0, 0), size = Vector(0.009, 0.019, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "1", pos = Vector(0, -0.398, 12.704), angle = Angle(0, 0, 0), size = Vector(0.09, 0.1, 0.1), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.xm1014_Parent", rel = "", pos = Vector(0, -3.527, -17.369), angle = Angle(0, 0, 0), size = Vector(0.057, 0.082, 0.282), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-0.301, -1.754, 6.157), angle = Angle(0, 0, 0), size = Vector(0.009, 0.035, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+++++", pos = Vector(0, -0.394, 6.072), angle = Angle(0, 0, 0), size = Vector(0.101, 0.127, 0.221), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.557, -2.609), angle = Angle(0, 0, 0), size = Vector(0.032, 0.032, 0.254), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.087, 16.75), angle = Angle(0, 0, 15), size = Vector(0.086, 0.086, 0.241), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.436, -12.749), angle = Angle(0, 0, 0), size = Vector(0.032, 0.032, 0.573), color = Color(103, 103, 103, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_phx/trains/trackslides_outer.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.912, 14.982), angle = Angle(0, 0, 95.228), size = Vector(0.05, 0.03, 0.116), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.3, -1.754, 6.157), angle = Angle(0, 0, 0), size = Vector(0.009, 0.035, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.238, -0.829), angle = Angle(0, 0, 0), size = Vector(0.046, 0.061, 0.194), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.912, -11.947), angle = Angle(0, 0, 0), size = Vector(0.009, 0.019, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(21.676, 0.861, -5.307), angle = Angle(0, 90.165, -80.25), size = Vector(0.057, 0.082, 0.282), color = Color(67, 47, 36, 255), surpresslightning = false, material = "phoenix_storms/wood", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.398, 12.704), angle = Angle(0, 0, 0), size = Vector(0.09, 0.1, 0.1), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-0.301, -1.754, 6.157), angle = Angle(0, 0, 0), size = Vector(0.009, 0.035, 0.05), color = Color(99, 99, 99, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
function SWEP:ShootAnim()
self:PlayAnim(self.PA_Anim..math.random(2))
end
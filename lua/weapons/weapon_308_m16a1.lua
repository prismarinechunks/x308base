SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "M16A1"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.DrawSound = {{Sound="3088083421/wep/deploy/deploy_roz_arif.wav"}}
SWEP.PA_Sound2 = {{Sound="weapons/m4a1/m4a1_unsil-1.wav",Volume=511,Pitch=70}}
SWEP.PA_Sound = ""
SWEP.PA_Damage = 34
SWEP.PA_Force = 10
SWEP.PA_Delay = .4
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .027
SWEP.PA_AimSpread = .018
SWEP.PA_AimRecoil = .9
SWEP.SA_SightFOV = 70

SWEP.TextType="308CS"
SWEP.Text="w"
SWEP.Text_Auto="Burst"

SWEP.IdleAnim = "idle_unsil"
SWEP.BAnim="draw_unsil"
SWEP.ReloadAnim = "reload_unsil"
SWEP.SA_Delay = .1
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 2.23
SWEP.ClipoutTime = .62
SWEP.ClipinTime = 1.8
SWEP.ReloadTime = 2.3
SWEP.ReloadTime2 = 3
SWEP.BoltPullTime=2.5
SWEP.SightPos = Vector(-4.8,80,0)
SWEP.SightAng = Angle(0, 6.65, 4)
SWEP.CenterPos = Vector( -1.5, 60, 0 )
SWEP.CenterAng = Angle(0, 6.65, 4)
SWEP.ShowWorldModel=false
SWEP.ViewModelBoneMods = {
	["v_weapon.m4_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0.412, 1.588, -0.658), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["4"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -3.25, -13.101), angle = Angle(0, 0, 0), size = Vector(0.009, 0.054, 0.009), color = Color(97, 97, 92, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0.879, 16.415), angle = Angle(0, 0, 0), size = Vector(0.163, 0.453, 0.009), color = Color(128, 130, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 0, 7.285), angle = Angle(0, 0, 0), size = Vector(0.064, 0.059, 0.204), color = Color(133, 130, 130, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 0, -10.141), angle = Angle(0, 0, 0), size = Vector(0.083, 0.103, 0.231), color = Color(87, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -2.925, 4.818), angle = Angle(0, 0, 0), size = Vector(0.063, 0.03, 0.531), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.m4_Clip", rel = "", pos = Vector(0.712, -0.851, -0.979), angle = Angle(0, 0, 94.462), size = Vector(0.115, 0.216, 0.199), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -3.409, -13.263), angle = Angle(0, 90, 0), size = Vector(0.025, 0.025, 0.354), color = Color(97, 97, 92, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.589, 1.84), angle = Angle(0, 0, 10.322), size = Vector(0.063, 0.209, 0.063), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 1.049, 5.86), angle = Angle(0, 0, 67.058), size = Vector(0.052, 0.093, 0.135), color = Color(102, 102, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3+++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.145, -11.631), angle = Angle(0, 0, -30.619), size = Vector(0.094, 0.354, 0.016), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 0, -19.969), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.474), color = Color(87, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.509, 7.156), angle = Angle(0, 0, 0), size = Vector(0.063, 0.209, 0.063), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 1.519, 12.802), angle = Angle(0, 0, 0), size = Vector(0.054, 0.054, 0.054), color = Color(133, 130, 130, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "2+++", pos = Vector(0, 0.216, 2.542), angle = Angle(0, 0, 98.986), size = Vector(0.115, 0.275, 0.214), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4+"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -3.537, 4.835), angle = Angle(0, 90, 0), size = Vector(0.02, 0.014, 2.128), color = Color(112, 115, 117, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 2.104, 1.878), angle = Angle(0, 0, 7.23), size = Vector(0.134, 0.246, 0.244), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.664, -13.245), angle = Angle(0, 0, 0), size = Vector(0.094, 0.4, 0.094), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["4+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-0.47, -0.38, 4.98), angle = Angle(12.015, 0, -6.361), size = Vector(0.009, 0.009, 2.73), color = Color(127, 130, 133, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.861, 4.599), angle = Angle(0, 0, 0), size = Vector(0.078, 0.087, 0.603), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 2.828, 3.006), angle = Angle(0, 0, 71.651), size = Vector(0.025, 0.025, 0.143), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.892, -5.132, -6.486), angle = Angle(6.506, 0, 0), size = Vector(0.093, 0.093, 0.202), color = Color(117, 112, 112, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0.879, 14.131), angle = Angle(0, 0, 0), size = Vector(0.107, 0.107, 0.381), color = Color(128, 130, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.m4_Parent", rel = "1", pos = Vector(0, 1.049, 0.971), angle = Angle(0, 0, 0), size = Vector(0.083, 0.103, 0.151), color = Color(102, 102, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 1.138, 4.26), angle = Angle(0, 0, 0), size = Vector(0.193, 0.193, 0.583), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "2+++", pos = Vector(0, 0.671, 5.043), angle = Angle(0, 0, 102.015), size = Vector(0.115, 0.187, 0.214), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4++++"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(-0.32, -6.356, 2.917), angle = Angle(90, 90, 0), size = Vector(0.009, 0.009, 0.009), color = Color(127, 130, 133, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 3.624, 4.927), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.296), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["4"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.25, -13.101), angle = Angle(0, 0, 0), size = Vector(0.009, 0.054, 0.009), color = Color(97, 97, 92, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4++++"] = { type = "Model", model = "models/hunter/misc/roundthing1.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(-0.32, -6.356, 2.917), angle = Angle(90, 90, 0), size = Vector(0.009, 0.009, 0.009), color = Color(127, 130, 133, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-0.47, -0.38, 4.98), angle = Angle(12.015, 0, -6.361), size = Vector(0.009, 0.009, 2.73), color = Color(127, 130, 133, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.879, 16.415), angle = Angle(0, 0, 0), size = Vector(0.163, 0.453, 0.009), color = Color(128, 130, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 7.285), angle = Angle(0, 0, 0), size = Vector(0.064, 0.059, 0.204), color = Color(133, 130, 130, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -10.141), angle = Angle(0, 0, 0), size = Vector(0.083, 0.103, 0.231), color = Color(87, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -2.925, 4.818), angle = Angle(0, 0, 0), size = Vector(0.063, 0.03, 0.531), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.43, 1.888), angle = Angle(0, 0, 94.462), size = Vector(0.115, 0.216, 0.199), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4++"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.409, -13.263), angle = Angle(0, 90, 0), size = Vector(0.025, 0.025, 0.354), color = Color(97, 97, 92, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.589, 1.84), angle = Angle(0, 0, 10.322), size = Vector(0.063, 0.209, 0.063), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.049, 5.86), angle = Angle(0, 0, 67.058), size = Vector(0.052, 0.093, 0.135), color = Color(102, 102, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.509, 7.156), angle = Angle(0, 0, 0), size = Vector(0.063, 0.209, 0.063), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.519, 12.802), angle = Angle(0, 0, 0), size = Vector(0.054, 0.054, 0.054), color = Color(133, 130, 130, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -19.969), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.474), color = Color(87, 85, 85, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.104, 1.878), angle = Angle(0, 0, 7.23), size = Vector(0.134, 0.246, 0.244), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.145, -11.631), angle = Angle(0, 0, -30.619), size = Vector(0.094, 0.354, 0.016), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3++++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.664, -13.245), angle = Angle(0, 0, 0), size = Vector(0.094, 0.4, 0.094), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2+++", pos = Vector(0, 0.671, 5.043), angle = Angle(0, 0, 102.015), size = Vector(0.115, 0.187, 0.214), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["3+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.861, 4.599), angle = Angle(0, 0, 0), size = Vector(0.078, 0.087, 0.603), color = Color(82, 85, 89, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 2.828, 3.006), angle = Angle(0, 0, 71.651), size = Vector(0.025, 0.025, 0.143), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.888, 0.702, -5.158), angle = Angle(0, 90.313, -81.064), size = Vector(0.093, 0.093, 0.202), color = Color(117, 112, 112, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0.879, 14.131), angle = Angle(0, 0, 0), size = Vector(0.107, 0.107, 0.381), color = Color(128, 130, 127, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.049, 0.971), angle = Angle(0, 0, 0), size = Vector(0.083, 0.103, 0.151), color = Color(102, 102, 99, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.138, 4.26), angle = Angle(0, 0, 0), size = Vector(0.193, 0.193, 0.583), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2+++", pos = Vector(0, 0.216, 2.542), angle = Angle(0, 0, 98.986), size = Vector(0.115, 0.275, 0.214), color = Color(100, 115, 125, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["4+"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -3.537, 4.835), angle = Angle(0, 90, 0), size = Vector(0.02, 0.014, 2.128), color = Color(112, 115, 117, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 3.624, 4.927), angle = Angle(0, 0, 0), size = Vector(0.025, 0.025, 0.296), color = Color(153, 153, 160, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} }
}
function SWEP:CustomPrimary()
self:FireB()
self.Owner:MuzzleFlash()
self:PlayAnim("shoot"..math.random(3).."_unsil",1,.6)
local a=self.HMath
for i=1,2 do
timer.Simple(i*.08,function()if !IsValid(self)||!self:CUnHos(a)||self:Clip1()<1 then return end
self:PlayAnim("shoot"..math.random(3).."_unsil",1,.6)
self:TakePrimaryAmmo(1)
self.Owner:EmitSound("weapons/m4a1/m4a1_unsil-1.wav",511,70)
self:ShootAnim()
self:FireB()
self.Owner:MuzzleFlash()
end)
end
end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["fthrower"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "smg"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.ShowWorldModel=false
SWEP.DrawCross=false
SWEP.DoFireAnimEvent=false
SWEP.Primary.ClipSize=100
SWEP.Primary.DefaultClip=100
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "AR2AltFire"

SWEP.Slot=2
SWEP.SlotPos=0
SWEP.PA_AnimRate=.1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound={"ambient/fire/gascan_ignite1.wav","ambient/fire/ignite.wav","ambient/fire/mtov_flame2.wav"},Pitch=150,Volume=36}
}
SWEP.DrawSound={{Sound={"3088083421/wep/carry/ava1.ogg"}}}
SWEP.NormalDraw=true
SWEP.PA_Delay = .05
SWEP.PA_Recoil =0
SWEP.PA_AimRecoil =0
SWEP.SA_SightFOV = 70
SWEP.SA_Delay = .1
SWEP.ReloadAnimRate=.5

SWEP.Text_Auto="Oil"
SWEP.TextColor=Color(255,128,0)
SWEP.IdleAnim="idle1"
SWEP.StopRAnimTime=2.8
SWEP.ReloadTime=3
SWEP.ClipoutTime=.4
SWEP.ClipinTime=1.8
SWEP.PA_DryFireSound = "weapons/physcannon/physcannon_dryfire.wav"
SWEP.BTime=1.5
SWEP.BSound ={{Delay=0,Sound="weapons/physcannon/physcannon_charge.wav"}}
SWEP.ReloadSound = {
{Sound="3088083421/wep/reload/arif4_clipout.wav"},
{Delay=1.6,Sound="3088083421/wep/reload/arif4_clipin.wav"}
}
SWEP.ReloadSound2 = {
{Sound="3088083421/wep/reload/rif2_clipout.ogg"},
{Delay=1.6,Sound="3088083421/wep/reload/arif4_clipin.wav"},
{Delay=3.2,Sound="3088083421/wep/reload/all_boltpull.ogg"}
}
SWEP.ReloadTime2=4
SWEP.SightPos = Vector(-6.48,130,-1)
SWEP.CenterPos = Vector(-1,110,-.5)

SWEP.ViewModelBoneMods ={
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(1.317, 8.095, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.844, 30.409), angle = Angle(180, 0, 0), size = Vector(0.163, 0.163, 0.421), color = Color(255, 175, 85, 255), surpresslightning = false, material = "metal6", skin = 2, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, -4.121), angle = Angle(0, 0, 0), size = Vector(0.057, 0.057, 0.546), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -1.042, 1.447), angle = Angle(0, 0, 0), size = Vector(0.054, 0.054, 0.245), color = Color(255, 240, 219, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -0.018), angle = Angle(0, 0, 0), size = Vector(0.052, 0.083, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "2++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.282), color = Color(255, 225, 201, 255), surpresslightning = false, material = "", skin = 4, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "2++", pos = Vector(0, 1.827, -6.441), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.363), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "2++", pos = Vector(0, 1.827, -6.441), angle = Angle(0, 0, -141.877), size = Vector(0.017, 0.017, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "effects/fire_cloud1", bone = "ValveBiped.Bip01_Spine4", rel = "2+++++", pos = Vector(0, 0.634, 2.085), size = { x = 2.526, y = 4.235 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 1.031, 7.908), angle = Angle(0, 0, 91.62), size = Vector(0.107, 0.107, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 4, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -0.239, 13.031), angle = Angle(0, 0, 0), size = Vector(0.097, 0.128, 0.231), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, 3.421), angle = Angle(0, 0, 102.833), size = Vector(0.043, 0.089, 0.135), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, 11.432), angle = Angle(0, 0, 0), size = Vector(0.079, 0.1, 0.07), color = Color(255, 212, 192, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -1.053, 19.211), angle = Angle(0, 0, 90), size = Vector(0.057, 0.057, 0.175), color = Color(255, 237, 222, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.844, 30.409), angle = Angle(180, 0, 0), size = Vector(0.163, 0.163, 0.421), color = Color(255, 175, 85, 255), surpresslightning = false, material = "metal6", skin = 2, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.791, 1.406, -2.954), angle = Angle(0, -89.978, -100.641), size = Vector(0.057, 0.057, 0.546), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.042, 1.447), angle = Angle(0, 0, 0), size = Vector(0.054, 0.054, 0.245), color = Color(255, 240, 219, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -0.018), angle = Angle(0, 0, 0), size = Vector(0.052, 0.083, 0.3), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.048, 0.048, 0.282), color = Color(255, 225, 201, 255), surpresslightning = false, material = "", skin = 4, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(0, 1.827, -6.441), angle = Angle(0, 0, -141.877), size = Vector(0.017, 0.017, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 11.432), angle = Angle(0, 0, 0), size = Vector(0.079, 0.1, 0.07), color = Color(255, 212, 192, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["3"] = { type = "Sprite", sprite = "effects/fire_cloud1", bone = "ValveBiped.Bip01_R_Hand", rel = "2+++++", pos = Vector(0, 0.634, 2.085), size = { x = 2.526, y = 4.235 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 1.031, 7.908), angle = Angle(0, 0, 91.62), size = Vector(0.107, 0.107, 0.107), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 4, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -0.239, 13.031), angle = Angle(0, 0, 0), size = Vector(0.097, 0.128, 0.231), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 3.421), angle = Angle(0, 0, 102.833), size = Vector(0.043, 0.089, 0.135), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(0, 1.827, -6.441), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.363), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -1.053, 19.211), angle = Angle(0, 0, 90), size = Vector(0.057, 0.057, 0.175), color = Color(255, 237, 222, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	local e=ents.Create("obj_308_simonb")
	local pos=ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*20
	e:SetPos(pos)
	e:SetOwner(ply)
	e.FThrower=1
	e.Dmg=10
	e:Spawn()
	e:Activate()
	e:GetPhysicsObject():SetVelocity(ply:GetAimVector()*1000+ply:GetVelocity())
	SafeRemoveEntityDelayed(e,.4)
	end
end
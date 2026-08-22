SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CA-300"
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "ar2"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ShowWorldModel = false

SWEP.Primary.ClipSize = 80
SWEP.Primary.DefaultClip = 80
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"

SWEP.OverHeat=true
SWEP.OHS=4
SWEP.OHM=20
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.BSound = {
{Sound="3088083421/wep/reload/mach_boltpull.ogg"}
}
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="weapons/sg550/sg550-1.wav",Pitch=160,Volume=511}
}
SWEP.PA_Damage = 35
SWEP.PA_Delay = .14
SWEP.PA_Recoil = .05
SWEP.PA_Spread = .007
SWEP.Speed=.94

SWEP.SA_IsSight=false
SWEP.DrawTime = .5
SWEP.StopRAnimTime = 1.5
SWEP.ReloadTime = 1.6
SWEP.ClipoutTime = .1
SWEP.ClipinTime = 1
SWEP.ReloadTime2 = 1.8
SWEP.ReloadSound = {
{Sound="weapons/g3sg1/g3sg1_clipout.wav"},
{Delay=.8,Sound="weapons/m249/m249_boxin.wav"}
}
SWEP.ReloadSound2 = {
{Sound="weapons/m249/m249_boxout.wav"},
{Delay=.8,Sound="weapons/m249/m249_boxin.wav"}
}
SWEP.CenterPos = Vector(-4,90,1)

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.399, -6.518, -2.293), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(18.608, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0.175, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.base"] = { scale = Vector(.01,.01,.01), pos = Vector(0, -5, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 50.102) }
}
SWEP.VElements = {
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, 9), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(-2.276, 2.104, -4.25), angle = Angle(0, 0, 0), size = Vector(0.217, 0.217, 0.312), color = Color(154, 158, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(1.674, 1, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -1.346), angle = Angle(0, 0, 0), size = Vector(0.202, 0.202, 0.202), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(1.674, -0.7, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(0, -1.675, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0.916, -3, 12), angle = Angle(0, -64, 180), size = Vector(0.081, 0.081, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(-1.675, 1, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(0, 1.674, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "2++", pos = Vector(-1.675, -0.7, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(3, 2.842, 0.456), angle = Angle(0, 0, 0), size = Vector(0.187, 0.187, 0.231), color = Color(166, 161, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, 0, -3.221), angle = Angle(0, 0, 0), size = Vector(0.114, 0.114, 0.114), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(-3, 2.842, 0.456), angle = Angle(0, 0, 0), size = Vector(0.187, 0.187, 0.231), color = Color(166, 161, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(0, -5.473, -5.72), angle = Angle(0, 0, 58), size = Vector(0.054, 0.054, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 9), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.393, 1.355, -4.895), angle = Angle(0, -88.696, -99.858), size = Vector(0.217, 0.217, 0.312), color = Color(154, 158, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(1.674, 1, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -1.346), angle = Angle(0, 0, 0), size = Vector(0.202, 0.202, 0.202), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(1.674, -0.7, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(0, -1.675, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/mechanics/robotics/claw2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0.916, -3, 12), angle = Angle(0, -64, 180), size = Vector(0.081, 0.081, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-3, 2.842, 0.456), angle = Angle(0, 0, 0), size = Vector(0.187, 0.187, 0.231), color = Color(166, 161, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, -3.221), angle = Angle(0, 0, 0), size = Vector(0.114, 0.114, 0.114), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["2+++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(-1.675, -0.7, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(3, 2.842, 0.456), angle = Angle(0, 0, 0), size = Vector(0.187, 0.187, 0.231), color = Color(166, 161, 149, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(-1.675, 1, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2++", pos = Vector(0, 1.674, 0), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.5), color = Color(155, 155, 155, 255), surpresslightning = false, material = "rubber", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -5.473, -5.72), angle = Angle(0, 0, 58), size = Vector(0.054, 0.054, 0.128), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
local SpinAng = 0
local SpinAccel = 0
SWEP.PA_Impact="Spark"

function SWEP:CustomThink()
local p=self.Owner
SpinAccel = math.Approach(SpinAccel, 2, 10*FrameTime())
if self.Owner:IsOnGround()then
p:SetLocalVelocity(p:GetVelocity()*.94)end
	if CLIENT then
	SpinAng = SpinAng + SpinAccel
	self.VElements["2++"].angle.y = SpinAng
	self.WElements["2++"].angle.y = SpinAng
	end
self:SetNetworkedInt( "Spin",SpinAccel )
end

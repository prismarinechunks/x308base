SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "RPG-7"
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "rpg"
SWEP.ViewModel = "models/weapons/c_smg1.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"
SWEP.MaxBobScale = 6700
SWEP.ShowWorldModel = false

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Ammo = "RPG_Round"

SWEP.Slot = 4
SWEP.Spawnable = true
SWEP.DrawSound = {}
SWEP.PA_Sound = "3088083421/wep/shoot/rpg_1.ogg"
SWEP.PA_Delay = 1
SWEP.PA_Recoil = 7
SWEP.PA_Recoil = 7
SWEP.PA_AimRecoil = 6
SWEP.DrawCross=false
SWEP.Text_Semi="Rocket"
SWEP.SA_Delay = .1
SWEP.ClipExtraBullet = false
SWEP.NormalDraw=true
SWEP.ReloadAnimD2={
{Anim="idletolow",Time=2.2},
{Delay=2.1,Anim="draw",Rate=.5}
}
SWEP.ReloadSound = {
{Delay=.1,Sound="3088083421/wep/reload/rpg_rocin.ogg"}
}
SWEP.ReloadSound2 = {
{Delay=.7,Sound="3088083421/wep/reload/rpg_rocin.ogg"},
{Delay=1.7,Sound="3088083421/wep/reload/rpg_rocrotating.ogg"},
{Delay=2.6,Sound="3088083421/wep/reload/rpg_rocrotating2.ogg"}
}
SWEP.ClipoutTime=0
SWEP.ClipinTime=2.1
SWEP.StopRAnimTime = 2.1
SWEP.ReloadAnimRate = .5
SWEP.ReloadTime = 2.2
SWEP.ReloadTime2 = 3.2
SWEP.SA_IsSight=false
SWEP.SightPos = Vector(-3, 80, -1)
SWEP.SightAng = Angle(0,-1,0)
SWEP.CenterPos = Vector(-2, 90, 0)
SWEP.CenterAng = Angle( 0,-1, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-1.892, -15.705, 1.123), angle = Angle(0, 0, 0) },
	["ValveBiped.base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.WElements = {
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(14.894, 0.683, 4.543), angle = Angle(90, 0, 0), size = Vector(0.075, 0.075, 0.134), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(25.788, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.123, 0.123, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1++++", pos = Vector(0, 0, -3.595), angle = Angle(0, 0, 0), size = Vector(0.381, 0.381, 0.634), color = Color(95, 95, 95, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(4.396, 0.527, 5.857), angle = Angle(0, 0, 0), size = Vector(1.906, 0.144, 0.144), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/cube", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(21.072, 2.253, 4.506), angle = Angle(90, 0, 0), size = Vector(0.046, 0.046, 0.115), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(14.859, 1.44, -1.752), angle = Angle(-180, 0, 0), size = Vector(0.072, 0.054, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_foliage/tree_deciduous_01a_trunk", skin = 2, bodygroup = {} },
	["1"] = { type = "Model", model = "models/barney_animations.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.909, 1.226, -1.081), angle = Angle(168, -1.231, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(35.553, 0, -0.16), angle = Angle(90, 0, 0), size = Vector(0.082, 0.082, 0.238), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(19.297, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.103, 0.103, 0.181), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/weapons/w_missile_closed.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(-14.75, 0, 0), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(0.58, 0.884, 1.169), angle = Angle(0, 180, 0), size = Vector(0.328, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/misc/platehole4x4c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "2+", pos = Vector(1.21, 0, 5.782), angle = Angle(90, 90, 0), size = Vector(0.029, 0.025, 0.141), color = Color(155, 155, 155, 255), surpresslightning = false, material = "phoenix_storms/cube", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1+", pos = Vector(8.178, 0.103, -8.74), angle = Angle(0, 180, 0), size = Vector(0.097, 0.057, 0.197), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.VElements = {
	["1++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(14.859, 1.44, -1.752), angle = Angle(-180, 0, 0), size = Vector(0.072, 0.054, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_foliage/tree_deciduous_01a_trunk", skin = 2, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(25.788, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.123, 0.123, 0.189), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1+++++"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "ValveBiped.base", rel = "1++++", pos = Vector(0, 0, -3.595), angle = Angle(0, 0, 0), size = Vector(0.381, 0.381, 0.634), color = Color(95, 95, 95, 255), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(4.396, 0.527, 5.857), angle = Angle(0, 0, 0), size = Vector(1.906, 0.144, 0.144), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/cube", skin = 0, bodygroup = {} },
	["2+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(21.072, 2.253, 4.506), angle = Angle(90, 0, 0), size = Vector(0.046, 0.046, 0.115), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+++++"] = { type = "Model", model = "models/xeon133/slider/slider_12x12x12.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(0.58, 0.884, 1.169), angle = Angle(0, 180, 0), size = Vector(0.328, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2++++"] = { type = "Model", model = "models/hunter/misc/platehole4x4c.mdl", bone = "ValveBiped.base", rel = "2+", pos = Vector(1.21, 0, 5.782), angle = Angle(90, 90, 0), size = Vector(0.029, 0.025, 0.141), color = Color(155, 155, 155, 255), surpresslightning = false, material = "phoenix_storms/cube", skin = 0, bodygroup = {} },
	["2++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1", pos = Vector(14.894, 0.683, 4.543), angle = Angle(90, 0, 0), size = Vector(0.075, 0.075, 0.134), color = Color(155, 155, 155, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(19.297, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.103, 0.103, 0.181), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/weapons/w_missile_closed.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(-14.75, 0, 0), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(35.553, 0, -0.16), angle = Angle(90, 0, 0), size = Vector(0.082, 0.082, 0.238), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["1"] = { type = "Model", model = "models/barney_animations.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(-0.765, 4.184, 11.171), angle = Angle(-90, 90, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.base", rel = "1+", pos = Vector(8.178, 0.103, -8.74), angle = Angle(0, 180, 0), size = Vector(0.097, 0.057, 0.197), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
BED308=0
function SWEP:CustomThink()
if BED308<1 then
self.SA_IsSight=true
end
if CLIENT then
if self:Clip1()>0 then
self.VElements["2"].color=Color(255,255,255,255)else
self.VElements["2"].color=Color(255,255,255,0)
end
end
end
function SWEP:CustomPrimary()
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_rpg")
	local p=self.Owner:GetShootPos()+self:GetForward()*30+self:GetRight()*3+self:GetUp()*-3
	if !e:IsValid() then return false end
	e:SetAngles(self.Owner:GetAimVector():Angle())
	e:SetPos(p)
	e:SetOwner(self.Owner)
	e:Spawn()
	e:Activate()
	self.Owner:DeleteOnRemove(e)
	if BED308>0 and self:Clip1()<1 and self:Ammo1()<1 then
	SafeRemoveEntityDelayed(self,.3)end
	end
end
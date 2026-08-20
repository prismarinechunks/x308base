SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = GAME308_LANWEP["branch"]
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\nBetter than nothing i guess"
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.Multiple=3
SWEP.IdleAnim="idle_cycle"
SWEP.IdleAnimRate=0

SWEP.Melee1=8
SWEP.Melee2=14
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.18
SWEP.MeleeOT=.45
SWEP.MeleeOT2=.7
SWEP.RangeD=35

SWEP.MeleeS={{Delay=.2,Sound="weapons/iceaxe/iceaxe_swing1.wav"}}
SWEP.MeleeS2={{Delay=.17,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=90}}
SWEP.MeleeSW={{Sound="physics/wood/wood_plank_impact_hard1.wav",Pitch=80}}
SWEP.CenterPos = Vector(0,70,-2)
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Finger1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, -67, 0) },
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(3.447, 1.784, -6.088), angle = Angle(0, -6.256, -9.37) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -116.245) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12, 22.962, 7.929) },
	["ValveBiped.Bip01_L_Finger2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -50.332, 5.813) },
	["ValveBiped.Bip01_L_Finger3"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -29, 17.891) },
	["ValveBiped.Bip01_L_Finger4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 18.989) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(15, 0, -1) }
}
SWEP.VElements = {["1"] = { type = "Model", model = "models/props_foliage/driftwood_02a.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.404, -1.543, 10.965), angle = Angle(90, 90, 0), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }}
SWEP.WElements = {["1"] = { type = "Model", model = "models/props_foliage/driftwood_02a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.885, 1.409, -8.165), angle = Angle(-73.016, 36.213, -11.44), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }}
function SWEP:MAnim(t)self:PlayAnim("midslash2")
if t>1 then
self:PlayAnim("midslash1",1.1)end
end
SWEP.FirstD=1
function SWEP:CustomInit()self:SetNWInt("numb",0)end
function SWEP:CustomThink()if !self.FirstD then self:SetNWInt("numb",self:GetNWInt("numb")+2)end end
function SWEP:CustomDeploy()
if self.FirstD and #self.Owner:GetWeapons()<2 then
self.Owner:EmitSound("cof/weapons/branch/branch_first_get.wav")self.FirstD=nil
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("physics/wood/wood_plank_impact_hard"..math.random(4)..".wav",100,80)
else
self:EmitSound("physics/wood/wood_plank_impact_hard"..math.random(4)..".wav",100,60)
end
end
function SWEP:CusHUD()
if self:GetNWInt("numb")>0 then
draw.SimpleText("Better than nothing i guess", "308wepbase", ScrW()*.5, ScrH()*.7,Color(255,255,255,255-self:GetNWInt("numb")),TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
end
end
function SWEP:ImpactEffect()end
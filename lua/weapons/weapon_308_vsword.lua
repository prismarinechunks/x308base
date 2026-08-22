SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["vamp"].."-IV"
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee2"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"

SWEP.Melee1=45
SWEP.Melee2=75
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.21
SWEP.MeleeOT=.5
SWEP.MeleeOT2=1.1
SWEP.RangeD=54
SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "6"
SWEP.TextColor=Color(255,31,31)

SWEP.DrawSound={
{Delay=.1,Sound="weapons/knife/knife_deploy1.wav",Pitch=70}
}
SWEP.MeleeSH2={{Sound="physics/flesh/flesh_bloody_break.wav",Pitch=70}}
SWEP.MeleeS={{Delay=.1,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=80}}
SWEP.MeleeS2={{Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=90}}
SWEP.MeleeSM2={{Sound="weapons/slam/throw.wav",Pitch=110}}
SWEP.MeleeSW={{Sound="weapons/crowbar/crowbar_impact1.wav",Pitch=70}}
SWEP.CenterPos = Vector(0,70,0)
SWEP.ViewModelBoneMods = {
["ValveBiped.Bip01_R_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2, 0, -3), angle = Angle(0, 0, 0) },
["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1+"] = { type = "Model", model = "models/props_wasteland/cafeteria_bench001a.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 9.701), angle = Angle(0, 0, 180), size = Vector(0.041, 0.097, 0.233), color = Color(255, 117, 69, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 7.696), angle = Angle(0, 0, 0), size = Vector(0.012, 0.123, 0.421), color = Color(255, 0, 0, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, -3.534), angle = Angle(0, 0, 0), size = Vector(0.041, 0.057, 0.172), color = Color(255, 117, 69, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(0, 0, 26.371), angle = Angle(0, 0, -10.146), size = Vector(0.012, 0.123, 0.421), color = Color(255, 0, 0, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1+"] = { type = "Model", model = "models/props_wasteland/cafeteria_bench001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 9.701), angle = Angle(0, 0, 180), size = Vector(0.041, 0.097, 0.233), color = Color(255, 117, 69, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.976, 1.197, 5.715), angle = Angle(4.817, -112.333, 176.535), size = Vector(0.041, 0.057, 0.172), color = Color(255, 117, 69, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 7.696), angle = Angle(0, 0, 0), size = Vector(0.012, 0.123, 0.421), color = Color(255, 0, 0, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 26.371), angle = Angle(0, 0, -10.146), size = Vector(0.012, 0.123, 0.421), color = Color(255, 0, 0, 255), surpresslightning = false, material = "grey", skin = 0, bodygroup = {} }
}
function SWEP:CustomInit()
self:DrawShadow(false)
end
function SWEP:MAnim(ty)
if ty==1 then
self:PlayAnim("midslash1")self.Multiple=4
else
self:PlayAnim("stab_miss")self.Multiple=2
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav",60)
else
self:SoundSlot(self.MeleeSH2)
self:PlayAnim("stab",2)
end
end
function SWEP:DamageNPC(d,e)
local p=self.Owner
local l=p:GetVelocity():Length()
local m=d:GetDamage()
local h=p:Health()+d:GetDamage()/5
if d:GetDamage()>e:Health()then h=p:Health()+e:Health()/5 end
if h<p:GetMaxHealth()then
p:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.3,0)
p:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(math.Clamp(h,0,p:GetMaxHealth()))
else
p:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.2,0)
p:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(p:GetMaxHealth())
end
d:SetDamageForce(p:GetForward()*m*199+Vector(0,0,m*99)+p:GetVelocity())
end
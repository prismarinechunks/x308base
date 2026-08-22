SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = GAME308_LANWEP["torch"]
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.Multiple=3

SWEP.IdleAnim="idle_cycle"

SWEP.Melee1=9
SWEP.Melee2=15
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.21
SWEP.MeleeOT=.4
SWEP.MeleeOT2=.6
SWEP.RangeD=35
SWEP.TextColor=Color(255,128,0)

SWEP.DrawSound={{Sound="ambient/fire/ignite.wav",Volume=107,Pitch=200},{Sound="ambient/fire/mtov_flame2.wav"}}
SWEP.MeleeSM={{Sound="weapons/iceaxe/iceaxe_swing1.wav"}}
SWEP.MeleeSM2={{Sound="weapons/iceaxe/iceaxe_swing1.wav"}}
SWEP.MeleeSH={{Sound="3088083421/wep/melee/punch.wav",Pitch=110}}
SWEP.MeleeSH2={{Sound="3088083421/wep/melee/punch.wav"}}
SWEP.MeleeSW={{Sound="ambient/fire/ignite.wav",Volume=48,Pitch=100}}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(5, -1, 3), angle = Angle(54, 20, 22.5) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.WElements = {["1"] = { type = "Sprite", sprite = "sprites/flamefromabove", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.897, 3.456, -16.288), size = { x = 5, y = 10 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_stunbaton.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(-0.301, -0.301, 8.399), angle = Angle(-89.224, 104.919, 166.957), size = Vector(1, 1, 1), color = Color(0, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/flamefromabove", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(-11.549, -0.909, 1.18), size = { x = 5, y = 10 }, color = Color(255, 255, 255, 255), nocull = false, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.Color=Color(0,0,0)
function SWEP:CustomThink()
if IsValid(self.Ligh)then
self.Ligh:SetKeyValue("brightness", math.Rand(2,3))
self.Ligh:SetKeyValue("distance", math.random(420,450))
end
local o=self.Owner
if o:WaterLevel()>0 then
SafeRemoveEntity(self)
o:Give("weapon_308_branch")
o:SelectWeapon("weapon_308_branch")
o:SelectWeapon("weapon_308_branch")
end
end
if SERVER then
function SWEP:CustomDeploy()
local o=self.Owner
self:EmitSound("ambient/fire/fire_small_loop1.wav",42)
if !self.Ligh||!IsValid(self.Ligh)then
local s=o:GetModelScale()
self.Ligh=ents.Create("light_dynamic")
self.Ligh:SetKeyValue("brightness", 3)
self.Ligh:SetKeyValue("distance", 400)
self.Ligh:SetLocalPos(o:EyePos()+o:GetRight()*10*s)
self.Ligh:SetLocalAngles(self:GetAngles())
self.Ligh:Fire("Color", "255 125 0")
self.Ligh:SetParent(o,5)
self.Ligh:Spawn()
self.Ligh:Activate()
self.Ligh:Fire("TurnOn","",0)
self:DeleteOnRemove(self.Ligh)
end
end
end
function SWEP:OnDrop2()
self:StopSound("ambient/fire/fire_small_loop1.wav")
if IsValid(self.Ligh)then SafeRemoveEntity(self.Ligh)end
end
function SWEP:CustomHolster()
self:StopSound("ambient/fire/fire_small_loop1.wav")
if IsValid(self.Ligh)then SafeRemoveEntity(self.Ligh)end
end
function SWEP:MAnim(ty)
self:PlayAnim("midslash1")
end
function SWEP:DamageENT(d,e)
e:Ignite(d:GetDamage())
end
function SWEP:HitWorld(t)
if t then
self:EmitSound("physics/wood/wood_plank_impact_hard"..math.random(5)..".wav",100,120)else
self:EmitSound("physics/wood/wood_plank_impact_hard"..math.random(5)..".wav")end
end
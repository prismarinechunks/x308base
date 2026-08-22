SWEP.Base = "weapon_308_basemelee"
SWEP.CDWInfoBox=true
if GAME308_LANMath==2 then
SWEP.Author="QQ3088083421\n\n\n我本来想起名叫物理学圣剑"
if math.random(10)<2 then--凭运气吧，小子
SWEP.PrintName = "物理学圣剑"
SWEP.CDWInfoBox=false
else
SWEP.PrintName = "撬棍"
end
else
SWEP.PrintName = "CROWBAR"
end
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "melee"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.Slot = 0
SWEP.Spawnable = true

SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.DrawAnimRate=1.5

SWEP.Melee1=25
SWEP.Melee2=14
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.1
SWEP.MeleeOT=.4
SWEP.MeleeOT2=.5
SWEP.RangeD=45
SWEP.TextType = "HL2MPTypeDeath"
SWEP.Text = "6"

SWEP.DrawSound={
{Sound="weapons/iceaxe/iceaxe_swing1.wav"},
{Delay=.2,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=90},
{Delay=.35,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=110}
}
SWEP.MeleeS={{Delay=.1,Sound="weapons/iceaxe/iceaxe_swing1.wav"}}
SWEP.MeleeS2={{Delay=.05,Sound="weapons/iceaxe/iceaxe_swing1.wav",Pitch=80}}
SWEP.MeleeSW={{Sound="weapons/crowbar/crowbar_impact2.wav",Pitch=130}}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -5, 3), angle = Angle(45, 20, 22.5) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {["1"] = { type = "Model", model = "models/weapons/w_crowbar.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0, 0, 0), angle = Angle(-89.224, 104.92, 166.957), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }}
function SWEP:MAnim(t)
if t==1 then
self.MeleeSW={{Sound="weapons/crowbar/crowbar_impact"..math.random(2)..".wav",Pitch=90+math.random(0,20)}}self:PlayAnim("midslash"..math.random(2))else
self.MeleeSW={{Sound="weapons/crowbar/crowbar_impact"..math.random(2)..".wav",Pitch=100+math.random(0,10)}}self:PlayAnim("midslash"..math.random(2),1.5)end
end
local c=.25
if game.SinglePlayer()then c=.15 end
function SWEP:MeleeSound(t)
if t==1 then
self:PlayAnim("stab",3)
self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav")
else
self:SetNextPrimaryFire(CurTime()+c)
self:SetNextSecondaryFire(CurTime()+c)
self:PlayAnim("stab",3)
self:EmitSound("physics/flesh/flesh_impact_bullet"..math.random(5)..".wav",100,110)
end
end
function SWEP:HitWorld(t)self:PlayAnim("stab",3)if t!=2 then return end
self:SetNextPrimaryFire(CurTime()+c)
self:SetNextSecondaryFire(CurTime()+c)
end
function SWEP:HitEnt(t)self:PlayAnim("stab",3)if t!=2 then return end
self:SetNextPrimaryFire(CurTime()+c)
self:SetNextSecondaryFire(CurTime()+c)
end
if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_kukri.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS Nepal Saber"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "melee"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_kukri.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ViewModelFOV =90
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim=nil
SWEP.Multiple=4

SWEP.Melee1=40
SWEP.Melee2=110
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.7
SWEP.MeleeOT=.55
SWEP.MeleeOT2=1.1
SWEP.RangeD=47

SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=1.5
SWEP.DrawAnimRate=1.5
SWEP.DrawSound={{Sound="weapons/kukri/kucri_select.wav"}}
SWEP.MeleeSH={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSW={{Sound="weapons/knife/k_shoot_knife_stone_1.wav"}}
SWEP.CenterPos = Vector(1,-80,-1)
SWEP.CenterAng = Angle(-90,0,0)
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_kukri.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.254, 1.623, 1.175), angle = Angle(-6.521, 91.877, 15.394), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Combo=1
function SWEP:MAnim(t)if t<2 then
if self.Combo<2 then
self:EmitSound("weapons/kukri/kucri_attack_2.wav")self:PlayAnim("vk.com/cf_source_combo_1",2)self.Combo=2 else
self:EmitSound("weapons/kukri/kucri_attack_1.wav")self:PlayAnim("vk.com/cf_source_combo_2",2)self.Combo=1
end
else
self:EmitSound("weapons/kukri/kucri_attack_3.wav")self:PlayAnim("vk.com/cf_source_bigshot",.75)self.Combo=1
end
end
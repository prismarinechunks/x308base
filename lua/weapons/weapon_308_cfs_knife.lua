if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_knife.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS Knife"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "knife"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_knife.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim=nil

SWEP.Melee1=25
SWEP.Melee2=80
SWEP.MeleeAT=.13
SWEP.MeleeAT2=.4
SWEP.MeleeOT=.4
SWEP.MeleeOT2=.7
SWEP.TextIcon="entities/weapon_cf_knife"

SWEP.DrawAnim="vk.com/cf_source@_select"
SWEP.MovingAnim="vk.com/cf_source@_run"
SWEP.MovingAnimRate=1.5
SWEP.DrawAnimRate=2
SWEP.DrawSound={{Sound="weapons/knife/k_out_knife.wav"}}
SWEP.MeleeSH={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSW={{Sound="weapons/knife/k_shoot_knife_stone_1.wav"}}
SWEP.MeleeSM2={{Sound="weapons/knife/k_shoot_knife_2.wav"}}
SWEP.CenterPos = Vector(0,-10,-1)
SWEP.WElements = {
["element_name"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_knife.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.463, 1.465, 0.879), angle = Angle(-7.289, 170, 4.631), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.Combo=1
function SWEP:MAnim(t)if t<2 then
if self.Combo<2 then
self:EmitSound("weapons/knife/k_shoot_knife_1.wav")self:PlayAnim("vk.com/cf_source@_combo_1",2)self.Combo=2 self.Melee1=30 else
self:EmitSound("weapons/knife/k_shoot_knife_2.wav")self:PlayAnim("vk.com/cf_source@_combo_2",2)self.Combo=1 self.Melee1=35
self:SetNextPrimaryFire(CurTime()+.55)self:SetNextSecondaryFire(CurTime()+.55)end
else
self:PlayAnim("vk.com/cf_source@_bigshot")self.Combo=1 self.Melee1=35
end
end
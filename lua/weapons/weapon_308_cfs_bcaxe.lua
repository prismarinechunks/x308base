if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_bcaxe.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "CFS BC-AXE"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "melee"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_bcaxe.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowWorldModel=false
SWEP.ViewModelFlip = true
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim=nil
SWEP.Multiple=3

SWEP.Melee1=45
SWEP.Melee2=115
SWEP.MeleeAT=.13
SWEP.MeleeAT2=.55
SWEP.MeleeOT=.5
SWEP.MeleeOT2=.9
SWEP.RangeD=48

SWEP.MovingAnim="vk.com/cf_source@_run"
SWEP.MovingAnimRate=1.5
SWEP.DrawAnim="vk.com/cf_source@_select"
SWEP.DrawSound={{Sound="weapons/axe/k_out_axe.wav"}}
SWEP.MeleeSH={{Sound="weapons/axe/k_shoot_axe_player.wav"}}
SWEP.MeleeSH2={{Sound="weapons/axe/k_shoot_axe_player.wav"}}
SWEP.MeleeSW={{Sound="weapons/axe/axe_stone_stab.wav"}}
SWEP.MeleeSM2={{Sound="weapons/axe/k_shoot_axe_3.wav"}}
SWEP.CenterPos = Vector(0,-20,-1)
SWEP.CenterAng = Angle(180,0,-1)
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_bcaxe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 3.098, 0), angle = Angle(15.381, -168.482, 11.345), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.Combo=1
function SWEP:MAnim(t)if t<2 then
if self.Combo<2 then
self:PlayAnim("vk.com/cf_source@_combo_1",2)self.Combo=2 else
self:PlayAnim("vk.com/cf_source@_combo_2",2)self.Combo=1
self:SetNextPrimaryFire(CurTime()+.35)self:SetNextSecondaryFire(CurTime()+.35)end
else
self:PlayAnim("vk.com/cf_source@_bigshot",.75)self.Combo=1
end
end
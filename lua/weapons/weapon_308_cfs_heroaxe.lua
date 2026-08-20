if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_nano_x_shero_dualaxe.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.ZBHero=1
SWEP.PrintName = "CFS Furies"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "melee"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_nano_x_shero_dualaxe.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ShowWorldModel=false
SWEP.UseHands=false
SWEP.ViewModelFlip = true
SWEP.ViewModelFOV =70
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim=nil
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=.5
SWEP.IdleAnimRate=.25
SWEP.Multiple=4
SWEP.X=34
SWEP.Y=34

SWEP.Melee1=55
SWEP.Melee2=249
SWEP.MeleeAT=.1
SWEP.MeleeAT2=1
SWEP.MeleeOT=.65
SWEP.MeleeOT2=1.4
SWEP.RangeD=44

SWEP.CusEquipS="fosterz/nano4/womanheroappear.wav"
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.DrawAnimRate=.45
SWEP.DrawSound={{Sound="weapons/dual-axe/dual-axe_select.wav"}}
SWEP.MeleeS={{Sound="weapons/dual-axe/dual-axe_attack_1.wav"}}
SWEP.MeleeS2={{Sound="weapons/dual-axe/dual-axe_attack_3.wav"}}
SWEP.MeleeSH={{Sound="weapons/dual-axe/dual-axe_player_hit.wav"}}
SWEP.MeleeSH2=SWEP.MeleeSH
SWEP.MeleeSW={{Sound="weapons/dual-axe/dual-axe_stone_normalshot.wav"}}
SWEP.MeleeSM2={{Sound="weapons/axe/k_shoot_axe_3.wav"}}
SWEP.CenterPos = Vector(0,15,-.5)
SWEP.WElements = {
	["2"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_bcaxe.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(0, 0, 3.355), angle = Angle(0, 180, 180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_bcaxe.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 3.098, 0), angle = Angle(15.381, -168.482, 11.345), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.Combo=1
function SWEP:IfOwnHurt(d)local o=self.Owner timer.Simple(0,function()if IsValid(o)then
if !o:Alive()then
o:EmitSound("fosterz/nano4/womanherodie.wav")end
end end)end
function SWEP:MAnim(t)if t<2 then
self.MeleeS={{Sound="weapons/dual-axe/dual-axe_attack_1.wav"}}
if self.Combo<2 then
self:Melee(.22,1,.65,56.5)
self:PlayAnim("vk.com/cf_source_combo_1",.5)self.Combo=2 else
self:Melee(.3,1,.65,52)
self.MeleeS={{Sound="weapons/dual-axe/dual-axe_attack_2.wav"}}
self:PlayAnim("vk.com/cf_source_combo_2",.25)self.Combo=1
end
else
self:PlayAnim("vk.com/cf_source_bigshot",.32)self.Combo=1
end
end
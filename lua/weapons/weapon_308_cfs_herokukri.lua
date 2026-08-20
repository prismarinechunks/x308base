if !util.IsValidModel("models/fosterz/weapons/viewmodels/c_nano_x_shero_dualkukri.mdl")then return end
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.ZBHero=1
SWEP.PrintName = "CFS Ghost Hunter"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "melee"
SWEP.ViewModel="models/fosterz/weapons/viewmodels/c_nano_x_shero_dualkukri.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"
SWEP.ViewModelFOV =70
SWEP.ShowWorldModel=false
SWEP.UseHands=false
SWEP.ViewModelFlip = true
SWEP.Slot=0
SWEP.Spawnable=true
SWEP.NormalDraw=true
SWEP.IdleAnim=nil
SWEP.MovingAnim="vk.com/cf_source_run"
SWEP.MovingAnimRate=.5
SWEP.IdleAnimRate=.25
SWEP.Multiple=5
SWEP.X=36
SWEP.Y=36

SWEP.Melee1=52
SWEP.Melee2=225
SWEP.MeleeAT=.13
SWEP.MeleeAT2=.85
SWEP.MeleeOT=.7
SWEP.MeleeOT2=1.4
SWEP.RangeD=46

SWEP.CusEquipS="fosterz/nano4/humanbossappear.wav"
--SWEP.IdleSound={Sound="weapons/hero-kukri/hero-kukri_idle1.wav",Delay=3},{Sound="weapons/hero-kukri/hero-kukri_idle2.wav",Delay=6}
SWEP.DrawAnim="vk.com/cf_source_select"
SWEP.DrawAnimRate=.45
SWEP.DrawSound={{Sound="weapons/hero-kukri/hero-kukri_select.wav"}}
SWEP.MeleeS={{Sound="weapons/hero-kukri/hero-kukri_attack_1.wav"}}
SWEP.MeleeS2={{Sound="weapons/hero-kukri/hero-kukri_attack_3.wav"}}
SWEP.MeleeSH={{Sound="weapons/knife/k_shoot_knife_player.wav"}}
SWEP.MeleeSH2=SWEP.MeleeSH
SWEP.MeleeSW={{Sound="weapons/axe/axe_stone_stab.wav"}}
SWEP.MeleeSM2={{Sound="weapons/axe/k_shoot_axe_3.wav"}}
SWEP.CenterPos = Vector(0,-50,-1)
SWEP.CenterAng = Angle(-90,0,0)
SWEP.WElements = {
	["2"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_kukri.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(1.12, 0.92, 0.389), angle = Angle(0, -90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/fosterz/weapons/worldmodels/w_kukri.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.254, 1.623, 1.175), angle = Angle(-6.521, 91.877, 15.394), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.Combo=1
function SWEP:IfOwnHurt(d)local o=self.Owner timer.Simple(0,function()if IsValid(o)then
if !o:Alive()then
o:EmitSound("fosterz/game/killhumanbosscountsnd.wav")end
end end)end
function SWEP:MAnim(t)if t<2 then
self.MeleeS={{Sound="weapons/hero-kukri/hero-kukri_attack_1.wav"}}
if self.Combo<2 then
self:Melee(.4,1,.7,52)
self:PlayAnim("vk.com/cf_source_combo_1",.5)self.Combo=2 else
self:Melee(.48,1,.7,52)
self.MeleeS={{Sound="weapons/hero-kukri/hero-kukri_attack_2.wav"}}
self:PlayAnim("vk.com/cf_source_combo_2",.25)self.Combo=1
end
else
self:PlayAnim("vk.com/cf_source_bigshot",.45)self.Combo=1
end
end
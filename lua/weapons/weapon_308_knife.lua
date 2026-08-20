SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["knife"]
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "knife"
SWEP.Slot = 0
SWEP.Spawnable = true

SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"

SWEP.TextType = "308CS"
SWEP.Text = "j"

SWEP.DrawSound={{Delay=.23,Sound="weapons/knife/knife_deploy1.wav"}}
SWEP.MeleeSH2={{Sound="weapons/knife/knife_stab.wav",Pitch=110}}
SWEP.MeleeSM={{Sound="weapons/knife/knife_slash1.wav"}}
SWEP.MeleeSM2={{Sound="weapons/knife/knife_slash1.wav"}}
SWEP.MeleeSW={{Sound="weapons/knife/knife_hitwall1.wav"}}
SWEP.CenterPos = Vector(0,80,0)
SWEP.ViewModelBoneMods = {["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
function SWEP:MAnim(ty)
if ty==1 then
self:PlayAnim("midslash1")self.Multiple=3
else
self:PlayAnim("stab_miss")self.Multiple=1
end
end
function SWEP:MeleeSound(t)
if t==1 then
self:EmitSound("weapons/knife/knife_hit"..math.random(4)..".wav")
else
self:SoundSlot(self.MeleeSH2)
self:PlayAnim("stab",3)
end
end
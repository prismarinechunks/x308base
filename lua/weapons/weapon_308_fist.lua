SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["fist"]
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "fist"
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.ShowWorldModel = false
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true

SWEP.NormalDraw=true
SWEP.DrawAnim="seq_admire"
SWEP.IdleAnim="fists_idle_02"
SWEP.DrawAnimRate=1.5

SWEP.Melee1=5
SWEP.Melee2=12
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.18
SWEP.MeleeOT=.35
SWEP.MeleeOT2=.75
SWEP.RangeD=28
SWEP.Text = "Fists"

SWEP.MeleeSM={{Sound="weapons/slam/throw.wav",Pitch=90}}
SWEP.MeleeSM2={{Sound="weapons/slam/throw.wav",Pitch=70}}
SWEP.MeleeSW={{Sound="Flesh.ImpactHard",Pitch=90}}
SWEP.MeleeSH={{Sound="Flesh.ImpactHard",Pitch=90}}
SWEP.MeleeSH2={{Sound="Flesh.ImpactHard",Pitch=90}}
SWEP.CenterPos = Vector(0,70,1)
function SWEP:MAnim(ty)
if ty==1 then
if self.Combo==1 then self.Combo=2 self:PlayAnim("fists_right")
else self.Combo=1 self:PlayAnim("fists_left")
end

else
self:PlayAnim("fists_uppercut",1.3)
end
end
function SWEP:CustomDeploy()self.DrawAnim="fists_draw" end
function SWEP:Reload()self:PlayAnim("seq_admire",1.1)end
function SWEP:ImpactEffect()end
SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["opm"]
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "fist"
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.ShowWorldModel = false
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true

SWEP.NormalDraw=true
SWEP.DrawAnim="fists_draw"
SWEP.IdleAnim="fists_idle_02"
SWEP.DrawAnimRate=1.5

SWEP.Melee1=5
SWEP.Melee2=5
SWEP.MeleeAT=.2
SWEP.MeleeAT2=.2
SWEP.MeleeOT=.35
SWEP.MeleeOT2=.35
SWEP.RangeD=28

SWEP.MeleeSM={{Sound="weapons/slam/throw.wav",Pitch=90}}
SWEP.MeleeSM2={{Sound="weapons/slam/throw.wav",Pitch=90}}
SWEP.MeleeSW={{Sound="3088083421/wep/melee/punch.wav",Pitch=90}}
SWEP.CenterPos = Vector(0,70,1)
function SWEP:MAnim(ty)
if ty==1 then
self.Combo=2 self:PlayAnim("fists_left")
else
self.Combo=2 self:PlayAnim("fists_right")
end
end
function SWEP:Reload()
self:PlayAnim("seq_admire")
end
function SWEP:DamageENT(d,e)local m=math.random(5)
if m>1 then
self:EmitSound("3088083421/wep/melee/punch.wav",100,math.random(90,110))
return end
local p=self.Owner
p:EmitSound("3088083421/wep/melee/punch2.wav",511)
if e:IsPlayer()||e:IsNPC()||IsNextBot3(e)then
e:SetGroundEntity(NULL)
e:SetVelocity(self:GetForward()*5750+Vector(0,0,900)+p:GetVelocity())
else
e:SetVelocity(self:GetForward()*2750+Vector(0,0,410)+p:GetVelocity())
if IsValid(e:GetPhysicsObject())then
e:SetPhysicsAttacker(p)
e:GetPhysicsObject():SetVelocity(self:GetForward()*2250+Vector(0,0,250)+p:GetVelocity())
end
end
d:SetDamage(999)
d:SetDamageForce(p:GetForward()*39999+Vector(0,0,3999)+p:GetVelocity())
end
function SWEP:ImpactEffect()end
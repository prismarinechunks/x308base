SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName = "Murderer"
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "knife"
SWEP.Slot = 0
SWEP.Spawnable = true

SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.Primary.Automatic=false
SWEP.TextType = "308CS"
SWEP.Text = "j"
SWEP.TextColor=Color(155,0,0)
SWEP.Melee1=200
SWEP.MeleeAT=.05
SWEP.MeleeOT=.1
SWEP.Multiple=5

SWEP.MeleeSH2={{Sound="weapons/knife/knife_stab.wav"},511}
SWEP.CenterPos = Vector(0,100,0)
SWEP.ViewModelBoneMods = {["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }}
SWEP.Hide=1
SWEP.TimeT=CurTime()
if SERVER then
function SWEP:Reload()
if self:GetNextPrimaryFire()<CurTime()and self.Hide>0 then
if self.TimeT<CurTime()then
self:SetNextPrimaryFire(CurTime()+2)
self:SetNextSecondaryFire(CurTime()+2)
self:PlayAnim("draw",0,2)
self.Owner:EmitSound("weapons/slam/throw.wav")
self.TimeT=CurTime()+2
local k=ents.Create("obj_308_knife")
local p=self.Owner
k:SetPos(p:EyePos()+self:GetForward()*50)
k:SetAngles(p:GetAimVector():Angle())
k:SetOwner(p)
k:Spawn()
k:SetVelocity(self:GetForward()*2500+self.Owner:GetVelocity()/3)
end
end
end
function SWEP:MAnim()
self:PlayAnim("stab_miss",2,.3)
end
function SWEP:MeleeSound()
self:EmitSound("murdermystery/kill"..math.random(3)..".wav",511)
end

function SWEP:HIT(e,h,t)
if MD308<1 then
local d=DamageInfo()
d:SetDamage(h or 10)
d:SetDamageType(t or DMG_SLASH)
d:SetInflictor(self.Owner)
d:SetAttacker(self.Owner)
e:TakeDamageInfo(d)
elseif e:IsPlayer()then
e:Kill()
end
end

MD308=0
function SWEP:CustomDeploy()
if MD308>0 then
self:SecondaryAttack()
end
end
function SWEP:SecondaryAttack()
self:SetNextSecondaryFire(CurTime()+.3)
self:SetNextPrimaryFire(CurTime()+.5)
if self.Hide<1 then self.Hide=1 self.HoldType="knife" self:SetMaterial("")self:PlayAnim("draw")
else self.Hide=0 self.HoldType="normal" self:SetMaterial("null")self:PlayAnim("draw",0,9999)
end
end
function SWEP:CustomThink()
if self.Hide<1 then self:SetNextPrimaryFire(CurTime()+10) end
end
end

SWEP.Base = "weapon_308_asgoretri"
SWEP.PrintName=GAME308_LANWEP["asgorewep"]
SWEP.TextColor=Color(math.random(0,255),math.random(0,255),math.random(0,255))
SWEP.Category = "x308 Base | Melee"
SWEP.Melee1=65
SWEP.MeleeAT=.16
SWEP.MeleeOT=.4
SWEP.Spawnable=true
SWEP.AdminOnly=true
SWEP.Multiple=0
SWEP.TTime=CurTime()
function SWEP:CustomATT()
if SERVER then
local e=ents.Create("obj_308ut_trislash")
e:SetPos(self.Owner:WorldSpaceCenter()+self.Owner:GetAimVector()*50)
e:SetParent(self)
e:SetModelScale(1)
e.IsEffect=1
e:Spawn()
local c=self:GetColor()
e:SetColor(Color(c.r,c.g,c.b,110))
SafeRemoveEntityDelayed(e,.25)
end
end
function SWEP:CustomThink()
if self.TTime<CurTime()then
self.TTime=CurTime()+.2
self:SetColor(Color(math.random(0,255),math.random(0,255),math.random(0,255)))end
if SERVER and self:GetNextSecondaryFire()<CurTime()then
local o=self.Owner
if o:KeyDown(IN_USE)and o:GetEyeTrace().Hit then
local h=math.Clamp(o:Health(),1,o:GetMaxHealth())
h=.3+h/o:GetMaxHealth()/2
self.BoltPullTimer=CurTime()+h
self:SetNextPrimaryFire(CurTime()+h)
self:SetNextSecondaryFire(CurTime()+h)
local e=ents.Create("obj_308ut_asgore_")
e:SetPos(o:GetEyeTrace().HitPos+o:GetEyeTrace().HitNormal*60)
e:SetOwner(o)
e.Dmg=5
e:Spawn()
end end
end
function SWEP:Reload()
if self:GetNextSecondaryFire()<CurTime()then
self.BoltPullTimer=CurTime()+1
self:SetNextPrimaryFire(CurTime()+1)
self:SetNextSecondaryFire(CurTime()+1)
local p=self.Owner
if SERVER then
for i=1,15 do
timer.Simple(i*.05,function()if IsValid(self)and IsValid(p)then
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(p:EyePos()+p:GetAimVector()*-10+Vector(math.random(-20,20),math.random(-20,20),math.random(-20,20)))
e:SetOwner(p)
e.Dmg=5
e:Spawn()
p:EmitSound("undertale/st.wav")
SafeRemoveEntityDelayed(e,3)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*900)
end end)
end
end
end
end
SWEP._AT=100
SWEP._AR=100
function SWEP:SecondaryAttack()
local p=self.Owner
local h
local function Se(t,f)local t2
if math.random(2)>1 then t2=1 end
timer.Simple(t,function()if IsValid(self)and IsValid(p)then
if f==10 then
p:EmitSound("3088083421/mg/eyeflash_final.wav",511)f=.5 else
p:EmitSound("3088083421/mg/eyeflash.wav",511)f=.25 end
end end)
return t2
end
local function Att(t,h)
timer.Simple(t,function()if IsValid(self)and IsValid(p)then
p:SetAnimation(PLAYER_ATTACK1)self:PlayAnim("midslash2",3)p:EmitSound("3088083421/mg/asgore_slash.wav",511)
if SERVER then
local e=ents.Create("obj_308ut_trislash")
e:SetPos(p:EyePos()+p:GetAimVector()*10)
e:SetOwner(p)
e.TType=h
e.Dmg=50
e:SetModelScale(1.25)
e:Spawn()
SafeRemoveEntityDelayed(e,5)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*2500)
end
if h then
self:PlayAnim("stab_miss",3)
end
end end)
end
for i=1,10 do
h=i/6+1.45
Att(h,Se(i/10,i))
end
self.BoltPullTimer=CurTime()+h+1
self:SetNextPrimaryFire(CurTime()+h+1)
self:SetNextSecondaryFire(CurTime()+h+1)
end
function SWEP:IfOwnHurt()end

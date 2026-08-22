SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["guide"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_toolgun.mdl"
SWEP.WorldModel = "models/weapons/w_toolgun.mdl"
SWEP.Canrepick=nil
SWEP.AdminOnly=true

SWEP.Primary.ClipSize = 9999
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Delay = .35
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false
SWEP.IdleAnim="idle01"

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 70, 0 )
SWEP.TargPos=Vector(0,0,0)
SWEP.Timr=CurTime()+2
function SWEP:Reload()end
function SWEP:CustomInit()self:SetNWInt("READY",1)end
function SWEP:SecondaryAttack()end
function SWEP:PrimaryAttack()end
function SWEP:CustomThink()
if SERVER then
local p=self.Owner
if self:GetNextPrimaryFire()>CurTime()then return end
self:SetNWInt("READY",1)
if p:GetEyeTrace().HitPos!=self.TargPos then
self.TargPos=p:GetEyeTrace().HitPos
self.Timr=CurTime()+2
end
local tr=util.TraceLine({start=self.TargPos,endpos=self.TargPos+Vector(0,0,9999999),filter=p})
if p:KeyDown(IN_ATTACK)then
local e=EffectData()
e:SetOrigin(p:GetEyeTrace().HitPos)
e:SetStart(p:GetShootPos())
e:SetAttachment(1)
e:SetEntity(self)
util.Effect("ToolTracer",e)
if !tr.Hit||!tr.HitSky then
self.Timr=CurTime()+2
self:EmitSound("buttons/button8.wav")
end
if self.Timr<CurTime()then
self:EmitSound("hl1/fvox/blip.wav")
self.BoltPullTimer=CurTime()+20
self:SetNextPrimaryFire(CurTime()+20)
self.Owner:EmitSound("3088083421/mg/radio_bomb.ogg")
self:SetNWInt("READY",2)
local e=ents.Create("prop_physics")
e:SetModel("models/mechanics/solid_steel/box_beam_4.mdl")
e:SetNoDraw(true)
e:DrawShadow(false)
e:SetPos(tr.HitPos+Vector(0,0,5))
e:Spawn()
e:SetSolid(0)
e:SetMoveType(0)
SafeRemoveEntityDelayed(e,21)
for i=1,15 do
local m=i*math.Rand(.3,.4)
timer.Simple(10+m,function()if IsValid(p)then
_308PlaySoundAll("npc/env_headcrabcanister/launch.wav")
end end)
timer.Simple(13+m,function()if IsValid(p)then
_308PlaySoundAll("npc/env_headcrabcanister/incoming.wav")
end end)
timer.Simple(14+m,function()if IsValid(p)then
e:EmitSound("npc/env_headcrabcanister/explosion.wav",511)
local v=Vector(math.random(-200,200),math.random(-200,200),0)
local tb=util.TraceHull({start=tr.HitPos+v,endpos=tr.HitPos-Vector(0,0,9999999),filter=p})
local pos=tb.HitPos
local w=ents.Create("obj_308_sprite")
w:SetPos(pos)
w:Spawn()w:SetSprite("sprites/tp_beam001")w:SetScale(7500)w:Light()
w:SetColor(Color(0,128,128))
w.Disappear=1 w.DisaSpeed=55
w=ents.Create("obj_308_effect")
w:SetPos(pos)
w:Spawn()w:SetSprite("sprites/orangecore1")w:SetScale(1500,.25)w:Light()
w:SetColor(Color(0,128,255))
w.Disappear=1 w.DisaSpeed=25
	local explo = ents.Create("env_explosion")
		explo:SetOwner(p)
		explo:SetPos(pos)
		explo:SetKeyValue("iMagnitude", "0")
		explo:SetKeyValue("spawnflags", "17")
		explo:Spawn()
		explo:Activate()
		explo:Fire("Explode", "", 0)
	local explo2 = ents.Create("env_physexplosion")
		explo2:SetOwner(p)
		explo2:SetPos(pos)
		explo2:SetKeyValue("magnitude", "300")
		explo2:SetKeyValue("radius", "250")
		explo2:SetKeyValue("spawnflags", "3")
		explo2:Spawn()
		explo2:Activate()
		explo2:Fire("Explode", "", 0)
	util.BlastDamage(p,p,pos,1750,750)
end end)
end
end
else self.Timr=CurTime()+2
end
end

end
function SWEP:CusHUD()
local t,c
if self:GetNWInt("READY")<2 then
t="Ready"
c=Color(255,255,0)
else
t="Cooldown"
c=Color(255,0,0)
end
local x = ScrW()/2
local y = ScrH()/2
draw.SimpleText(t,"308wepbase", ScrW() * .8, ScrH() *.9,c)
draw.SimpleText(GAME308_LANWEP["guide1"],"entcheck", ScrW() * .01, ScrH() * .8,c)
end
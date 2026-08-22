SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
--截图视频网址https://www.bilibili.com/video/av28222490/?spm_id_from=333.788.videocard.7
SWEP.PrintName=GAME308_LANWEP["begg"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "grenade"
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\n  --致敬起床战争！\n  --Salute BedWars!"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/props_phx/misc/egg.mdl"
SWEP.PickDirectly=1
SWEP.DrawAnim="throw"
SWEP.IdleAnim="throw"
SWEP.DrawAnimRate=0
SWEP.IdleAnimRate=0
SWEP.WorldModelFix=true
SWEP.AdminOnly=true
SWEP.Primary.ClipSize =1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true
SWEP.Primary.Ammo ="AR2AltFire"
SWEP.Slot =0
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.NormalDraw = true
SWEP.SA_IsSight = false

SWEP.AmmoHUD=1
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 100, 0 )

function SWEP:Throw(t)
if SERVER and(self:Clip1()>0||self:Ammo1()>0)then
local ply=self.Owner
self.BoltPullTimer=CurTime()+.2
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
ply:SetAnimation(PLAYER_ATTACK1)
self:EmitSound("minecraft/random/bow.ogg",100,60)
	local e=ents.Create("prop_physics")
	local pos=ply:GetShootPos()+self:GetUp()*-4
	e:SetAngles(ply:GetAimVector():Angle()+Angle(90,0,90))
	e:SetModel("models/props_phx/misc/egg.mdl")
	e:SetCollisionGroup(13)
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	if IsValid(BED308Ent)then BED308Ent:DeleteOnRemove(e)end
	e:SetNoDraw(true)
	local s=ents.Create("obj_308_effect")s:SetPos(e:WorldSpaceCenter())s:SetSprite("3088083421/egg.png")s:SetScale(16)s:SetParent(e)s:Spawn()
	ply:DeleteOnRemove(e)
if t<2 then
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*1890+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("throw",2)
else
	e:GetPhysicsObject():SetVelocity(ply:GetForward()*390+ply:GetUp()*100+ply:GetVelocity())
self:PlayAnim("roll")
end
	e:SetPhysicsAttacker(ply or self)
	SafeRemoveEntityDelayed(e,4)
	begg308_=begg308_ or 0
	begg308_=begg308_+1
	local w=begg308_
	local c=ply:GetColor()
	if c.r==255 and c.g==255 and c.b==255 then
	c=ply:GetPlayerColor()
	c=Color(math.floor(c.r*255),math.floor(c.g*255),math.floor(c.b*255))
	end
	hook.Add("Think","begg308_"..w,function()
	if !IsValid(e)||e:Health()<1||e:GetVelocity():Length()<25||!e:IsInWorld()then hook.Remove("begg308_"..w)return end
	local v=e:WorldSpaceCenter()
	local m=20
	local m2=40
	v.x=math.floor(v.x/m2)*m2+m
	v.y=math.floor(v.y/m2)*m2+m
	v.z=math.floor(v.z/m2)*m2+m2
local r
for k,e in pairs(ents.FindInSphere(v,m2))do
if(e:IsNPC()||IsNextBot3(e))and e:Health()>0 then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,m+16))do
if e:IsPlayer()and e:Alive()then r=1 end
end
for k,e in pairs(ents.FindInSphere(v,5))do
if((e:GetClass()=="prop_physics"||e:GetClass()=="prop_physics_multiplayer")and e.IsMCBlock)||(e:GetClass()=="minecraft_block"||e:GetClass()=="minecraft_block_waterized"||e:GetClass() == "mc_tnt"||e:GetClass() == "mc_cake")then r=1 end
end
	if !r and util.IsInWorld(v)then
	timer.Simple(.1,function()if IsValid(ply)then
	local n=_308CreateBlock(v,ply)if IsValid(n)then n:SetColor(c)if IsValid(BED308Ent)then BED308Ent:DeleteOnRemove(n)end end--SafeRemoveEntityDelayed(n,15)
	end end)
	end
	end)
	self:TakePrimaryAmmo(1)
	if self:Clip1()<1 and self:Ammo1()<1 then
	SafeRemoveEntityDelayed(self,.5)
	elseif self:Ammo1()>0 then
	self:SetClip1(1)
	self.Owner:SetAmmo(self:Ammo1()-1,"AR2AltFire")else
	SafeRemoveEntityDelayed(self,.5)end
end
end
function SWEP:Reload()end
function SWEP:PrimaryAttack()
self:Throw(1)end
function SWEP:SecondaryAttack()
self:Throw(2)end

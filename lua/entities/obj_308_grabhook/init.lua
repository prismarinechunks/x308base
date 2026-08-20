AddCSLuaFile("shared.lua")
include("shared.lua")
if CLIENT then language.Add("obj_308_grabhook","Grab hook")end
function ENT:Initialize()
	self:SetModel("models/props_junk/meathook001a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetCollisionGroup(13)
	self.T=CurTime()
end
function ENT:FUNCt(p)
if self.T<CurTime()then
self.T=CurTime()+.1
local e=EffectData()
local w=p:GetActiveWeapon()
e:SetOrigin(self:GetPos())e:SetStart(p:GetShootPos())e:SetAttachment(1)
if IsValid(w)then e:SetEntity(w)end
util.Effect("PhyscannonImpact",e)end
end
function ENT:Think()
self:NextThink(CurTime()+.01)
local p=self.Owner
if IsValid(p)and p:Alive()then
if p:KeyDown(IN_DUCK)and p:KeyDown(IN_USE)then
SafeRemoveEntity(self)p:EmitSound("3088083421/wep/melee/linkedslash.mp3")return end
if !self:IsInWorld()and !self.Stuck then SafeRemoveEntity(self)p:EmitSound("3088083421/wep/melee/linkedslash.mp3")return end
self:FUNCt(p)
local d=p:GetShootPos():Distance(self:GetPos())
if d>1250 then
SafeRemoveEntity(self)p:EmitSound("3088083421/wep/melee/linkedslash.mp3")
elseif d>500 then
--if !self.Stuck then
--self:GetPhysicsObject():SetVelocity((p:GetShootPos()-self:GetPos())*d/50000)
--else
if IsValid(self.dt.StickEntity)and !self.dt.StickEntity:IsWorld()and IsValid(self.dt.StickEntity:GetPhysicsObject())then self.dt.StickEntity:GetPhysicsObject():SetVelocity(self.dt.StickEntity:GetVelocity()+(p:GetShootPos()-self:GetPos())*d/2000)end
p:SetVelocity(-(p:GetShootPos()-self:GetPos())*d/2000)
--end
end
else SafeRemoveEntity(self)return end
	local ent = self.dt.StickEntity
	if SERVER && self.Welded && !IsValid(self.Weld) then
		self.Welded = false
		self:Fire("Kill",nil,5)
		return
	end
	if (ent != nil) && (ent != NULL) then
		if self.dt.StickEntity:IsWorld() then
			self:SetPos(self.dt.StickPos)
			self:SetAngles(self.dt.StickAngle)
			return
		end
		if SERVER then
			self.laststuckentity = self.dt.StickEntity
			if ent != self:GetParent() && ent:GetClass() != "func_tracktrain" then
				self:SetParent(ent)
			end
		end
	elseif (self:GetMoveType() == MOVETYPE_NONE) && SERVER then
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:GetPhysicsObject():EnableGravity(true)
		self:GetPhysicsObject():Wake()
	end
return true
end
function ENT:PhysicsUpdate()
	if self.Stuck then
	self:SetMoveType(MOVETYPE_NONE)
	self:SetSolid(SOLID_NONE)
	end
end
function ENT:SetupDataTables()
	self:DTVar("Entity",0,"StickEntity")
	self:DTVar("Int",0,"StickBone")
	self:DTVar("Vector",0,"StickPos")
	self:DTVar("Angle",0,"StickAngle")
	self.dt.StickEntity = NULL
end
local bonetrace = {}
bonetrace.mask = MASK_SHOT
bonetrace.mins = Vector(-1,-1,-1)
bonetrace.maxs = Vector(1,1,1)

function ENT:PhysicsCollide( data, phys )
local e=data.HitEntity
	local class = e:GetClass()
	if !IsValid(self) or self.Stuck or (class == "npc_antlion_grub") then
		return
	end
	local brush = string.find(e:GetModel(),"*",0,true)
	bonetrace.start = self:GetPos()
	bonetrace.endpos = bonetrace.start+data.OurOldVelocity:GetNormalized()*100
	bonetrace.filter = {self,self:GetOwner()}
	local tr = util.TraceLine(bonetrace)
	if e:IsWorld() then
		self.dt.StickEntity = e
		self.dt.StickBone = 0
		self.dt.StickPos = data.HitPos-data.OurOldVelocity:GetNormalized()
		self.dt.StickAngle = self:GetAngles()
		self.Stuck = 1
		self:ImpactEffect(tr)
		return
	end
	local getbonecenter = false
if !brush && (tr.Entity != e) then
		tr = util.TraceHull(bonetrace)
		if tr.Entity == e then
			local hitbox = tr.HitBox
			local bone = tr.Entity:GetHitBoxBone(hitbox, 0)
			local pos,ang = tr.Entity:GetBonePosition(bone)
			bonetrace.endpos = pos
			tr = util.TraceLine(bonetrace)
		end
	end
	if tr.Entity != e then
		bonetrace.endpos = e:GetPos()+e:OBBCenter()
		tr = util.TraceLine(bonetrace)
	end
	local ent = tr.Entity
	if (ent == e)and ent:GetClass()!="func_breakable_surf" then
	   if brush then
			local phys = ent:GetPhysicsObject()
			if IsValid(phys)then
				local bonepos = phys:GetPos()
				local boneang = phys:GetAngles()
				if bonepos then
					local localpos,localang = WorldToLocal(tr.HitPos-tr.Normal,self:GetAngles(),bonepos,boneang)
					timer.Simple(0,ragdollweld,self,ent,0,localpos,localang)
				end
			end 
		else
		if !(ent:IsNPC()||IsNextBot3(ent)||ent:IsPlayer())then
			local hitbox = tr.HitBox
			local bone = ent:GetHitBoxBone(hitbox, 0)
			if !bone then SafeRemoveEntity(self)return end
			local bonepos,boneang = ent:GetBonePosition(bone)
			self.dt.StickEntity = ent
			self.laststuckentity = ent
			self.dt.StickBone = bone
			if bonepos then
				local stickpos,stickang = WorldToLocal(tr.HitPos-tr.Normal,self:GetAngles(),bonepos,boneang)
				self.dt.StickPos,self.dt.StickAngle = stickpos,stickang
			else
				local stickpos,stickang = WorldToLocal(tr.HitPos-tr.Normal,self:GetAngles(),ent:GetPos(),ent:GetAngles())
				self.dt.StickPos,self.dt.StickAngle = stickpos,stickang
			end
			else self:EmitSound("3088083421/wep/melee/punch.wav")SafeRemoveEntity(self)
		end
			local dmg = DamageInfo()
			dmg:SetDamageType(DMG_SLASH)
			dmg:SetDamagePosition(tr.HitPos)
			dmg:SetAttacker(self.Owner or self)
			dmg:SetInflictor(self)
			dmg:SetDamageForce(data.OurOldVelocity)
			dmg:SetDamage(data.OurOldVelocity:Length()/100)
			ent:TakeDamageInfo(dmg)
		end
		self.Stuck=1
	end
self:ImpactEffect(tr)
end
function ENT:ImpactEffect(tr)
	if !IsValid(self)||dodebug then
		return
	end
	local ef = EffectData()
	ef:SetOrigin(tr.HitPos)
	ef:SetNormal(tr.HitNormal)
	local mat = tr.MatType
	local pos = self:GetPos()
	if (mat == MAT_BLOODYFLESH)||(mat == MAT_FLESH) then
		util.Effect("BloodImpact",ef)
		self:EmitSound("3088083421/wep/melee/punch.wav")
	elseif (mat == MAT_CONCRETE) || (mat == MAT_DIRT) then
		self:EmitSound("physics/concrete/concrete_impact_bullet"..math.random(1,4)..".wav")
	elseif (mat == MAT_PLASTIC) then
		self:EmitSound("physics/plastic/plastic_box_impact_hard"..math.random(1,4)..".wav")
	elseif (mat == MAT_GLASS)||(mat == MAT_TILE) then
		util.Effect("GlassImpact",ef)
		self:EmitSound("physics/concrete/concrete_impact_bullet"..math.random(1,4)..".wav")
	elseif (mat == MAT_METAL)||(mat == MAT_GRATE) then
		util.Effect("ManhackSparks",ef)
		self:EmitSound("physics/metal/metal_solid_impact_bullet"..math.random(1,4)..".wav")
	elseif (mat == MAT_WOOD) then
		self:EmitSound("physics/wood/wood_solid_impact_bullet"..math.random(1,5)..".wav")
	elseif (mat == MAT_SAND) then
		self:EmitSound("physics/surfaces/sand_impact_bullet"..math.random(1,4)..".wav")
	else self:EmitSound("physics/concrete/concrete_impact_bullet"..math.random(1,4)..".wav")
	end
end
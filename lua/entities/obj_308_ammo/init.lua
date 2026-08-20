AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')
function ENT:Initialize()
self.__MustRemove=1
	self.AType=self.AType or math.random(11)
	self.AmmoM=self.AmmoM or 1
	self:SetUseType(SIMPLE_USE)
	self:PhysicsInit(SOLID_VPHYSICS)self:SetMoveType(MOVETYPE_VPHYSICS)self:SetSolid(SOLID_VPHYSICS)self:SetCollisionGroup(11)
	if GetConVarNumber("wb3_clipremove")>0 then SafeRemoveEntityDelayed(self,GetConVarNumber("wb3_clipremove"))end
	if !IsValid(self:GetPhysicsObject())then
	self:PhysicsInitSphere(2,"wood")
	self:SetElasticity(.1)
	local v=Vector(1,1,1)
	self:SetCollisionBounds(-v,v)end
	if self.Dont then return end
	self:SetModel("models/Items/BoxSRounds.mdl")
	local t=self.AType
	if t==1 then
	self:SetModel("models/Items/item_item_crate.mdl")self:SetModelScale(.3)
	elseif t==2 then self:SetModel("models/Items/combine_rifle_ammo01.mdl")
	elseif t==3 then self:SetModelScale(.25)
	elseif t==4 then
	self:SetModel("models/Items/BoxMRounds.mdl")self:SetModelScale(.3)
	elseif t==5 then
	if self.AmmoM>1 then
	self:SetModel("models/Items/357ammo.mdl")else
	if self.AmmoM<1 then SafeRemoveEntity(self)return end
	self:SetModel("models/Items/AR2_Grenade.mdl")self:SetModelScale(.5)self:SetNoDraw(true)local d=ents.Create("prop_dynamic")
	d:SetModel("models/weapons/shell.mdl")d:SetAngles(self:GetAngles())d:SetPos(self:GetPos())d:SetSolid(0)d:SetMoveType(0)d:SetParent(self)d:Spawn()
	end
	elseif t==7 then
	if self.AmmoM>1 then
	self:SetModel("models/Items/BoxBuckshot.mdl")else
	if self.AmmoM<1 then SafeRemoveEntity(self)return end
	self:SetModel("models/Items/AR2_Grenade.mdl")self:SetNoDraw(true)local d=ents.Create("prop_dynamic")
	d:SetModel("models/weapons/shotgun_shell.mdl")d:SetAngles(self:GetAngles())d:SetPos(self:GetPos())d:SetSolid(0)d:SetMoveType(0)d:SetParent(self)d:Spawn()
	end
	if self.AmmoM<1 then SafeRemoveEntity(self)end
	elseif t==10||t==9||t==11||t==8 then
	self:SetModel("models/Items/item_item_crate.mdl")
	if self.AmmoM<2 then
	self:SetModel("models/Items/AR2_Grenade.mdl")else self:SetModelScale(.5)self:SetColor(Color(100,255,100))end
	if t==10 then
	if self.AmmoM<2 then
	self:SetModel("models/weapons/w_eq_fraggrenade.mdl")else self:SetModelScale(.5)end
	elseif t==11 then
	if self.AmmoM<2 then
	self:SetModel("models/weapons/w_slam.mdl")else self:SetModelScale(.5)self:SetColor(Color(255,100,100))end
	elseif t==8 then
	if self.AmmoM<2 then
	self:SetModel("models/weapons/w_missile_closed.mdl")else self:SetModelScale(.8)end
	end
	if self.AmmoM<1 then SafeRemoveEntity(self)end
	elseif t==6 then
	self:SetModel("models/Items/CrossbowRounds.mdl")elseif t==14 then
	self:SetModel("models/Items/item_item_crate.mdl")self:SetColor(Color(255,215,100))self:SetModelScale(.2)
	end
	self:PhysicsInit(SOLID_VPHYSICS)
end
function ENT:Think()if !self:IsInWorld()then SafeRemoveEntity(self)end end
function ENT:Use(a)if a:IsPlayer()and a:Alive()then
if self.AmmoM<1 then
a:ChatPrint(GAME308_LAN1["ammo"..math.random(3)])return end
a:GiveAmmo(self.AmmoM,self.AType)
SafeRemoveEntity(self)
end
end

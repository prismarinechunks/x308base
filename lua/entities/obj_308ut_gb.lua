AddCSLuaFile()
ENT.Type="anim"
ENT.Base="base_anim"
ENT.PrintName="Gaster Blaster"
ENT.ShootT=.75
ENT.RAND=1.3
ENT.SndStart="undertale/gaster_blaster/gaster_blaster_start.mp3"
ENT.SndEnd="undertale/gaster_blaster/gaster_blaster_end.mp3"
ENT.RenderGroup=RENDERGROUP_BOTH--不挂这一行就看不到光束第1/2行
if CLIENT then killicon.Add("obj_308ut_gb","undertale/killicon_gaster_blaster",color_white)end
function ENT:Initialize()
if SERVER then
local m="models/evangelos/undertale/gasterblaster.mdl"
self.CanUseMDL=5
if self.OverrideMDL then m=self.OverrideMDL self.CanUseMDL=1
elseif !util.IsValidModel(m)then m="models/Gibs/HGIBS.mdl" self.CanUseMDL=1 end
		self:SetModel(m)self:DrawShadow()
		self:SetTrigger(true)
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(0)
		self:SetSolid(0)
		self:SetColor(self.Color)
		self:SetVar("position",self:GetPos())
		self:SetVar("open",self.ShootT)
		self:SetVar("open",self:GetVar("open",NULL)+CurTime())
		self:SetNWBool("IW",self.IgnoreWorld)
		self.SoundP=self:GetVar("open",NULL)
		self:SetVar("CurTime",math.Rand(0,60))
		if !self.OverrideMDL then self:ManipulateBoneAngles(0,Angle(0,0,-30))if self.CanUseMDL!=5 then self:ManipulateBoneScale(0,Vector(5,5,5))end end
		self:EmitSound(self.SndStart,0,math.random(96,104))
		if IsValid(self.Owner)then self.Owner:DeleteOnRemove(self)end 
		local p=self:GetPhysicsObject()
		if IsValid(p)then p:Wake()end
		util.AddNetworkString("308gbshooting")
	end
	if CLIENT then
	self:SetVar("shootEffect",0)end
end


function ENT:PhysicsUpdate()
	if SERVER then
	if !self:IsInWorld()then SafeRemoveEntity(self)return end
		local pos = self:GetVar( "position", NULL )
		local dist = pos:Distance( self:GetPos() )
		if( self:GetVar( "distance", NULL ) == NULL ) then
			self:SetVar( "distance", dist )
		end
		local saveDist=self:GetVar("distance")
		local curtime=CurTime()-self:GetVar("CurTime",NULL)
		local vec=Vector(math.cos(curtime),math.sin(curtime),math.sin(curtime)/2)
		local numb=(CurTime()-self:GetVar("open",NULL))*6
		if numb<3 then
			self:SetPos(self:GetPos()+(pos-self:GetPos())/5+vec*math.max(.5,dist/30))
		else
			if numb>9 then
			self:Remove()
			end
			self:SetPos(self:GetPos()-self:GetForward()*(dist/10+.1))
		end
		if dist<15 then
		if self.RAND>1.3 then self.RAND=1.3 else self.RAND=1.4 end
			local v=math.sin(math.max(0,math.min(2,numb)))*self.RAND
			if numb>0 then
				if !self.Shot then
					self.Shot=1
					local l=ents.Create("light_dynamic")
					l:SetLocalPos(self:GetPos()+self:GetForward()*20*self:GetModelScale())
					l:SetLocalAngles(self:GetAngles())
					l:Fire("Color",self:GetColor().r.." "..self:GetColor().g.." "..self:GetColor().b)
					l:SetParent(self)
					l:Spawn()
					l:Activate()
					l:Fire("Kill","",.65)
					sound.Play(self.SndEnd,self:GetPos(),0,math.Clamp(100/self:GetModelScale(),90,120))if self:GetModelScale()>.75 then
					util.ScreenShake(self:GetPos(),16,236,.2*self:GetModelScale(),999*self:GetModelScale())end
					timer.Simple(1,function()if IsValid(self)then
					self:SetModelScale(.01,.5)
					end end)
					for i=1,10 do
					timer.Simple(i/20,function()if IsValid(self)then
					l:Fire("TurnOn","",0)local m=2+math.sin(CurTime()*30)
					l:Fire("brightness",math.Clamp(m*.8*self:GetModelScale(),0,16),0)
					l:Fire("distance",m*150*self:GetModelScale(),0)
					local v2=self:GetPos()-self:GetUp()*20*self:GetModelScale()
					local v=Vector(20,20,20)*self:GetModelScale()
					local l=util.TraceLine({
					start=v2,
					endpos=v2+self:GetForward()*30000,
					collisiongroup=20,
					ignoreworld=self:GetNWBool("IW"),
					mask=MASK_SHOT_HULL
					})--Sometimes some NPC has been hit by beam that can seem, but NPC not take damage, this was really strangeful, right?
					local t=util.TraceHull({
					start=v2,
					endpos=v2+self:GetForward()*((v2-l.HitPos):Length()+10),
					filter=function(e)
					if e==self.Owner then return end
					if IsValid(e)then
					e:TakeDamage(self.Dmg or 1,self.Owner or self,self.Owner or self)
					if e:IsNPC()||IsNextBot3(e)||e:IsPlayer()then
					e:EmitSound("3088083421/ut/hurtsound.wav")end
					return end
					end,
					ignoreworld=true,--Must set to TRUE, else...
					mins=-v,
					maxs=v,
					mask=MASK_SHOT_HULL
					})
					end end)
					end
					net.Start("308gbshooting")
					net.WriteEntity(self)
					net.Broadcast()
				end
				if self.CanUseMDL==5 then
				if game.SinglePlayer()then
				self:ManipulateBoneScale(2,Vector())
				self:ManipulateBoneAngles(1,Angle(180,0,0))
				self:ManipulateBonePosition(1,Vector(9,8,-6))
				self:ManipulateBoneAngles(0,Angle(0,0,-30)*v+Angle(0,0,-30))
				self:ManipulateBoneAngles(3,Angle(0,0,-50)*v)
				self:ManipulateBoneAngles(4,Angle(0,0,-40)*v)
				self:ManipulateBoneAngles(5,Angle(0,0,-40)*v)
				self:ManipulateBonePosition(4,Vector(-10,0,-20)*v)
				self:ManipulateBonePosition(5,Vector(10,0,-20)*v)elseif !self.ShootAnim then self.ShootAnim=1
				self:ManipulateBoneScale(2,Vector())
				self:ManipulateBoneAngles(1,Angle(180,0,0))
				self:ManipulateBonePosition(1,Vector(9,8,-6))
				self:ManipulateBoneAngles(0,Angle(0,0,-60))
				self:ManipulateBoneAngles(3,Angle(0,0,-50))
				self:ManipulateBoneAngles(4,Angle(0,0,-40))
				self:ManipulateBoneAngles(5,Angle(0,0,-40))
				self:ManipulateBonePosition(4,Vector(-10,0,-20))
				self:ManipulateBonePosition(5,Vector(10,0,-20))
				end
				end
				self:GetPhysicsObject():Wake()
			end
		end
	end
end
net.Receive("308gbshooting",function()
local e=net.ReadEntity()
if !IsValid(e)then return end
e:SetVar("shootEffect",CurTime())
if CLIENT then
		local tr = util.TraceLine( {
			start=e:GetPos(),
			endpos=e:GetPos()+e:GetForward()*30000,
			ignoreworld=e:GetNWBool("IW"),
			filter=function(ent)if ent:GetClass()=="prop_physics" and !e:GetNWBool("IW")then return true end end
		} )
		local pos=e:GetPos()-(e:GetUp()*20-e:GetForward()*10)*e:GetModelScale()
e:SetRenderBoundsWS(pos,tr.HitPos)end--不挂这几行就看不到光束第2/2行
end)
--头痛的问题又解决了一个
function ENT:Draw()
	self:DrawModel()
	if self:GetVar("shootEffect",NULL)>0 then
		numb = CurTime() - self:GetVar( "shootEffect", NULL ) 
		if( numb > 1 ) then
			self:SetVar( "shootEffect", 0 )
		end
		local tr = util.TraceLine( {
			start=self:GetPos(),
			endpos=self:GetPos()+self:GetForward()*30000,
			ignoreworld=self:GetNWBool("IW"),
			filter=function(ent)if ent:GetClass()=="prop_physics" and !self:GetNWBool("IW")then return true end end
		} )
		render.SetMaterial(Material("lights/white"))
		local size = math.max( 0, math.min( 1, math.sin( numb * 5 ) * 1.4 ) )*(.7+Lerp(.3,1,math.sin(CurTime()*30)))*self:GetModelScale()
		local pos=self:GetPos()-(self:GetUp()*20-self:GetForward()*10)*self:GetModelScale()
		local dir = tr.HitPos - pos
		dir:Normalize()
		local c=self:GetColor()
		for i = 1, 5 do
			local forw=(17+i*5)*self:GetModelScale()
			render.DrawBeam(pos+dir*(forw-5*self:GetModelScale()),pos+dir*forw,(15+3*i)*size,1,1,self:GetColor()) 
		end
		local fo=47*self:GetModelScale()
		render.DrawBeam(pos+dir*(fo-5*self:GetModelScale()),tr.HitPos,30*size,1,1,self:GetColor())
		render.SetMaterial(Material("color"))
		self:SetRenderBoundsWS(pos,tr.HitPos)
		for i = 1, 5 do
			local forw=(17+i*5)*self:GetModelScale()
			render.DrawBeam(pos+dir*(forw-5*self:GetModelScale()),pos+dir*forw,(15+3*i)*size,1,1,self:GetColor()) 
		end
		render.DrawBeam(pos+dir*(fo-5*self:GetModelScale()),tr.HitPos,30*size,1,1,self:GetColor())
	end
end
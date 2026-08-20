function EFFECT:Init(data)local e=data:GetEntity()if !IsValid(e)then return end
	local o=e.Owner
	local s=data:GetMagnitude()
	self.Pos1=data:GetOrigin()
	self.Pos2=e
	self.Pos3=data:GetAttachment()
	self.Pos=self:GetTracerShootPos(data:GetOrigin(),e,data:GetAttachment())
	local emitter=ParticleEmitter(self.Pos)
	self.Particle=emitter:Add("3088083421/muzzleflash/1",self.Pos)
	self.Particle:SetDieTime(5)
	self.Particle:SetStartAlpha(255)
	self.Particle:SetEndAlpha(255)
	self.Particle:SetStartSize(7*s)
	self.Particle:SetEndSize(7*s)
	self.Particle:SetColor(255,255,255,255)
	self.Particle:SetRoll(math.random(-180,180))
	emitter:Finish()self.Timer=CurTime()+.16
	self.Frame=1
	self.FrameTimer=CurTime()+.02
end
function EFFECT:Render()
end
function EFFECT:Think()if self.Particle:GetDieTime()==0 then return end
	if self.Frame<8 and self.FrameTimer<=CurTime()then
		self.Particle:SetMaterial( "3088083421/muzzleflash/"..self.Frame+1)
		if self.Pos1 and IsValid(self.Pos2)and self.Pos3 then
		self.Particle:SetPos(self:GetTracerShootPos(self.Pos1,self.Pos2,self.Pos3))end
		self.Frame=self.Frame+1
		self.FrameTimer=CurTime()+.02
	elseif self.FrameTimer<=CurTime()then
		self.Particle:SetDieTime( 0 )
	end
	return true
end
function EFFECT:Init(data)local e=data:GetEntity()
	if !IsValid(e)then return end
	local o=e.Owner
	self.Pos=self:GetTracerShootPos(data:GetOrigin(),e,data:GetAttachment())
	local m=ParticleEmitter(self.Pos)
	if !m then return end
	if IsValid(e)then
	for i=1,4 do
	local e=m:Add("effects/muzzleflash"..math.random(1,4),self.Pos)
	e:SetVelocity(data:GetNormal()+o:GetVelocity())
	e:SetDieTime(math.Rand(.05,.1))
	e:SetStartAlpha(math.Rand(200,255))
	e:SetStartSize(math.Rand(6,7))
	e:SetEndSize(math.Rand(15,25))
	e:SetRoll(math.Rand(450,550))
	e:SetRollDelta(math.Rand(-1,1))
	e:SetColor(255,255,255)
	end
	m:Finish()m=ParticleEmitter(self.Pos)
	for i=1,math.random(2,4)do
	local a=_308Table({"particles/smokey","particle/particle_smokegrenade"})
	local e=m:Add(a,self.Pos+data:GetNormal()*5)
	e:SetVelocity(VectorRand()*math.Rand(8,10)+data:GetNormal()*4+o:GetVelocity())
	e:SetDieTime(math.Rand(.2,.4))
	e:SetStartAlpha(math.Rand(30,55))
	e:SetStartSize(math.Rand(2,3))
	e:SetEndSize(math.Rand(4,6))
	e:SetRoll(math.Rand(450,550))
	e:SetRollDelta(math.Rand(-1,1))
	end
	m:Finish()m=ParticleEmitter(self.Pos)
	for i=1,math.random(5,8)do
	local e=m:Add("effects/yellowflare",self.Pos+data:GetNormal()*5)
	e:SetVelocity((data:GetNormal()+VectorRand()*.5)*math.Rand(150,200))
	e:SetDieTime(math.Rand(.8,1))
	e:SetStartAlpha(255)
	e:SetStartSize(.5)
	e:SetEndSize(2)
	e:SetRoll(0)
	e:SetGravity(Vector(0,0,-2))
	e:SetBounce(.8)
	e:SetAirResistance(400)
	e:SetStartLength(0.01)e:SetEndLength(0)
	e:SetVelocityScale(true)
	e:SetCollide(false)
	end
	m:Finish()
	end
end
function EFFECT:Think()return false end
function EFFECT:Render()end
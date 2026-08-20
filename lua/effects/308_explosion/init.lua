function EFFECT:Init(data)
	local p=data:GetOrigin()
	local n=data:GetMagnitude()or 1
	local m=ParticleEmitter(p)
		for i=1,math.floor(9*n)do
			local e=m:Add("effects/fire_cloud"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(85,125)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(.2,.4)*n)
				e:SetStartSize(40)
				e:SetEndSize(390*n)
				e:SetStartAlpha(155)
				e:SetEndAlpha(10)
				e:SetBounce(1)
				e:SetRoll(math.Rand(-90,90))
				e:SetGravity(Vector(0,0,-80))
				e:SetColor(255,255,255)
			end
		end
		for i=1,math.floor(100*n)do
			local e=m:Add("effects/yellowflare",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(500,700)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1,2))
				e:SetStartSize(math.Rand(7,9)*n)
				e:SetEndSize(1)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(-v/2)
				e:SetColor(255,255,255)
			end
		end
		for i=1,math.floor(100*n)do
			local e=m:Add("effects/fire_embers"..math.random(3),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(500,700)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(2.5,3))
				e:SetStartSize(8)
				e:SetEndSize(10)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetCollide(true)
				e:SetGravity(Vector(0,0,-400))
				e:SetRoll(math.Rand(-90,90))
				e:SetColor(255,255,255)
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end
function RandomSpherePoint()
	local azimuthal=2*math.pi*math.random()
	local sin2_zenith=math.random()
	local sin_zenith=math.sqrt(sin2_zenith)
	local zrand=math.random(2)
	if zrand==2 then zrand = -1 else zrand = 1 end
	local final = Vector( sin_zenith*math.cos(azimuthal) , sin_zenith*math.sin(azimuthal) , zrand*math.sqrt(1-sin2_zenith) );
	final:Normalize()
	return final
end
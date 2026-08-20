function EFFECT:Init(data)
	local p=data:GetOrigin()
	local n=data:GetMagnitude()or 1
	local m=ParticleEmitter(p)
		for i=1,math.floor(20*n)do
			local e=m:Add("effects/combinemuzzle"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(300,350)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(.6,1))
				e:SetStartSize(math.Rand(24,39)*n)
				e:SetEndSize(4)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(v/2)
				e:SetColor(0,255,0)
			end
		end
		for i=1,math.floor(100*n)do
			local e=m:Add("effects/yellowflare",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(140,260)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(.1,.2))
				e:SetStartSize(math.Rand(7,9)*n)
				e:SetEndSize(1)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(Vector(0,0,0))
				e:SetColor(255,255,255)
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

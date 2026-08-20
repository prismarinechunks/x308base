function EFFECT:Init(data)
	local p=data:GetOrigin()
	local n=data:GetMagnitude()
	local m=ParticleEmitter(p)
		for i=1,24*n do
			local e=m:Add("effects/fleck_wood"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(150,200)
			if v.z<0 then v.z=0 end
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1,1.5))local s=math.Rand(2,6)
				e:SetStartSize(s)
				e:SetEndSize(s)
				e:SetCollide(true)
				e:SetBounce(.5)
				e:SetGravity(Vector(0,0,-400))
				e:SetColor(255,255,255)
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

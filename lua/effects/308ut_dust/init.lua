function EFFECT:Init(data)
	local p=data:GetOrigin()
	local m=ParticleEmitter(p)
	local s=data:GetMagnitude()
		for i=1,s do
			local e=m:Add("color",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(5,15)
			if v.z<0 then v.z=1 end v.z=v.z*2
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1.5,2.5))
				e:SetStartSize(1.5)
				e:SetEndSize(1.5)
				e:SetStartAlpha(255)
				e:SetEndAlpha(0)
				e:SetBounce(1)
				e:SetGravity(Vector(0,0,20))
				e:SetColor(255,255,255)
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

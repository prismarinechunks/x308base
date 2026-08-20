function EFFECT:Init(data)
	local p=data:GetOrigin()
	local m=ParticleEmitter(p)
		for i=1,math.floor(20)do
			local e=m:Add("particles/smokey",p)
			if e then
			local v=VectorRand()*math.Rand(0,200)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(.6,1))
				e:SetStartSize(math.Rand(24,39))
				e:SetEndSize(4)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(v/10)
				e:SetColor(255,255,255)
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

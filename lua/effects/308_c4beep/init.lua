function EFFECT:Init(data)
	local p=data:GetOrigin()+Vector(0,0,5)
	local m=ParticleEmitter(p)
			local e=m:Add("effects/yellowflare",p)
			if e then
				e:SetLifeTime(0)
				e:SetDieTime(.5)
				e:SetStartSize(25)
				e:SetEndSize(25)
				e:SetStartAlpha(255)
				e:SetEndAlpha(0)
				e:SetGravity(Vector(0,0,0))
				e:SetColor(255,0,0)
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

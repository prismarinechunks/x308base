function EFFECT:Init(data)
	local p=data:GetOrigin()
	local m=ParticleEmitter(p)
	local a
	if !MC_NoMissMDL then a="particles/smokey" end
		for i=1,math.random(8,12)do
			local e=m:Add(a or "particles/minecraft/smoke3",p+Vector(0,0,8))
			if e then
			local v=RandomSpherePoint()*math.Rand(80,100)
			if v.z<0 then v.z=0 end
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(3.1,3.4))local s=math.Rand(4,6)
				e:SetStartSize(s)
				e:SetEndSize(s)
				e:SetBounce(1)
				e:SetAirResistance(130)
				e:SetGravity(Vector(0,0,math.Rand(30,55)))
				local r=math.random(150,200)
				e:SetColor(r,r,r)
				if !a then
				for l=1,3 do
				timer.Simple(l*math.Rand(.65,.99),function()e:SetMaterial("particles/minecraft/smoke"..3-l)end)end end
			end
		end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

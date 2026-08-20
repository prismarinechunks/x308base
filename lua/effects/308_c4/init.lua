function EFFECT:Init(data)
	local p=data:GetOrigin()
	local n=data:GetMagnitude()
	local m=ParticleEmitter(p)
	if n>1 then
		for i=1,10 do
			local e=m:Add("effects/fire_cloud"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(100,5000)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1,2))
				e:SetStartSize(1)
				e:SetEndSize(math.Rand(9000,17500))
				e:SetStartAlpha(255)
				e:SetEndAlpha(0)
				e:SetBounce(1)
				e:SetRoll(math.Rand(-90,90))
				e:SetGravity(Vector())
				e:SetColor(255,255,255)
			end
		end
		for i=1,30 do
			local e=m:Add("effects/fire_cloud"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(100,5399)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(7,12))
				e:SetStartSize(1200)
				e:SetEndSize(math.Rand(4000,7500))
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetBounce(1)
				e:SetRoll(math.Rand(-90,90))
				e:SetGravity(Vector(0,0,-50)-v/8)
				e:SetColor(255,255,255)
			end
		end
		for i=1,150 do
			local e=m:Add("effects/fire_cloud"..math.random(2),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(1985,9399)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(5,7.5))
				e:SetStartSize(300)
				e:SetEndSize(math.Rand(100,300))
				e:SetStartAlpha(255)
				e:SetEndAlpha(0)
				e:SetBounce(1)
				e:SetRoll(math.Rand(-40,40))
				e:SetGravity(Vector(0,0,-180))
				e:SetColor(255,255,255)
			end
		end
		for i=1,750 do
			local e=m:Add("particles/smokey",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(100,225+i*10)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(12,32))
				e:SetStartSize(math.random(200,2725))
				e:SetEndSize(5100)
				e:SetStartAlpha(math.random(90,122))
				e:SetEndAlpha(0)
				e:SetRoll(math.Rand(-90,90))
				e:SetGravity(-v/10)
				if math.random(15)<3 then
				e:SetCollide(true)end
				e:SetColor(255,255,255)
			end
		end
		for i=1,100 do
			local e=m:Add("effects/yellowflare",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(500,700)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1,2))
				e:SetStartSize(math.Rand(7,9))
				e:SetEndSize(1)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(-v/2)
				e:SetColor(255,255,255)
			end
		end
		for i=1,500 do
			local e=m:Add("effects/fire_embers"..math.random(3),p)
			if e then
			local v=RandomSpherePoint()*math.Rand(1200,15000)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(4.5,7))
				e:SetStartSize(12)
				e:SetEndSize(15)
				e:SetStartAlpha(155)
				e:SetEndAlpha(30)
				e:SetCollide(true)
				e:SetGravity(Vector(0,0,-500))
				e:SetColor(255,255,255)
			end
		end
	else
		for i=1,10 do
			local e=m:Add("effects/yellowflare",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(200,300)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(.8,1))
				e:SetStartSize(math.Rand(100,200))
				e:SetEndSize(19)
				e:SetStartAlpha(255)
				e:SetEndAlpha(0)
				e:SetGravity(-v*2)
				e:SetColor(0,255,255)
			end
		end
		for i=1,50 do
			local e=m:Add("effects/yellowflare",p)
			if e then
			local v=RandomSpherePoint()*math.Rand(200,300)
				e:SetVelocity(v)
				e:SetLifeTime(0)
				e:SetDieTime(math.Rand(1,2))
				e:SetStartSize(math.Rand(7,9))
				e:SetEndSize(19)
				e:SetStartAlpha(155)
				e:SetEndAlpha(0)
				e:SetGravity(-v*2)
				e:SetColor(255,255,155)
			end
		end
	end
	m:Finish()
end
function EFFECT:Think()return false end
function EFFECT:Render()end

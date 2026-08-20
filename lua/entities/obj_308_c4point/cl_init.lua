include('shared.lua')

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()
end

/*---------------------------------------------------------
   Name: ENT:Think()
---------------------------------------------------------*/
function ENT:Think()
end

/*---------------------------------------------------------
   Name: ENT:Draw()
---------------------------------------------------------*/
function ENT:Draw()
	local ledcolor=Color(255,255,255)
  	local Position=self:GetPos()
	local Angles=self:GetAngles()
	Angles:RotateAroundAxis(Angles:Right(), Vector(90, 90, 90).x)
	Angles:RotateAroundAxis(Angles:Up(), Vector(90, 90, 90).y)
	Angles:RotateAroundAxis(Angles:Forward(), Vector(90, 90, 90).z)
	cam.Start3D2D(Position,Angles,1)
	draw.SimpleText("I","308CS",-27,-23,ledcolor)
	cam.End3D2D()
end
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
	local ledcolor=Color(255,0,0)
  	local Position=self:GetPos()
	local Angles=self:GetAngles()
	Angles:RotateAroundAxis(Angles:Right(), Vector(90, 90, 90).x)
	Angles:RotateAroundAxis(Angles:Up(), Vector(90, 90, 90).y)
	Angles:RotateAroundAxis(Angles:Forward(), Vector(90, 90, 90).z)
	cam.Start3D2D(Position, Angles, 1)
	draw.SimpleText("H","308CS",-21,-21,ledcolor)
	cam.End3D2D()
end
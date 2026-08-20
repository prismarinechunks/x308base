include('shared.lua')
function ENT:Initialize()
	if CLIENT then
	language.Add(self:GetClass(),"Sans")
	end
end
function ENT:Draw()
	self:DrawModel()

end
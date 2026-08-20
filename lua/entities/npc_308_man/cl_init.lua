include("shared.lua")
function ENT:Initialize()
language.Add(self:GetClass(),self.KillName or self.PrintName)
if self.KillIcon then
killicon.Add(self:GetClass(),self.KillIcon,self.KillIconColor)end
end
function ENT:Draw()
if !self:GetNoDraw()then
self:DrawModel()end
end

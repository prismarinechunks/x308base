--Disable Jumper
local t=CurTime()
GAME308=0
SF308=0
hook.Add("PlayerTick","GoldSourceMoveType",function(p)
if GAME308<1||SF308>0 then return end
p._GSMTG=p._GSMTG or CurTime()
p._GSMT=p._GSMT or Vector(0,0,0)
if !p:IsOnGround()and !p._GSMTJ then
p:SetLocalVelocity(Vector(p._GSMT.x,p._GSMT.y,p:GetVelocity().z))
p._GSMTJ=1
elseif p:IsOnGround()and p._GSMTJ then
p._GSMTZ=math.Clamp(p._GSMT.z,0,1500)
p._GSMTG=CurTime()-p._GSMTZ*.001
p._GSMTJ=nil
end
if p._GSMTG>CurTime()and p:IsOnGround()then
p:SetVelocity(Vector(-p:GetVelocity().x*-p._GSMTZ*.0012,-p:GetVelocity().y*-p._GSMTZ*.0012,0))
end
p._GSMT=p:GetVelocity()
end)

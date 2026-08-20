AddCSLuaFile()
ENT.Base="npc_308_man"
ENT.PrintName="THIS IISSS GREEAAATTEESSTTT PLAAANNNNNN"--Henry Stickmin, Charles
ENT.UseSprite=true
ENT.BloodColor=-1
ENT.StartMusPitch=100
ENT.AttFaceTo=true
ENT.HasRagdoll=false
ENT.QuickRemove=true
ENT.RenderGroup=9
ENT.Acceleration=3999
ENT.Deceleration=3999
ENT.YawRate=999
ENT.EyePosOffset=45
ENT.WalkT=.2
--ENT.SpriteType="pixel"
--ENT.AutomaticFrameAdvance=false
function ENT:_BInit()
self:AddEFlags(EFL_NO_DISSOLVE)
if SERVER then--Shadow Problem
local m=ents.Create("prop_physics")m:SetModel("models/hunter/tubes/circle2x2.mdl")m:SetPos(self:GetPos()+Vector(0,0,7))m:SetParent(self)m:Spawn()m:SetSolid(0)m:SetNoDraw(true)self:DrawShadow(true)local w=self.SpriteScale
if self.SpriteH and w>self.SpriteH then w=self.SpriteH end
m:SetModelScale(w/140)end-----

if self.IsUT then
if self.StoryMode then
for _,p in pairs(player.GetAll())do
p.UT_Selecting=false
p:SetNetworkedString("UT_MenuFight",self.Menu_Fight)
p:SetNetworkedString("UT_MenuAct",self.Menu_Act)
p:SetNetworkedString("UT_MenuItem",self.Menu_Item)
p:SetNetworkedString("UT_MenuMercy",self.Menu_Mercy)
p:SetNetworkedString("UT_MenuFight2",self.Menu_Fight2)
p:SetNetworkedString("UT_MenuAct2",self.Menu_Act2)
p:SetNetworkedString("UT_MenuItem2",self.Menu_Item2)
p:SetNetworkedString("UT_MenuMercy2",self.Menu_Mercy2)
p:SetNetworkedString("UT_ActLebel1",self.Act1Text)p:SetNetworkedString("UT_ActLebel2",self.Act2Text)p:SetNetworkedString("UT_ActLebel3",self.Act3Text)end
end
local r
if self.StoryMode then for _,e in pairs(ents.GetAll())do if e.Is308Bot and e.IsUT and e.StoryMode and e!=self then r=1 end end end
if r then
local c=self:GetCreator()if IsValid(c)then c:ChatPrint(GAME308_LAN1["storynpc"])self._Dont=1 end
return true else
local i
for _,e in pairs(ents.GetAll())do if IsValid(e)and e!=self and e.IsUT and(e.StartMus||e.StoryMode)then i=1 end end
self:SetNWInt("_HP",self.HP)
end
end
end
function ENT:_BThink()
if self._Disappear then
self:SetColor(Color(255,255,255,math.Clamp(self:GetColor().a-self.Disa_Speed,0,255)))
if self:GetColor().a<106 then
self:DrawShadow(false)
self:SetSolid(0)
end
if self:GetColor().a<1 then
if IsValid(self._Attacker)then
self:Kill(self._Attacker)
else
SafeRemoveEntity(self)
end
end
end
end
function ENT:Disappear(t,a)timer.Simple(t or 0,function()if IsValid(self)then self._Disappear=1 end end)self._Attacker=a end 
function ENT:SpriteAnimUpdate()
net.Start("308spr")
net.WriteEntity(self)
for _,p in pairs(player.GetAll())do
net.Send(p)end
end
--Loop--Play--Set
if SERVER then
util.AddNetworkString("308spr")
end
if SERVER then return end
net.Receive("308spr",function(length,ply)local e=net.ReadEntity()
e._Toggled=nil
e:SetNWBool("SpriteAnimT",true)
end)

--function ENT:OverrideDraw(m,v,n,c)end--
--This function can use to make animation--
ENT.Frame=2
ENT.FrameW=""
--[[
["idle"]={Loop=1,Delay=.2,AutoToggle="walk",Mode,Frame={"pvz/z/zidle.png"}}
Default Settings
Mode=0 --Frame reset mode
1=when played,reset frame
2=when end,reset frame
3=wait until next SetSpriteAnim()
AutoToggle=nil --auto toggle to anim, example="attack"
--]]
ENT._TA="idle"
function ENT:Draw()
self.FrameT=self.FrameT or CurTime()
local m=Material(self:GetNetworkedString("Sprite"))
local d=self:GetNWInt("DodgeClient")
local p="null"
if d>.5 then
self:SetNWInt("DodgeClient",Lerp(.15,self:GetNWInt("DodgeClient"),.49))elseif d>0 then
self:SetNWInt("DodgeClient",math.Clamp(self:GetNWInt("DodgeClient")-.1*(.6-self:GetNWInt("DodgeClient")),0,1))end
d=self:GetNWInt("DodgeClient")
local ss=self:GetNWInt("SpriteScale")
ss=self:GetNWInt("SpriteScale")*self:GetModelScale()
if self:GetNWBool("ShowHP")and self:GetNWInt("_HP")>0 and self.ShowHPText then
local A=self:GetAngles()
A:RotateAroundAxis(A:Right(),0)
A:RotateAroundAxis(A:Up(),90)
A:RotateAroundAxis(A:Forward(),90)
cam.Start3D2D(self:GetPos()+Vector(0,0,self.BBox.z+15*self:GetModelScale()),A,.5)
draw.SimpleText(self:GetNWInt("_HP"),self.ShowHPText,0,0,Color(0,255,0),1,1)
cam.End3D2D()
end
if isnumber(d)and d>.5 then d=1-d end
local c=self:GetColor()
local sh=self:GetNWInt("SpriteShake")
local v=VectorRand()*sh+LocalPlayer():GetRight()*self:GetNWInt("DodgeV")*d
local pos=self:GetPos()+Vector(v.x,v.y,(self.SpriteH or ss)/2)
if !isnumber(self:GetNWInt("SpriteScale"))then
pos=self:GetPos()+Vector(v.x,v.y,self.BBox.z/2)
ss=self.BBox.z*self:GetModelScale()
end
local s4=self:GetNetworkedString("Sprite4")
local s=self.Sprites
local sf=self.SpriteForce
if m then
if !self:GetNWBool("Lig")then
l=render.ComputeLighting(pos,Vector(0,0,1))
l.x=c.r*(math.Clamp(l.x,0,1)+0.5)
l.y=c.g*(math.Clamp(l.y,0,1)+0.5)
l.z=c.b*(math.Clamp(l.z,0,1)+0.5)end
render.SetMaterial(m)
local n=EyePos()-pos n:Normalize()
local xy=Vector(n.x,n.y,0)xy:Normalize()
local j=math.acos(1)
local cos=math.cos(j)
n=Vector(xy.x*cos,xy.y*cos,math.sin(j))
if isfunction(self.OverrideDraw)then self:OverrideDraw(pos,n,Color(l.x,l.y,l.z,c.a))return end
render.DrawQuadEasy(pos,n,ss,self.SpriteH or ss,Color(l.x,l.y,l.z,c.a),180)
--render.DrawSprite(pos,ss,ss,Color(l.x,l.y,l.z,c.a))
elseif s4||table.Count(s)>0||sf then
if s4!="" then
local a=(EyePos()-self:GetPos()):Angle()
a=a-self:GetAngles()
a.y=a.y+360
while a.y>360 do a.y=a.y-360 end
local f="f"
if a.y>=45 and a.y<135 then
f="l"
elseif a.y>=135 and a.y<225 then
f="b"
elseif a.y>=225 and a.y<=315 then
f="r"
end
if self.FrameD!=f then self.FrameD=f
if Material(s4..f..self.FrameW..".png"):IsError()then self.FrameW=""
end
end
p=s4..f..self.FrameW..".png"
if self:GetNWBool("Moving")then
if self.FrameT<CurTime()then
self.FrameT=self.FrameT+self.WalkT
if self.FrameW=="" then self.FrameW=0 end
self.FrameW=self.FrameW+1
if Material(s4..f..self.FrameW..".png"):IsError()then self.FrameW=""
end
end
else
self.FrameW=""
end
elseif table.Count(s)>0 then
local function SR(s)return self:GetNWInt("SpriteRate_"..s)end
local n=1
local s2=self:GetNetworkedString("SpriteAnim2")
local sa=self:GetNetworkedString("SpriteAnim")
local ta=s[self:GetNetworkedString("SpriteIdle")]
local tr=s[self:GetNetworkedString("SpriteRun")]
local tw=s[self:GetNetworkedString("SpriteWalk")]
if self:GetNWBool("SpriteAnimT")and s[s2]then
self:SetNetworkedString("SpriteAnim",s2)self._Toggled=nil
if(self._TA and self._TA.Mode==2)||(s[s2].Mode==1)then
self.FrameW=1
end
end
self:SetNWBool("SpriteAnimT",false)
if s[sa]and !self._Toggled then
ta=s[sa]
else
--[[
if self:GetNWBool("Walking")and sw!="" then
n=SR("Walk")
ta=tw or tr or ta
if self:GetNWBool("Running")and sr!="" then
n=SR("Run")
ta=tr or tw or ta
end
end
--]]
if self:GetNWBool("Moving")and sw!="" then
n=SR("Move")
ta=tr or tw or ta
end
end
if self:GetNWBool("AI")and GetConVarNumber("ai_disabled")!=1 then
if self._TA!=ta then
if(self._TA and self._TA.Mode==2)||(ta and ta.Mode==1)then
self.FrameW=1
end
self._TA=ta
end
elseif self._TA then
ta=self._TA
end
if self.FrameW=="" then self.FrameW=1  end
if ta then
while self.FrameT<CurTime()do
if ta.Rate then n=ta.Rate end
local TT=ta.Delay or .01
self.FrameT=self.FrameT+TT*n*1.1
--self.FrameT=CurTime()+TT*n*1/FrameTime()*.02
if self:GetNWBool("AI")and GetConVarNumber("ai_disabled")!=1 then
self.FrameW=self.FrameW+1
if table.Count(ta.Frame)<self.FrameW then
if ta.AutoToggle then
self.FrameW=table.Count(ta.Frame)
if ta.AutoToggle=="" then self._Toggled=1
else self:SetNetworkedString("SpriteAnim",ta.AutoToggle)end
elseif ta.NoLoop then
self.FrameT=CurTime()
self.FrameW=table.Count(ta.Frame)
else
self.FrameW=1
end
end
end
end
if ta.Frame then
if !ta.Frame[self.FrameW]then
self.FrameW=1
end
p=ta.Frame[self.FrameW]
end
end
end
if self:GetNWBool("ForceSprite")then--find a day to deal with this fucking useless function
if istable(sf)then
if self.Frame>table.Count(sf)then
self.Frame=1
end
p=sf[self.Frame]
if self.FrameT<CurTime()then
self.FrameT=CurTime()+self.SpriteForcePer
self.Frame=self.Frame+1
end
elseif sf then
p=sf end
end--
m=Material(p,self.SpriteType)
local c=self:GetColor()
if m then
---Error("picture no found")
pos=self:GetPos()+Vector(v.x,v.y,ss/2)
local l={x=c.r,y=c.g,z=c.b}
if !self:GetNWBool("Lig")then
l=render.ComputeLighting(pos,Vector(0,0,1))
l.x=c.r*(math.Clamp(l.x,0,1)+0.5)
l.y=c.g*(math.Clamp(l.y,0,1)+0.5)
l.z=c.b*(math.Clamp(l.z,0,1)+0.5)end
render.SetMaterial(m)
local n=EyePos()-pos
n:Normalize()
local xy=Vector(n.x,n.y,0)xy:Normalize()
local p2=math.acos(1)
local cos=math.cos(p2)
n=Vector(xy.x*cos,xy.y*cos,math.sin(p2))
render.DrawQuadEasy(pos,n,ss,ss,Color(l.x,l.y,l.z,c.a),180)
end
end
end
SWEP.Base = "weapon_308_9mm" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["up_p"]
SWEP.Category = "X Base | Guns"
SWEP.HoldType = "pistol"
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.Primary.Automatic=true
SWEP.PA_Delay=.21
SWEP.PA_Sound = "weapons/pistol/pistol_fire3.wav"
SWEP.Spawnable = true
SWEP.ReloadSound = {
{Sound="weapons/pistol/pistol_reload1.wav"}
}
SWEP.ReloadSound2 = {
{Sound="weapons/pistol/pistol_reload1.wav"},
{Delay=1,Sound="3088083421/wep/reload/pis_sliderelease.ogg"}
}
SWEP.TextColor=Color(99,255,99)

SWEP.PClip=18

function SWEP:LUP()
local r=math.random(6)
while r==3 and self.PA_Recoil<.0004 do
r=math.random(6)end
while r==4 and self.PA_Spread<.0004 do
r=math.random(6)end
while r==6 and self.ReloadTime<.4 do
r=math.random(6)end
if r<2 then
self:SetNWInt("clip",self:GetNWInt("cilp")+2)
self.PClip=self.PClip+2
elseif r<3 then
self:SetNWInt("dmg",self:GetNWInt("dmg")+4)
self.PA_Damage=self.PA_Damage+4
elseif r<4 then
self.PA_Recoil=self.PA_Recoil*.8
self:SetNWInt("recoil",self:GetNWInt("recoil")*.8)
self.PA_AimRecoil=self.PA_AimRecoil*.8
elseif r<5 then
self.PA_Spread=self.PA_Spread*.85
self:SetNWInt("sPread",self:GetNWInt("sPread")*.85)
self.PA_AimSpread=self.PA_AimSpread*.75
elseif r<6 then
self.PA_Delay=self.PA_Delay*.9
self:SetNWInt("delay",self:GetNWInt("delay")*.9)
elseif r<7 then
self.ReloadSound[1].Pitch=self.ReloadSound2[1].Pitch*1.07
self.ReloadSound2[1].Pitch=self.ReloadSound2[1].Pitch*1.07
self.ReloadSound2[2].Delay=self.ReloadSound2[2].Delay*.85
self.StopRAnimTime=self.StopRAnimTime*.85
self.ReloadTime=self.ReloadTime*.85
self.ClipoutTime=self.ClipoutTime*.85
self.ClipinTime=self.ClipinTime*.85
self.BoltPullTime=self.BoltPullTime*.85
self.ReloadTime2=self.ReloadTime2*.85
self.ReloadAnimRate=self.ReloadAnimRate*1.07
self:SetNWInt("rt",self:GetNWInt("rt")+.15)
end
end
function SWEP:CustomThink()
self.Primary.ClipSize=self.PClip
self:SetNWInt("m",math.Clamp(self:GetNWInt("m")-.5,0,110))
end
function SWEP:CustomInit()
self:SetNWInt("Level",1)
self:SetNWInt("Next",500)
self:SetNWInt("Exp",0)
self:SetNWInt("m",0)

self:SetNWInt("clip",0)
self:SetNWInt("dmg",0)
self:SetNWInt("recoil",1)
self:SetNWInt("sPread",2)
self:SetNWInt("delay",21)
self:SetNWInt("rt",1)
end
function SWEP:CusHUD()
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local e=math.floor(self:GetNWInt("Exp"))
local m=self:GetNWInt("m")*2
local n=self:GetNWInt("Next")
local l=self:GetNWInt("Level")-1
local c=Color(255-m,255,255-m)
draw.SimpleText("LV "..self:GetNWInt("Level"),"entcheck",ScrW()*.36,ScrH()*.86,c,tl,tc)
draw.SimpleText("NEXT:"..(n-e),"entcheck",ScrW()*.55,ScrH()*.93,c,tl,tc)
draw.SimpleText("EXP "..e,"entcheck",ScrW()*.4,ScrH()*.93,c,tl,tc)
draw.SimpleText("STAT","entcheck",ScrW()*.04,ScrH()*.6,c,tl,tc)
draw.SimpleText("ClipSize:18+"..self:GetNWInt("clip"),"entcheck",ScrW()*.02,ScrH()*.63,c,tl,tc)
draw.SimpleText("Damage:8+"..self:GetNWInt("dmg"),"entcheck",ScrW()*.02,ScrH()*.66,c,tl,tc)
local re=self:GetNWInt("recoil")
if re<.0004 then re="MIN" end
draw.SimpleText("Recoil:1->"..re,"entcheck",ScrW()*.02,ScrH()*.69,c,tl,tc)
local s=self:GetNWInt("sPread")
if s<.04 then s="MIN" end
draw.SimpleText("Spread:0.02->"..s*.01,"entcheck",ScrW()*.02,ScrH()*.72,c,tl,tc)
draw.SimpleText("Fire rate:0.21->"..self:GetNWInt("delay")*.01,"entcheck",ScrW()*.02,ScrH()*.75,c,tl,tc)
local rt=self:GetNWInt("rt")
if rt<.4 then rt="MAX" end
draw.SimpleText("Reload Speed:1->"..rt,"entcheck",ScrW()*.02,ScrH()*.78,c,tl,tc)
surface.SetDrawColor(255-m,math.Clamp(255-l*5,0,255),math.Clamp(255-l*5-m,0,255))
surface.DrawLine(ScrW()*.4,ScrH()*.9,ScrW()*.6,ScrH()*.9)
surface.DrawRect(ScrW()*.4,ScrH()*.84,ScrW()*.2*(e/n),ScrH()*.05)
surface.SetMaterial(Material("icon16/gun.png","pixel"))surface.DrawTexturedRect(ScrW()*(.39+(.2*(e/n))),ScrH()*.84,ScrH()*.05,ScrH()*.05)
end
function SWEP:DamageNPC(d,e)
local p=self.Owner
if SERVER then
local m=d:GetDamage()
local ex=m
if m>e:Health()then ex=e:Health()end
self:SetNWInt("Exp",self:GetNWInt("m")/2+self:GetNWInt("Exp")+ex)
if self.Vamp then
local h=p:Health()+d:GetDamage()/5
if m>e:Health()then h=p:Health()+e:Health()/5 end
if h<p:GetMaxHealth()then
p:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.3,0)
p:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(math.Clamp(h,0,p:GetMaxHealth()))
else
p:ScreenFade(SCREENFADE.IN,Color(255,0,0,55),.2,0)
p:EmitSound("3088083421/smallmedkit1.wav")
p:SetHealth(p:GetMaxHealth())
end
end
self:SetNWInt("m",self:GetNWInt("m")+m)
end
if self:GetNWInt("Exp")>self:GetNWInt("Next")then
self:SetNWInt("Next",self:GetNWInt("Next")+150)
self:SetNWInt("Level",self:GetNWInt("Level")+1)
self:SetNWInt("Exp",0)
p:EmitSound("3088083421/mg/levelup.ogg")
self:LUP()
end
end

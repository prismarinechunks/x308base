AddCSLuaFile()
ENT.Base="npc_308_base_s"
ENT.PrintName="UT BASE"
ENT.IsUT=1
ENT.ShowHPText="8bito_menu"
--ENT.StartMus=""
--
ENT.DirectlyXP=true
ENT.XP=0
--ENT.LV=nil---1
--ENT.LVUpTo=nil--20
--
ENT.Voice="undertale/sans/sans_speech.wav"
ENT.VoiceP=100
ENT.SpeakSpeed=20
ENT.Disa_Speed=4
ENT.RenderGroup=RENDERGROUP_TRANSLUCENT
ENT.QuickRemove=false
ENT.ShowHP=false
ENT.AttackIgnoreWorld=true
--ENT.StoryMode
ENT.Turn=true
ENT._SpeakM=0
ENT.Dust=0

ENT.Act1Text=""
ENT.Act2Text=""
ENT.Act3Text=""
ENT.Menu_Fight="undertale/ui/fightbt_0.png"
ENT.Menu_Act="undertale/ui/actbt_0.png"
ENT.Menu_Item="undertale/ui/itembt_0.png"
ENT.Menu_Mercy="undertale/ui/mercybt_0.png"
ENT.Menu_Fight2="undertale/ui/fightbt_1.png"
ENT.Menu_Act2="undertale/ui/actbt_1.png"
ENT.Menu_Item2="undertale/ui/itembt_1.png"
ENT.Menu_Mercy2="undertale/ui/mercybt_1.png"

UT_TextYMenu=.64
UT_TextY1=.6
UT_TextY2=.635
UT_TextY3=.675
UT_TextY4=.705

function UT()if #ents.FindByClass("308ut")>0 then return 1 end end
if SERVER then
util.AddNetworkString("UT_Encounter")
else
net.Receive("UT_Encounter",function(l,p)
if !file.Exists("materials/undertale/frisk/dead.png","GAME")then return end
--who want to see many shaking purple black lattice on its screen? <:O
local f=vgui.Create("DFrame")
surface.PlaySound("3088083421/ut/enemy.wav")
f:SetSize(ScrW(),ScrH())
f:SetSizable(true)
f:SetTitle("")
f:ShowCloseButton(false)
f:SetScreenLock(true)
f:SetDraggable(false)
f:SetTitle("")
f.TTi=CurTime()+.15
f.TTi2=CurTime()+.45
f.TTi3=CurTime()+1.25
f.TTi4=CurTime()+1.75
f.TTi5=CurTime()+2.25
f.TTn=1
f.TT2=1
f.Paint=function(self,w,h)
local c=255
if f.TTi4<CurTime()then
c=c*2*(f.TTi5-CurTime())end
if f.TTi>CurTime()||f.TTi+.15<CurTime()then
draw.RoundedBox(0,0,0,w,h,Color(0,0,0,math.Clamp(c,0,255)))
end
return end
f.i9=vgui.Create("DImage",f)
f.i9:SetImage("undertale/ut-heart.png")
f.i9:SetImageColor(LocalPlayer():GetPlayerColor():ToColor())
local s=16*(ScrH()/480)
f.i9:SetPos(ScrW()/2-s/2,ScrH()/2-s/2)
f.i9:SetSize(s,s)
f.Think=function()if f.TTi<CurTime()and f.TTn<3 then
f.TTi=CurTime()+.15
f.i9:SetAlpha(255)if f.TTn==1 then
f.i9:SetAlpha(0)end
f.TTn=f.TTn+1 end
if f.TTi2<CurTime()and f.TTi2>CurTime()-.5 then
f.TT2=(f.TTi2+.05-CurTime())*2
f.i9:SetPos(ScrW()/2-s/2-179.25+179.25*f.TT2,ScrH()*(.65-.1*f.TT2)-s/2)end
if f.TTi3<CurTime()and f.TTi3>CurTime()-.5 then
f.i9:SetAlpha(math.floor(math.Clamp(255*(f.TTi3+.5-CurTime())/.5,0,255)))
end
if f.TTi5<CurTime()then
f:Close()end
end
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f:MakePopup()end)
end

usermessage.Hook("UT_How",function()local x=ScrW()local y=ScrH()local bo
local bo2
local p=LocalPlayer()local f=vgui.Create("DFrame")
local function Mus(src)--Thanks to VictorienXP@Xperidia's code
if IsValid(f.CurMusic)and src=="play" then
f.CurMusic:Play()
elseif IsValid(f.CurMusic)and src=="pause" then
f.CurMusic:Pause()
elseif IsValid(f.CurMusic)then
f.CurMusic:Stop()
f.CurMusic=nil
end
if src != "stop" and src != "pause" and src != "play" then
local function d(mus)if IsValid(mus)then
mus:SetVolume(1)mus:EnableLooping(true)f.CurMusic=mus end
end
sound.PlayFile("sound/"..src,"noblock",d)
end
end

f:SetSize(x,y)
f:SetTitle("")
--f:SetBackgroundBlur(true)
f:SetSizable(true)
f:SetVisible(true)
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f:MakePopup()
f.Paint=function(self,w,h)draw.RoundedBox(0,0,0,w,h,Color(0,0,0))return end
local b1=vgui.Create("DButton",f)
b1:SetPos(5,60)
b1:SetSize(247,30)
b1:SetText("Changelog")
b1:SetColor(color_white)
b1.Paint=function()return end
b1:SetVisible(false)
b1.DoClick=function()surface.PlaySound("undertale/menu/press.wav")bo2="undertale/ui/sap.png" end
b1:SetFont("8bito_menu")
local b2=vgui.Create("DButton",f)
b2:SetPos(5,50)
b2:SetSize(337,30)
b2:SetText("Problems")
b2:SetColor(color_white)
b2.Paint=function()return end
b2:SetVisible(false)
b2.DoClick=function()surface.PlaySound("undertale/menu/press.wav")bo2="undertale/ui/problems.png" end
b2:SetFont("8bito_menu")
local b3=vgui.Create("DButton",f)
b3:SetPos(5,100)
b3:SetSize(247,30)
b3:SetText("Help the authors?")
b3:SetColor(color_white)
b3.Paint=function()return end
b3:SetVisible(false)
b3.DoClick=function()surface.PlaySound("undertale/menu/press.wav")gui.OpenURL("https://steamcommunity.com/workshop/filedetails/discussion/2114793408/3111404628291950785/")end
b3:SetFont("8bito_menu")
local b=vgui.Create("DButton",f)
b:SetPos(5,10)
b:SetSize(317,30)
b:SetText("Continue your game")
b:SetVisible(false)
b:SetColor(color_white)
b.Paint=function()return end
b.DoClick=function()surface.PlaySound("undertale/menu/press.wav")f:Close()end
b:SetFont("8bito_menu")
local bf=vgui.Create("DButton",f)
bf:SetSize(x,y)
bf:SetText("")
bf.Paint=function()return end
bf:SetFont("8bito_menu")
surface.PlaySound("undertale/suspenso.wav")
local function L(s,s2,t)local l=vgui.Create("DLabel",f)l:SetPos(s,s2)l:SetFont("8bito_menu")l:SetText(t)l:SizeToContents()return l end
local function P(s,s2,z,a,t)local l=vgui.Create("DImage",f)l:SetImage(t)l:SetSize(z,a)local w,e=l:GetSize()l:SetPos(s-w,s2-e/2)l:SetText(t)l:SizeToContents()return l end
local title=P(x/2,y/2,x/5,y/10,"undertale/ui/garrytale.png")
local g
--[[
L(30,50,"Now we've added battle menu!\nyou can aim a NPC(Story Mode) then press E to open!\nbut if not is your turn, you cannot open!\nhave fun! -QQ3088083421")
L(30,190,"现在我们已经添加了战斗菜单!\n你可以对准一个NPC(故事模式)然后按E键打开!\n但是如果不是你的回合，你就不能打开!\n玩得愉快! -QQ3088083421")
L(30,330,"Supported NPC:Sans、Dusttale Sans(Demo?)&(First Fight)、\nDusttale Chara(StoryMode)")
L(480,250,"Some suggestions\ni still need to\nconsider...")
--]]
timer.Simple(4.5,function()if !bo then
g=L(x/2-70,y*.6,"[PRESS ANYWHERE]")end
end)
f.OnClose=function()Mus("stop")end
bf.DoClick=function()if !bo then
L(10,y-30,"Version 0.01")
bo=0
if g then g:Remove()end
Mus("music/undertale/menu0.mp3")
b1:SetVisible(true)
b:SetVisible(true)
b2:SetVisible(true)
b3:SetVisible(true)
bf:Remove()
local bg="undertale/ui/"..math.random(2)..".png"
f.bo=0
f.Paint=function(self,w,h)draw.RoundedBox(0,0,0,w,h,Color(0,0,0))
surface.SetDrawColor(255,255,255,125*bo)
surface.SetMaterial(Material(bg,"pixel"))surface.DrawTexturedRect((h-w)/4+(w-h)/8*math.sin(CurTime()/2),0,y*2,y)
surface.SetDrawColor(255,255,255,255*bo)
surface.SetMaterial(Material("undertale/ut-heart-g.png","pixel"))surface.DrawTexturedRect(w/2,h/5+math.sin(CurTime()*2)*h/80,h/20,h/20)
surface.SetDrawColor(255,255,255,215)
local ps,ph=self:LocalCursorPos()
if bo2 then
if f.bo<1 then
f.bo=f.bo+.05 end
surface.SetMaterial(Material(bo2,"pixel"))surface.DrawTexturedRect(w-w/2.5+200-f.bo*200,-h/2+ph,w/2.5,w)end
return end
f.Think=function()
b:SetPos(-490+500*bo,30+10*math.sin(CurTime()))
b1:SetPos(-490+500*bo,70+10*math.sin(CurTime()-1))
b2:SetPos(-490+500*bo,130+10*math.sin(CurTime()+8))
b3:SetPos(-490+500*bo,180+10*math.sin(CurTime()-5))
if bo and bo>=0 and bo<1 then
bo=bo+.02
local w,e=title:GetPos()
title:SetPos(w,e+y*bo/10)
--b1:SetPos(x/2,y/2+y*bo)
--b2:SetPos(x/2,y/2+y*bo)
end
end
end
end
end)
function ENT:ResetMenu()if !self.StoryMode then return end
for _,p in pairs(player.GetAll())do
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
function ENT:PlayEncounter()for _,e in pairs(player.GetAll())do
net.Start("UT_Encounter")net.Send(e)end
end
function ENT:OnUseItem(name)
end
function ENT:Talkin(l)local m=self._SpeakM
for i=1,l do
timer.Simple(i/self.SpeakSpeed,function()if IsValid(self)and m>=self._SpeakM then
_308PlaySoundAll(_308Table(self.Voice2 or self.Voice),self.VoiceP)end end)end
end
function ENT:StopSpeak()self._SpeakM=self._SpeakM+1 end
function ENT:_BThink()
if self.Dust>0 then
local e=EffectData()e:SetMagnitude(self.Dust)
e:SetOrigin(self:GetPos()+Vector(math.random(-self.BBox.x,self.BBox.x),math.random(-self.BBox.y,self.BBox.y),self.BBox.z*(self:GetColor().a/255)))
util.Effect("308ut_dust",e)end
self:SetNWBool("ShowHP",self.ShowHP)
self:SetNWInt("_HP",math.Clamp(self:Health(),0,self:GetMaxHealth()))
if self._Disappear then
self:SetColor(Color(self:GetColor().r,self:GetColor().g,self:GetColor().b,math.Clamp(self:GetColor().a-self.Disa_Speed,0,255)))
if self:GetColor().a<106 then
self:DrawShadow(false)self:SetSolid(0)end
if self:GetColor().a<1 and !self._Disappear1 then
SafeRemoveEntity(self)end
end
end
function ENT:_BIfBeingAimed(p)if p:KeyDown(IN_USE)and self.StoryMode and self.Turn and isfunction(self.Check)then
umsg.Start("UT_Menu",p)umsg.End()end
end

function ENT:GiveXP()
local p=self._GiveXP
if !IsValid(p)||!p:IsPlayer()then return end
local wep=p:GetActiveWeapon()
if IsValid(wep)and wep==self._GiveXPWep then
if self.LV||self.LVUpTo then
if self.LVUpTo then
l=math.Clamp(self.LVUpTo-1,1,20)else
local l=p:GetNWInt("Lvl")+self.LV end
wep:LVUP(l)else
wep:SetClip1(wep:Clip1()+self.XP)wep:LVUP()end
end
end
--function ENT:_BThink()
--function ENT:Act1(p)end
--function ENT:Act2(p)end
--function ENT:Act3(p)end
--function ENT:Check(p)end
--function ENT:Spare(p)end
function ENT:Disappear(t)timer.Simple(t or 0,function()if IsValid(self)then self._Disappear=1 end end)end

function ENT:DisappearNoRemove(t)self._Disappear1=1 timer.Simple(t or 0,function()if IsValid(self)then self._Disappear=1 end end)end
function ENT:_BOnKilled()
if self._Dont then return end
if self.StoryMode and !self.DontClearOnRemove then _308TextClear()Muss330()return end
local i
for _,e in pairs(ents.GetAll())do if IsValid(e)and e!=self and(e.StartMus||e.StoryMode)then i=1 end end
if !i and !self.DontClearOnRemove then _308TextClear()Muss330()end
end
concommand.Add("ut_fight",function(p)for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and e.Turn and !e.Dead then
e.Turn=nil
e:EmitSound("3088083421/wep/melee/slice.wav")UT_SliceEffect(e:EyePos()+e:GetForward()*30,64,.075)timer.Simple(.25,function()if IsValid(e)then
local d=DamageInfo()
d:SetDamage(30+5*p:GetNWInt("Lvl"))
d:SetDamageType(DMG_SLASH)
d:SetInflictor(p)
d:SetAttacker(p)
e:TakeDamageInfo(d)
end end)
end
end
end,nil,"")
concommand.Add("ut_act",function(p)
umsg.Start("UT_Act",p)umsg.End()end,nil,"")
concommand.Add("ut_item",function(p)
p:ChatPrint("Sorry! this function we must closed before finish!")p:EmitSound("buttons/button10.wav")
--umsg.Start("UT_Item",p)umsg.End()
end,nil,"")
concommand.Add("ut_mercy",function(p)
umsg.Start("UT_Mercy",p)umsg.End()end,nil,"")
concommand.Add("ut_spare",function(p)
for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and !e.Dead and e.Turn then
if !isfunction(e.Spare)then
p:ChatPrint("this NPC haven't set this function!")p:EmitSound("buttons/button10.wav")else
e.Turn=nil
e:Spare(p)end
end end
end,nil,"")
concommand.Add("ut_check",function(p)
for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and !e.Dead and e.Turn then
if !isfunction(e.Check)then
p:ChatPrint("this NPC haven't set Check!")p:EmitSound("buttons/button10.wav")else
e.Turn=nil
e:Check(p)end
end
end
end,nil,"")
concommand.Add("ut_label1",function(p)for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and !e.Dead and e.Turn then
if !isfunction(e.Act1)then
p:ChatPrint("this NPC haven't set this label!")p:EmitSound("buttons/button10.wav")else
e.Turn=nil
e:Act1(p)end
end
end
end,nil,"")
concommand.Add("ut_label2",function(p)for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and !e.Dead and e.Turn then
if !isfunction(e.Act2)then
p:ChatPrint("this NPC haven't set this label!")p:EmitSound("buttons/button10.wav")else
e.Turn=nil
e:Act2(p)end
end
end
end,nil,"")
concommand.Add("ut_label3",function(p)for _,e in pairs(Get308NextBots())do
if e.IsUT and e.StoryMode and !e.Dead and e.Turn then
if !isfunction(e.Act3)then
p:ChatPrint("this NPC haven't set this label!")p:EmitSound("buttons/button10.wav")else
e.Turn=nil
e:Act3(p)end
end
end
end,nil,"")
if SERVER then return end
	surface.CreateFont("8bito_menu", { 
		font = "8bitoperator JVE",
		size = 30, 
		weight = 500, 
		blursize = 0, 
		scanlines = 0, 
		antialias = false, 
		underline = false, 
		italic = false, 
		strikeout = false, 
		symbol = false, 
		rotary = false, 
		shadow = false, 
		additive = false, 
		outline = false, 
	})
usermessage.Hook("UT_Mercy",function()
local p=LocalPlayer()
if !p:GetNetworkedString("UT_Mercy")then return end
local f=vgui.Create("DFrame")
f:SetSize(234,150)
f.OnClose=function()p.UT_Selecting=false end
f:SetPos(563,537.6)
f:SetSizable(true)
f:SetDraggable(false)
f:SetTitle("")
f.Paint=function(self,w,h)
draw.RoundedBox(0,0,0,w,h-50,Color(255,255,255))
draw.RoundedBox(10,10,10,w-20,h-70,Color(0,0,0))
return end
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f:MakePopup()
local b=vgui.Create("DButton",f)
b:SetPos(0,0)
b:SetSize(117,50)
b.Paint=function()return end
b:SetText("Spare")
b:SetFont("8bito_menu")
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()p:ConCommand("ut_spare")surface.PlaySound("undertale/menu/press.wav")f:Close()end
local b=vgui.Create("DButton",f)
b:SetPos(58.5,100)
b:SetSize(117,50)
b.Paint=function()return end
b:SetText("Close")
b:SetFont("8bito_menu")
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()surface.PlaySound("undertale/menu/press.wav")f:Close()end
end)
usermessage.Hook("UT_Act",function()
local p=LocalPlayer()
if !p:GetNetworkedString("UT_MenuAct")then return end
local f=vgui.Create("DFrame")
f:SetSize(234,150)
f.OnClose=function()p.UT_Selecting=false end
f:SetPos(ScrW()/2-117,ScrH()*.7)
f:SetSizable(true)
f:SetDraggable(false)
f:SetTitle("")
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f.Paint=function(self,w,h)
draw.RoundedBox(0,0,0,w,h-50,Color(255,255,255))
draw.RoundedBox(10,10,10,w-20,h-70,Color(0,0,0))
return end
f:MakePopup()
local b=vgui.Create("DButton",f)
b:SetPos(0,0)
b:SetSize(117,50)
b:SetText("Check")
b:SetFont("8bito_menu")
b.Paint=function()return end
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()p:ConCommand("ut_check")surface.PlaySound("undertale/menu/press.wav")f:Close()end
local function P(n,p1,p2)
if p:GetNetworkedString("UT_ActLebel"..n)!="" then
local b=vgui.Create("DButton",f)
b:SetPos(p1,p2)
b:SetSize(117,50)
b.Paint=function()return end
b:SetText(p:GetNetworkedString("UT_ActLebel"..n))
b:SetFont("8bito_menu")
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()p:ConCommand("ut_label"..n)surface.PlaySound("undertale/menu/press.wav")f:Close()end
end
end
P(1,117,0)P(2,0,50)P(3,117,50)
local b=vgui.Create("DButton",f)
b:SetPos(58.5,100)
b:SetSize(117,50)
b.Paint=function()return end
b:SetText("Close")
b:SetFont("8bito_menu")
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()surface.PlaySound("undertale/menu/press.wav")f:Close()end
end)
usermessage.Hook("UT_Menu",function()
local p=LocalPlayer()
if p.UT_Selecting then return end
p.UT_Selecting=true
local f=vgui.Create("DFrame")
f:SetSize(717,100)
f.OnClose=function()p.UT_Selecting=false end
f:SetPos(ScrW()/2-717/2,ScrH()*.7)
f:SetSizable(true)
f:SetDraggable(false)
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f.Paint=function()return end
f:MakePopup()
local w=0
local function C(n,c)
if p:GetNetworkedString(n)then
local b=vgui.Create("DButton",f)
b:SetPos(w,0)
b:SetSize(117,50)
b.Paint=function()return end
b:SetMaterial(p:GetNetworkedString(n))
b.OnDepressed=function()b:SetMaterial(p:GetNetworkedString(n.."2"))surface.PlaySound("undertale/menu/move.wav")end
b.OnReleased=function()b:SetMaterial(p:GetNetworkedString(n))end
b.DoClick=function()p:ConCommand(c)surface.PlaySound("undertale/menu/press.wav")f:Close()end
end
w=w+200
end
C("UT_MenuFight","ut_fight")
C("UT_MenuAct","ut_act")
C("UT_MenuItem","ut_item")
C("UT_MenuMercy","ut_mercy")
local b=vgui.Create("DButton",f)
b:SetPos(300,50)
b:SetSize(117,50)
b:SetText("Close")
b:SetFont("8bito_menu")
b.Paint=function()return end
b.OnDepressed=function()surface.PlaySound("undertale/menu/move.wav")end
b.DoClick=function()surface.PlaySound("undertale/menu/press.wav")f:Close()end
end)

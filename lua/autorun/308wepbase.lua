local nt={FCVAR_SERVER_CAN_EXECUTE,FCVAR_NOTIFY,FCVAR_ARCHIVE}
CreateConVar("wb3_hud","0",nt,"That's Good --Starfish")
CreateConVar("wb3_infammo","0",nt,"That's Good --hopscp")
CreateConVar("wb3_sprint","1",nt,"That's Good --jinguinoh")
CreateConVar("wb3_viewpunch","1",nt,"That's Good --Bright moon breeze")
CreateConVar("wb3_oh","1",nt,"That's Good --Endrin")
CreateConVar("wb3_vmshake","1",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"That's Good --Speak")

CreateConVar("wb3_hudt","0",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_ban","1",nt,"")
CreateConVar("wb3_reloadpunish","0",nt,"")
CreateConVar("wb3_clipremove","60",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")

CreateConVar("wb3_mg_hg","5000",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_mg_zbhp","500",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_mg_zbre","4",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_mg_cs","120",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_c4","45",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")

CreateConVar("wb3_n_moveforward","0",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_n_talk","0",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_n_mcmdl","1",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_n_mdl","1",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")
CreateConVar("wb3_n_mode","0",nt,"")
CreateConVar("wb3_n_infection","3",nt,"")

CreateConVar("wb3_b_game","1",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"1=Enable minigames, 0=Disable.")
--game.AddAmmoType({name="ammo_blocks"})
--if CLIENT then language.Add("ammo_blocks_ammo","Block")end
--MOVETYPE TO PLAYER..
--2 Step , Normal
--4 Fly!??
Music308T=nil
Music308N=0
if CLIENT then
net.Receive("308musicperson",function()local r=net.ReadString()if r!="" then
LocalPlayer():ConCommand("play "..r)else
LocalPlayer():ConCommand("play null")end
end)
net.Receive("308musicperson2",function()surface.PlaySound(net.ReadString())end)
net.Receive("308music",function()
Mus308=Mus308 or {}
Mus=Mus308[1]or Mus308[0]
local m=net.ReadString()local s=net.ReadFloat()
local v=net.ReadFloat()local f=net.ReadFloat()local v2=net.ReadFloat()if m!=1 then
if Mus then
timer.Destroy("music308")Mus:Stop()Mus=nil Mus308={}end
Music308N=Music308N+1
sound.PlayFile("sound/"..m,"noplay",function(c)if IsValid(c)then
c:EnableLooping(true)
if f>=0 then
if v2<0 then
c:SetVolume(0)v2=v end
timer.Create("music308",f*.01,100,function()if Mus==c then
c:SetVolume(v2)end end)else
c:SetVolume(v)end
c:SetPlaybackRate(s)c:Play()
table.insert(Mus308,c)
end
end)
Mus=Mus308[1]or Mus308[0]
elseif Mus then
if v<0 then
timer.Destroy("music308")Mus:Stop()Mus=nil Mus308={}else
Mus:SetVolume(v)end
end
end)
else
util.AddNetworkString("308music_volume")util.AddNetworkString("308music")util.AddNetworkString("308musicperson")util.AddNetworkString("308musicperson2")end
function IsNextBot3(e)--it REALLY a good function, i always wondered why nobody think about it and to make one???
if isfunction(e.IsNextBot)then return e:IsNextBot()else return e.loco end
end----gmod 2017
hook.Add("EntityTakeDamage","weapon308xl88",function(ent,d)
if !IsValid(d:GetAttacker())then return end
if d:GetAttacker():GetClass()=="env_laser" and d:GetAttacker().Owner==ent then d:SetDamage(0)
elseif d:GetAttacker():GetClass()=="env_laser" and IsValid(d:GetAttacker().Owner)then
local ply=d:GetAttacker().Owner
d:SetAttacker(ply)d:SetInflictor(ply:GetActiveWeapon()or ply)
end
end)
local t=CurTime()
local function IsBan()local r
for _,e in pairs(ents.FindByClass("game308_ban"))do if IsValid(e)then r=1 end end
if r==1 then return false end
--来自 淡定WackoD - 逆风笑Nextbot 的启发
end
hook.Add("ContextMenuOpen","game308"..math.random(50,9*99),IsBan)
hook.Add("SpawnMenuOpen","game308"..math.random(999,9*999),IsBan)
local function ms(m,t)if SERVER then
local e=ents.Create("game_text")
e:SetKeyValue("spawnflags",1)
e:SetKeyValue("message",m)
if t then
e:SetKeyValue("x",t["x"] or -1)--(0 / 1.0 | left to right | -1 center)
e:SetKeyValue("y",t["y"] or -1)--(0 / 1.0 | top to bottom | -1 center)
e:SetKeyValue("color",t["col"] or "255 255 255")
e:SetKeyValue("color2",t["col2"] or "255 255 255")
e:SetKeyValue("fadein",t["fin"] or .1)--or scan a letter delay time
e:SetKeyValue("fadeout",t["fout"] or 1)
e:SetKeyValue("holdtime",t["time"] or 3)
e:SetKeyValue("effect",t["t"] or 2)--0=fade in/out,1=credits,2=scan out
e:SetKeyValue("fxtime",t["fxtime"] or 1)--scan effect only
e:SetKeyValue("channel",t["chan"] or 2)--total 4 channels,do not let 1c and 1c together to use
else
e:SetKeyValue("x",-1)e:SetKeyValue("y",-1)e:SetKeyValue("color","255 255 255")e:SetKeyValue("color2","255 255 255")e:SetKeyValue("fadein",.1)e:SetKeyValue("fadeout",1)e:SetKeyValue("holdtime",3)e:SetKeyValue("effect",2)e:SetKeyValue("fxtime",1)e:SetKeyValue("channel",2)
end

e:Spawn()
e:Fire("Display","",0)
e:Fire("Kill","",.1)
end end
function Muss330Personal(a,m)if CLIENT then return end--Channal 1--Console play sound-can stop by play others sound
m=m or ""
a=a or player.GetAll()
if istable(a)then
for _,p in pairs(a)do
net.Start("308musicperson")net.WriteString(m)net.Send(p)end
else
net.Start("308musicperson")net.WriteString(m)net.Send(a)end
end
function Muss330Personal2(a,m)if CLIENT then return end--Channal 2--Surface play sound-cant stoped and can hear repeat
m=m or ""
a=a or player.GetAll()
if istable(a)then
for _,p in pairs(a)do
net.Start("308musicperson2")net.WriteString(m)net.Send(p)end
else
net.Start("308musicperson2")net.WriteString(m)net.Send(a)end
end
function Muss330(a,m,r,t,f,v)if CLIENT then return end--Channal 3--Normally used on playing musics
Music308T=nil
m=m or 1
f=f or -1
v=v or -1
a=a or player.GetAll()
if istable(a)then
for _,p in pairs(a)do
if p.Muss3308 then p.Muss3308:Stop()p.Muss3308=nil end
net.Start("308music")net.WriteString("")net.WriteFloat(100)net.WriteFloat(100)net.WriteFloat(-1)net.WriteFloat(-1)net.Broadcast()
if !t then
if m==1 then return end
Music308T=1
p.Muss3308=CreateSound(p,m)
p.Muss3308:SetSoundLevel(0)
p.Muss3308:Play()
p.Muss3308:ChangePitch(r or 100)
p.Muss3308:ChangeVolume(1)else
Music308T=1
net.Start("308music")net.WriteString(m)net.WriteFloat(r/100)net.WriteFloat(t/100)net.WriteFloat(f)net.WriteFloat(v)net.Broadcast()end
end
else
if a.Muss3308 then a.Muss3308:Stop()a.Muss3308=nil end
net.Start("308music")net.WriteString("")net.WriteFloat(100)net.WriteFloat(100)net.WriteFloat(-1)net.WriteFloat(-1)net.Broadcast()
if !t then
if m==1 then return end
Music308T=1
a.Muss3308=CreateSound(a,m)
a.Muss3308:SetSoundLevel(0)
a.Muss3308:Play()
a.Muss3308:ChangePitch(r or 100)
a.Muss3308:ChangeVolume(1)else
Music308T=2
net.Start("308music")net.WriteString(m)net.WriteFloat(r/100)net.WriteFloat(t/100)net.WriteFloat(f)net.WriteFloat(v)net.Broadcast()end
end
end
function Muss330V(v,s)
if CLIENT then return end
if Music308T==2 then
net.Start("308music")net.WriteString(m)net.WriteFloat(-1)net.WriteFloat(v)net.WriteFloat(-1)net.WriteFloat(-1)net.Broadcast()
else
for _,p in pairs(player.GetAll())do
if !v||!p.Muss3308 then return end
p.Muss3308:ChangeVolume(v,s)end
end
end
function Muss330P(m,s)
if CLIENT then return end
s=s or 0
for _,p in pairs(player.GetAll())do
if !m||!p.Muss3308 then return end
p.Muss3308:ChangePitch(m,s)end
end
function RemoveByClass308(c)
for _,e in pairs(ents.GetAll())do
if e:GetClass()==c then e:Remove()end
end
end
function RemoveAllWeapon308()
for _,e in pairs(ents.GetAll())do
if e:IsWeapon()and !IsValid(e.Owner)then e:Remove()end
end
end
function RemoveAllNPC308()
for _,e in pairs(ents.GetAll())do
if e:IsNPC()then e:Remove()end
end
end
function _308Table(t)
if istable(t)then
local m=math.random(#t)
local r=t[1]
for l=1,#t do
if l==m then
r=t[m]end end
return r
else return t
end
end
function _308SceneMath()
local m=0
for _,s in pairs(ents.GetAll())do
if s.Is308Scene then m=m+1 end
end
return m
end
function _308FadeAll(c,ti,ho,ty)
for _,p in pairs(player.GetAll())do
p:ScreenFade(ty or SCREENFADE.OUT,c or Color(0,0,0,255),ti or 1,ho or 1)end
end
function _308PlaySoundAll(s,v)
for _,p in pairs(player.GetAll())do
p:EmitSound(s,0,v)
end
end
function _308StopSoundAll(s)
if s then timer.Simple(s,function()for _,p in pairs(player.GetAll())do p:ConCommand("stopsound")end
end)else for _,p in pairs(player.GetAll())do p:ConCommand("stopsound")end end
end
function _308SetPlayerHPAll(s)
for _,p in pairs(player.GetAll())do p:SetHealth(s)end
end
function _308SetPlayerMaxHPAll(s)
for _,p in pairs(player.GetAll())do p:SetMaxHealth(s)end
end
function _308TextAll(m,t,s)
if s then timer.Simple(s,function()ms(m,t)end)else ms(m,t)end
end
function _308ChatAll(m)
for _,p in pairs(player.GetAll())do p:ChatPrint(m)end
end
function _308TextClear(s)
timer.Simple(s or 0,function()
ms("",{time=0,fin=0,fout=0,t=0})
ms("",{chan=1,time=0,fin=0,fout=0,t=0})
ms("",{chan=3,time=0,fin=0,fout=0,t=0})
ms("",{chan=4,time=0,fin=0,fout=0,t=0})
end)
end
function MC_ExplodeEffect(p,f,m)if SERVER then
m=m or 4
local e=EffectData()e:SetOrigin(p)e:SetMagnitude(m*.25)
util.Effect("308mc_explosion",e)
for l=1,m do
local e=ents.Create("obj_308_effect")
e:SetPos(p+VectorRand()*math.Rand(0,80))
e:SetSprite("3088083421/explode/1.png")
e:SetScale(f or 256)
e:Light()
e:Spawn()
SafeRemoveEntityDelayed(e,1.6)
for l=1,16 do
timer.Simple(l*.025,function()if IsValid(e)then
e:SetSprite("3088083421/explode/"..(l+1)..".png")end end)end
end
end
end
function UT_SliceEffect(p,f,s)if SERVER then
s=s or .1
local e=ents.Create("obj_308_effect")
e:SetPos(p)
e:SetSprite("undertale/spr_slice_o_1.png")
e:SetScale(f or 64)
e:Light()
e:Spawn()
SafeRemoveEntityDelayed(e,s*6+.1)
for l=1,5 do
timer.Simple(l*s,function()if IsValid(e)then
e:SetSprite("undertale/spr_slice_o_"..(l+1)..".png")
end end)
end
return e
end
end
function UT_MissEffect(p,f,t)if SERVER then
local e=ents.Create("obj_308_effect")
e:SetPos(p)
e:SetSprite("undertale/spr_miss.png")
e:SetScale(f or 64)
e:Light()
e:Spawn()
SafeRemoveEntityDelayed(e,t or 1.5)
return e
end
end
if CLIENT then
surface.CreateFont("308wepbase", { font = "Roboto",size = 35 * ( ScrH() / 400 ), weight = 750, blursize = 1, scanlines=0, antialias=false, underline=false, italic=false, 
strikeout=false, symbol=false, rotary=false, shadow=true, additive=false, outline=false})
	surface.CreateFont("308wepkillicon", { 
		font = "Roboto",
		size = 25 * ( ScrH() / 500 ), 
		weight = 450, 
		blursize = 0, 
		scanlines = 0,
		antialias = false, 
		underline = false, 
		italic = false, 
		strikeout = false, 
		symbol = false, 
		rotary = false, 
		shadow = true, 
		additive = false, 
		outline = false, 
	})
	surface.CreateFont("308CS", { 
		font = "csd",
		size = 25 * ( ScrH() / 250 ), 
		weight = 20, 
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
else resource.AddWorkshop("2009832911")
end

--if ENT.Spawnable ~= false then
--list.Set("NPC", class,{Name=ENT.PrintName,Class=class,Category=ENT.Category})
--list.Set("DrGBaseNextbots", class,{Name=ENT.PrintName,Class=class,Category=ENT.Category})
--end
FACTION_REBELS="FACTION_HL2_REBELS"
FACTION_COMBINE="FACTION_HL2_COMBINE"
FACTION_ANIMALS="FACTION_HL2_ANIMALS"
FACTION_ZOMBIES="FACTION_HL2_ZOMBIES"
FACTION_ANTLIONS="FACTION_HL2_ANTLIONS"
FACTION_GMAN="FACTION_HL2_GMAN"
FACTION_BARNACLES="FACTION_HL2_BARNACLES"
FACTION_SANIC="FACTION_SHITTY_SANIC_CLONES"--i always hoping someday, this faction all member will be remove by workshop. alright?!
FACTION_XEN_ARMY = "FACTION_HL_XEN_ARMY"
FACTION_XEN_WILDLIFE = "FACTION_HL_XEN_WILDLIFE"
FACTION_HECU = "FACTION_HL_HECU"
--
function Get308NextBots()
local t={}
for _,b in pairs(ents.GetAll())do
if b.Is308Bot then
table.insert(t,b)end
end
return t
end

function _308CreateNet(s,f)
if SERVER then
util.AddNetworkString(s)end
net.Receive(s,f)
end

if SERVER then
util.AddNetworkString("CS308Menu")
util.AddNetworkString("MODCONFLICT308")
--[[
util.AddNetworkString("ASKING308")
hook.Add("PlayerSpawn","ASKING30",function(p)
if p:IsSuperAdmin()and !p._308_Noti then--p._308_Noti=1
net.Start("ASKING308")net.Send(p)end
end)
--]]
-- Disabled old x308 MODCONFLICT popup sender
-- hook.Add("PlayerSpawn","MODCONFLICT30",function(p)
-- if !p._308_Noti then p._308_Noti=1
-- net.Start("MODCONFLICT308")net.Send(p)end
-- end)
else
net.Receive("MODCONFLICT308",function(l,p)
return
end)
-- Disabled old x308 MODCONFLICT popup UI
--[[
p=LocalPlayer()
local f=vgui.Create("DFrame")
f:SetSize(600,580)
f:Center()
f:SetIcon("icon16/application_xp_terminal.png")
f:SetScreenLock(true)
f:SetDraggable(false)
local txt={
[0]="Report Bugs",
[1]="308 Base - Total Error Report",
[1]="308 Base - Mods Conflicting Warning",
[2]="We have detected some mods may will conflict with 308 Base\nThe error bar will pop up in the light,\nand the game will crash in the heavy",
[3]="Please disable these mods if you want to\nplay game with 308 Base without many errors",
[4]="Oh!!seem like there is no any error!\nif you have encountered any error problem, click this button and follow texts.\nremember do not just give me negative ratings\nand leaving problems to your game :(",
[5]="have fun and notice your plan.",
["A"]="",
}
if GAME308_LANMath==2 then
txt={
[0]="报告错误",
[1]="308 Base - 总错误报告",
[2]="我们检测到某些模组可能会与 308 Base 发生冲突\n轻则会弹出误差条，重则导致游戏崩溃",
[3]="如果您想使用 308 Base 游玩，请禁用这些模组",
[4]="这里好像没有什么模组冲突的问题\n如果您遇到任何错误，请单击此按钮并按照文本进行操作\n(不会英文的请开百度翻译)。\n记住要订阅讨论!",
[5]="玩得开心，注意你今天的计划",
["A"]="",
}
end
if false then

	local f = vgui.Create("DFrame")
	f:SetSize(400, 550)
	f:Center()
	f:SetTitle(txt[1])

	local function L(t, x, y, s1, s)
	local d = vgui.Create("DLabel", f)
	d:SetText(t)
	d:SetPos(x, y)
	d:SetSize(s1, s)
	end

	local function P(t, x, y, s1, s)
	local d = vgui.Create("DImage", f)
	d:SetImage(t)
	d:SetPos(x, y)
	d:SetSize(s1, s)
	end

	if file.Exists("autorun/warface_hud_menu.lua", "LUA") then
		L(txt[2], 5, 15, 300, 50)
		L(txt[3], 5, 50, 300, 50)
		P("3088083421/modconflict/1.png", 5, 95, 150, 150)
		else
			L(txt[4], 5, 25, 300, 50)
			L(txt[5], 5, 70, 300, 50)
			end

			local b = vgui.Create("DButton", f)
			b:SetPos(250, 465)
			b:SetSize(100, 50)
			b:SetText(txt[0])

			b.DoClick = function()
			gui.OpenURL("https://steamcommunity.com/workshop/filedetails/discussion/2009832911/3050608452034692282/")
			end

			f:SetDeleteOnClose(false)
			f:MakePopup()

			end

			end)
--[[
net.Receive("ASKING308",function(l,p)
p=LocalPlayer()
local ent=net.ReadEntity()
local f=vgui.Create("DFrame")
f:SetSize(400,280)
f:Center()
f:SetIcon("icon16/application_xp_terminal.png")
f:SetScreenLock(true)
f:SetDraggable(false)
f:SetTitle("308 Base - you have new selectable items!")
local d
local function L(t,x,y,s1,s)
d=vgui.Create("DLabel",f)
d:SetText(t)
d:SetPos(x,y)
d:SetSize(s1,s)
end
local function Ch(x,y,c)
d=vgui.Create("DCheckBox",f)
if GetConVarNumber(c)==1 then
d:SetChecked(true)end
d.OnChange=function(bVal)
if bVal then
p:ConCommand(c.." 1")else
p:ConCommand(c.." 0")end
end
d:SetPos(x,y)
end
L("1 new selectable item / 1个新可选项",10,10,300,50)
L("Enable Minigame?/启用小游戏？",30,40,300,50)
L("If you allow admins force to close minigames, just tick it",30,80,300,50)
L("如果你允许管理员强制关闭小游戏，请√它",30,100,300,50)
Ch(10,55,"wb3_b_game")
f:SetDeleteOnClose(false)
f:MakePopup()end)
--]]
-------------====
net.Receive("CS308Menu",function(l,p)
p=LocalPlayer()
local ent=net.ReadEntity()
local f=vgui.Create("DFrame")
f:SetSize(400,680)
f:Center()
f:SetIcon("icon16/application_xp_terminal.png")
f:ShowCloseButton(false)
f:SetScreenLock(true)
f:SetDraggable(false)
f:SetTitle("Team Select")
f.Tab={}
--[[
f.Think=function()for _,q in pairs(f.Tab)do
if q.Team=="ct" then
if CS308CT>CS308TE then
q:SetDisabled(true)else
q:SetDisabled(false)end
end
if q.Team=="t" then
if CS308CT<CS308TE then
q:SetDisabled(true)else
q:SetDisabled(false)end
end
end
end
--]]
local y=0
local r=0
local function B(x,a)local b=vgui.Create("DButton",f)y=y+90
b.Team=x
b:SetPos(r,y)
b:SetSize(200,100)
b:SetText(a)b:SetFont("308CS")
b.Paint=function(self,w,h)
if x=="ct" then
draw.RoundedBox(0,0,0,w,h,Color(155,155,255))else
draw.RoundedBox(0,0,0,w,h,Color(255,155,155))end
return end
b.DoClick=function()if #ents.FindByClass("obj_308_cs")>0 then
surface.PlaySound("buttons/button18.wav")p:ConCommand("say join "..x)
net.Start("cs308_wep")net.WriteEntity(p)net.WriteString(a)net.SendToServer(p)else
p:ChatPrint("game was already ended!")surface.PlaySound("3088083421/sonic/death.wav")end
f:Close()end
table.insert(f.Tab,b)end
B("ct","w")--M4A1
B("ct","r")--scout
B("ct","t")--famas
B("ct","B")--XM1014
B("ct","x")--MP5
B("ct","e")--AUG
B("ct","m")--P90
y=0
r=200
B("t","b")--AK
B("t","r")
B("t","v")--galil
B("t","B")
B("t","x")
B("t","A")--SG552
B("t","m")
local lan={
[1]="Select your weapon",
[2]="Counter-Terrorist",
[3]="Terrorist",
}if GAME308_LANMath==2 then
lan={
[1]="选择武器",
[2]="反恐精英",
[3]="恐怖分子",
}end
local d=vgui.Create("DLabel",f)
d:SetText(lan[2])
d:SetPos(30,220)d:SetFont("entcheck")d:SetColor(Color(88,88,255))
d:SetSize(300,50)
d=vgui.Create("DLabel",f)
d:SetText(lan[3])
d:SetPos(250,220)d:SetFont("entcheck")d:SetColor(Color(255,88,88))
d:SetSize(300,50)
d=vgui.Create("DLabel",f)
d:SetText(lan[1])
d:SetPos(100,40)d:SetFont("entcheck")
d:SetSize(300,50)
f:SetDeleteOnClose(false)
f:ShowCloseButton(false)
f:MakePopup()end)
end
_308CreateNet("cs308_wep",function()
local p=net.ReadEntity()
local a=net.ReadString()
if a=="w" then a="weapon_308_m4a1"
elseif a=="r" then a="weapon_308_awp"
elseif a=="t" then a="weapon_308_famas"
elseif a=="B" then a="weapon_308_xm1014"
elseif a=="x" then a="weapon_308_mp5"
elseif a=="e" then a="weapon_308_aug"
elseif a=="m" then a="weapon_308_p90"
elseif a=="b" then a="weapon_308_ak47"
elseif a=="v" then a="weapon_308_galil"
elseif a=="A" then a="weapon_308_sg552"
end
p._308CSWep=a
end)
function CanGame308()return GetConVarNumber("wb3_b_game")==1 and engine.ActiveGamemode()=="sandbox" end
function Touch_3(s,ent)return s!=ent and !string.find(ent:GetClass(),"trigger_")and(ent:IsPlayer()||ent:IsNPC()||IsNextBot3(ent)||ent:IsWorld()||ent:GetSolid()==1||ent:GetSolid()==2||ent:GetSolid()==6)end
--------------------===
function Add308Nextbot(e)
local class=string.Replace(e.Folder,"entities/","")
if !e.PrintName||!e.Category then return false end
if CLIENT then language.Add(class,e.PrintName or e.PrintName)end
if !e.Spawnable then
local n={Name=e.PrintName,Class=class,Category=ENT.Category}
list.Set("NPC",class,n)end
return true
end

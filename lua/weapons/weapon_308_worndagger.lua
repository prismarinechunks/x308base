SWEP.Base = "weapon_308_basemelee"
SWEP.PrintName=GAME308_LANWEP["toyknife"]
--wrong name
SWEP.Category = "x308 Base | Melee"
SWEP.HoldType = "knife"
--SWEP.CDWInfoBox=true
--SWEP.Author="Made of plastic. A rarity nowadays."
SWEP.Multiple=3

SWEP.RemoveOnDrop=true
SWEP.UTWep=1
SWEP.UTWepLevel=1
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.ShowWorldModel=false
SWEP.NormalDraw=true
SWEP.IdleAnim="idle_cycle"
SWEP.Primary.Automatic=false
SWEP.Secondary.Automatic=false
SWEP.TextType="8bitoperator"

SWEP.Melee1=35
SWEP.Melee2=70
SWEP.MeleeAT=.25
SWEP.MeleeAT2=.28
SWEP.MeleeOT=.3
SWEP.MeleeOT2=.55
SWEP.RangeD=80

SWEP.MeleeS={{Sound="3088083421/wep/melee/slice.wav"}}
SWEP.MeleeS2={{Sound="3088083421/wep/melee/slice.wav"}}
SWEP.MeleeSW={{Sound="3088083421/wep/melee/hitsound.wav"}}
SWEP.CenterPos = Vector(0,70,0)
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2, -2, 5), angle = Angle(50, 20, 22.5) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-30, -30, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(-3.573, -0.396, 0), angle = Angle(0, 0, 0), size = Vector(0.071, 0.407, 0.398), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(-7.545, -1.372, 0), angle = Angle(90, 0, 0), size = Vector(0.064, 0.057, 1.666), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(-6.657, -0.325, 0), angle = Angle(90, 0, 0), size = Vector(0.059, 0.128, 2.259), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/triangles/025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "1", pos = Vector(6.71, 1.899, 0), angle = Angle(0, 180, 0), size = Vector(0.307, 0.307, 0.009), color = Color(155, 165, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.239, 0.402, 8.623), angle = Angle(90, 0, 0), size = Vector(0.518, 0.291, 0.009), color = Color(155, 165, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-3.573, -0.396, 0), angle = Angle(0, 0, 0), size = Vector(0.071, 0.407, 0.398), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/hunter/triangles/025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(6.71, 1.899, 0), angle = Angle(0, 180, 0), size = Vector(0.307, 0.307, 0.009), color = Color(155, 165, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-6.657, -0.325, 0), angle = Angle(90, 0, 0), size = Vector(0.059, 0.128, 2.259), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7.599, 0.646, -5.459), angle = Angle(-56.959, 13.09, -96.884), size = Vector(0.518, 0.291, 0.009), color = Color(155, 165, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-7.545, -1.372, 0), angle = Angle(90, 0, 0), size = Vector(0.064, 0.057, 1.666), color = Color(0, 0, 0, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}
	if(CLIENT) then
	surface.CreateFont("8bitoperator", { 
		font = "8bitoperator JVE",
		size = 15*ScrH()/480, 
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
	end
local D=0
if SERVER then
util.AddNetworkString( "308utslash" )
else
net.Receive("308utslash",function(length,ply)D=2 end)
end
function IsUT308(p)return p:IsPlayer()and(p:HasWeapon("real_knife")||p:HasWeapon("worn_dagger")||p.IsUT3088)end
local function UTKill(e,p,t)
if p:IsPlayer()and IsUT308(p)then
local wep=p:GetActiveWeapon()
if IsValid(wep)and wep.UTWepLevel then
if t then
e:EmitSound("3088083421/ut/heart.wav")else
e:EmitSound("3088083421/ut/enemydust.wav")end
if e.Is308Bot and e.IsUT and !e.DirectlyXP then
e._GiveXP=p
e._GiveXPWep=wep
return end
wep:SetClip1(wep:Clip1()+e:GetMaxHealth())
wep:LVUP()
end
end end

hook.Add("PlayerDeath","UTDS.3",function(p,e)UTKill(p,e,1)end)
hook.Add("PlayerSpawn","UTDS.5",function(p)p:SetNWInt("Lvl",1)p.IsUT3088=nil end)
hook.Add("OnNPCKilled", "UTDS.4",function(e,k)UTKill(e,k)end)
hook.Add("EntityTakeDamage","UTDS.2",function(p,d)
if p:IsPlayer()and IsUT308(p)and d:GetDamage()>0 then
if d:GetDamageType()==32 then d:SetDamage(0)else p:EmitSound("3088083421/ut/hurtsound.wav")end
end
end)
hook.Add("PlayerDeathSound", "UTDS.1",function(ply)if IsUT308(ply)then ply:EmitSound("3088083421/ut/heart.wav",511)return true end end)

function SWEP:CustomInit()
self:DrawShadow(false)
self:SetClip1(0)
self:SetNWInt("MeleeAT",4)
end
function SWEP:CustomThink()
if CLIENT then
D=D-.0075 end
self:SetNWInt("Slash",self:GetNWInt("Slash")-.015)
if self:GetNWInt("Slash")<=0 then
self:SetNWBool("Slashed",false)
if self:GetNWBool("Slashed2")and self.Melee2<self.Melee1 then self:SetNWBool("Slashed2",false)self:MeleeMiss()end else self:SetNWBool("Slashed",true)self:SetNWBool("Slashed2",true)end
end
function SWEP:CustomEquip()
if !IsUT308(self.Owner)then self.Owner:SetNWInt("Lvl",1)self.Owner.IsUT3088=1 end
end
function SWEP:MAnim()
local o=self.Owner
local s=self.Owner:GetModelScale()
if SERVER then
local e=UT_SliceEffect(o:GetShootPos()-Vector(0,0,10)*s+o:GetAimVector()*40*s,64*s,.05)
e:SetParent(o)end
self:PlayAnim("midslash1",.8,.6)
end
function SWEP:CusHUD()
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local tl=TEXT_ALIGN_LEFT
local p=self.Owner
local n=p:GetNWInt("Lvl")*500-self:Clip1()
if p:GetNWInt("Lvl")>19 then n=599990 end
surface.SetDrawColor(255,255,255,255)
surface.DrawRect(ScrW()*.001,ScrH()*.705,ScrW()*.105,ScrH()*.16)
surface.SetDrawColor(0,0,0,255)
surface.DrawRect(ScrW()*.003,ScrH()*.71,ScrW()*.1,ScrH()*.15)
surface.SetDrawColor(255,255,255,255)
local c=Color(255,255,255,255)
draw.SimpleText("STAT", "8bitoperator", ScrW() * .01, ScrH() * .73,c,tl,tc)
draw.SimpleText("NEXT:"..n/10, "8bitoperator", ScrW() * .01, ScrH() * .77,c,tl,tc)
draw.SimpleText("AT "..self:GetNWInt("MeleeAT").."(3)", "8bitoperator", ScrW() * .01, ScrH() * .8,c,tl,tc)
draw.SimpleText("DF "..p:Armor().."(0)", "8bitoperator", ScrW() * .01, ScrH() * .83,c,tl,tc)
draw.SimpleText("HP", "8bitoperator", ScrW() * .44, ScrH() * .9,c,tc,tc)
draw.SimpleText(p:Health()/5, "8bitoperator", ScrW() * .58, ScrH() * .9,c,tc,tc)
draw.SimpleText("/", "8bitoperator", ScrW() * .6, ScrH() * .9,c,tc,tc)
draw.SimpleText(p:GetMaxHealth()/5, "8bitoperator", ScrW() * .62, ScrH() * .9,c,tc,tc)
draw.SimpleText("LV "..p:GetNWInt("Lvl"), "8bitoperator", ScrW() * .38, ScrH() * .9,c,tc,tc)
draw.SimpleText(p:Nick(), "8bitoperator", ScrW() * .3, ScrH() * .9,c,tc,tc)
local k=p.Undertale_KR or 0
local h=math.Clamp(p:Health()/p:GetMaxHealth(),0,1)
if k>0 then
surface.SetDrawColor(235,0,255,255)else
surface.SetDrawColor(255,0,0,255)end
surface.DrawRect(ScrW()*.45,ScrH()*.88,ScrW()*.1,ScrH()*.04)
surface.SetDrawColor(255,255,0,255)
surface.DrawRect(ScrW()*.45,ScrH()*.88,ScrW()*h*.1,ScrH()*.04)
surface.SetDrawColor(255,255,255,255)
if self:GetNWBool("Slashed")then
surface.DrawRect(ScrW()*.29,ScrH()*.64,ScrW()*.41,ScrH()*.22)
surface.SetDrawColor(0,0,0,255)
surface.DrawRect(ScrW()*.3,ScrH()*.65,ScrW()*.39,ScrH()*.2)
surface.SetDrawColor(255,255,255,255)
surface.SetMaterial(Material("undertale/spr_target_0.png","pixel"))surface.DrawTexturedRect(ScrW()*.3,ScrH()*.65,ScrW()*.4,ScrH()*.2)
surface.DrawRect(ScrW()*(.697-.2*D),ScrH()*.65,ScrW()*.01,ScrH()*.2)
surface.SetDrawColor(0,0,0,255)
surface.DrawRect(ScrW()*(.698-.2*D),ScrH()*.652,ScrW()*.008,ScrH()*.196)
end
end
function SWEP:LVUP(m)
local p=self.Owner
local l=p:GetNWInt("Lvl")
if l>19 then self:SetClip1(0)return end
if !m then
if self:Clip1()>=l*500 then
p:SetNWInt("Lvl",l+1)
self:SetClip1(self:Clip1()-l*500)
l=p:GetNWInt("Lvl")
if l<19 then
if p:GetNWInt("Lvl")>4 then self:SetNWInt("MeleeAT",l+4)end
self:SetNWInt("MeleeAT",l+3)
self.Melee1=self.Melee1+5
p:SetMaxHealth(p:GetMaxHealth()+20)
p:SetHealth(p:Health()+20)
elseif l<20 then
self:SetNWInt("MeleeAT",99)
self.MeleeOT=.28
self.Melee1=999
p:SetMaxHealth(p:GetMaxHealth()+20)
p:SetHealth(p:Health()+20)
else
if p:GetMaxHealth()<495 then
p:SetMaxHealth(495)else
p:SetMaxHealth(p:GetMaxHealth()+35)end
p:SetHealth(p:Health()+35)
end
p:EmitSound("3088083421/ut/levelup.wav")
self:LVUP()
end
else
self:SetClip1(0)
for l=1,m do
p:SetNWInt("Lvl",l+1)
l=p:GetNWInt("Lvl")
if l<19 then
if p:GetNWInt("Lvl")>4 then self:SetNWInt("MeleeAT",l+4)end
self:SetNWInt("MeleeAT",l+3)
self.Melee1=self.Melee1+5
p:SetMaxHealth(p:GetMaxHealth()+20)
p:SetHealth(p:Health()+20)
elseif l<20 then
self:SetNWInt("MeleeAT",99)
self.MeleeOT=.28
self.Melee1=999
p:SetMaxHealth(p:GetMaxHealth()+20)
p:SetHealth(p:Health()+20)
else
if p:GetMaxHealth()<495 then
p:SetMaxHealth(495)else
p:SetMaxHealth(p:GetMaxHealth()+35)end
p:SetHealth(p:Health()+35)
end
p:EmitSound("3088083421/ut/levelup.wav")
end
end
end
function SWEP:MeleeSound()self:EmitSound("3088083421/wep/melee/hitsound.wav")end
function SWEP:MeleeMiss()
local o=self.Owner
local s=self.Owner:GetModelScale()
if SERVER then
local e=UT_MissEffect(self.Owner:GetShootPos()+self.Owner:GetAimVector()*50*s+o:GetUp()*15*s,32*s,1)e:SetParent(o)end
end
function SWEP:SecondaryAttack()
if !self:GetNWBool("Slashed")then self.Melee2=0
self:SetNextPrimaryFire(CurTime()+2.1)self:SetNextSecondaryFire(CurTime()+.1)self.BoltPullTimer=CurTime()+2.1
net.Start("308utslash")net.Send(self.Owner)self:SetNWInt("Slash",2.1)self:SetNWBool("Slashed",true)else
local s=self:GetNWInt("Slash")
self:SetNWBool("Slashed",false)
if s>1 then s=2-s end
self.Melee2=self.Melee1+s*(self.Melee1*(4/3))
if s<.3 then
self.Melee2=self.Melee1 end
self.Melee2=self.Melee1+s*(self.Melee1*(4/3))
self:SetNWInt("Slash",0)
self:PrimaryAttack(2)
self:SetNextPrimaryFire(CurTime()+self.MeleeOT)self:SetNextSecondaryFire(CurTime()+self.MeleeOT)self.BoltPullTimer=CurTime()+self.MeleeOT
end
end

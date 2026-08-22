SWEP.Base = "weapon_308_baseflan" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "Toriel"
SWEP.Category = "X Base | Melee"
SWEP.HoldType = "normal"
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.WorldModel = "models/mechanics/robotics/a1.mdl"
SWEP.Primary.ClipSize=0
SWEP.Primary.DefaultClip=0
SWEP.Primary.Automatic=true
SWEP.Secondary.Automatic=true
SWEP.Primary.Ammo="none"
SWEP.Slot=0
SWEP.SlotPos=0
SWEP.Spawnable = true
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true
SWEP.UTWep=1
SWEP.TextType="8bitoperator"
SWEP.DrawAnim="fists_draw"
SWEP.SA_IsSight=false
SWEP.NormalDraw = true
SWEP.ShowWorldModel=false
SWEP.CenterPos = Vector( 0, 59, -5 )
SWEP.AmmoHUD=2
SWEP.VElements = {
	["1"] = { type = "Sprite", sprite = "sprites/physcannon_blueglow", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3,1,0), size={x=20,y=20}, color = Color(255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["2"] = { type = "Sprite", sprite = "sprites/physcannon_blueglow", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(2,1,0), size={x=20,y=20}, color = Color(255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.WElements = {
	["1"] = { type = "Sprite", sprite = "sprites/physcannon_blueglow", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.986, 0.439, 0), size = { x = 20, y = 20 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["1+"] = { type = "Sprite", sprite = "sprites/physcannon_blueglow", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(2.986, 0.439, 0), size = { x = 20, y = 20 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
function SWEP:CustomEquip()
if !IsUT308(self.Owner)then self.Owner:SetArmor(80)self.Owner:SetNWInt("Lvl",1)self.Owner.IsUT3088=1 end
end
function SWEP:Reload()
if CLIENT then return end
if self:GetNextSecondaryFire()<CurTime()then
self.HMath=self.HMath+1
self:DelayAnim({{Anim=_308Table({"fists_left","fists_right"}),Rate=1.5}})
local p=self.Owner
local s=p:GetModelScale()
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(p:GetShootPos()-Vector(0,0,10)*s+p:GetAimVector()*15*s)
e:SetOwner(p)
e.Toriel=1
e.HType=1
e.Dmg=5
e:Spawn()
e:SetModelScale(.65)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*math.random(500,600))
p:EmitSound("undertale/st.wav")
self.BoltPullTimer=CurTime()+.15
self:SetNextPrimaryFire(CurTime()+.15)
self:SetNextSecondaryFire(CurTime()+.15)
SafeRemoveEntityDelayed(e,3)
end
end
function SWEP:PrimaryAttack()
if CLIENT then return end
if self:GetNextSecondaryFire()<CurTime()then
self.HMath=self.HMath+1
self:DelayAnim({{Anim=_308Table({"fists_left","fists_right"})}})
local p=self.Owner
local s=p:GetModelScale()
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(p:GetShootPos()-Vector(0,0,10)*s+p:GetAimVector()*15*s)
e:SetOwner(p)
e.Toriel=1
e.HType=1
e.Dmg=35
e:Spawn()
e:SetModelScale(2)
e:GetPhysicsObject():SetVelocity(p:GetAimVector()*math.random(900,1000))
p:EmitSound("undertale/st.wav")
self.BoltPullTimer=CurTime()+.85
self:SetNextPrimaryFire(CurTime()+.85)
self:SetNextSecondaryFire(CurTime()+.85)
SafeRemoveEntityDelayed(e,3.5)
end
end
function SWEP:SecondaryAttack()
if self:GetNextSecondaryFire()<CurTime()then
self.HMath=self.HMath+1
self:DelayAnim({{Anim="fists_left"},{Anim="fists_right",Delay=.6}})
local p=self.Owner
local m=math.random(2)
if m>1 then m=-1 end
if SERVER then
for i=1,12 do
local v=p:GetAimVector()*800
local s=p:GetModelScale()
timer.Simple(i*.08,function()if IsValid(self)and IsValid(p)then
local e=ents.Create("obj_308ut_dreemerball")
e:SetPos(p:GetShootPos()-Vector(0,0,10)*s+p:GetAimVector()*15*s+p:GetRight()*(20*m-i*4*m)*s)
e:SetOwner(p)
e.Toriel=1
e.HType=1
e:Spawn()
e.Dmg=25
e:GetPhysicsObject():EnableGravity(false)
e:GetPhysicsObject():EnableMotion(false)
p:EmitSound("undertale/st.wav")
v=p:GetAimVector()*math.random(600,800)
timer.Simple(1,function()if IsValid(e)then
SafeRemoveEntityDelayed(e,3)
e:GetPhysicsObject():EnableMotion(true)
e:GetPhysicsObject():SetVelocity(v)
end end)
end end)
end
end
self.BoltPullTimer=CurTime()+1.5
self:SetNextPrimaryFire(CurTime()+1.5)
self:SetNextSecondaryFire(CurTime()+1.5)
end
end
function SWEP:CusHUD()
local x=ScrW()/2
local y=ScrH()/2
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local tl=TEXT_ALIGN_LEFT
local p=self.Owner
surface.SetDrawColor(255,255,255,255)
surface.DrawRect(ScrW()*.001,ScrH()*.705,ScrW()*.105,ScrH()*.16)
surface.SetDrawColor(0,0,0,255)
surface.DrawRect(ScrW()*.003,ScrH()*.71,ScrW()*.1,ScrH()*.15)
surface.SetDrawColor(255,255,255,255)
local c=Color(255,255,255,255)
surface.SetMaterial(Material("undertale/ui/abi_toriel_lmb.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4,100,100)
surface.SetMaterial(Material("undertale/ui/abi_toriel_r.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4-100,100,100)
surface.SetMaterial(Material("undertale/ui/abi_toriel_rmb.png","pixel"))surface.DrawTexturedRect(0,ScrH()*.4+100,100,100)
draw.SimpleText("STAT", "8bitoperator", ScrW() * .01, ScrH() * .73,c,tl,tc)
draw.SimpleText("NEXT:?", "8bitoperator", ScrW() * .01, ScrH() * .77,c,tl,tc)
draw.SimpleText("AT 80(?)", "8bitoperator", ScrW() * .01, ScrH() * .8,c,tl,tc)
draw.SimpleText("DF "..p:Armor().."(0)", "8bitoperator", ScrW() * .01, ScrH() * .83,c,tl,tc)
draw.SimpleText("HP", "8bitoperator", ScrW() * .44, ScrH() * .8,c,tc,tc)
draw.SimpleText(p:Health()/5, "8bitoperator", ScrW() * .58, ScrH() * .8,c,tc,tc)
draw.SimpleText("/", "8bitoperator", ScrW() * .6, ScrH() * .8,c,tc,tc)
draw.SimpleText(p:GetMaxHealth()/5, "8bitoperator", ScrW() * .62, ScrH() * .8,c,tc,tc)
draw.SimpleText("LV ?", "8bitoperator", ScrW() * .38, ScrH() * .8,c,tc,tc)
draw.SimpleText("TORIEL", "8bitoperator", ScrW() * .3, ScrH() * .8,c,tc,tc)
local k=p.Undertale_KR or 0
local h=math.Clamp(p:Health()/p:GetMaxHealth(),0,1)
if k>0 then
surface.SetDrawColor(235,0,255,255)else
surface.SetDrawColor(255,0,0,255)end
surface.DrawRect(ScrW()*.45,ScrH()*.78,ScrW()*.1,ScrH()*.04)
surface.SetDrawColor(255,255,0,255)
surface.DrawRect(ScrW()*.45,ScrH()*.78,ScrW()*h*.1,ScrH()*.04)
end
function SWEP:IfOwnHurt(d)
local p=self.Owner
if d:GetDamage()>=p:Health()and p:Health()>1 and p:Armor()<1 then d:SetDamage(p:Health()-1)end
end

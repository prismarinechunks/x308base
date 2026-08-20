SWEP.Base = "weapon_308_base"
SWEP.PrintName="BIG SECRET"
SWEP.Category = "308..' Base"
SWEP.HoldType = "duel"
SWEP.ViewModel = "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel = "models/weapons/w_pist_elite.mdl"
SWEP.IsDual=true
SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = 15
SWEP.Primary.Ammo = "pistol"
SWEP.IdleAnim = "idle"
SWEP.Slot=1
SWEP.Spawnable=false
SWEP.NoMFlash=true--must

SWEP.TextType = "308CS"
SWEP.Text = "s"

SWEP.BoltPullTime=3.3
SWEP.PA_Damage = 34
SWEP.NormalDraw = true
SWEP.PA_Recoil = 1
SWEP.PA_Spread = .02
SWEP.SA_IsSight = false
SWEP.PA_Delay = .09
SWEP.ClipoutTime = .54--Left
SWEP.ClipoutTime2 = .58--Right
SWEP.ClipinTime = 1.7--Left
SWEP.ClipinTime2 = 2.7--Right
SWEP.ReloadTime = 3.1
SWEP.ReloadTime2 = 3.5

SWEP.PA_Anim="shoot_right1"
SWEP.PA_Anim2="shoot_right2"
SWEP.SA_Anim="shoot_left1"
SWEP.SA_Anim2="shoot_left2"
SWEP.Empty_AnimL="shoot_leftlast"
SWEP.Empty_AnimR="shoot_rightlast"
SWEP.CenterPos=Vector(0,100,-2)
function SWEP:GetClips()return self:Clip1()+self:Clip2()end
function SWEP:BasInit()self:SetClip2(self:Clip1())end

function SWEP:ShootAnim(m)
if m then
if self:Clip2()>0 then
if self:GetNextPrimaryFire()>CurTime()-.1 and self:Clip1()>0 then
self:PlayAnim(self.PA_Anim2,self.PA_AnimRate)
else self:PlayAnim(self.PA_Anim,self.PA_AnimRate)end
else self:PlayAnim(self.Empty_AnimR,self.PA_AnimRate,999)end
else
if self:Clip1()>0 then
if self:GetNextSecondaryFire()>CurTime()-.1 and self:Clip2()>0 then
self:PlayAnim(self.SA_Anim2,self.PA_AnimRate)
else self:PlayAnim(self.SA_Anim,self.PA_AnimRate)end
else self:PlayAnim(self.Empty_AnimL,self.PA_AnimRate,999)end
end end
function SWEP:SecondaryAttack()self:PrimaryAttack(1)end--Don't touch
function SWEP:Reload()
local a=self.HMath
self:PrintNamed()
if self:Ammo1()<1 and self:GetClips()<1 then return end
if !self.Reloading and self.Scope<1 and self:GetNextPrimaryFire()<CurTime()then
self.Reloading=true
self.ReloadingTimer=CurTime() + self.ReloadTime

local function Anim(B)
if self.ReloadAnimD2 and B then
self:DelayAnim(self.ReloadAnimD2)
elseif self.ReloadAnimD and !B then
self:DelayAnim(self.ReloadAnimD)
elseif self.ReloadAnim then
self:PlayAnim(self.ReloadAnim,self.ReloadAnimRate)
if self.StopRAnimTime then
timer.Simple(self.StopRAnimTime,function()if !IsValid(self)||!self:CUnHos(a)||B then return end
self:SetNextIdle(CurTime())
end)
end
end
end
local rt,rs
if self.HaveBoltPull and(self:Clip2()<1||self:Clip1()<1)then self.ReloadingTimer=CurTime()+self.ReloadTime2
timer.Simple(self.BoltPullTime or self.ReloadTime2,function()if !IsValid(self)||!self:CUnHos(a)then return end
self:SetNWInt("BOLT",1)
end)
Anim(1)
rt=self.ReloadTime2
rs=self.ReloadSound2
else
Anim()
rt=self.ReloadTime
rs=self.ReloadSound
end
self:SoundSlot(rs)
self:SetNWInt("R",rt)
self:SetNextPrimaryFire(CurTime()+rt)
self._OnReload=nil
timer.Simple(self.ClipoutTime,function()if !IsValid(self)||!self:CUnHos(a)then return end
if !self._OnReload then
self:OnReloading()self._OnReload=1 end
self._AfterReload=nil
if self:Clip2()==0 then
self:SetNWInt("BOLT",0)end
self:ReturnAmmo(1)
end)
timer.Simple(self.ClipoutTime2,function()if !IsValid(self)||!self:CUnHos(a)then return end
if !self._OnReload then
self:OnReloading()self._OnReload=1 end
if self:Clip1()==0 then
self:SetNWInt("BOLT",0)end
self:ReturnAmmo(1,1)
end)
timer.Simple(self.ClipinTime,function()if !IsValid(self)||!self:CUnHos(a)then return end
if !self._AfterReload then
self:AfterReload()self._AfterReload=1 end
self:ReturnAmmo(2)
end)
timer.Simple(self.ClipinTime2,function()if !IsValid(self)||!self:CUnHos(a)then return end
if !self._AfterReload then
self:AfterReload()self._AfterReload=1 end
self:ReturnAmmo(2,1)
end)
self.Owner:SetAnimation( PLAYER_RELOAD )
self:OnReload()
end
end
function SWEP:ReturnAmmo(t,w)
self:PrintNamed()
local p=self.Owner
local b=self:GetPrimaryAmmoType()
local function SpawnA(s1,s2,s3,a)
local f=15
local s=p:GetModelScale()
local e=ents.Create("obj_308_ammo")e:SetAngles(p:GetAimVector():Angle())e:SetCreator(p)
if self.CusClipMDL then e.Dont=1 e:SetModel(self.CusClipMDL)e:SetModelScale(self.CusClipScale or 1)end
if b==7 then f=20 end
e:SetPos(p:EyePos()-Vector(s1*s,s2*s,(s3+20)*s)+p:GetForward()*(f*s))
e.AType=b
if w then
if self.Havelastbullet then e.AmmoM=math.Clamp(a-1,0,self.Primary.ClipSize)else e.AmmoM=math.Clamp(a,0,self.Primary.ClipSize)end
elseif self.Havelastbullet2 then e.AmmoM=math.Clamp(a-1,0,self.Primary.ClipSize)else e.AmmoM=math.Clamp(a,0,self.Primary.ClipSize)end
e:Spawn()
if IsValid(e:GetPhysicsObject())then e:GetPhysicsObject():Wake()e:GetPhysicsObject():SetVelocity(p:GetVelocity()+Vector(s1,s2,s3)+self:ClipVelocity(p))else
e:SetMoveType(MOVETYPE_FLYGRAVITY)end
end
local c=self:Clip1()
if w then
if t==2 then
if self:Ammo1()>0 then self._ClipValid=1 end
if self:Ammo1()>(self.Primary.ClipSize-self:Clip1())then
p:SetAmmo(self:Ammo1()-self.Primary.ClipSize+self:Clip1(),self.Primary.Ammo)self:SetClip1(self.Primary.ClipSize)
if self.ClipExtraBullet and self.Havelastbullet and self:Ammo1()>self:Clip1()then
self:SetClip1(self.Primary.ClipSize+1)p:SetAmmo(self:Ammo1()-1,self.Primary.Ammo)self.Havelastbullet=false
end
end
if(self:Ammo1()-self.Primary.ClipSize+self:Clip1())+self:Clip1()<self.Primary.ClipSize then
self:SetClip1(self:Clip1()+self:Ammo1())p:SetAmmo(0,self.Primary.Ammo)
end
end
if t==1 then
if self.NoPullClip then return end
local m=1
if c>0 then
if !self.ClipExtraBullet||c<=0 then m=0 end
if GetConVarNumber("wb3_reloadpunish")<1 then
p:SetAmmo(self:Ammo1()+self:Clip1()-m,self.Primary.Ammo)
end
if self.ClipExtraBullet and c>0 then
self:SetClip1(1)self.Havelastbullet=true
else
self:SetClip1(0)end
end
if GetConVarNumber("wb3_reloadpunish")==1 and self._ClipValid then
self._ClipValid=nil
if SERVER and b!=0 then
if self.NoUseClip then
for i=1,c do
SpawnA(math.random(-3,3),math.random(-3,3),math.random(-3,3),1)end
else
SpawnA(math.random(-3,3),math.random(-3,3),math.random(-3,3),c)
end
end
end
end

else
c=self:Clip2()
if t==2 then
if self:Ammo1()>0 then self._ClipValid2=1 end
if self:Ammo1()>(self.Primary.ClipSize-self:Clip2())then
p:SetAmmo(self:Ammo1()-self.Primary.ClipSize+self:Clip2(),self.Primary.Ammo)self:SetClip2(self.Primary.ClipSize)
if self.ClipExtraBullet and self.Havelastbullet2 and self:Ammo1()>self:Clip2()then
self:SetClip2(self.Primary.ClipSize+1)p:SetAmmo(self:Ammo1()-1,self.Primary.Ammo)self.Havelastbullet2=false
end
end
if(self:Ammo1()-self.Primary.ClipSize+self:Clip2())+self:Clip2()<self.Primary.ClipSize then
self:SetClip2(self:Clip2()+self:Ammo1())p:SetAmmo(0,self.Primary.Ammo)
end
end
if t==1 then
if self.NoPullClip then return end
local m=1
if c>0 then
if !self.ClipExtraBullet||c<=0 then m=0 end
if GetConVarNumber("wb3_reloadpunish")<1 then
p:SetAmmo(self:Ammo1()+self:Clip2()-m,self.Primary.Ammo)
end
if self.ClipExtraBullet and c>0 then
self:SetClip2(1)self.Havelastbullet2=true
else
self:SetClip2(0)end
end
if GetConVarNumber("wb3_reloadpunish")==1 and self._ClipValid2 then
self._ClipValid2=nil
if SERVER and b!=0 then
if self.NoUseClip then
for i=1,c do
SpawnA(math.random(-3,3),math.random(-3,3),math.random(-3,3),1)end
else
SpawnA(math.random(-3,3),math.random(-3,3),math.random(-3,3),c)
end
end
end
end

end
end
function SWEP:DrawHUD()
local x = ScrW() / 2
local y = ScrH() / 2
local w = self:GetNWInt("B")
local n=self:GetNWInt("T")
if GetConVarNumber("wb3_hudt")!=0 then n=255 end
local r = self:GetNWInt("R")*50
local a = self:GetNetworkedString("A")
local o = self:GetNWInt("O")
local b = self:Clip1()/self.Primary.ClipSize
local b2 = self:Clip2()/self.Primary.ClipSize
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local u,d=0
local oh=self:GetNWInt("OH")/self.OHM
if self:GetNWInt("BOLT")>0 then d=255 else d=0 end
if self._im>0 and self.TextEquip then self._im=self._im-2
draw.SimpleText(self.TextEquip, "308wepbase",ScrW()*.5,ScrH()*.76,Color(255,255,255,self._im),tc,tc)
end
if n>255 then n=255 end
if r<0 then r=0 end
if self:Clip1()==0 then b=0 end

if _308hud()then
self.DrawAmmo=false
if !game.SinglePlayer()and self.HIGHPINGWep and GetConVarNumber("wb3_ban")==1 then draw.SimpleText("Banned:High Ping","308wepbase",ScrW()*.01, ScrH()*.8,Color(255,10,15,255),TEXT_ALIGN_LEFT,tc)end
draw.SimpleText(self.PrintName, "308wepbase", ScrW() * 0.99, ScrH() * 0.83,Color(255,255,255,n),tr,tc)
if GetConVarNumber("wb3_infammo")!=2 then draw.SimpleText("RELOAD", "308wepbase", ScrW() * 0.5, ScrH() * 0.8,Color(255,255,0,w),tc,tc)end
draw.SimpleText(a, "308CS", ScrW() * 1, ScrH() * 0.95,Color(255,255,255,n),tr,tc)
surface.SetDrawColor(255,d,d,n)
surface.DrawLine(x+300+(ScrW()-x-300)*(1-b),ScrH()*.87,ScrW(),ScrH()*.87)
surface.DrawLine(x+300+(ScrW()-x-300)*(1-b2),ScrH()*.88,ScrW(),ScrH()*.88)
surface.DrawLine(x+300+r,ScrH()*.8,ScrW(),ScrH()*.8)
surface.DrawLine(x+300,ScrH()*.79,x+300,ScrH()*.88)
if self.Primary.Automatic then
draw.SimpleText(self.Text_Auto, "308wepbase", ScrW() * 0.98, ScrH() * 0.76,Color(255,255,255,n),tr,tc)
else
draw.SimpleText(self.Text_Semi, "308wepbase", ScrW() * 0.98, ScrH() * 0.76,Color(255,255,255,n),tr,tc)
end
draw.SimpleText(self:Ammo1(),"308wepbase", ScrW() * .88, ScrH() * .93,Color(255,255,255,n),tl,tc)
draw.SimpleText("/", "308wepbase", ScrW() * 0.88, ScrH() * 0.93,Color(255,255,255,n),tr,tc)
if self:Clip1()<0 then self:SetClip1(self.Primary.ClipSize)end---Ahh...a big hud bug!
if self:Clip2()<0 then self:SetClip2(self.Primary.ClipSize)end
draw.SimpleText(self:Clip1(), "308wepbase", ScrW() * 0.85, ScrH() * 0.9,Color(255,255,255,n),tr,tc)
draw.SimpleText(self:Clip2(), "308wepbase", ScrW() * 0.85, ScrH() * 0.97,Color(255,255,255,n),tr,tc)
else
self.DrawAmmo=true
end
return self:CusHUD()
end
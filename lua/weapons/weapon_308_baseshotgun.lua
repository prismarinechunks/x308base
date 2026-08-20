
AddCSLuaFile()

SWEP.Base = "weapon_308_base"
SWEP.PrintName = "BIG SECRET II"
SWEP.Category = "308..' Base"
SWEP.HoldType = "shotgun"
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/w_shotgun.mdl"
SWEP.Slot = 3
SWEP.Spawnable = false
SWEP.IsShotgun = true
SWEP.BlockPrimary=true
-------------------------------------

SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "BuckShot"
SWEP.PA_Num=6

SWEP.ReloadAnim1="reload1"--开始换弹动画
SWEP.ReRate1=1
SWEP.ReloadAnim2="reload2"--换弹
SWEP.ReRate2=1
SWEP.ReloadAnim3="reload3"--结束换弹动画
SWEP.ReRate3=1

SWEP.ReloadStart=.5--拿子弹!准备动画!
SWEP.ReloadDelay=.5--下一个!
SWEP.ReloadIn=.2--什么时候子弹塞进去的
SWEP.ReloadInEnd=.1--提前点!
--警告
--.ReloadIn<.ReloadInEnd
SWEP.ReloadEnd=.5--换弹结束!

SWEP.Text_Auto="Pump-Action"
SWEP.Text_Semi="Pump-Action"

SWEP.ReloadSound3 = {}
function SWEP:Reload()
self:PrintNamed()
if self:Ammo1()<1||self.Scope>0 then return end
local m=self.Primary.ClipSize-self:Clip1()
if m<1 then return end
local a=self.HMath
if self:GetNextPrimaryFire()<CurTime()and !self.Reloading then

self:PlayAnim(self.ReloadAnim1,self.ReRate1,math.huge)
self.Reloading=true
self:SetNetworkedString("R",self.ReloadStart+self.ReloadEnd+self.ReloadInEnd+self.ReloadDelay*m)
self:SetNextPrimaryFire( CurTime() + self.ReloadStart )
self.ReloadingTimer=CurTime()+self.ReloadStart
self:SoundSlot(self.ReloadSound)
self.Owner:SetAnimation(7)
self:OnReload()
end
end
--Reload Boltpull Anim
function SWEP:BasThink()
if self.Reloading and self.ReloadingTimer<=CurTime() then
if self:Clip1()<self.Primary.ClipSize and self:Ammo1()>0 then
self.ReloadingTimer=CurTime()+self.ReloadDelay
self:SoundSlot(self.ReloadSound2)
self:PlayAnim(self.ReloadAnim2,self.ReRate2,math.huge)
self:OnReloading()
local a=self.HMath
timer.Simple(self.ReloadIn,function()if !IsValid(self)||!self:CUnHos(a)then return end
self:ReturnAmmo(a)
end)
end
end end

function SWEP:ReturnAmmo(a)
self:PrintNamed()
self.Owner:SetAmmo( self:Ammo1()-1, self.Primary.Ammo )
self:SetClip1( self:Clip1()+1 )
if self:Clip1()>=self.Primary.ClipSize||self:Ammo1()<1 then
timer.Simple(self.ReloadInEnd,function()if !IsValid(self)||!self:CUnHos(a)then return end
self:EndReload()
end)
end
end
function SWEP:EndReload()
self.HMath=self.HMath+1
self.Reloading=false
self:SetNextPrimaryFire( CurTime() + self.ReloadEnd )
self:SetNetworkedString("R",self.ReloadEnd)
self:SoundSlot(self.ReloadSound3)
self:EndAnim()
self:AfterReload()
end
function SWEP:EndAnim()
self:PlayAnim(self.ReloadAnim3,self.ReRate3)
end

AddCSLuaFile()
SWEP._PressR=CurTime()
SWEP.ViewModelBoneMods={}
SWEP._FirstDeploy=false
SWEP.OHA=false
SWEP.Base="weapon_base"
SWEP.Scope=0
SWEP.Reloading=false
SWEP.ReloadingTimer=CurTime()
SWEP.Meleeing=0
SWEP.MeleeTimer=CurTime()
SWEP.BoltPullTimer=CurTime()
SWEP.Havelastbullet=false
SWEP.Havelastbullet2=false
SWEP.DrawCrosshair=true
SWEP.DrawAmmo=false
SWEP.SightPos2=Vector(0,0,0)
SWEP.SightAng2=Angle(0,0,0)
SWEP.Weight=3
------ Start you guns!


--- Basement Setting ---
SWEP.PrintName = "BIG SECRET"
SWEP.Category = "308..' Base"
SWEP.HoldType = "revolver"
SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.ViewModel = "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"
SWEP.Spawnable = false
SWEP.AdminOnly = false
------- Viewer -------
SWEP.UseHands = true
SWEP.ViewModelFOV =81
SWEP.BobScale = 1
SWEP.CustomBobScale = 1
SWEP.SwayScale = 1
SWEP.DrawCross=true
--SWEP.CSMuzzleFlashes = true

SWEP.MaxBobScale = 800
--normally 800
------- Primary Attack -------
SWEP.Primary.ClipSize = 7
SWEP.Primary.DefaultClip = 7
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "357"


SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {}
SWEP.PA_DryFireSound = "weapons/pistol/pistol_empty.wav"
SWEP.PA_TakeAmmo = 1
SWEP.PA_Delay = .3
SWEP.PA_Damage = 50
SWEP.PA_Num = 1
SWEP.PA_Range=240
SWEP.PA_Tracer=1
SWEP.PA_TracerName="Tracer"
--SWEP.PA_Impact=""
--SWEP.PA_Penetrate=1

----Velocity Influence----
SWEP.PA_Spread = .02
SWEP.PA_VeloS = 7000
SWEP.PA_Recoil = 0
--------------------------
SWEP.PA_AimSpread = .01
SWEP.PA_AimRecoil = 0

SWEP.PA_Anim=ACT_VM_PRIMARYATTACK
--if set,ignore these.
SWEP.PA_Anim1="shoot1"
SWEP.PA_Anim2="shoot2"
SWEP.PA_Anim3="shoot3"
SWEP.PA_AnimD={}--{{Delay=.1,Anim="",Rate=1}}
SWEP.PA_AnimE={}
SWEP.PA_EmptySnd={}
SWEP.PA_AnimRate = 1
SWEP.PA_Effect="308_muzzle1"
SWEP.EffectScale=1
------- Secondary Attack -------
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.SA_IsSight = true
--if false,return to Secondary
SWEP.SA_Cross = false
SWEP.SA_SightFOV = 70
SWEP.SA_SightS=""
SWEP.SA_SightS2=""
SWEP.SA_Delay = .1
------- Custom Draw -------
SWEP.DrawTime = .5
SWEP.DrawSound = {}
SWEP.FDrawSound = {}
--Can sent: "SWEP.DrawSound = nil",then no emit sound
SWEP.NormalDraw = false
--if true,ignore these x3
SWEP.DrawAnim = "draw"
SWEP.DrawAnimRate = 1

SWEP.BTime = .8
SWEP.BSound = {}
-- At reloading bolt no pull,SetNextPrimaryFire( self.BTime )
------- Custom Reload -------
SWEP.ReloadTime = 1.4
SWEP.BlockReload=false--don't holster while you reloading

SWEP.ReloadAnim = "reload"
--For example,SWEP.ReloadAnim = "awp_reload"
SWEP.ReloadAnimRate = 1

SWEP.ScientReload = true
--if true,ignore these x5
------------------------------------------
SWEP.HaveBoltPull =true

SWEP.ClipExtraBullet = true
--For example,set clip max ammo = 30
--if clip ammo > 1,reloaded then clip ammo will is 31.
SWEP.BoltPullTime = nil
-- SWEP.BoltPullTime = Reload Complete,on draw no pull bolt/other?
SWEP.ReloadTime2 = 2
-- If need pull bolt,how much need seconds?

-----[c1]-----
SWEP.ReloadAnimD = nil--{{Delay=.1,Anim="",Rate=1}}
SWEP.ReloadAnimD2 = nil--{}
-----[c2]-----
--SWEP.StopRAnimTime = 1.4
-- x seconds later,stop reload animation.if nil then,ignore it.
------------

SWEP.ReloadSound2 = {}
-- on need pull bolt

SWEP.ClipoutTime = 0.54
SWEP.ClipinTime = 1.4
--Warning! don't over ReloadTime!
------------------------------------------

SWEP.ReloadSound = {}

--SWEP.ReloadSound = {{ Delay = 0, Sound = "3088083421/wep/deploy/deploy_cod_1.wav"},{ Delay = 1, Sound = "3088083421/wep/deploy/deploy_cod_2.wav"}}
--这样用

------- Weapon OverHeat -------
SWEP.OverHeat=false --guess you won't to enable it,重武器的话除外
SWEP.OHM=40--Max
SWEP.OHS=7--每秒冷却的热量是多少?不是以焦耳算哦
SWEP.OverHeatS={}--On Hit Max
--先说明下，每次射击的时候OH会+1，此时如果OH超过OHM...你懂的
------- Melee Attack -------
SWEP.MeleeDelay = 2
SWEP.MeleeDamage = 15
SWEP.MeleeAnim = "melee"
--For example,SWEP.MeleeAnim = "melee_attack"
SWEP.MeleeAnimRate = 1 --Can ignore

------- First Deploy -------
--SWEP.FirstDeployAnim=""
SWEP.FirstDeployAnimRate=1
------- On Idle -------
--SWEP.IdleAnim=
SWEP.IdleAnimRate=1
SWEP.IdleSound={}
--For example,SWEP.MeleeAnim = "idle"

--SWEP.IdleAnimE="idle_empty"
SWEP.IdleAnimERate=1
------- Other Setting -------
--SWEP.CustomAmmoIcon ="R"
--Q = flash grenade?
--P = smoke grenade?
--R = 9mm
--T = .357
--U = .50
--O = HE grenade
--J = buckshot
--M = .45
--N = 5.56
--W = .338
--S = .57
--V = 7.62
SWEP.Color=Color(255,255,255)
SWEP.Material=""
SWEP.ModelScale=1
SWEP.AmmoHUD=0
SWEP.CDWInfoBox=false
SWEP.Text_Auto = "Auto"
SWEP.Text_Semi = "Semi-Auto"
SWEP.FiresUnderwater = false
SWEP.TextType = "308wepkillicon"
SWEP.WepIcon = nil
SWEP.CenterPos=Vector()
SWEP.CenterAng=Angle()
SWEP.SightPos=Vector()
SWEP.SightAng=Angle()
SWEP.Speed=1
SWEP.DoFireAnimEvent=true
------- Dual Weapon -------
SWEP.IsDual=false
--SWEP.SA_Anim="shoot_right2"
--SWEP.SA_AnimS="shoot_right2"
--SWEP.PA_AnimS="shoot_left2"
--SWEP.RE_RightOut=
--SWEP.RE_LeftOut=
--SWEP.RE_RightIn=
--SWEP.RE_LeftIn=

----end
local DeployAnimation = 0
local RunAnimation = 0
local RunAnimation2 = 0

if SERVER then
util.AddNetworkString( "308deploy" )
else
net.Receive("308deploy",function(length,ply)DeployAnimation=1 end)
end

--
function SWEP:SetupDataTables()self:NetworkVar("Float",1,"NextIdle")return self:SDT()end
function SWEP:SDT()end
function SWEP:UpdateNextIdle()if self.IsMCGun then
self:SetNextIdle(self._Timer+self:GetAnimTime()+.05)return end
local vm=self.Owner:GetViewModel()
self:SetNextIdle(CurTime()+vm:SequenceDuration()/vm:GetPlaybackRate())
end

function SWEP:PlayAnim(a,c,t)
self:SetNextIdle(CurTime())
local vm=self.Owner:GetViewModel()
if a then
local n=vm:LookupSequence(_308Table(a))
vm:ResetSequence(n)
vm:ResetSequenceInfo()
vm:SendViewModelMatchingSequence(n)
end
if !c then c=1 end
vm:SetPlaybackRate(c)
if t then
self:SetNextIdle(CurTime()+t)
else
self:UpdateNextIdle()
end
end
function SWEP:PlayAnim2(m,c,t)
self:SetNextIdle(CurTime())
self:SendWeaponAnim(m)
if !c then c=1 end
self.Owner:GetViewModel():SetPlaybackRate(c)
if t then
self:SetNextIdle(CurTime()+t)
else
self:UpdateNextIdle()
end
end

function SWEP:TraceL(r)
local p = self.Owner
local tr=util.TraceLine({
start=p:GetShootPos(),
endpos=p:GetShootPos()+p:GetAimVector()*r,
filter=p,
mask=MASK_SHOT_HULL
})
return tr
end
function SWEP:TraceH(r,x,y)
local p = self.Owner
local xx=x or 16
local yy=y or 16
local tr=util.TraceLine({
start=p:GetShootPos(),
endpos=p:GetShootPos()+p:GetAimVector()*r,
filter=p,
mask=MASK_SHOT_HULL
})
if !IsValid(tr.Entity)then
tr=util.TraceHull({
start=p:GetShootPos(),
endpos=p:GetShootPos() + p:GetAimVector() * r,
filter=p,
mins=Vector(-xx,-yy,0),
maxs=Vector(xx,yy,0),
mask=MASK_SHOT_HULL
})
end
return tr
end
--
SWEP.OriginBobing=1
SWEP.OriginSway=1
function SWEP:BasPrimary()end
function SWEP:BasVMPos(p,a)return self:CustomVMPos(p,a)end
function SWEP:BasReload()end
function SWEP:BasDeploy()end
function SWEP:BasEquip()end
function SWEP:BasHolster()end
function SWEP:BasInit()end
function SWEP:BasHUD()end
function SWEP:Initialize()
self.OriginBobing=self.BobScale
self.OriginSway=self.SwayScale
if !game.SinglePlayer()and self.Base=="weapon_308_base" then
if self.StopRAnimTime then self.StopRAnimTime=self.StopRAnimTime-.15 end
if self.ClipinTime then self.ClipinTime=self.ClipinTime-.1 end
if self.ClipinTime2 then self.ClipinTime=self.ClipinTime2-.1 end
if self.ClipoutTime then self.ClipoutTime=self.ClipoutTime-.1 end
if self.ClipoutTime2 then self.ClipoutTime2=self.ClipoutTime2-.1 end
if self.ReloadTime then self.ReloadTime=self.ReloadTime-.1 end
if self.ReloadTime2 then self.ReloadTime2=self.ReloadTime2-.1 end
if self.BoltPullTime then self.BoltPullTime=self.BoltPullTime-.1 end
end
if !self.DrawCross then self.DrawCrosshair=false end
if !self.Text then self.Text=self.PrintName end
if CLIENT then
if self.TextIcon then
killicon.Add(self:GetClass(),self.TextIcon,color_white)else
killicon.AddFont(self:GetClass(),self.TextType,self.Text,self.TextColor or Color(255,255,255))end
if self:GetClass()=="weapon_308_base"||self:GetClass()=="weapon_308_baseshotgun" then 
self.Text="大秘密"
self.WepSelectIcon=surface.GetTextureID( "models/screenspace" )
end
self.BounceWeaponIcon = false
end
if !util.IsValidProp(self:GetModel())then
self:SetSolid(SOLID_BBOX)self:SetCollisionBounds(Vector(.1,.1,.1),-Vector(.1,.1,.1))end
local a="R"
local b=self:GetPrimaryAmmoType()
if self.CustomAmmoIcon then
a=self.CustomAmmoIcon
else
if b==1 then a="V"
elseif b==14||b==6 then a="W"
elseif b==4 then a="N"
elseif b==7 then a="J"
elseif b==10||b==9||b==11||b==8 then a="O"
elseif b==5 then a="T"
end
end
self:SetColor(self.Color)
self:SetMaterial(self.Material)
self:SetWeaponHoldType(self.HoldType)
self:SetNWInt("BOLT",1)
self:SetNetworkedString("A",a)
self:SetNWInt("B",0)
self:SetNWInt("T",255)
self:SetNWInt("R",0)
self:SetNWInt("OH",0)
self:SetModelScale(self.ModelScale)
self.SightPos2 = self.CenterPos
self.SightAng2 = self.CenterAng
if !self.BSound and !self.BAnim then
self.BSound={{Delay=0,Sound="weapons/elite/elite_sliderelease.wav"}}end
timer.Simple(0,function()if IsValid(self)and self.RemoveOnWorld and !IsValid(self.Owner)then self:Remove()end end)
self:BasInit()
self:CustomInit()
	if CLIENT then
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )
		self:CreateModels(self.VElements)
		self:CreateModels(self.WElements)
		if IsValid(self.Owner)and self.Owner:IsPlayer() then
			local vm=self.Owner:GetViewModel()
			if IsValid(vm)then
				self:ResetBonePositions(vm)
				if (!self.ShowViewModel||self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					vm:SetColor(Color(255,255,255,1))
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
	end
end
function SWEP:PrintNamed()
self:SetNWInt("T",255)
end
function _308hud()if GetConVarNumber("wb3_hud")==1 then return true end end
SWEP._im=300
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
local tc=TEXT_ALIGN_CENTER
local tr=TEXT_ALIGN_RIGHT
local tl=TEXT_ALIGN_LEFT
local u,d=0
local oh=self:GetNWInt("OH")/self.OHM
if self:GetNWInt("BOLT")>0 then d=255 else d=0 end
if self._im>0 and self.TextEquip then self._im=self._im-2
draw.SimpleText(self.TextEquip, "308wepbase",ScrW()*.5,ScrH()*.76,Color(255,255,255,self._im),tc,tc)
end
if n>255 then n=255 end
if r<0 then r=0 end
if self:Clip1()==0 then b=0 end

if !game.SinglePlayer()and self.HIGHPINGWep and GetConVarNumber("wb3_ban")==1 then draw.SimpleText("Banned:High Ping","308wepbase",ScrW()*.01, ScrH()*.8,Color(255,10,15,255),tl,tc)end
if self.OverHeat and GetConVarNumber("wb3_oh")==1 then
surface.SetDrawColor( 255, 255, 0, 80 )
draw.SimpleText("°C","308wepbase",ScrW()*.33,ScrH()*.8,Color(255,255,255,255),tr,tc)
surface.DrawRect(ScrW()*.35,ScrH()*.78,ScrW()*.3*oh,ScrH()*.04)
surface.DrawLine(ScrW()*.65,ScrH()*.78,ScrW()*.65,ScrH()*.82)
surface.DrawLine(ScrW()*.35,ScrH()*.78,ScrW()*.35,ScrH()*.82)
end
if _308hud()then
draw.SimpleText(self.PrintName, "308wepbase", ScrW() * 0.99, ScrH() * 0.83,Color(255,255,255,n),tr,tc)
self.DrawAmmo=false
if self.AmmoHUD==1 then
surface.SetDrawColor( 255, 55, 155, 255 )
draw.SimpleText(self:Clip1()+self:Ammo1(),"308wepbase", ScrW() * 0.96, ScrH() * 0.91,Color(255,255,255,n),tr,tc)
draw.SimpleText(a, "308CS", ScrW() * 0.99, ScrH() * 0.94,Color(255,255,255,n),tr,tc)
elseif self.AmmoHUD==0 then
if GetConVarNumber("wb3_infammo")!=2 then draw.SimpleText("RELOAD", "308wepbase", ScrW() * 0.5, ScrH() * 0.8,Color(255,255,0,w),tc,tc)end
draw.SimpleText(a, "308CS", ScrW() * 0.99, ScrH() * 0.94,Color(255,255,255,n),tr,tc)
surface.SetDrawColor( 255,d,d, n )
surface.DrawLine(x+300+(ScrW()-x-300)*(1-b),ScrH()*.87,ScrW(),ScrH()*.87)
surface.DrawLine(x+300+r,ScrH()*.8,ScrW(),ScrH()*.8)
surface.DrawLine(x+300,ScrH()*.79,x+300,ScrH()*.88)
if self.Primary.Automatic then
draw.SimpleText(self.Text_Auto, "308wepbase", ScrW() * 0.98, ScrH() * 0.76,Color(255,255,255,n),tr,tc)
else
draw.SimpleText(self.Text_Semi, "308wepbase", ScrW() * 0.98, ScrH() * 0.76,Color(255,255,255,n),tr,tc)
end
draw.SimpleText(self:Ammo1(),"308wepbase", ScrW() * 0.96, ScrH() * 0.91,Color(255,255,255,n),tr,tc)
draw.SimpleText("/", "308wepbase", ScrW() * 0.88, ScrH() * 0.91,Color(255,255,255,n),tr,tc)
if self:GetSecondaryAmmoType()!=-1 then
draw.SimpleText(self:Ammo2().." SE","308wepbase", ScrW()*.99, ScrH()*.7,Color(255,255,255,n),tr,tc)
end
if self:Clip1()<0 then self:SetClip1(self.Primary.ClipSize)end---Ahh...a big hud bug!
draw.SimpleText(self:Clip1(), "308wepbase", ScrW() * 0.83, ScrH() * 0.91,Color(255,255,255,n),tr,tc)
end
else
self.DrawAmmo=true
end
self:BasHUD()
return self:CusHUD()
end
function SWEP:Equip()
self:ADebug()
if self.Owner:GetActiveWeapon()==self and self.BAnim then
self:PlayAnim(self.BAnim,self.BAnimRate) 
end
if self.UTWep then
self.Owner:EmitSound(self.CusEquipS or "3088083421/ut/equip.wav")else
self.Owner:EmitSound(self.CusEquipS or "3088083421/wep/gunpickup2.wav")end
self:BasEquip()
self:CustomEquip()
end
SWEP.PickU=1
function SWEP:Deploy()
self:ADebug()
if self.Owner:IsPlayer()and !self.Owner:Alive()then return end
if SERVER then
self:PlayAnim2(ACT_VM_IDLE,0)
self:PrintNamed()
self:SetNWInt("R",0)
self:SetNWBool("Scope",false)
function An(a)if self.IsMCGun then
if self.MCBAnim and a then
self:PlayMCAnim(self.MCBAnim)elseif !self._FirstDeploy then
self:SoundSlot(self.FDrawSound)self:PlayMCAnim(self.MCFirstDrawAnim or self.MCDrawAnim)else self:PlayMCAnim(self.MCDrawAnim)end
return end
if self._FirstDeploy||!self.FDrawAnim then
if self.BAnim and(a||self.PickU)then
self.PickU=nil
self:PlayAnim(self.BAnim,self.BAnimRate)
else
if self.NormalDraw then
self:PlayAnim(self.DrawAnim,self.DrawAnimRate)
else
if self.IdleAnim then self:PlayAnim(self.IdleAnim,self.IdleAnimRate) 
else self:PlayAnim2(ACT_VM_IDLE,self.IdleAnimRate)end
net.Start( "308deploy" )
net.Send( self.Owner )
end
end
else
self:SoundSlot(self.FDrawSound)
if self.FDrawAnim then
self:PlayAnim(self.FDrawAnim,self.FDrawAnimRate)elseif self.BAnim then
self:PlayAnim(self.BAnim,self.BAnimRate)end
end
end
if !isnumber(self:GetNWInt("BOLT"))then self:SetNWInt("BOLT",1)end
if self:GetNWInt("BOLT")<1 and self:Clip1()>0 then
An(1)
self:SetNextPrimaryFire( CurTime() + self.BTime)
self:SetNextSecondaryFire( CurTime() + self.BTime)
self.BoltPullTimer = CurTime() + self.BTime
self:SoundSlot(self.BSound)
else
An()
self:SoundSlot(self.DrawSound)
self:SetNextPrimaryFire( CurTime() + self.DrawTime )
self:SetNextSecondaryFire( CurTime() + self.DrawTime )
end
self:SetNWInt("BOLT",1)
self.Havelastbullet=false
self.Havelastbullet2=false
self.Reloading=false
self.ReloadingTimer=CurTime()
self:BasDeploy()
if !self._FirstDeploy then
if self.FirstDeployAnim then
self:PlayAnim(self.FirstDeployAnim,self.FirstDeployAnimRate)end
self:FirstDeploy()end
if self:ClipEmpty()and self.DrawAnimE then self:PlayAnim(self.DrawAnimE,self.DrawAnimERate)end
self:CustomDeploy()

self._FirstDeploy=1
return true
end
end

function SWEP:Holster(m)
if !m and self.Meleeing==1||self:IsScope()||self.BoltPullTimer>CurTime()||self:BeforeHolster()then return false end
self:ResetB()
self.Havelastbullet=false
self.Havelastbullet2=false
self:SetNWBool("Scope",false)
self.Reloading=false
self.ReloadingTimer=CurTime()
self.HMath=self.HMath+1
self:BasHolster()
self:CustomHolster()
return true end

function SWEP:SecondaryAttack()end
function SWEP:PrimaryAttack(m)
if self:BeforePA(m)||self.IsMelee||self.OHA||self.Owner:KeyDown(IN_USE)then return end
if self.Reloading then
if self.IsShotgun then
self:EndReload()end
return end
if self:Clip1()<self.PA_TakeAmmo and !self.Is308Melee and(!self.IsDual||!m)then
self:EmitSound(self.PA_DryFireSound)
if self.PA_AnimDryFire then
self:PlayAnim(self.PA_AnimDryFire,self.PA_AnimDryFireRate)end
self:SetNextPrimaryFire(CurTime()+.2)
self:SetNextSecondaryFire(CurTime()+.2)
self:PrintNamed()
return end
if self.IsDual and self:Clip2()<self.PA_TakeAmmo and m then
self:EmitSound(self.PA_DryFireSound)
if self.PA_AnimDryFire then
self:PlayAnim(self.PA_AnimDryFire,self.PA_AnimDryFireRate)end
self:SetNextSecondaryFire(CurTime()+.2)
self:PrintNamed()
return end
if !self.FiresUnderwater and self.Owner:WaterLevel()>2 then return end
if self.OverHeat and GetConVarNumber("wb3_oh")==1 then
self:SetNWInt("OH",self:GetNWInt("OH")+1)
if self:GetNWInt("OH")>=self.OHM then
self.OHA=true
self:SoundSlot(self.OverHeatS)
return end
end
if self.BlockPrimary then self.BoltPullTimer=CurTime()+self.PA_Delay end
self:PASound(m)
if m then
self:SetNextSecondaryFire(CurTime()+self.PA_Delay)
if self.IsDual then
self:TakeSecondaryAmmo(self.PA_TakeAmmo)if self:Clip1()<1 then self:SetNextPrimaryFire(CurTime()+self.PA_Delay)end
else self:TakePrimaryAmmo(self.PA_TakeAmmo)end
else
self:TakePrimaryAmmo(self.PA_TakeAmmo)
self:SetNextPrimaryFire(CurTime()+self.PA_Delay)
if self.IsDual then
if self:Clip2()<1 then self:SetNextSecondaryFire(CurTime()+self.PA_Delay)end end
end
self.Owner:SetAnimation(PLAYER_ATTACK1)
self.HMath=self.HMath+1
if !m then
self:SoundSlot(self.PA_Sound2)
else
self:SoundSlot(self.PA_Sound3 or self.PA_Sound2)
end
self:BasPrimary(m)
self:CustomPrimary(m)
self:Recoil()
end
function SWEP:Reload()
local a=self.HMath
self:PrintNamed()
if GetConVarNumber("wb3_reloadpunish")>0 and !self:ClipEmpty()then
if self._PressR<CurTime()and !self.Reloading and self.Owner:KeyPressed(IN_RELOAD)then self._PressR=CurTime()+.2 return end
if self._PressR<CurTime()||!self.Owner:KeyReleased(IN_RELOAD)then timer.Simple(.001,function()if IsValid(self)and self._PressR>CurTime()then self:Reload()end end)return end
end
if(self:Ammo1()<1 and GetConVarNumber("wb3_reloadpunish")<2)and self:Clip1()<1 then return end
if(self.NoPullClip||GetConVarNumber("wb3_reloadpunish")>1)and(self:Ammo1()<1||self:Clip1()>=self.Primary.ClipSize)then return end
if !self.Reloading and !self:IsScope()and self:GetNextPrimaryFire()<CurTime()then
timer.Simple(.1,function()if IsValid(self)and self:CUnHos(a)then self:SetNWBool("Flan_RE",false)self:SetNWBool("Flan_RE2",false)end end)
self.Reloading=true
self.ReloadingTimer=CurTime()+self.ReloadTime

local function Anim(B)if self.IsMCGun then local t=self.MCReloadAnim
if B then t=self.MCReloadAnim2 or self.MCReloadAnim end
self:PlayMCAnim(t)return end
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
local tco,tci,rt,rs
if self.HaveBoltPull and self:Clip1()<1 then self.ReloadingTimer=CurTime()+self.ReloadTime2
timer.Simple(self.BoltPullTime or self.ReloadTime2,function()if !IsValid(self)||!self:CUnHos(a)then return end
self:SetNWInt("BOLT",1)
end)
Anim(1)
rt=self.ReloadTime2
rs=self.ReloadSound2
tco=self.ClipoutTime2 or self.ClipoutTime
tci=self.ClipinTime2 or self.ClipinTime
self:SetNWBool("Flan_RE",true)
self:SetNWBool("Flan_RE2",true)
else
Anim()
rt=self.ReloadTime
rs=self.ReloadSound
tco=self.ClipoutTime
tci=self.ClipinTime
self:SetNWBool("Flan_RE",true)
end
if self.BlockReload then
self.BoltPullTimer=CurTime()+rt
end
self:SoundSlot(rs)
self:SetNWInt("R",rt)
self:SetNextPrimaryFire(CurTime()+rt)

timer.Simple(tco,function()if !IsValid(self)||!self:CUnHos(a)then return end
if self:Clip1()==0 and self.HaveBoltPull then
self:SetNWInt("BOLT",0)
end
self:OnReloading()
self:ReturnAmmo(1)
end)
timer.Simple(tci,function()if !IsValid(self)||!self:CUnHos(a)then return end
self:ReturnAmmo(2)
self:AfterReload()
end)

self.Owner:SetAnimation(PLAYER_RELOAD)
self:BasReload()self:OnReload()
end
end
function SWEP:DoingIdleAnim()end
function SWEP:DoIdleAnim(b)self:DoingIdleAnim()self.IsIdle=nil
if self.IsMCGun then
if b then
if self:IsScope()and b==1 then
self:PlayMCAnim(self.MCInIdle2Anim)else
self:PlayMCAnim(self.MCInIdleAnim)end
else
if self:IsScope()and self.MCIdleAnim2 then
self:PlayMCAnim(self.MCIdleAnim2)else
self:PlayMCAnim(self.MCIdleAnim)end
end
return end
if self.MovingAnim and self.Owner:GetVelocity():Length()>80 then
self:PlayAnim(self.MovingAnim,self.MovingAnimRate or self.IdleAnimRate)self.IsIdle=1
self:SetNWBool("Moving",true)
return nil else
self:SetNWBool("Moving",false)
end
if self:IsScope()then
if self.IdleAnimE and self:ClipEmpty()then
self:PlayAnim(self.IdleAnimE,self.IdleAnimERate)
else
if self.IdleAnim then self:PlayAnim(self.IdleAnim,.01,0)
else self:PlayAnim2(ACT_VM_IDLE,.01,0)
end
end
else
if self.IdleAnimE and self:ClipEmpty()then
self:PlayAnim(self.IdleAnimE,self.IdleAnimERate)
else
--[[
if self.RunAnim and self._Running==2 then
self:PlayAnim(self.RunAnim,self.RunAnimRate)
elseif self.WalkAnim and self._Running==1 then
self:PlayAnim(self.WalkAnim,self.WalkAnimRate)
elseif self.MovingAnim and self._Running>0 then
self:PlayAnim(self.MovingAnim,self.MovingAnimRate)
elseif self.IdleAnim then
self:PlayAnim(self.IdleAnim,self.IdleAnimRate)
else self:PlayAnim2(ACT_VM_IDLE,self.IdleAnimRate)
end
--]]
if self.IdleAnim then
self:PlayAnim(self.IdleAnim,self.IdleAnimRate)
else self:PlayAnim2(ACT_VM_IDLE,self.IdleAnimRate)
end
--self:SoundSlot(self.IdleSound)
end
end
end
SWEP.BobM=0
SWEP.BobT=CurTime()
function SWEP:Bobing(p,t,c)if GetConVarNumber("wb3_viewpunch")!=1||!game.SinglePlayer()then
return end
if self.BobM<1 then
p:ViewPunch(Angle(-t,0,-t/2))
elseif self.BobM<2 then
p:ViewPunch(Angle(t,t,-t/4))
elseif self.BobM<3 then
p:ViewPunch(Angle(t,t*2,0))
elseif self.BobM<4 then
p:ViewPunch(Angle(-t,t,t/4))
elseif self.BobM<5 then
p:ViewPunch(Angle(-t,-t,t/2))
elseif self.BobM<6 then
p:ViewPunch(Angle(t,-t*2,t/4))
elseif self.BobM<7 then
p:ViewPunch(Angle(t,-t,0))
else
self.BobM=0
p:ViewPunch(Angle(-t,0,-t/4))
end
if p:IsOnGround()and(p:GetVelocity():Length()>p:GetWalkSpeed()-10||p:Crouching())then
if p:KeyDown(IN_MOVELEFT)then
p:ViewPunch(Angle(0,0,-c))
elseif p:KeyDown(IN_MOVERIGHT)then
p:ViewPunch(Angle(0,0,c))
end
end
if self.BobT<=CurTime()then self.BobT=CurTime()+20/p:GetVelocity():Length()self.BobM=self.BobM+1 end
end
SWEP._PA_TakeAmmo=0
SWEP._IdleAnim=""
SWEP._Running=0
local function sprint(p)if isfunction(p.IsSprinting)then
return p:IsSprinting()else return p:KeyDown(IN_SPEED)end
end
function SWEP:Think()local p=self.Owner
self:SetWeaponHoldType(self.HoldType)self:SetNWBool("holdpistol",false)if(self.HoldType=="pistol"||self.HoldType=="duel")and !self.Is308Melee then
self:SetNWBool("holdpistol",true)end
local i=self:GetNextIdle()
if(i>0&&CurTime()>i)||((self.MovingAnim&&!self.IsIdle&&p:GetVelocity():Length()>80)||(self.IsIdle&&p:GetVelocity():Length()<=80))then
self:DoIdleAnim()end
if sprint(p)and !self.Running and !self:IsScope()and p:GetVelocity():Length()>p:GetWalkSpeed()+50 then
if game.SinglePlayer()then p:SetFOV(100,.1)end
self.Running=1
elseif(!sprint(p)||!self:IsScope()||p:GetVelocity():Length()<=p:GetWalkSpeed()+50)and self.Running then
self.Running=nil
if !self:IsScope()and game.SinglePlayer()then p:SetFOV(0,.3)end
end
if self.WorldModelFix==1 then self:SetModelScale(.001)elseif self.WorldModelFix then self:SetMaterial("null")end
if p:IsOnGround()and self.Speed<1 then
p:SetLocalVelocity(p:GetVelocity()*self.Speed)
end
local nub=GetConVarNumber("wb3_infammo")
if nub>1 and self.PA_TakeAmmo>0 then
self._PA_TakeAmmo=self.PA_TakeAmmo
self.PA_TakeAmmo=0
elseif nub<2 and self.PA_TakeAmmo<1 and self._PA_TakeAmmo>0 then
self.PA_TakeAmmo=self._PA_TakeAmmo
end
if self.Melee==1 and self.MeleeTimer<CurTime()then
self.Melee=0
end
if sprint(p)and p:GetVelocity():Length()>p:GetWalkSpeed()+50 and p:IsOnGround()then self:Bobing(p,.05,.1)
self._Running=2
elseif(p:KeyDown(IN_MOVELEFT)||p:KeyDown(IN_FORWARD)||p:KeyDown(IN_MOVERIGHT)||p:KeyDown(IN_BACK))and p:IsOnGround()and(p:GetVelocity():Length()>100||p:Crouching()and p:GetVelocity():Length()>30)then
self._Running=1
if p:Crouching()then
self:Bobing(p,.01,.06)
else
self:Bobing(p,.015,.07)
end
else self.BobM=0
self._Running=0
end
if !self:IsReloading()and !self:IsScope()and p:KeyDown(IN_USE)then
if p:KeyDown(IN_ATTACK)then self:CusEPA()
elseif p:KeyDown(IN_ATTACK2)then self:CusESA()
end
if p:KeyPressed(IN_ATTACK)then self:CusEPA2()
elseif p:KeyPressed(IN_ATTACK2)then self:CusESA2()
end
end
if self:GetNWInt("T")!=0 then self:SetNWInt("T",self:GetNWInt("T")-1)end
if self:GetNWInt("OH")>0 then self:SetNWInt("OH",self:GetNWInt("OH")-self.OHS*.015)else self.OHA=false end
if self:GetNWInt("R")>0 then self:SetNWInt("R",self:GetNWInt("R")-.015)end
local m=5
if self.IsDual then m=2 end
if self:GetNWInt("B")<=200 and self:GetClips()<=self.Primary.ClipSize/m and !self.Reloading then self:SetNWInt("B",self:GetNWInt("B")+1)
elseif self:GetNWInt("B")>200||self.Reloading then self:SetNWInt("B",0)
end
self:BasThink()
if self.Reloading and self.ReloadingTimer<=CurTime()then
self.Reloading=false
self:SetNWInt("BOLT",1)
end
if !game.SinglePlayer()and self.HIGHPINGWep and GetConVarNumber("wb3_ban")==1 then self:SetNextSecondaryFire(CurTime()+.5)self:SetNextPrimaryFire(CurTime()+.5)return end
if self.SA_IsSight and !p:KeyDown(IN_ZOOM)then
local function Sight(s)
if s then
if !self.SA_Cross then self.DrawCrosshair=false end
p:SetFOV(self.SA_SightFOV,self.SA_Delay)if !self.IsMCGun then
self.SightPos2=self.SightPos
self.SightAng2=self.SightAng end
self:SetNWBool("Scope",true)self.Scope=1
self:DoIdleAnim(1)
p:EmitSound(self.SA_SightS)
elseif !p:KeyDown(IN_ZOOM)then
self.DrawCrosshair=true
if !self.DrawCross then self.DrawCrosshair=false end
p:SetFOV(0,self.SA_Delay-.075)if !self.IsMCGun then
self.SightPos2=self.CenterPos
self.SightAng2=self.CenterAng 
if i>CurTime()+99999 then
self:UpdateNextIdle()self:DoIdleAnim(2)end
else self:DoIdleAnim(2)end
self:SetNWBool("Scope",false)self.Scope=0
p:EmitSound(self.SA_SightS2)
end
end
if p:KeyDown(IN_ATTACK2)and !p:KeyDown(IN_USE)and !self:IsReloading()and !sprint(p)and !self:IsScope()then Sight(1)
elseif(!p:KeyDown(IN_ATTACK2)||self:IsReloading()||sprint(p))and self:IsScope()then Sight()end
end
self:CustomThink()
end
SWEP._Up=0
SWEP._Up2=0
SWEP._Right=0
SWEP._Right2=0
function SWEP:GetViewModelPosition(pos,ang)
local p=self.Owner
	if IsValid(p)and !p:Alive()then return end
	local m=1
	if self.ViewModelFlip then m=-1 end
	local R=ang:Right()
	local F=ang:Forward()
	local U=ang:Up()
	DeployAnimation=math.Clamp( DeployAnimation-.06,0,1)
	local s=p:GetWalkSpeed()
	local run
	if GetConVarNumber("wb3_vmshake")!=2 then
	if p:Crouching()then
	s=s*p:GetCrouchedWalkSpeed()
	elseif sprint(p)then s=p:GetRunSpeed()run=1
	end
	end
	if GetConVarNumber("wb3_vmshake")>0 then
	self.BobScale=0
	local vec=p:GetVelocity():Length()*self.CustomBobScale
	if vec>self.MaxBobScale then vec=self.MaxBobScale end
	if self:IsScope()then vec=vec/10 end
	if self:IsReloading()then vec=vec/3 end
	if !p:IsOnGround()then vec=0 end
	RunAnimation=Lerp(.3,RunAnimation,math.sin(CurTime()*s/25)*math.Clamp(vec/900,0,5))
	RunAnimation2=Lerp(.3,RunAnimation2,math.sin(CurTime()*s/12.5-10)*math.Clamp(vec/900,0,5))
	--ang=ang+p:GetVelocity():Angle():Normalize()
	local n=RunAnimation
	local n2=RunAnimation2
	if self.Is308Melee then n=n*1.25 end
	if self:GetNWBool("Moving")then n=n*.05 n2=n*.05 end
	if GetConVarNumber("wb3_vmshake")==1 then
	pos=pos+R*math.Clamp(n*2*s/200,-500,500)
	if n<0 then n=-n end
	pos=pos-U*math.Clamp(n2*1.85*s/200,-500,500)end
	else
	self.BobScale=self.OriginBobing
	if self:IsScope()and self.BobScale>.1 then self.BobScale=.1 end
	end
	self._Up=Lerp(.4,self._Up,0)
	if GetConVarNumber("wb3_vmshake")>0 then
	if(!p:IsOnGround()||run)and !self.Is308Melee and self:GetNextPrimaryFire()<CurTime()-.5 and self:GetNextSecondaryFire()<CurTime()-.5 and !self:IsReloading()and !self:IsScope()then self._Up=Lerp(.1,self._Up,1)end
	end
	local m2=1
	if self:GetNWBool("holdpistol")then m2=0 end
	if self:GetNWBool("Moving")then self._Up=0 m=0 m2=0 end
	--if !(self.MovingAnim and self._Running>0)and !(self.WalkAnim and self._Running==1)and !(self.RunAnim and self._Running==2)then
	--end
	--self._Up2=Lerp(.5,self._Up2,p:GetVelocity().z)
	self._Right=Lerp(.3,self._Right,0)
	self._Right2=Lerp(.3,self._Right2,0)
	if GetConVarNumber("wb3_vmshake")==1 then
	if p:IsOnGround()then
	if p:KeyDown(IN_MOVELEFT)and !self:IsScope()then
	self._Right2=Lerp(.3,self._Right2,-10*m)elseif p:KeyDown(IN_MOVERIGHT)and !self:IsScope()then
	self._Right2=Lerp(.3,self._Right2,10*m)end
	if p:KeyDown(IN_MOVELEFT)||p:KeyDown(IN_FORWARD)||p:KeyDown(IN_MOVERIGHT)||p:KeyDown(IN_BACK)then
	self._Right=Lerp(1,self._Right,1)
	end
	end
	ang:RotateAroundAxis(R,self.SightAng2.p-DeployAnimation*(self.DeployScale or 20)-40*self._Up+340*(1-m2)*self._Up)
	ang:RotateAroundAxis(U,self.SightAng2.y+(200+80*math.sin(CurTime()*s/25)*self._Right)*self._Up*m*m2)
	ang:RotateAroundAxis(F,self.SightAng2.r+self._Right2)
	pos=pos+self.SightPos2.x*R+R*40*m*self._Up*m2
	pos=pos+self.SightPos2.y*F*-.1-F*5*self._Up+10*(1-m2)*self._Up*F
	pos=pos+self.SightPos2.z*U-100*(1-m2)*self._Up*U
	elseif GetConVarNumber("wb3_vmshake")==2 then
	ang:RotateAroundAxis(R,self.SightAng2.p-DeployAnimation*(self.DeployScale or 20))
	ang:RotateAroundAxis(U,self.SightAng2.y)
	ang:RotateAroundAxis(F,self.SightAng2.r)
	pos=pos+self.SightPos2.x*R
	pos=pos+self.SightPos2.y*F*-.1+F*RunAnimation*6
	pos=pos+self.SightPos2.z*U+U*RunAnimation*.5
	elseif GetConVarNumber("wb3_vmshake")==3 then
	ang:RotateAroundAxis(R,self.SightAng2.p-DeployAnimation*(self.DeployScale or 20))
	ang:RotateAroundAxis(U,self.SightAng2.y)
	ang:RotateAroundAxis(F,self.SightAng2.r)
	pos=pos+self.SightPos2.x*R
	pos=pos+self.SightPos2.y*F
	pos=pos+self.SightPos2.z*U
	end
	if self:IsScope()then self.SwayScale=.1 else self.SwayScale=self.OriginSway end
	return self:BasVMPos(pos,ang)
end
function SWEP:CustomVMPos(p,a)return p,a end
SWEP._ClipValid=1
SWEP._ClipValid2=1
function SWEP:ClipEmpty()if self:Clip1()<1 then return true end end
function SWEP:ClipVelocity()return Vector(0,0,0)end
function SWEP:ReturnAmmo(t)
local p=self.Owner
local b=self:GetPrimaryAmmoType()
local c=self:Clip1()
local function SpawnA(s1,s2,s3,a)
a=a or c
local f=15
local s=p:GetModelScale()
local e=ents.Create("obj_308_ammo")e:SetAngles(p:GetAimVector():Angle())e:SetCreator(p)
if self.CusClipMDL then e.Dont=1 e:SetModel(self.CusClipMDL)e:SetModelScale(self.CusClipScale or 1)end
if b==7 then f=20 end
e:SetPos(p:EyePos()-Vector(s1*s,s2*s,(s3+20)*s)+p:GetForward()*(f*s))
e.AType=b
if self.Havelastbullet then e.AmmoM=math.Clamp(a-1,0,self.Primary.ClipSize)else e.AmmoM=math.Clamp(a,0,self.Primary.ClipSize)end
e:Spawn()
if IsValid(e:GetPhysicsObject())then e:GetPhysicsObject():Wake()e:GetPhysicsObject():SetVelocity(p:GetVelocity()+Vector(s1,s2,s3)+self:ClipVelocity(p))else
e:SetMoveType(MOVETYPE_FLYGRAVITY)end
end
self:PrintNamed()

if t==2 then
if self:Ammo1()>0 then self._ClipValid=1 end
if self:Ammo1()>(self.Primary.ClipSize-self:Clip1())then
p:SetAmmo(self:Ammo1()-self.Primary.ClipSize+self:Clip1(),self.Primary.Ammo)self:SetClip1(self.Primary.ClipSize)
if self.ClipExtraBullet and self.Havelastbullet and self:Ammo1()>self:Clip1() then
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
SpawnA(math.random(-3,3),math.random(-3,3),math.random(-3,3))
end
end
end
end
end
function SWEP:FireB(m)
if self.PA_Num==0 then return end
local t={}
local c=self.PA_Spread+self.Owner:GetVelocity():Length()/self.PA_VeloS
if self:IsScope()then c=self.PA_AimSpread+(self.Owner:GetVelocity():Length()*.9)/self.PA_VeloS end
if self.Owner:Crouching()and self.Owner:IsOnGround()then c=c*.85 end
if c>.99 then c=.99 end
local Dir
for i=1,self.PA_Num do
Dir=(self.Owner:EyeAngles()+self.Owner:GetViewPunchAngles()+Angle(math.Rand(-c,c),math.Rand(-c,c),0)*30):Forward()
t.Num=1
t.Src=self.Owner:GetShootPos()
t.Dir=Dir
t.Tracer=1
t.TracerName=self.PA_TracerName
if self.PA_Force then t.Force=self.PA_Force else t.Force = self.PA_Damage/5 end
t.Damage=self.PA_Damage
t.AmmoType=self.PA_Ammo
t.Callback=function(a,tr,d)
if SERVER then
if !tr.HitSky and self.PA_Impact then
local e=EffectData()
e:SetOrigin(tr.HitPos+tr.HitNormal)
e:SetNormal(tr.HitNormal)
util.Effect(self.PA_Impact,e)
end
end
local dmg=self.PA_Damage-self.Owner:GetShootPos():Distance(tr.HitPos)/self.PA_Range
d:SetDamage(dmg)

--

self:EditB(t,tr,d,a)
end
self.Owner:FireBullets(t)
end
self:ShootEffect(m)
end
function SWEP:EditB()end
function SWEP:PASound(m)if SERVER then
if self.PA_Sound!="" and self.PA_Sound then
if !self.PA_SoundDist then
self.Owner:EmitSound(_308Table(self.PA_Sound),511,100,1)else
self.Owner:EmitSound(_308Table(self.PA_Sound),100,100,1)self.Owner:EmitSound(_308Table(self.PA_SoundDist),511,100,1)end
sound.Play(_308Table(self.PA_Sound),self:GetPos())self:InsertSound(1,self.Owner:GetShootPos(),1500,3)end
end
end
function SWEP:InsertSound(s,p,v,d)--Half Life SWEP
if SERVER then
	local a=ents.Create("ai_sound")
	a:SetPos(p)
	a:Spawn()
	a:SetKeyValue("soundtype", s)
	a:SetKeyValue("volume", v)
	a:SetKeyValue("duration", d)
	a:Activate()
	a:Fire("EmitAISound")
	timer.Simple(d,function()
		if IsValid(a)then
		a:Remove()
		end
	end)
end
end
-- huh
function SWEP:FireAnimationEvent(p,a,e,o)
if self.CSMuzzleFlashes then
if e==5001||e==5011||e==5021||e==5031 then
local d=EffectData()
d:SetFlags(0)
d:SetEntity(self.Owner:GetViewModel())
d:SetAttachment(math.floor((e-4991)/10))
d:SetScale(1)
if self.CSMuzzleX then
util.Effect("CS_MuzzleFlash_X",d)
else
util.Effect("CS_MuzzleFlash",d)
end
end
return true
end
if !self.DoFireAnimEvent then
if e==20||e==6001||e==21||e==22||e==5001||e==5011||e==5003 then
return true
end
else
if self.NoMFlash then
if e==21||e==22||e==5001||e==5003||e==5011 then
return true
end
end
if self.NoShells then
if e==20||e==6001 then
return true
end
end
end
--if self:FireAnimEvent(p,a,e,o)then return true end
end
function SWEP:FireAnimEvent()return true end
function SWEP:ADebug()
if self.IsDual and !_308hud()and IsValid(self.Owner)and self.Owner:IsPlayer()and !self.Owner._30W_Notice then
self.Owner:ChatPrint(GAME308_LAN["hud"])self.Owner._30W_Notice=1
end
local r,t=0
if self.ClipinTime<=self.ClipoutTime then r=1
elseif !self.Owner:IsPlayer()then r=2
elseif !IsValid(self.Owner)then r=3
elseif self.ClipinTime2 and self.ClipoutTime2 and self.ClipinTime2<=self.ClipoutTime2 then r=4
--elseif then r=5
end
if r==1 then t="SWEP.ClipinTime<SWEP.ClipoutTime"
elseif r==2 then t="no support npc and nextbot"
if EGG308 then
t="good, you can try more"
SafeRemoveEntity(self)
else
self.Owner:TakeDamage(99999)
SafeRemoveEntity(self.Owner)
end
EGG308=1
elseif r==3 then t="!IsValid(self.Owner)"
elseif r==4 then t="SWEP.ClipinTime2<SWEP.ClipoutTime2"
end
if r!=0 then
MsgAll(t)
for _,p in pairs(player.GetAll())do
p:ChatPrint(t)
end
--self:PlayerChat(t) 放在多人游戏直接暴毙
SafeRemoveEntity(self)end
end
function SWEP:SoundSlot(s)--Gwog Base
if !IsFirstTimePredicted()||CLIENT then return end
local a=self.HMath
for l=1,#s do
if !s[l].Delay then s[l].Delay=0 end
if !s[l].Pitch then s[l].Pitch=100 end
if !s[l].Volume then s[l].Volume=100 end
timer.Simple(s[l].Delay,function()if IsValid(self)and self:CUnHos(a)then
self.Owner:EmitSound(_308Table(s[l].Sound),s[l].Volume,s[l].Pitch)if (s[l].Volume==511 and !s[l].NoEmitAI)||s[l].EmitAI then
self:InsertSound(1,self.Owner:GetShootPos(),1500,3)end
end end)
end
end
function SWEP:DelayAnim(s)
local a=self.HMath
for l=1,#s do
if !s[l].Delay then s[l].Delay=0 end
if !s[l].Rate then s[l].Rate=1 end
if s[l].Time and !game.SinglePlayer()then s[l].Time=s[l].Time-.3 end
timer.Simple( s[l].Delay, function()
if IsValid(self)and self:CUnHos(a)then
self:PlayAnim(s[l].Anim,s[l].Rate,s[l].Time or nil)end end)
end
end

-- huh?I'll watch you how to use these functions.
function SWEP:IsReloading()if self:GetNWInt("R")>0 then return true end end
function SWEP:IsScope()if self:GetNWBool("Scope")then return true end end

function SWEP:CustomPrimary(m)self:ShootAnim(m)self:FireB(m)self.Owner:MuzzleFlash()end
function SWEP:ShootEffect(m)
if !self.PA_Num||self.PA_Effect==0 then return end
local e=EffectData()
e:SetOrigin(self.Owner:GetShootPos())
e:SetMagnitude(self.EffectScale)
e:SetEntity(self)
e:SetStart(self.Owner:GetShootPos())
e:SetNormal(self.Owner:GetAimVector())
e:SetAttachment(1)
if self.IsDual and !m then
e:SetAttachment(2)end
util.Effect(self.PA_Effect,e)
end

function SWEP:DrawWeaponSelection(x,y,wide,tall)
local c=self.TextColor or Color(255,255,255)
local n=self.Icon or self.PrintName
if self.TextType=="308CS" then
draw.SimpleText(self.Text,"308CS",x+wide/2,y+tall*.2,c,TEXT_ALIGN_CENTER)
elseif self.TextType=="HL2MPTypeDeath" then
draw.SimpleText(self.Text,"HL2MPTypeDeath",x+wide/2,y+tall*.2,c,TEXT_ALIGN_CENTER)
else
draw.SimpleText(n,self.TextType,x+wide/2,y+tall*.2,c,TEXT_ALIGN_CENTER)
end
if self.AmmoHUD!=2 and !self.IsMelee then
draw.SimpleText(self:Clip1(),"entcheck",x+wide*.2,y+tall*.6,c,TEXT_ALIGN_CENTER)
if self:Clip2()!=-1 then
draw.SimpleText(self:Clip2(),"entcheck",x+wide*.8,y+tall*.6,c,TEXT_ALIGN_CENTER)end
end
if self.CDWInfoBox then self:PrintWeaponInfo(x+wide+20,y+tall*.95,alpha)end
end

function SWEP:ShootAnim()if self.IsMCGun then
if self:IsScope()then
if self:ClipEmpty()and self.PA_MCAnimE2 then
self:PlayMCAnim(self.PA_MCAnim2E)else
self:PlayMCAnim(self.PA_MCAnim2)end
else
if self:ClipEmpty()and self.PA_MCAnimE then
self:PlayMCAnim(self.PA_MCAnimE)else
self:PlayMCAnim(self.PA_MCAnim)end
end
return end
if #self.PA_AnimD>0 and !(#self.PA_AnimE>0 and self:ClipEmpty())then
self:DelayAnim(self.PA_AnimD)
return end
if #self.PA_AnimE>0 and self:ClipEmpty()then
self:DelayAnim(self.PA_AnimE)
self:SoundSlot(self.PA_EmptySnd)
return end
if self.PA_Anim then
self:PlayAnim2(self.PA_Anim,self.PA_AnimRate)
self:UpdateNextIdle()
else a=math.random(3)
if a==1 then self:PlayAnim(self.PA_Anim1,self.PA_AnimRate)
elseif a==2 then self:PlayAnim(self.PA_Anim2,self.PA_AnimRate)
else self:PlayAnim(self.PA_Anim3,self.PA_AnimRate) end
end
end
function SWEP:Recoil(r,a)
local b=r or self.PA_AimRecoil
local o=self.Owner
if !self:IsScope()then b=a or self.PA_Recoil end
if o:Crouching()and o:IsOnGround()then b=b*.85 end
b=b/2
local a=o:EyeAngles()+Angle(-b,math.Rand(-b,b),0)
if game.SinglePlayer()then
a=o:EyeAngles()o:SetEyeAngles(a+Angle(-b,math.Rand(-b,b),0))
a=a-o:EyeAngles()
o:ViewPunch(-a*.4)
else
if SERVER then
net.Start("308Base_Recoil")net.WriteAngle(a)net.Send(o)end
local g=o:EyeAngles()
timer.Simple(0,function()if IsValid(self)and IsValid(o)then
a=g-a o:ViewPunch(-a*.4)end end)end
end
if SERVER then
util.AddNetworkString("308Base_Recoil")else
net.Receive("308Base_Recoil",function(l,p)
local a=net.ReadAngle()p=LocalPlayer()
p:SetEyeAngles(a)end)
end
--[[
function SWEP:Recoil(r,a)
local b=r or self.PA_AimRecoil
local o=self.Owner
if !self:IsScope()then b=a or self.PA_Recoil end
if o:Crouching()and o:IsOnGround()then b=b*.85 end
local a=o:EyeAngles()+Angle(-b,math.Rand(-b,b),0)/2
if game.SinglePlayer()then
a=o:EyeAngles()o:SetEyeAngles(a+Angle(-b,math.Rand(-b,b),0)/2)
a=a-o:EyeAngles()
o:ViewPunch(-a*.4)
else
if SERVER then
net.Start("308Base_Recoil")net.WriteAngle(a)net.Send(o)end
local g=o:EyeAngles()
timer.Simple(0,function()if IsValid(self)and IsValid(o)then
a=g-a o:ViewPunch(-a*.4)end end)end
end
if SERVER then
util.AddNetworkString("308Base_Recoil")else
net.Receive("308Base_Recoil",function(l,p)
local a=net.ReadAngle()p=LocalPlayer()
p:SetEyeAngles(a)end)
end
--]]
function SWEP:BeforePA()end
function SWEP:CusEPA()end
function SWEP:CusESA()end
function SWEP:CusEPA2()end
function SWEP:CusESA2()end
function SWEP:CusHUD()end

function SWEP:CustomOnRemove()end
function SWEP:OnReload()end
function SWEP:OnReloading()end
function SWEP:OnDrop()if self.RemoveOnDrop then
self:Remove()return end
if self.WorldModelFix then self:SetMaterial(self.Material)self:SetModelScale(self.ModelScale)end
self:Holster(1)self:ResetB()self:OnDrop2()end
function SWEP:OnDrop2()end
function SWEP:OnRemove()self:Holster(1)self:ResetB()self:OnRemove2()end
function SWEP:BeforeHolster()end
function SWEP:OnRemove2()end
function SWEP:AfterReload()end
function SWEP:CustomInit()end
function SWEP:CustomEquip()end
function SWEP:CustomDeploy()end
function SWEP:FirstDeploy()end
function SWEP:CustomHolster()end
function SWEP:CustomThink()end
function SWEP:OnRestore()
self:SetNWInt("T",0)
self:SetNWInt("OH",0)
self:SetNWInt("B",0)
self:SetNWInt("BOLT",0)
self:OnRestore2()
end
function SWEP:OnRestore2()end
function SWEP:ResetB()
if CLIENT and IsValid(self.Owner)and self.Owner:IsPlayer()then
if IsValid(self.Owner:GetViewModel())then
self:ResetBonePositions(self.Owner:GetViewModel())end end end
SWEP.Is308Wep=1
SWEP.CanRepick=1
SWEP.PickAgain=1
SWEP.PickDirectly=nil
-- hook
GAME308UNWEP=nil
CS308=0
if SERVER then

hook.Add("PlayerCanPickupWeapon","weapon_308_base",function(ply,wep)
if QSWEP then--Neptune QTG、QTG Weapon Base你们别欺人太甚了弄得CT都可以捡C4了 --QQ3088083421
if wep.NPCWeaponsOnly and wep:IsQSWEP()then
return false
end
end
if wep:GetClass()=="weapon_308_c4" then
if ply.IsCSTE||CS308<1 then
return true
end
return false
end
if (GAME308>0||(ZB308>0 and !ply.ZB3088))and !GAME308UNWEP then return true end
if wep.Is308Wep and ply:HasWeapon(wep:GetClass())then
if wep.Is308Melee then return false end
if ply:KeyPressed(IN_USE)and(ply:GetEyeTrace().Entity==wep)and wep.CanRepick then
if wep:Clip1()>0 then
if !wep.PickDirectly then
local function eq()if isfunction(self:EquipAmmo())then return 1 end end
local c=wep:GetClass()
local p=wep:GetPos()
local a=wep:GetAngles()
timer.Simple(.01,function()if !IsValid(wep)then
local w=ents.Create(c)
w:SetPos(p)
w:SetAngles(a)
w:SetClip1(0)
w:Spawn()
w:SetClip1(0)
if !eq then w:EmitSound("3088083421/wep/9mmclip1.wav")end
end end)end
if wep.PickAgain then
return true end
end
end
return false
end
return true
end)

end
hook.Add("EntityTakeDamage","308wepbase1",function(e,d,h)
local a=d:GetAttacker()
if a:IsPlayer()then
local i=a:GetActiveWeapon()local t=d:GetDamageType()
if IsValid(a)and a:IsPlayer()and IsValid(i)and i.Is308Wep and(t==4098||t==536870912||t==536870914||t==2||t==8194||t==4)then i:DamageENT(d,e,h)
if e:IsPlayer()||e:IsNPC()||IsNextBot3(e)then i:DamageNPC(d,e,h)end
end
end
if !e:IsPlayer()then return end
if e:GetNWBool("308Overworld")then d:SetDamage(0)end
local w=e:GetActiveWeapon()
if e:Alive()and IsValid(w)and w.Is308Wep then
w:IfOwnHurt(d,h)
end

end)
function SWEP:IfOwnHurt()end
function SWEP:DamageENT()end
function SWEP:DamageNPC()end

-- true and false
SWEP.HMath=0
function SWEP:CUnHos(a)if self.HMath==a and IsValid(self.Owner)then return true end end
function SWEP:GetClips()return self:Clip1()end
--------------------------- Unuseful arean
function SWEP:BasThink()end

function SWEP:TranslateFOV( fov )return fov end

function SWEP:OnRemove()
self:Holster()
self:CustomOnRemove()
end

if CLIENT then
SWEP.vRenderOrder = nil
function SWEP:ViewModelDrawn()
		vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		if (!self.VElements) then return end
		self:UpdateBonePositions(vm)
		if (!self.vRenderOrder) then
			self.vRenderOrder = {}
			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
		end
		for k, name in ipairs( self.vRenderOrder ) do
			v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			model = v.modelEnt
			sprite = v.spriteMaterial
			if (!v.bone) then continue end
			pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			if (!pos) then continue end
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v)and !v then
							model:SetBodygroup(k, v)
						end
					end
				end
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
			elseif (v.type == "Sprite" and sprite) then
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
			elseif (v.type == "Quad" and v.draw_func) then
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()
			end
		end
	end
	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		if (!self.WElements) then return end
		if (!self.wRenderOrder) then
			self.wRenderOrder = {}
			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.wRenderOrder, k)
				end
			end
		end
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			// when the weapon is dropped
			bone_ent = self
		end
		for k, name in pairs( self.wRenderOrder ) do
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			local pos, ang
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			if (!pos) then continue end
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
			elseif (v.type == "Sprite" and sprite) then
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
			elseif (v.type == "Quad" and v.draw_func) then
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()
			end
		end
	end
	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			local v = basetab[tab.rel]
			if (!v) then return end
			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			if (!pos) then return end
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
		else
			bone = ent:LookupBone(bone_override or tab.bone)
			if (!bone) then return end
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r // Fixes mirrored models
			end
		end
		return pos, ang
	end
function SWEP:CreateModels( tab )
		if(!tab)then return end
		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				// make sure we create a unique name based on the selected options
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end
				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
			end
		end
	end
	local allbones
	local hasGarryFixedBoneScalingYet = false
	function SWEP:UpdateBonePositions(vm)
		if self.ViewModelBoneMods then
			if !vm:GetBoneCount()then return end
			local loopthrough = self.ViewModelBoneMods
			if !hasGarryFixedBoneScalingYet then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if self.ViewModelBoneMods[bonename]then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] ={scale = Vector(1,1,1),pos = Vector(0,0,0),angle = Angle(0,0,0)}
					end
				end
				loopthrough = allbones
			end
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if !bone then continue end
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if !hasGarryFixedBoneScalingYet then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				s = s * ms
				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:ResetBonePositions(vm)
		end
	end
	function SWEP:ResetBonePositions(vm)
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
	end
	function table.FullCopy( tab )
		if (!tab) then return nil end
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v)
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		return res
	end
end
--Melee--
function SWEP:HIT(e,h,t)
if SERVER then
local d=DamageInfo()
d:SetDamage(h or 10)
d:SetDamageType(t)
d:SetInflictor(self.Owner)
d:SetAttacker(self.Owner)
e:TakeDamageInfo(d)
end
end
function SWEP:Melee(th,t,to,r)
if SERVER then
if !game.SinglePlayer()then th=th-.1 end
local a=self.HMath
self.Meleeing=1
self.Owner:SetAnimation(PLAYER_ATTACK1)
if to then
self:SetNextPrimaryFire(CurTime()+to)
self:SetNextSecondaryFire(CurTime()+to)
end
timer.Simple(th,function()if !IsValid(self)||!self:CUnHos(a)then return end
if !self.IsMelee then
self.Meleeing=nil end
self:MeleeATT(t,r)
self:CustomATT(ty)
end)
end
end
function SWEP:CustomATT(t)end
SWEP.Combo=1
SWEP.HurtType=DMG_SLASH
SWEP.Multiple=1
SWEP.MeleeSW={}
function SWEP:MeleeATT(t,r)
r=_308GlobalMeleeRange or r or self.RangeD
local d=self.Melee1
if t==2 then d=self.Melee2 end
if self.Multiple==1 ||_308GlobalMeleeRange then
local tr=self:TraceH(r)
local ent=tr.Entity
if IsValid(ent)then self:HIT(ent,d,self.HurtType)self:ImpactEffect(tr)
if ent:IsPlayer()||IsNextBot3(ent)||ent:IsNPC()then
self:MeleeSound(t)
else
self:HitEnt(t,ent)
end
elseif tr.Hit then
self:HitWorld(t)
else
self:MeleeMiss(t)
end
else
local p = self.Owner
local xx=self.X or 16
local yy=self.Y or 16
local g={}
local n=0
local tr=util.TraceHull({
start=p:GetShootPos(),
endpos=p:GetShootPos()+p:GetAimVector()*r,
filter=function(e)if e==p||(n>=self.Multiple and self.Multiple!=0)then return end
if IsValid(e)then
table.insert(g,e)
if e:IsPlayer()||IsNextBot3(e)||e:IsNPC()then
n=n+1 end
end
end,
mins=Vector(-xx,-yy,0),
maxs=Vector(xx,yy,0),
mask=MASK_SHOT_HULL
})
if #g>0 then
for l,e in pairs(g)do
self:HIT(e,d,self.HurtType)self:ImpactEffect(tr)
if e:IsPlayer()||IsNextBot3(e)||e:IsNPC()then
self:MeleeSound(t)
else
self:HitEnt(t,ent)
end
end
end
if n<1 and tr.Hit then
self:HitWorld(t)
elseif n<1 and !tr.Hit then
self:MeleeMiss(t)
end
end
end

function SWEP:MeleeSound()end
function SWEP:MeleeMiss()end
function SWEP:HitEnt()self:SoundSlot(self.MeleeSW)end--?
function SWEP:HitWorld()self:SoundSlot(self.MeleeSW)end

function SWEP:ImpactEffect(tr)
	if !IsValid(self)then return end
	local e=EffectData()
	e:SetOrigin(tr.HitPos)
	e:SetNormal(tr.HitNormal)
	local mat=tr.MatType
	if mat==MAT_BLOODYFLESH||mat==MAT_FLESH then
		util.Effect("BloodImpact",e)
	elseif mat==MAT_CONCRETE||mat==MAT_DIRT then
		util.Effect("Impact",e)
	elseif mat==MAT_PLASTIC then
		util.Effect("Impact",e)
	elseif mat==MAT_GLASS||mat == MAT_TILE then
		util.Effect("GlassImpact",e)
	elseif mat==MAT_METAL||mat==MAT_GRATE then
		util.Effect("ManhackSparks",e)
	elseif mat==MAT_WOOD then
		util.Effect("Impact",e)
	elseif mat==MAT_SAND then
		util.Effect("Impact",e)
	end
end
-----
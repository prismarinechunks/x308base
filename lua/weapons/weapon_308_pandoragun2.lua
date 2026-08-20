SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["pandora"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.CanRepick=nil

SWEP.AdminOnly=true
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.SwayScale=0
SWEP.DrawCrosshair = false
SWEP.NormalDraw=true
SWEP.UseHands=false
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "3088083421/wep/shoot/colt_1.ogg"
SWEP.PA_Delay = .8
SWEP.PA_TakeAmmo=0
SWEP.PA_Recoil = 0
SWEP.Text="NuG S'ArOdNaP"
SWEP.AmmoHUD=2
SWEP.HDAnim = {Delay=1.4,Delay2=1.7}
SWEP.IdleAnim = "idle1"
SWEP.SA_IsSight=false
SWEP.CenterPos = Vector(-1,-10,-3)
SWEP.DMG=0
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/effects/vol_light128x512.mdl", bone = "Python", rel = "", pos = Vector(0, 0, -10.896), angle = Angle(180, 0, 0), size = Vector(0.009, 0.009, 2.398), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(24.2, -80, .1), size = { x = 0.945, y = 0.945 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.MATH=0
function SWEP:CustomInit()
self:SetColor(Color(math.random(255),math.random(255),math.random(255)))
self:SetRenderFX(kRenderFxHologram)
end
function SWEP:CustomThink()
self:SetColor(Color(math.random(255),math.random(255),math.random(255)))
end
function SWEP:FireB()
local ply=self.Owner
self:SetNextPrimaryFire(CurTime()+math.random(7,15)*.1)
	if SERVER then
	self:SendWeaponAnim(self.PA_Anim)
	local e=ents.Create("obj_308_sbullet")
	local pos = ply:GetShootPos()
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:SetGravity(.01)
	e:Activate()
	ply:DeleteOnRemove(e)
	e:SetVelocity(ply:GetForward()*3000+ply:GetVelocity()/5)
	local m=math.random(8)
	self.MATH=self.MATH-1
	if m==1 then
	self.MATH=math.random(3,5)
	end
	if self.MATH>0 then
	self:SetNextPrimaryFire(CurTime()+.1)
	e.DMG=math.random(5,10)
	elseif m==2 then
	self:SetNextPrimaryFire(CurTime()+3)
	ply:ScreenFade(SCREENFADE.IN,Color(math.random(255),math.random(255),math.random(255),math.random(100,155)),.1,3)
	e:SetNoDraw(true)
	self.BoltPullTimer=CurTime()+3
	e:SetModelScale(2)
	e.DMG=math.random(200,300)
	elseif m==3 then
	ply:Ignite(3)
	e:SetModelScale(3)
	e.DMG=math.random(200,300)
	elseif m==4 then
	e:Ignite(15)
	e:SetModelScale(4)
	e.DMG=math.random(400,650)
	elseif m==5 then
	self:SetNextPrimaryFire(CurTime()+2)
	e.DMG=math.random(200,300)
	elseif m==6 then
	ply:TakeDamage(math.random(10,20),self)
	e:SetModelScale(3)
	e.DMG=math.random(200,400)
	elseif m==7 then
	e:SetGravity(1)
	e.DMG=500
	else
	self:SetNextPrimaryFire(CurTime()+.4)
	e.DMG=math.random(50,100)
	self.DMG=self.DMG+1
	if self.DMG<10 then ply:PrintMessage(4,10-self.DMG)else ply:Kill()end
	end
	end
end
function SWEP:Reload()
end

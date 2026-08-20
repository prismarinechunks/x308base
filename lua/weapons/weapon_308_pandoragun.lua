SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["pandora"]
SWEP.Category = "x308 Base | Guns"
SWEP.HoldType = "revolver"
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/w_357.mdl"
SWEP.CanRepick=nil

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.SwayScale=0
SWEP.DrawCrosshair = false
SWEP.NormalDraw=true
SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.Spawnable = true
SWEP.PA_Sound = "3088083421/wep/shoot/colt_1.ogg"
SWEP.PA_Delay = .8
SWEP.PA_TakeAmmo=0
SWEP.PA_Recoil = .5
SWEP.SA_SightFOV = 70
SWEP.Text="Pandora's Gun"
SWEP.AmmoHUD=2
SWEP.HDAnim = {Delay=1.4,Delay2=1.7}
SWEP.IdleAnim = "idle1"
SWEP.SA_IsSight=false
SWEP.SA_Delay = .1
SWEP.StopRAnimTime = 1.8
SWEP.ReloadTime = 1.6
SWEP.ClipoutTime = .4
SWEP.ClipinTime = 1.3
SWEP.CenterPos = Vector(-1,-10,-3)

SWEP.VElements = {
	["1"] = { type = "Model", model = "models/effects/vol_light128x512.mdl", bone = "Python", rel = "", pos = Vector(0, 0, -10.896), angle = Angle(180, 0, 0), size = Vector(0.009, 0.009, 2.398), color = Color(255, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Sprite", sprite = "sprites/laserdot", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(24.2, -80, .1), size = { x = 0.945, y = 0.945 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
function SWEP:CustomInit()
self:SetColor(Color(math.random(255),math.random(255),math.random(255)))
self:SetRenderFX(kRenderFxHologram)
end
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
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
	e.DMG=math.random(0,100)
	local m=math.random(6)
	if m==1 then
	ply:TakeDamage(math.random(5,10),self)
	e:SetModelScale(3)
	e.DMG=math.random(100,200)
	elseif m==2 then
	ply:ScreenFade(SCREENFADE.IN,Color(0,0,0,255),.1,1.5)
	e:SetModelScale(2)
	e.DMG=math.random(100,150)
	elseif m==3 then
	ply:Ignite(1.5)
	e:SetModelScale(2)
	e.DMG=math.random(100,150)
	elseif m==4 then
	e:SetModelScale(4)
	e:Ignite(15)
	e.DMG=math.random(300,450)
	end
	end
end
function SWEP:Reload()
end

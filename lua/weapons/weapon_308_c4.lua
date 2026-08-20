SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "C4"
SWEP.Category = "x308 Base | Grenades"
SWEP.HoldType = "slam"
SWEP.ViewModel = "models/weapons/c_slam.mdl"
SWEP.WorldModel = "models/weapons/w_c4.mdl"
SWEP.CDWInfoBox=true
SWEP.Author="QQ3088083421\n\n\nExplosion will ignore the bunker!"
SWEP.AdminOnly=true
SWEP.PA_Num=0
SWEP.Primary.ClipSize = 0
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.DrawAnim = "tripmine_draw"
SWEP.IdleAnim = "tripmine_idle"
SWEP.NormalDraw=true
SWEP.PickAgain=false
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.CustomAmmoIcon =""
SWEP.SA_IsSight = false
SWEP.CanRepick=false
SWEP.ViewModelBoneMods = {
	["Slam_base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.BombB=0
SWEP.AmmoHUD=1
SWEP.DrawTime = .3
SWEP.CenterPos = Vector( 0, 50, 1 )
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/weapons/w_c4_planted.mdl", bone = "Slam_base", rel = "", pos = Vector(0, -60.971, 23.42), angle = Angle(180, 0, -90), size = Vector(.5, .5, .5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
BOMB308P=0
CS308=0
SWEP.G=0
function SWEP:CustomThink()
local ply=self.Owner
if BOMBTIME3088||!ply:KeyDown(IN_ATTACK)||ply:GetVelocity():Length()>0||!ply:IsOnGround()then
self:SetNextPrimaryFire(CurTime()+.1)
self.BombB=0
self:SetClip1(0)
if CLIENT then
self.G=Lerp(.2,self.G,0)end
else
if CLIENT then
self.G=Lerp(.2,self.G,1)end
end
if CLIENT then
self.SightAng2=Angle(self.G*2,self.G*5,self.G*5)
self.ViewModelBoneMods = {
	["Slam_base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-self.G*.7+self.G*math.sin(CurTime()*3)*.1,self.G*6+self.G*math.sin(CurTime()*9),-self.G*6-self.G*math.sin(CurTime()*15)), angle = Angle() },
	["ValveBiped.Bip01_L_Finger11"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, self.G*50, 0) }
}
end
end
function SWEP:CustomEquip()
if CS308>0 then
for _,pl in pairs(player.GetAll())do
if pl.IsCSTE then
pl:ChatPrint(self.Owner:Nick().." Picked up C4.")
end end
end
end
if SERVER then
function SWEP:SecondaryAttack()
local p=self.Owner
if p:KeyDown(IN_ATTACK)then return end
self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav")
p:DropWeapon()
if CS308>0 then
for _,pl in pairs(player.GetAll())do
if pl.IsCSTE then
pl:ChatPrint(p:Nick().." Droped C4.")
end end
end
end
function SWEP:PrimaryAttack()
local ply=self.Owner
if BOMB308P>0 then
local h
for _,c in pairs(ents.FindByClass("obj_308_c4point"))do
if self:GetPos():Distance(c:GetPos())<60 then
h=1
end
end
if !h then ply:PrintMessage(4,GAME308_LAN1["cs2"]) return end
end
self:SetNextPrimaryFire(CurTime()+.4)
ply:EmitSound("weapons/c4/c4_click.wav",511)
self:PrintNamed()
self.BombB=self.BombB+1
self:SetClip1(self.BombB)
if self.BombB>7 then
BOMBTIME3088=1
ply:EmitSound("weapons/c4/c4_plant.wav",511)
for w,p in pairs(player.GetAll())do
p:ChatPrint("Bomb has been placed")
p:EmitSound("3088083421/mg/bombpl.wav",511)
if p.IsCSTE then
Muss330Personal(p,"3088083421/mg/t/bombplanted.mp3")else
Muss330Personal(p,"3088083421/mg/ct/bombplanted.mp3")end
end
local e=ents.Create("obj_308_c4")
e:SetAngles(Angle(0,ply:GetAngles().y,0))
e:SetPos(ply:GetPos())
e:SetOwner(ply)
e:Spawn()
e:Activate()
SafeRemoveEntity(self)
end

end

end

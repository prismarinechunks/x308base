SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = GAME308_LANWEP["boomer"]
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "slam"
SWEP.ViewModel = "models/weapons/c_slam.mdl"
SWEP.WorldModel = "models/weapons/w_grenade.mdl"--"models/dav0r/tnt/tnt.mdl"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.ViewModelFlip = true

SWEP.PA_TakeAmmo=0
SWEP.DrawAnim="detonator_draw"
SWEP.IdleAnim="detonator_idle"
SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = "3088083421/exp/WTF1.wav"
SWEP.PA_Delay = 2
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false
SWEP.NormalDraw=true
SWEP.Text="What the fuck"
SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 130, 0 )

SWEP.WElements = {
	["1++"] = { type = "Model", model = "models/dav0r/tnt/tnt.mdl", bone = "ValveBiped.Bip01_Spine2", rel = "", pos = Vector(0, -10.346, -4.865), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+++"] = { type = "Model", model = "models/dav0r/tnt/tnt.mdl", bone = "ValveBiped.Bip01_Spine2", rel = "", pos = Vector(0, 5.031, -4.865), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1+"] = { type = "Model", model = "models/dav0r/tnt/tnt.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(0, -10.346, -4.865), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1++++"] = { type = "Model", model = "models/dav0r/tnt/tnt.mdl", bone = "ValveBiped.Bip01_Spine2", rel = "", pos = Vector(5.022, 4.875, -4.865), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/dav0r/tnt/tnt.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(0, 5.031, -4.865), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

if CLIENT then language.Add("weapon_308_boomer", "")end
function SWEP:CustomPrimary()
if SERVER then
local pl=self.Owner
self:PlayAnim("detonator_detonate")
pl:ScreenFade(SCREENFADE.OUT,Color(0,0,0,255),1.7883,0)
self.BoltPullTimer=CurTime()+3
timer.Simple(1.788,function()if IsValid(self)and IsValid(pl)and pl:Alive()then
pl:ScreenFade(SCREENFADE.IN,Color(255,255,255,255),.1,0)
util.ScreenShake(pl:GetPos(),16,16,3,760)
if !WTF308 then
WTF308=CreateSound(game.GetWorld(),"3088083421/exp/WTF2.wav")
WTF308:SetSoundLevel(0)
WTF308:Play()
else
WTF308:Stop()
WTF308=CreateSound(game.GetWorld(),"3088083421/exp/WTF2.wav")
WTF308:SetSoundLevel(0)
WTF308:Play()
end
local ex = ents.Create("env_explosion")
ex:SetOwner(pl)
ex:SetPos(pl:EyePos())
ex:SetKeyValue("iMagnitude", "0")
ex:SetKeyValue("spawnflags", "369")
ex:Spawn()
ex:Activate()
ex:Fire("Explode", "", 0)
local ex2 = ents.Create("env_physexplosion")
ex2:SetOwner(pl)
ex2:SetPos(pl:EyePos())
ex2:SetKeyValue("magnitude", "120")
ex2:SetKeyValue("radius", "500")
ex2:SetKeyValue("spawnflags", "3")
ex2:Spawn()
ex2:Activate()
ex2:Fire("Explode", "", 0)
pl:SetPos(pl:GetPos()+Vector(0,0,400))
util.BlastDamage(self,pl,pl:GetPos()-Vector(0,0,400),pl:Health()*2,500)
util.BlastDamage(self,pl,pl:GetPos()-Vector(0,0,400),pl:Health()*2,450)
pl:SetPos(pl:GetPos()-Vector(0,0,400))
pl:EmitSound("vo/npc/male01/pain0"..math.random(9)..".wav",511)
sound.Play("3088083421/exp/WTF2.wav",pl:EyePos())
if pl:IsOnGround()then pl:SetGroundEntity(NULL)end
pl:SetLocalVelocity(VectorRand()*1888)
pl:TakeDamage(pl:Health()*5,self)
if pl:Alive()then pl:Kill()end
if !pl:IsAdmin()then pl.NextSpawnTime=CurTime()+7 else pl.NextSpawnTime=CurTime()+.4 end
end end)
end
end

function SWEP:SecondaryAttack()
if SERVER then
local pl=self.Owner
if !pl:IsAdmin()then return end
pl:ScreenFade(SCREENFADE.IN,Color(255,255,255,255),.1,0)
util.ScreenShake(pl:GetPos(),16,16,3,760)
if !WTF308 then
WTF308=CreateSound(game.GetWorld(),"3088083421/exp/WTF2.wav")
WTF308:SetSoundLevel(0)
WTF308:Play()
else
WTF308:Stop()
WTF308=CreateSound(game.GetWorld(),"3088083421/exp/WTF2.wav")
WTF308:SetSoundLevel(0)
WTF308:Play()
end
local ex = ents.Create("env_explosion")
ex:SetOwner(pl)
ex:SetPos(pl:EyePos())
ex:SetKeyValue("iMagnitude", "0")
ex:SetKeyValue("spawnflags", "369")
ex:Spawn()
ex:Activate()
ex:Fire("Explode", "", 0)
local ex2 = ents.Create("env_physexplosion")
ex2:SetOwner(pl)
ex2:SetPos(pl:EyePos())
ex2:SetKeyValue("magnitude", "120")
ex2:SetKeyValue("radius", "500")
ex2:SetKeyValue("spawnflags", "3")
ex2:Spawn()
ex2:Activate()
ex2:Fire("Explode", "", 0)
pl:SetPos(pl:GetPos()+Vector(0,0,400))
util.BlastDamage(self,pl,pl:GetPos()-Vector(0,0,400),99999,700)
util.BlastDamage(self,pl,pl:GetPos()-Vector(0,0,400),99999,550)
pl:SetPos(pl:GetPos()-Vector(0,0,400))
pl:EmitSound("vo/npc/male01/pain0"..math.random(9)..".wav",511)
sound.Play("3088083421/exp/WTF2.wav",pl:EyePos())
if pl:IsOnGround()then pl:SetGroundEntity(NULL)end
pl:SetLocalVelocity(VectorRand()*1888)
pl:TakeDamage(pl:Health()*5,self)
if pl:Alive()then pl:Kill()end
pl.NextSpawnTime=CurTime()+.4
end
end

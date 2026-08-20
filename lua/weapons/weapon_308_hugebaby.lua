if !game.SinglePlayer()then
function SWEP:Equip()
if self.Owner:IsPlayer()then
self.Owner:ChatPrint("FUCK OFF and don't even Think about it")
self:Remove()
end end
return end
SWEP.CanRepick=nil
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["hugebaby"]
SWEP.Category = "x308 Base | Grenades"
SWEP.HoldType = "slam"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/weapons/w_grenade.mdl"
SWEP.AdminOnly=true
SWEP.ShowWorldModel=false
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.PA_TakeAmmo = 0
SWEP.CanPickAmmo=1

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.Spawnable = true
SWEP.PA_Sound = "buttons/blip1.wav"
SWEP.PA_Delay = 0
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false

SWEP.Text="地图已清除"
SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 130, 0 )
SWEP.CenterAng = Angle( 0, 10, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-4, 0, 0), angle = Angle(0, 90, -80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["5"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 4, 0), angle = Angle(0, 0, 80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/hunter/misc/cone1x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, 0, 12.303), angle = Angle(0, 0, 0), size = Vector(0.13, 0.13, 0.197), color = Color(255, 65, 75, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/streetsign004e.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(-3.113, 0, 10.071), angle = Angle(0, 90, 0), size = Vector(0.1, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["6"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(4, 0, 0), angle = Angle(0, 90, 80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_phx/rocket1.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(0.894, 1.506, 5.318), angle = Angle(0, 0, 180), size = Vector(0.096, 0.096, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "1", pos = Vector(0, -4, 0), angle = Angle(0, 0, -80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["3++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-4, 0, 0), angle = Angle(0, 90, -80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 4, 0), angle = Angle(0, 0, 80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, -4, 0), angle = Angle(0, 0, -80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["2"] = { type = "Model", model = "models/props_c17/streetsign004e.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(-3.113, 0, 10.071), angle = Angle(0, 90, 0), size = Vector(0.1, 0.1, 0.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["3+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(4, 0, 0), angle = Angle(0, 90, 80), size = Vector(0.009, 0.731, 0.289), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["1"] = { type = "Model", model = "models/props_phx/rocket1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.129, 6.743, 8.335), angle = Angle(-4.591, 0, -167.872), size = Vector(0.096, 0.096, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["4"] = { type = "Model", model = "models/hunter/misc/cone1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "1", pos = Vector(0, 0, 12.303), angle = Angle(0, 0, 0), size = Vector(0.13, 0.13, 0.197), color = Color(255, 65, 75, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.BombB=0
function SWEP:CustomPrimary()
if SERVER then
local ply=self.Owner

if !BOMBTIME308 then
self.BombB=self.BombB+1
if self.BombB>4 then
BOMBTIME308=1
SafeRemoveEntity(self)
for w,p in pairs(ents.GetAll())do
p:EmitSound("weapons/mortar/mortar_shell_incomming1.wav",511,25)end
timer.Simple(4,function()if BOMBTIME308 then
for w,p in pairs(ents.GetAll())do
BOMBTIME308=nil
if p:IsPlayer()then
p:ScreenFade(SCREENFADE.IN,Color(255,255,255,255),18,3)
end
util.ScreenShake(p:GetPos(),16,16,25,99999)
p:EmitSound("weapons/c4/c4_explode1.wav",511,25)
local a=p
if IsValid(ply)then
a=ply
end
if IsValid(ply)and p!=ply then
p:TakeDamage(99999,a)
p:TakeDamage(99999,a)
p:TakeDamage(99999,a)
p:TakeDamage(99999,a)
p:TakeDamage(99999,a)
end
end
end end)
end
else self:SetNextPrimaryFire(CurTime()+15)ply:EmitSound("vo/npc/male01/whoops01.wav")ply:PrintMessage(4,"炸弹已经被启动了")
end

end end
function SWEP:IfOwnHurt()
self.Owner:EmitSound("3088083421/soulknight/hurt.mp3")
end
SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["manhack"]
SWEP.Category = "x308 Base | Misc"
SWEP.HoldType = "slam"
SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/manhack.mdl"
SWEP.PickDirectly=true
SWEP.CDWInfoBox=true
SWEP.WorldModelFix=true
SWEP.Author="QQ3088083421\n\n\nDefault Mode:Following"
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.PA_TakeAmmo=0
SWEP.Spawnable = true
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Delay=0,Sound="weapons/slam/throw.wav"}
}
SWEP.PA_Delay = .35
SWEP.NormalDraw = true
SWEP.PA_Recoil = 0
SWEP.PA_AimRecoil = 0
SWEP.SA_IsSight = false

SWEP.AmmoHUD=2
SWEP.DrawTime = .5
SWEP.CenterPos = Vector( 0, 130, 0 )
SWEP.ViewModelBoneMods = {
	["ValveBiped.Grenade_body"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["1"] = { type = "Model", model = "models/manhack.mdl", bone = "ValveBiped.Grenade_body", rel = "", pos = Vector(1.84, 2.226, -2.109), angle = Angle(0, 24.839, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["1"] = { type = "Model", model = "models/manhack.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.861, 4.261, 0.228), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.PET=nil
SWEP.PETHP=25
SWEP.ISKEY=CurTime()
function SWEP:EquipAmmo()
self.PETHP=self.PETHP+25
if self.PETHP>100 then
self.PETHP=100
else self:EmitSound("friends/friend_online.wav")
end
end

function SWEP:CustomThink()
local ply=self.Owner
if ply.PET308 and self.PET then
if ply:KeyDown(IN_USE)then
self.PETHP=self.PET:Health()
ply.PET308=nil
self.PET:Remove()
self.PET=nil
ply:PrintMessage(4,GAME308_LAN["mh"])
self:PlayAnim("lob",.5,4)
self:SetNextPrimaryFire(CurTime()+5)
end
end
end
function SWEP:SecondaryAttack()
local ply=self.Owner
if ply.PET308 and self.PET then
self.PET.PMode=self.PET.PMode or 0

if self.PET.PMode==0 then
self.PET.PMode=1 ply:PrintMessage(4,GAME308_LAN["mh0"])
else self.PET.PMode=0 ply:PrintMessage(4,GAME308_LAN["mh1"])
end

end end
function SWEP:Reload()
local ply=self.Owner
if self.ISKEY<CurTime()then
if ply:KeyDown(IN_RELOAD)then self.ISKEY=CurTime()+1 end

if ply.PET308 and self.PET then
self.PET.PMode2=self.PET.PMode2 or 0

if self.PET.PMode2==0 then
self.PET.PMode2=1 ply:PrintMessage(4,GAME308_LAN["mh2"])
else self.PET.PMode2=0 ply:PrintMessage(4,GAME308_LAN["mh3"])
end

end
end end
function SWEP:CustomPrimary()
if SERVER then
local ply=self.Owner
if ply.PET308 then self:SetNextPrimaryFire(CurTime()+3)ply:EmitSound("vo/npc/male01/whoops01.wav")ply:PrintMessage(4,GAME308_LAN["pet"])return end
ply.PET308=1
self:PlayAnim("lob",1,5)
ply:ViewPunch(Angle(5,0,0))
	local e=ents.Create("npc_manhack")
	local pos=ply:GetShootPos()+self:GetUp()*-4+self:GetForward()*21+self:GetRight()*5.5
	e:SetAngles(ply:GetAimVector():Angle())
	e:SetPos(pos)
	e:SetOwner(ply)
	e:SetCreator(ply)
	e:AddEntityRelationship(ply,D_LI,100)
	e:Spawn()
	e:Activate()
	self.PET=e
	e:SetHealth(self.PETHP)
	e.PMode2=1
	e.PMode=0
	e:SetColor(ply:GetColor())
	e:SetMaterial(ply:GetMaterial())
	ply:DeleteOnRemove(e)
	e.FollowT=CurTime()
	PET3088=PET3088 or 0
	PET3088=PET3088+1
	local w=PET3088
	hook.Add("Think","PET308"..w,function()
	if !ply:Alive()then hook.Remove("Think","PET308"..w)e:Remove()return end
		if(!IsValid(ply)||!IsValid(e)||e:Health()<=0)then if IsValid(ply)then if IsValid(self)and ply.PET308 then self:Remove() ply:PrintMessage(4,ply:PrintMessage(4,GAME308_LAN["petkill"])) end ply.PET308=nil end hook.Remove("Think","PET308"..w)
		elseif e.FollowT<CurTime()then
			e.FollowT=CurTime()+.1
			local last,c
			for _,g in pairs(ents.GetAll())do if g!=ply and g!=e and(g:IsNPC()|| g:IsPlayer()|| IsNextBot3(g))then
			if e.PMode2==1 ||IsNextBot3(g)and g:GetRelationship(ply)==D_LI then e:AddEntityRelationship(g,D_LI,100)
			elseif g!=ply then e:AddEntityRelationship(g,D_HT,100)
			end
			end end
			if e.PMode==0 then c=70 else c=1500 end
			local posSrc = e:GetPos()
			local posTgt = ply:EyePos()+ply:GetRight()*-15
			if(!last||!e:IsCurrentSchedule(72)||posTgt:Distance(last)>70) then
				last = posTgt
				if(math.max(posSrc:Distance(posTgt) -(e:OBBMaxs().x +ply:OBBMaxs().x),0)>c) then
					e:SetLastPosition(posTgt)
					e:SetSchedule(72)
				elseif e:IsCurrentSchedule(72)then e:ClearSchedule()e:StopMoving()end
			end
		end
	end)

end
end

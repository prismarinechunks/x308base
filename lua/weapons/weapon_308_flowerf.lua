SWEP.Base = "weapon_308_base" -- Don't touch!if you true to do you better write a base
SWEP.PrintName=GAME308_LANWEP["flowerf"]
SWEP.Category = "X Base | Misc"
SWEP.HoldType = "normal"
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"
SWEP.CusEquipS="3088083421/mario/powerup.ogg"
SWEP.RemoveOnDrop=true
SWEP.RemoveOnWorld=true
SWEP.ShowWorldModel=false

SWEP.TextColor=Color(255,0,0)
SWEP.TextIcon="3088083421/mariofireball"
SWEP.Primary.ClipSize=1
SWEP.Primary.DefaultClip=1
SWEP.Primary.Automatic=false
SWEP.Primary.Ammo="none"
SWEP.DoFireAnimEvent=false
SWEP.AmmoHUD=2
SWEP.DrawCross=false
SWEP.SA_IsSight=false
SWEP.Slot=2
SWEP.SlotPos=0
SWEP.Spawnable=true
SWEP.PA_TakeAmmo=0
SWEP.PA_Sound = ""
SWEP.PA_Sound2 = {
{Sound="3088083421/mario/fireball.ogg"}
}
SWEP.PA_Delay=.2
SWEP.PA_Recoil=0
SWEP.CenterPos=Vector(0,999,0)
SWEP.SndT=CurTime()
function SWEP:Reload()end
function SWEP:FireB()
local ply=self.Owner
	if SERVER then
	local e=ents.Create("obj_308_flowerf")
	local pos=ply:GetShootPos()+self:GetUp()*-5+self:GetForward()*20
	e:SetPos(pos)
	e:SetOwner(ply)
	e:Spawn()
	e:Activate()
	e:GetPhysicsObject():SetVelocity(ply:GetAimVector()*500+ply:GetVelocity())
	SafeRemoveEntityDelayed(e,5)
	end
end
function SWEP:IfOwnHurt(d)local o=self.Owner timer.Simple(.01,function()if IsValid(o)then
if !o:Alive()then
o:EmitSound("3088083421/mario/gameover.ogg")elseif self.SndT<CurTime()and d:GetDamageType()==8||d:GetDamageType()==8388608||d:GetDamageType()==256967104 then
o:EmitSound("3088083421/mario/fire.ogg")self.SndT=CurTime()+2.5 elseif self.SndT<CurTime()then
o:EmitSound("3088083421/mario/hurt.ogg")self.SndT=CurTime()+.5 end
end end)end

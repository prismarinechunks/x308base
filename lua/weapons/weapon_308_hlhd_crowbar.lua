if !util.IsValidModel("models/weapons/half-life/v_crowbar.mdl")then return end--ye ,2x Egg
SWEP.Base = "weapon_308_basemelee" -- Don't touch!if you true to do you better write a base
SWEP.PrintName = "HLHD Crowbar"
SWEP.Category = "308 Hidden Wep"
SWEP.HoldType = "melee"
SWEP.ViewModel="models/weapons/half-life/v_crowbar.mdl"
SWEP.WorldModel="models/weapons/half-life/w_crowbar.mdl"
SWEP.Slot = 0
SWEP.Spawnable = true
SWEP.SwayScale=1
SWEP.NormalDraw=true
SWEP.IdleAnim=nil
SWEP.UseHands=false

SWEP.Melee1=14
SWEP.Melee2=14
SWEP.RangeD=45
SWEP.TextIcon="vgui/entities/weapon_crowbar_hl"

SWEP.MeleeSM={{Sound="weapons/crowbar/cbar_miss1.wav"}}
SWEP.MeleeSM2={{Sound="weapons/crowbar/cbar_miss1.wav"}}
SWEP.MeleeSW={{Sound="weapons/cbar_hit"..math.random(2)..".wav"}}
SWEP.CenterPos = Vector(0,-10,0)
local a={
[1]="attack1miss",
[2]="attack2",
[3]="attack3"
}
local n={
[1]="attack1",
[2]="attack2hit",
[3]="attack3hit"
}
function SWEP:MAnim(t)self:PlayAnim(a[t],1.2)end
local c=.25
if game.SinglePlayer()then c=.15 end
function SWEP:PrimaryAttack()local m=math.random(3)
self.HMath=self.HMath+1
self.Owner:SetAnimation(PLAYER_ATTACK1)
if SERVER then
self:Melee(.08,m,.5)end
self:MAnim(m)
end
function SWEP:SecondaryAttack()end
function SWEP:MeleeSound(t)self:PlayAnim(n[t],1.2)self:SetNextPrimaryFire(CurTime()+c)self:EmitSound("weapons/cbar_hitbod"..math.random(3)..".wav")end
function SWEP:HitWorld(t)self:PlayAnim(n[t],1.2)self:SetNextPrimaryFire(CurTime()+c)end
function SWEP:HitEnt(t)self:PlayAnim(n[t],1.2)self:SetNextPrimaryFire(CurTime()+c)end

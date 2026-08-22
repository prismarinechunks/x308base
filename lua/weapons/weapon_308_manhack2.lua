SWEP.Base = "weapon_308_manhack"
SWEP.PrintName=GAME308_LANWEP["manhack"].." II"
SWEP.Category = "X Base | Misc"
SWEP.Author="QQ3088083421\n\n\nDefault Mode:Following"
SWEP.Spawnable = true

SWEP.PETHP=250

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
	e:SetModelScale(.5)
	e:Spawn()
	e:Activate()
	self.PET=e
	e:SetHealth(self.PETHP)
	util.SpriteTrail(e,0,Color(255,0,0,215),true,1,.1,2,.3,"trails/smoke.vmt")
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
		if(!IsValid(ply)||!IsValid(e)||e:Health()<=0)then if IsValid(ply)then if IsValid(self)and ply.PET308 then self:Remove()ply:PrintMessage(4,GAME308_LAN["petkill"])end ply.PET308=nil end hook.Remove("Think","PET308"..w)
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

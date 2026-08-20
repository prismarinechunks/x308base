AddCSLuaFile()

ENT.Base="npc_308_base_s"

ENT.PrintName="Baldi[Remade]"
ENT.KillName="Baldi"

ENT.AdminOnly=true
ENT.Category = "308 NPC"

ENT.Factions={"FACTION_BALDI"}

ENT.Acceleration=3000
ENT.Deceleration=3000

ENT.IgnorePoison=0

ENT.BBox=Vector(14,14,97)

ENT.HP=6000

ENT.QuickRemove=true

ENT.SpriteScale=110
ENT.Sprite="3088083421/baldir/baldi1.png"

ENT.SprTogT=CurTime()

ENT.AttRange=50

ENT.Spr=1
ENT.SprT=11
ENT.NextT=CurTime()

ENT.Angry=-15


function ENT:CustomThink()

if self.NextT<CurTime()
    and self.SprT==11
    and IsValid(self:GetEnemy()) then

    self.SprT=1

    end


    if self.SprTogT<CurTime()
        and self.SprT<11 then

        self.SprTogT=CurTime()+.05


        if self.Spr<6 and self.SprT<6 then

            self.Spr=self.Spr+1

            else

                if self.SprT==6 then

                    if game.SinglePlayer() then
                        self:SetSpeed(650)
                        self.Speed=650
                        else
                            self:SetSpeed(350)
                            self.Speed=350
                            end

                            self:EmitSound("baldi/slap.mp3",100+self.Angry)

                            self.NextT=CurTime()+.5

                            self.Timer=CurTime()

                            elseif self.SprT>7 then

                                local v=self:GetVelocity()

                                self.loco:SetVelocity(Vector(0,0,v.z))

                                self:SetSpeed(0)

                                self.Speed=0

                                end

                                self.Spr=self.Spr-1

                                end


                                self.SprT=self.SprT+1

                                self:SetSprite("3088083421/baldir/baldi"..self.Spr..".png")

                                end

                                end


                                function ENT:OnTakeDamage()

                                if self:Health()<=2000
                                    and self:Health()>0
                                    and self.Angry==-15 then


                                    _308PlaySoundAll("baldi/note.mp3")

                                    self.Angry=411


                                    for _,p in pairs(player.GetAll()) do

                                        p:ConCommand("pp_colormod 1")
                                        p:ConCommand("pp_colormod_addb 0")
                                        p:ConCommand("pp_colormod_addg 0")
                                        p:ConCommand("pp_colormod_addr 9")
                                        p:ConCommand("pp_colormod_brightness -0.23")
                                        p:ConCommand("pp_colormod_color 1.53")
                                        p:ConCommand("pp_colormod_contrast 1.25")

                                        end


                                        elseif self.Angry==411 then

                                            for _,p in pairs(player.GetAll()) do

                                                p:ConCommand(
                                                    "pp_colormod_contrast "
                                                    ..
                                                    ((1-(self:Health()/2000))*1.5+1.25)
                                                )

                                                end

                                                end

                                                end


                                                function ENT:CustomOnRemove()

                                                for _,p in pairs(player.GetAll()) do

                                                    p:ConCommand("pp_colormod 0")

                                                    end

                                                    end


                                                    function ENT:Attack()

                                                    self:Melee({
                                                        {
                                                            Range=50,
                                                            dmg=150,
                                                            SHit="baldi/hit.mp3"
                                                        }
                                                    })

                                                    self.Timer=CurTime()+1.5

                                                    end


                                                    Add308Nextbot(ENT)

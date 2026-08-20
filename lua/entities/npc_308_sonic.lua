AddCSLuaFile()

ENT.Base = "npc_308_base_s"
ENT.PrintName = "Sonic"
ENT.AdminOnly = true
ENT.Category = "308 NPC"
ENT.Factions = {FACTION_REBELS}

ENT.Acceleration = 350
ENT.Deceleration = 600
ENT.IgnorePoison = 0

ENT.BBox = Vector(14,14,72)

ENT.StartSpeed = 500
ENT.HP = 175

ENT.Sprite = "3088083421/sonic/stand.png"
ENT.QuickRemove = true
ENT.SpriteScale = 128

ENT.AttRange = 50
ENT.Hurt = 0

function ENT:CustomThink()

if self:IsOnGround() then

    self:SetNWInt("Velo",self:GetVelocity():Length())
    self:SetNWBool("Hurt",false)
    self:SetNWBool("OnGround",true)

    else

        self:SetNWBool("OnGround",false)
        self:SetNWInt("Velo",0)
        self:SetSprite("3088083421/sonic/attack.png")

        end

        end

        function ENT:OnHitEnemy(e)

        self:Jump(80)

        self.loco:SetVelocity(
            (self:EyePos()-e:WorldSpaceCenter())*3
        )

        end

        function ENT:OnHurt(d)

        if self.Hurt < CurTime() then

            self:SetNWBool("Hurt",true)

            self:Jump(40)

            self:EmitSound("3088083421/sonic/hurt.wav")

            self.Hurt=CurTime()+1.5

            else

                d:SetDamage(0)

                end

                end


                function ENT:CustomOnKilled()

                self:EmitSound("3088083421/sonic/death.wav",400)

                self:SetMoveType(0)
                self:SetSolid(0)

                SafeRemoveEntityDelayed(self,2)

                end


                function ENT:Attack()

                if self:GetNWBool("OnGround") then

                    self:EmitSound("3088083421/sonic/jump.wav")

                    end

                    self:Jump(50)

                    self.Timer=0.8

                    self:SetSprite("3088083421/sonic/attack.png")

                    self:Melee({

                        {
                            Range=30,
                            dmg=35
                        }

                    })

                    end


                    if CLIENT then

                        local a=1
                        local m2=0
                        local t=CurTime()

                        function ENT:OverrideDraw(v,n,c)

                        local s

                        if self:GetNWBool("Dead") then

                            s="3088083421/sonic/death.png"

                            local m=10+m2

                            self:SetNWInt("DAnim",self:GetNWInt("DAnim")+m)

                            m2=m2-0.4

                            v=v+Vector(0,0,self:GetNWInt("DAnim"))

                            else

                                m2=0

                                if self:GetNWBool("Hurt") then

                                    s="3088083421/sonic/hurt.png"


                                    elseif self:GetNWInt("Velo")>0 then

                                        if t<CurTime() and self:GetNWInt("Velo")<=400 then

                                            t=CurTime()+20/math.Clamp(self:GetNWInt("Velo"),40,600)

                                            if a<8 then
                                                a=a+1
                                                else
                                                    a=1
                                                    end

                                                    end

                                                    s="3088083421/sonic/run"..a..".png"


                                                    if self:GetNWInt("Velo")>400 then

                                                        a=math.Clamp(a,1,4)

                                                        if t<CurTime() then

                                                            t=CurTime()+20/math.Clamp(self:GetNWInt("Velo"),40,600)

                                                            if a<4 then
                                                                a=a+1
                                                                else
                                                                    a=1
                                                                    end

                                                                    end

                                                                    s="3088083421/sonic/run_"..a..".png"

                                                                    end


                                                                    elseif self:GetNWBool("OnGround") then

                                                                        s="3088083421/sonic/stand.png"


                                                                        else

                                                                            s="3088083421/sonic/attack.png"

                                                                            end

                                                                            end

                                                                            render.SetMaterial(Material(s or self:GetNetworkedString("Sprite")))
                                                                            render.DrawQuadEasy(v,n,128,128,c,180)

                                                                            end

                                                                            end


                                                                            Add308Nextbot(ENT)

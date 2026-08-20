AddCSLuaFile()

ENT.Base = "npc_308_zbstr"

ENT.PrintName = "Zombie Tank"

if GAME308_LANMath == 2 then
    ENT.PrintName = "僵尸坦克"
    end

    ENT.Category = "308 NPC"

    ENT.Scale = 2

    ENT.HP = 4350

    ENT.Color = Color(255,215,150)

    ENT.Acceleration = 200

    ENT.StartSpeed = 150

    ENT.AttRate = 1.5

    ENT.AttRange = 40

    ENT.Att = {
        {
            Range = 55,
            dmg = 55,
            Time = 0.7,
            SHit = "physics/body/body_medium_break3.wav",
            SMiss = "WeaponFrag.Throw"
        }
    }

    ENT.STi = 0
    ENT.ST = true

    local NormalAttack = {
        {
            Range = 55,
            dmg = 35,
            Time = 0.7,
            SHit = "physics/body/body_medium_break3.wav",
            SMiss = "WeaponFrag.Throw"
        }
    }

    local ChargeAttack = {
        {
            Range = 100,
            dmg = 40,
            Time = 0.25,
            SHit = "physics/body/body_medium_break3.wav",
            SMiss = "WeaponFrag.Throw"
        }
    }

    function ENT:CustomThink()
    if not self:HasEnemy() then return end

        if self.STi < CurTime() and self.ST then
            self.ST = false

            self.Acceleration = 800

            self:EmitSound("npc/zombie_poison/pz_throw" .. math.random(2,3) .. ".wav",400,90)

            self.Speed = 800
            self:SetSpeed(800)

            self.AttRate = 4
            self.Att = ChargeAttack

            timer.Simple(1,function()
            if IsValid(self) then
                self.Acceleration = 200
                end
                end)

            self.STi = CurTime() + 3

            elseif self.STi < CurTime() and not self.ST then

                self:EmitSound("npc/zombie_poison/pz_warn2.wav",400,90)

                self.AttRate = 1.5
                self.Att = NormalAttack

                self.ST = true

                self.STi = CurTime() + 8

                self.Speed = 150
                self:SetSpeed(150)
                end
                end

                function ENT:OnAttack()
                self.Acceleration = 200

                self.AttRate = 1.5
                self.Att = NormalAttack

                self.ST = true
                self.STi = CurTime() + 8

                self.Speed = 150
                self:SetSpeed(150)
                end

                function ENT:CustomInit()
                self:DrawShadow()

                local v = Vector(1.5,1.5,1.5)

                self:ManipulateBonePosition(8,Vector(9,0,0))
                self:ManipulateBonePosition(18,Vector(0,0,9))

                for _, bone in ipairs({
                    6,7,8,9,10,
                    15,16,17,18,19
                }) do
                self:ManipulateBoneScale(bone,v)
                end
                end

                function ENT:OnHurt()
                self:EmitSound("3088083421/zb/zh" .. math.random(2) .. ".wav")
                end

                function ENT:OnDead()
                self:EmitSound("3088083421/zb/zd" .. math.random(2) .. ".wav")
                end

                Add308Nextbot(ENT)

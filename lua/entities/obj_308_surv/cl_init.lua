-- Created By Xero Chunks

if not CanGame308() then return end

   AddCSLuaFile("cl_init.lua")
   AddCSLuaFile("shared.lua")

   include("shared.lua")

   GAME308 = 0
   SU308 = 0
   SU308T = 0

   ENT.Remain = 30
   ENT.T = 0
   ENT.ZTa2 = {}

   local zombieTypes = {
      "npc_308_zbfast",
      "npc_308_zbfast",
      "npc_308_zbfast",
      "npc_308_zbfast",
      "npc_308_zfast",
      "npc_308_headcrab",
      "npc_308_headcrab",
      "npc_308_ztstr",
      "npc_308_ztstr"
   }

   local bossTypes = {
      "npc_308_zbfast",
      "npc_308_zbstr",
      "npc_308_zbfast3",
      "npc_308_zbboom",
      "npc_308_zbminiboss"
   }

   function ENT:SpawnFunction(ply, tr)
   if not tr.Hit or ply.Shield then return end

      local ent = ents.Create("obj_308_surv")

      if not IsValid(ent) then return end

         ent:SetPos(tr.HitPos + tr.HitNormal)
         ent:SetCreator(ply)
         ent:Spawn()

         return ent
         end


         function ENT:Initialize()

         -- prevent duplicate infection games
         for _,v in pairs(ents.FindByClass("obj_308_surv")) do
            if v ~= self then
               SafeRemoveEntity(v)
               end
               end


               if game.GetMap() ~= "gm_flatgrass"
                  and game.GetMap() ~= "gm_hl1_lily_flatgrass_13" then

                  _308TextAll(
                     GAME308_LAN["gamemap"],
                     {
                        y = .9,
                        chan = 3,
                        fxtime = 1,
                        col2 = "255 100 100"
                     }
                  )

                  SafeRemoveEntity(self)
                  return
                  end


                  GAME308 = 1
                  SU308 = 1


                  self:SetMoveType(MOVETYPE_NONE)
                  self:SetSolid(SOLID_NONE)
                  self:SetNoDraw(true)


                  self.Timer = CurTime() + 10
                  self.Timer2 = CurTime() + 15


                  self.AmbT1 = CurTime() + math.Rand(18,20)
                  self.AmbT2 = CurTime() + math.Rand(18,20)
                  self.AmbT3 = CurTime() + math.Rand(19,22)


                  RemoveByClass308("prop_physics")
                  RemoveAllWeapon308()


                  -- cleanup old zombies
                  for _,v in pairs(ents.GetAll()) do
                     if IsValid(v)
                        and (
                           v:GetClass() == "npc_308_zbfast"
                           or v:GetClass() == "npc_308_zbstr"
                           or v:GetClass() == "npc_308_zbboom"
                           or v:GetClass() == "npc_308_headcrab"
                        ) then
                        SafeRemoveEntity(v)
                        end
                        end


                        local sky = ents.Create("edit_sky")

                        if IsValid(sky) then
                           sky:SetNoDraw(true)
                           sky:Spawn()

                           sky:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

                           sky:SetTopColor(Vector(0,.1,0))
                           sky:SetBottomColor(Vector(0,.2,0))
                           sky:SetDuskColor(Vector(.1,.1,.2))

                           sky:SetDuskIntensity(.3)
                           sky:SetDrawStars(true)

                           sky:SetSunColor(Vector(0,0,0))
                           sky:SetSunSize(1)

                           self:DeleteOnRemove(sky)
                           end


                           local fog = ents.Create("edit_fog")

                           if IsValid(fog) then

                              fog:SetNoDraw(true)
                              fog:Spawn()

                              fog:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

                              fog:SetFogStart(1)
                              fog:SetFogEnd(800)
                              fog:SetFogColor(Vector(0,0,0))
                              fog:SetDensity(1)

                              self:DeleteOnRemove(fog)
                              end

                              end

                              -- Created By Xero Chunks

                              function ENT:OnRemove()
                              if self.Dont then return end

                                 GAME308 = 0
                                 SU308 = 0
                                 SU308T = 0

                                 GAME308UNWEP = nil
                                 GAME308UNSPAWN = nil

                                 RemoveByClass308("prop_physics")

                                 RunConsoleCommand("wb3_infammo", "0")

                                 Muss330()
                                 _308StopSoundAll()

                                 if self.ZTa2 then
                                    for _, z in ipairs(self.ZTa2) do
                                       if IsValid(z) then
                                          SafeRemoveEntity(z)
                                          end
                                          end
                                          end

                                          self.ZTa2 = {}

                                          for _, p in ipairs(player.GetAll()) do
                                             if not IsValid(p) then continue end

                                                if self.End then
                                                   local msg = "YOU MAKE IT TO " .. tostring(self.T) .. "!"

                                                   p:ChatPrint(msg)

                                                   _308TextAll(
                                                      msg,
                                                      {
                                                         y = .87,
                                                         fxtime = 1,
                                                         col = "255 255 255",
                                                         chan = 1
                                                      }
                                                   )
                                                   end

                                                   p.NextSpawnTime = CurTime()

                                                   p:SetGravity(1)
                                                   p:SetMaterial("")
                                                   p:SetColor(color_white)

                                                   if IsValid(p._30Armor2) then
                                                      p._30Armor2:Remove()
                                                      p._30Armor2 = nil
                                                      end
                                                      end
                                                      end


                                                      function ENT:Think()

                                                      if not IsValid(self) then return end

                                                         GAME308 = 1

                                                         local timeLeft = math.floor(self.Timer - CurTime())


                                                         if not self.Do then

                                                            if not self.Do2 then
                                                               self.Do2 = true

                                                               timer.Simple(5,function()

                                                               if IsValid(self) then
                                                                  self:SpawnProp()
                                                                  end

                                                                  end)
                                                               end


                                                               for _,p in ipairs(player.GetAll()) do

                                                                  if IsValid(p) then

                                                                     p:PrintMessage(
                                                                        HUD_PRINTCENTER,
                                                                        GAME308_LAN1["gtf"]
                                                                        .. GAME308_LAN1["t"]
                                                                        .. timeLeft
                                                                        .. GAME308_LAN1["t0"]
                                                                     )

                                                                     end

                                                                     end


                                                                     else

                                                                        GAME308UNWEP = 1
                                                                        GAME308UNSPAWN = 1


                                                                        local alive = false


                                                                        for _,p in ipairs(player.GetAll()) do

                                                                           if not IsValid(p) then continue end


                                                                              if p:Alive() then

                                                                                 alive = true


                                                                                 if p:GetPos().z > -12648 then
                                                                                    p:SetVelocity(Vector(0,0,-10))
                                                                                    end

                                                                                    end

                                                                                    end


                                                                                    if not alive then

                                                                                       self.End = true
                                                                                       SafeRemoveEntity(self)

                                                                                       return

                                                                                       end



                                                                                       self.T = self.T + 1


                                                                                       for _,p in ipairs(player.GetAll()) do

                                                                                          if IsValid(p) then

                                                                                             p:SetRunSpeed(250)
                                                                                             p:SetWalkSpeed(200)
                                                                                             p:SetJumpPower(1)

                                                                                             end

                                                                                             end



                                                                                             _308TextAll(
                                                                                                "Tick: "..self.T,
                                                                                                {
                                                                                                   y=.9,
                                                                                                   time=9999,
                                                                                                   fin=.15,
                                                                                                   chan=1
                                                                                                }
                                                                                             )



                                                                                             if self.AmbT1 < CurTime() then

                                                                                                self.AmbT1 = CurTime()+math.Rand(3,5)

                                                                                                sound.Play(
                                                                                                   "ambient/levels/prison/inside_battle_zombie"
                                                                                                   ..math.random(2,3)
                                                                                                   ..".wav",
                                                                                                   self:GetPos(),
                                                                                                           0
                                                                                                )

                                                                                                end



                                                                                                if self.AmbT2 < CurTime() then

                                                                                                   self.AmbT2 = CurTime()+math.Rand(.5,1.5)

                                                                                                   sound.Play(
                                                                                                      "ambient/levels/prison/inside_battle"
                                                                                                      ..math.random(9)
                                                                                                      ..".wav",
                                                                                                      self:GetPos(),
                                                                                                              0
                                                                                                   )

                                                                                                   end



                                                                                                   if self.AmbT3 < CurTime() then

                                                                                                      self.AmbT3 = CurTime()+math.Rand(2,4)

                                                                                                      sound.Play(
                                                                                                         "ambient/levels/prison/inside_battle_soldier"
                                                                                                         ..math.random(3)
                                                                                                         ..".wav",
                                                                                                         self:GetPos(),
                                                                                                                 0
                                                                                                      )

                                                                                                      end



                                                                                                      for k,z in pairs(self.ZTa2) do

                                                                                                         if not IsValid(z) then

                                                                                                            table.remove(self.ZTa2,k)

                                                                                                            end

                                                                                                            end




                                                                                                            if self.Timer < CurTime()
                                                                                                               and #self.ZTa2 < 26 then


                                                                                                               if game.SinglePlayer() then

                                                                                                                  self.Timer = CurTime()+1+(#self.ZTa2/10)

                                                                                                                  else

                                                                                                                     self.Timer = CurTime()+.75

                                                                                                                     end


                                                                                                                     self:SpawnZombie(
                                                                                                                        _308Table({
                                                                                                                           "npc_308_zbfast",
                                                                                                                           "npc_308_zbfast",
                                                                                                                           "npc_308_zbstr",
                                                                                                                           "npc_308_headcrab"
                                                                                                                        })
                                                                                                                     )


                                                                                                                     end





                                                                                                                     if self.Timer2 < CurTime()
                                                                                                                        and self.T > 420
                                                                                                                        and #self.ZTa2 < 26 then


                                                                                                                        self.Timer2 = CurTime()+1.5


                                                                                                                        self:SpawnZombie(
                                                                                                                           _308Table({
                                                                                                                              "npc_308_zbfast3",
                                                                                                                              "npc_308_zbboom",
                                                                                                                              "npc_308_zbminiboss"
                                                                                                                           })
                                                                                                                        )


                                                                                                                        end


                                                                                                                        end





                                                                                                                        if self.Timer <= CurTime()
                                                                                                                           and not self.Do then


                                                                                                                           self.Do = true


                                                                                                                           RunConsoleCommand(
                                                                                                                              "wb3_infammo",
                                                                                                                              "1"
                                                                                                                           )


                                                                                                                           Muss330(
                                                                                                                              nil,
                                                                                                                              "3088083421/mg/zamb.ogg",
                                                                                                                              100,
                                                                                                                              100
                                                                                                                           )


                                                                                                                           _308PlaySoundAll(
                                                                                                                              "3088083421/mg/surv/nz_end.mp3"
                                                                                                                           )



                                                                                                                           for _,p in ipairs(player.GetAll()) do

                                                                                                                              if not IsValid(p) then continue end


                                                                                                                                 p:Spawn()

                                                                                                                                 p:SetPos(
                                                                                                                                    Vector(288,678,-12800)
                                                                                                                                 )


                                                                                                                                 p:StripWeapons()

                                                                                                                                 p:SetHealth(100)
                                                                                                                                 p:SetMaxHealth(100)
                                                                                                                                 p:SetArmor(100)


                                                                                                                                 p:SetModel(
                                                                                                                                    "models/player/group03/male_0"
                                                                                                                                    ..math.random(1,9)
                                                                                                                                    ..".mdl"
                                                                                                                                 )


                                                                                                                                 timer.Simple(2,function()

                                                                                                                                 if not IsValid(p) then return end

                                                                                                                                    p:Give(
                                                                                                                                       "weapon_308_p90"
                                                                                                                                    )

                                                                                                                                    p:Give(
                                                                                                                                       "weapon_308_sh"
                                                                                                                                    )

                                                                                                                                    end)

                                                                                                                                 end


                                                                                                                                 timer.Simple(0,function()

                                                                                                                                 if IsValid(self) then

                                                                                                                                    SU308T = 1

                                                                                                                                    end

                                                                                                                                    end)

                                                                                                                                 end



                                                                                                                                 self:NextThink(
                                                                                                                                    CurTime()+1
                                                                                                                                 )

                                                                                                                                 return true

                                                                                                                                 end

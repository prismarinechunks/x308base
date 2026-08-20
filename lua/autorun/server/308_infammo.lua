local gmod_maxammo = GetConVar("gmod_maxammo")

local function timer_func()local nub=GetConVarNumber("wb3_infammo")
	if nub==1||nub==3 then
		for _,ply in pairs(player.GetHumans()) do
			if IsValid(ply) and ply:Alive() then
				local wep = ply:GetActiveWeapon()
				if IsValid(wep) then
					local primary_ammo = wep:GetPrimaryAmmoType()
					local secondary_ammo = wep:GetSecondaryAmmoType()
					local max_primary_ammo
					local max_secondary_ammo
					
					if(wep.Primary and wep.Primary.MaxAmmo) then
						max_primary_ammo = wep.Primary.MaxAmmo
					elseif (gmod_maxammo:GetInt() > 0) then
						max_primary_ammo = gmod_maxammo:GetInt()
					else
						max_primary_ammo = game.GetAmmoMax(primary_ammo)
						local max_primary_ammo_clip = wep:GetMaxClip1()
						if(max_primary_ammo < max_primary_ammo_clip) then
							max_primary_ammo = max_primary_ammo_clip
						end
					end
					if(wep.Secondary and wep.Secondary.MaxAmmo) then
						max_secondary_ammo = wep.Secondary.MaxAmmo
					else
						max_secondary_ammo = game.GetAmmoMax(secondary_ammo)
						local max_secondary_ammo_clip = wep:GetMaxClip2()
						if(max_secondary_ammo < max_secondary_ammo_clip) then
							max_secondary_ammo = max_secondary_ammo_clip
						end
					end
					
					ply:SetAmmo(max_primary_ammo, primary_ammo)
					ply:SetAmmo(max_secondary_ammo, secondary_ammo)
				end
			end
		end
	end
end

timer.Create( "infinite_ammo", 0.1, 0, timer_func )
local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
					 
	 --{title="Black shop", colour=59, id=52, x = 77.694,  y = -1948.40,  z = 21.174},
	 --{title="Przerabianie marichuany", colour=69, id=140, x = 1464.088,  y = 1134.81,  z = 114.32265472},
	 --{title="Pole marichuany", colour=69, id=140, x = -1868.283,  y = 2170.561,  z = 115.59438324},

  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.2)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
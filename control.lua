script.on_init( function()
  global.productivityBeacons = global.productivityBeacons or {}
  global.affectedAssemblingMachines = global.affectedAssemblingMachines or {}
  global.productivityTracker = global.productivityTracker or {productivityBeaconsActive = false, advancedProductivityResearchLevel = 1, eeCounter = 0}
end )

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function findAssemblersInRange(radius, positionX, positionY, b_box)
	local entities = {}
	area = {{b_box.left_top.x - radius, b_box.left_top.y - radius} , {b_box.right_bottom.x + radius, b_box.right_bottom.y + radius}}
	for k, entity in pairs (game.surfaces[1].find_entities_filtered{area = area, type = "assembling-machine"}) do
      table.insert(entities, entity)
    end
    return entities
end

function findBeaconsInRange(radius, positionX, positionY, b_box)
	local entities = {}
	area = {{b_box.left_top.x - radius, b_box.left_top.y - radius} , {b_box.right_bottom.x + radius, b_box.right_bottom.y + radius}}
	for k, entity in pairs (game.surfaces[1].find_entities_filtered{area = area, name = "productivity-beacon"}) do
      table.insert(entities, entity)
    end
    return entities
end

function disableAssemblers(assemblers)
	for x, y in pairs(assemblers) do
		y.active = false
	end
end

function activateAssemblers(assemblers)
	for x, y in pairs(assemblers) do
		y.active = true
	end
end

function removeBeaconFromList(entity)
	for x,y in pairs(global.productivityBeacons) do
		if global.productivityBeacons[x] == entity then
			global.productivityBeacons[x] = nil
		end
	end
end

function removeAssemblerFromList(entity)
	for x, y in pairs(global.affectedAssemblingMachines) do
		if y == entity then
			global.affectedAssemblingMachines[x] = nil
		end
	end
end



script.on_nth_tick(60, 
	function(e)
		g = global.productivityTracker
		if g.productivityBeaconsActive == true then
			if g.eeCounter > 10 + g.advancedProductivityResearchLevel then
				g.eeCounter = 0
				if settings.global["ee-log-beacon-activity"].value then
						game.print("Productivitybeacon effect disabled")
					end
				disableAssemblers(global.affectedAssemblingMachines)
			end
			global.productivityTracker.eeCounter = global.productivityTracker.eeCounter+1
		end
	end
)



script.on_event({defines.events.on_rocket_launched},
	function (e)
		if e.rocket_silo.name == "advanced-rocket-silo" then
			local rocket_silo_inv = e.rocket_silo.get_output_inventory()
			local rocket = e.rocket.get_inventory(1)
			local rocket_inventory = rocket.get_contents()
			for x, y in pairs(rocket_inventory) do
				if x == "deep-space-satellite" then
					game.print(dump(rocket_silo_inv.is_empty()))
					if rocket_silo_inv.is_empty() then
						rocket_silo_inv.insert({name="advanced-space-science-pack", count=1000})
					elseif rocket_silo_inv.can_insert({name="advanced-space-science-pack", count=1000}) then
						rocket_silo_inv.insert({name="advanced-space-science-pack", count=1000})
					end
				end
				if x == "productivity-satellite" then
					if settings.global["ee-log-beacon-activity"].value then
						game.print("Productivitybeacon effect enabled")
					end
					activateAssemblers(global.affectedAssemblingMachines)
					global.productivityTracker.productivityBeaconsActive = true
					global.productivityTracker.eeCounter = 0
				end
			end
		else
			local rocket_silo_inv = e.rocket_silo.get_output_inventory()
			local rocket = e.rocket.get_inventory(1)
			local rocket_inventory = rocket.get_contents()
			for x, y in pairs(rocket_inventory) do
				if x == "productivity-satellite" then
					if settings.global["ee-log-beacon-activity"].value then
						game.print("Productivitybeacon effect enabled")
					end
					activateAssemblers(global.affectedAssemblingMachines)
					global.productivityTracker.productivityBeaconsActive = true
					global.productivityTracker.eeCounter = 0
				end
			end
		end
	end
)

script.on_event({defines.events.on_research_finished},
	function (e)
		if e.research.name == "ee-advanced-productivity-research" then
			global.productivityTracker.advancedProductivityResearchLevel = e.research.level
		end
	end
)

--When a beacon is built, find assemblers in range and disable them.
script.on_event({defines.events.on_built_entity},
	function (e)
		local beacon = {}
		local assemblers = {}
		local radius = 3
		if e.created_entity.name == "productivity-beacon" then
			assemblers = findAssemblersInRange(radius, e.created_entity.position.x, e.created_entity.position.y, e.created_entity.bounding_box)
		    if assemblers[1] ~= nil then
		    	disableAssemblers(assemblers)
		    	table.insert(global.affectedAssemblingMachines, assemblers)
		    end
		    table.insert(global.productivityBeacons, e.created_entity)
		end
		if e.created_entity.type == "assembling-machine" then
			local beacons = {}
			beacons = findBeaconsInRange(radius, e.created_entity.position.x, e.created_entity.position.y, e.created_entity.bounding_box)
			if beacons[1] ~= nil then
				table.insert(global.affectedAssemblingMachines, e.created_entity)
				e.created_entity.active = false
			end
		end
	end
)
--When a robot builds a beacon, find assemblers in range and disable them.
script.on_event({defines.events.on_robot_built_entity},
	function (e)
		local beacon = {}
		local assemblers = {}
		local radius = 3
		if e.created_entity.name == "productivity-beacon" then
			assemblers = findAssemblersInRange(radius, e.created_entity.position.x, e.created_entity.position.y, e.created_entity.bounding_box)
		    if assemblers[1] ~= nil then
		    	disableAssemblers(assemblers)
		    	table.insert(global.affectedAssemblingMachines, assemblers)
		    end
		    table.insert(global.productivityBeacons, e.created_entity)
		end
		if e.created_entity.type == "assembling-machine" then
			local beacons = {}
			beacons = findBeaconsInRange(radius, e.created_entity.position.x, e.created_entity.position.y, e.created_entity.bounding_box)
			if beacons[1] ~= nil then
				table.insert(global.affectedAssemblingMachines, e.created_entity)
				e.created_entity.active = false
			end
		end
	end
)

--When a beacon is mined, find assemblers in range and enable them, if they are not affected by any other beacons
script.on_event({defines.events.on_player_mined_entity},
	function (e)
		if e.entity.name == "productivity-beacon" then
			removeBeaconFromList(e.entity)
			local assemblers = {}
			local radius = 3
			assemblers = findAssemblersInRange(radius, e.entity.position.x, e.entity.position.y, e.entity.bounding_box)
			if assemblers[1] ~= nil then
				for x, y in pairs(assemblers) do
					local beacons = {}
					beacons = findBeaconsInRange(radius, y.position.x, y.position.y, y.bounding_box)
					if beacons[1] ~= nil then
						if tablelength(beacons) == 1 then
							removeAssemblerFromList(y)
							y.active = true
						end
					end
				end
			end

		end
		if e.entity.type == "assembling-machine" then
			removeAssemblerFromList(e.entity)
		end
	end
)

--When a robot mines a beacon, find assemblers in range and enable them, if they are not affected by any other beacons
script.on_event({defines.events.on_robot_mined_entity},
	function (e)
		if e.entity.name == "productivity-beacon" then
			removeBeaconFromList(e.entity)
			local assemblers = {}
			local radius = 3
			assemblers = findAssemblersInRange(radius, e.entity.position.x, e.entity.position.y, e.entity.bounding_box)
			if assemblers[1] ~= nil then
				for x, y in pairs(assemblers) do
					local beacons = {}
					beacons = findBeaconsInRange(radius, y.position.x, y.position.y, y.bounding_box)
					if beacons[1] ~= nil then
						if tablelength(beacons) == 1 then
							removeAssemblerFromList(y)
							y.active = true
						end
					end
				end
			end

		end
		if e.entity.type == "assembling-machine" then
			removeAssemblerFromList(e.entity)
		end
	end
)

--When a beacon is killed, find assemblers in range and enable them.
script.on_event({defines.events.on_entity_died},
	function (e)
		if e.entity.name == "productivity-beacon" then
			removeBeaconFromList(e.entity)
			local assemblers = {}
			local radius = 3
			assemblers = findAssemblersInRange(radius, e.entity.position.x, e.entity.position.y, e.entity.bounding_box)
			if assemblers[1] ~= nil then
				for x, y in pairs(assemblers) do
					local beacons = {}
					beacons = findBeaconsInRange(radius, y.position.x, y.position.y, y.bounding_box)
					if beacons[1] ~= nil then
						if tablelength(beacons) == 1 then
							removeAssemblerFromList(y)
							y.active = true
						end
					end
				end
			end

		end
		if e.entity.type == "assembling-machine" then
			removeAssemblerFromList(e.entity)
		end
	end
)
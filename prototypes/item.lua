data:extend({
	{
		type = "item",
		name = "bauxite-ore",
		icon = "__EndgameExtension__/graphics/icons/bauxite-ore.png",
		icon_size = 32,
		subgroup = "raw-resource",
		order = "g[bauxite-ore]",
		stack_size = 100
	},
	{
		type = "item",
		name = "salt",
		icon = "__EndgameExtension__/graphics/icons/salt.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "m[salt]",
		stack_size = 50
	},
	{
		type = "item",
		name = "alumina",
		icon = "__EndgameExtension__/graphics/icons/alumina.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "c[lubricant]",
		stack_size = 100
	},
	{
		type = "item",
		name = "cryolite",
		icon = "__EndgameExtension__/graphics/icons/cryolite.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "n[rocket-control-unit]",
		stack_size = 100
	},
	{
		type = "item",
		name = "aluminum-plate",
		icon = "__EndgameExtension__/graphics/icons/aluminum-plate.png",
		icon_size = 32,
		subgroup = "raw-material",
		order = "da[steel-plate]",
		stack_size = 200
	},
	{
		type = "item",
		name = "aluminum-battery",
		icon = "__EndgameExtension__/graphics/icons/aluminum-battery.png",
		icon_size = 32,
		subgroup = "raw-material",
		order = "ia[battery]",
		stack_size = 100
	},
	{
		type = "item",
		name = "multi-layered-pcb",
		icon = "__EndgameExtension__/graphics/icons/multi-layered-pcb.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "ha[advanced-circuit]",
		stack_size = 100
	},
	{
		type = "item",
		name = "multi-layered-electronic-circuit",
		icon = "__EndgameExtension__/graphics/icons/multi-layered-electronic-circuit.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "hb[advanced-circuit]",
		stack_size = 100
	},
	{
	    type = "item",
	    name = "flying-robot-frame-2",
	    icon = "__EndgameExtension__/graphics/icons/flying-robot-frame-2.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "la[flying-robot-frame-2]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "construction-robot-2",
	    icon = "__EndgameExtension__/graphics/icons/construction-robot-2.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-ba[construction-robot]",
	    place_result = "construction-robot-2",
	    stack_size = 50
	},
	{
	    type = "item",
	    name = "logistic-robot-2",
	    icon = "__EndgameExtension__/graphics/icons/logistic-robot-2.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-aa[logistic-robot]",
	    place_result = "logistic-robot-2",
	    stack_size = 50
  	},
  	{
	    type = "tool",
	    name = "advanced-automation-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-automation-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "gb[space-science-pack]",
	    stack_size = 200,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"

  	},
  	{
	    type = "item",
	    name = "lab-mk2",
	    icon = "__base__/graphics/icons/lab.png",
	    icon_size = 32,
	    subgroup = "production-machine",
    	order = "ga[lab-mk2]",
	    place_result = "lab-mk2",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "lab-mk3",
	    icon = "__base__/graphics/icons/lab.png",
	    icon_size = 32,
	    subgroup = "production-machine",
    	order = "gb[lab-mk2]",
	    place_result = "lab-mk3",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "roboport-2",
	    icon = "__base__/graphics/icons/roboport.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "c[signal]-aa[roboport]",
	    place_result = "roboport-2",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "roboport-3",
	    icon = "__base__/graphics/icons/roboport.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "c[signal]-ab[roboport]",
	    place_result = "roboport-3",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "high-speed-loader",
	    icon = "__base__/graphics/icons/express-loader.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "d[loader]-ca[high-speed-loader]",
	    place_result = "high-speed-loader",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "high-speed-transport-belt",
	    icon = "__EndgameExtension__/graphics/icons/high-speed-transport-belt.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "a[transport-belt]-ca[express-transport-belt]",
	    place_result = "high-speed-transport-belt",
	    stack_size = 100
	},
	{
	    type = "item",
	    name = "high-speed-underground-belt",
	    icon = "__EndgameExtension__/graphics/icons/high-speed-underground-belt.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "b[underground-belt]-ca[express-underground-belt]",
	    place_result = "high-speed-underground-belt",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "high-speed-splitter",
	    icon = "__EndgameExtension__/graphics/icons/high-speed-splitter.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "c[splitter]-ca[express-splitter]",
	    place_result = "high-speed-splitter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "aluminum-pipe",
	    icon = "__EndgameExtension__/graphics/icons/aluminum-pipe.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[pipe]-aa[pipe]",
	    place_result = "aluminum-pipe",
	    stack_size = 100
  	},
  	{
	    type = "item",
	    name = "aluminum-pipe-to-ground",
	    icon = "__EndgameExtension__/graphics/icons/aluminum-pipe-to-ground.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[pipe]-ba[pipe-to-ground]",
	    place_result = "aluminum-pipe-to-ground",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "chemical-plant-2",
	    icon = "__base__/graphics/icons/chemical-plant.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "ea[chemical-plant]",
	    place_result = "chemical-plant-2",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "chemical-plant-3",
	    icon = "__base__/graphics/icons/chemical-plant.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "eb[chemical-plant]",
	    place_result = "chemical-plant-3",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "cryogenic-plant",
	    icon = "__EndgameExtension__/graphics/icons/cryogenic-plant.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "ec[chemical-plant]",
	    place_result = "cryogenic-plant",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "electric-mining-drill-2",
	    icon = "__base__/graphics/icons/electric-mining-drill.png",
	    icon_size = 32,
	    subgroup = "extraction-machine",
	    order = "a[items]-ba[electric-mining-drill]",
	    place_result = "electric-mining-drill-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-mining-drill-3",
	    icon = "__base__/graphics/icons/electric-mining-drill.png",
	    icon_size = 32,
	    subgroup = "extraction-machine",
	    order = "a[items]-bb[electric-mining-drill]",
	    place_result = "electric-mining-drill-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-mining-drill-4",
	    icon = "__base__/graphics/icons/electric-mining-drill.png",
	    icon_size = 32,
	    subgroup = "extraction-machine",
	    order = "a[items]-bc[electric-mining-drill]",
	    place_result = "electric-mining-drill-4",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-mining-drill-5",
	    icon = "__base__/graphics/icons/electric-mining-drill.png",
	    icon_size = 32,
	    subgroup = "extraction-machine",
	    order = "a[items]-bd[electric-mining-drill]",
	    place_result = "electric-mining-drill-5",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "beacon-2",
	    icon = "__base__/graphics/icons/beacon.png",
	    icon_size = 32,
	    subgroup = "module",
	    order = "aaab[beacon]",
	    place_result = "beacon-2",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "beacon-3",
	    icon = "__base__/graphics/icons/beacon.png",
	    icon_size = 32,
	    subgroup = "module",
	    order = "aaac[beacon]",
	    place_result = "beacon-3",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "rutile-ore",
	    icon = "__EndgameExtension__/graphics/icons/rutile-ore.png",
	    icon_size = 32,
	    subgroup = "raw-resource",
	    order = "ga[bauxite-ore]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "gold-ore",
	    icon = "__EndgameExtension__/graphics/icons/gold-ore.png",
	    icon_size = 32,
	    subgroup = "raw-resource",
	    order = "gb[bauxite-ore]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "carbon",
	    icon = "__EndgameExtension__/graphics/icons/carbon.png",
	    icon_size = 32,
	    subgroup = "raw-material",
	    order = "ga[sulfur]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "magnesium",
	    icon = "__EndgameExtension__/graphics/icons/magnesium.png",
	    icon_size = 32,
	    subgroup = "rutile-processing",
	    order = "a",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "titanium-sponge",
	    icon = "__EndgameExtension__/graphics/icons/titanium-sponge.png",
	    icon_size = 32,
	    subgroup = "rutile-processing",
	    order = "c",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "titanium-plate",
	    icon = "__EndgameExtension__/graphics/icons/titanium-plate.png",
	    icon_size = 32,
	    subgroup = "raw-material",
	    order = "db[steel-plate]",
	    stack_size = 100
  	},
  	{
	    type = "item",
	    name = "titanium-gear-wheel",
	    icon = "__EndgameExtension__/graphics/icons/titanium-gear-wheel.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "ca[iron-gear-wheel]",
	    stack_size = 100
  	},
  	{
	    type = "tool",
	    name = "compressed-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__base__/graphics/icons/automation-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "ga[compressed-science-pack]",
	    stack_size = 200,
	    durability = 1,
	    durability_description_key = "description.science-pack-remaining-amount-key",
	    durability_description_value = "description.science-pack-remaining-amount-value"
  	},
  	{
	    type = "item",
	    name = "electric-furnace-2",
	    icon = "__base__/graphics/icons/electric-furnace.png",
	    icon_size = 32,
	    subgroup = "smelting-machine",
	    order = "ca[electric-furnace]",
	    place_result = "electric-furnace-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-furnace-3",
	    icon = "__base__/graphics/icons/electric-furnace.png",
	    icon_size = 32,
	    subgroup = "smelting-machine",
	    order = "cb[electric-furnace]",
	    place_result = "electric-furnace-3",
	    stack_size = 50
  	},
  	{
		type = "item",
		name = "cpu",
		icon = "__EndgameExtension__/graphics/icons/cpu.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "hc[advanced-circuit]",
		stack_size = 100
	},
	{
		type = "item",
		name = "titanium-battery",
		icon = "__EndgameExtension__/graphics/icons/titanium-battery.png",
		icon_size = 32,
		subgroup = "raw-material",
		order = "ib[battery]",
		stack_size = 100
	},
	{
	    type = "item",
	    name = "assembling-machine-4",
	    icon = "__EndgameExtension__/graphics/icons/assembling-machine-4.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "ca[assembling-machine-3]",
	    place_result = "assembling-machine-4",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "assembling-machine-5",
	    icon = "__EndgameExtension__/graphics/icons/advanced-assembling-machine.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "cb[assembling-machine-3]",
	    place_result = "assembling-machine-5",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "flying-robot-frame-3",
	    icon = "__EndgameExtension__/graphics/icons/flying-robot-frame-2.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "lb[flying-robot-frame-2]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "construction-robot-3",
	    icon = "__EndgameExtension__/graphics/icons/construction-robot-3.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-bb[construction-robot]",
	    place_result = "construction-robot-3",
	    stack_size = 50
	},
	{
	    type = "item",
	    name = "logistic-robot-3",
	    icon = "__EndgameExtension__/graphics/icons/logistic-robot-3.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-ab[logistic-robot]",
	    place_result = "logistic-robot-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "rocket-silo-2",
	    icon = "__base__/graphics/icons/rocket-silo.png",
	    icon_size = 32,
	    subgroup = "defensive-structure",
	    order = "ea[rocket-silo]",
	    place_result = "rocket-silo-2",
	    stack_size = 1
  	},
  	{
	    type = "item",
	    name = "rocket-silo-3",
	    icon = "__base__/graphics/icons/rocket-silo.png",
	    icon_size = 32,
	    subgroup = "defensive-structure",
	    order = "eb[rocket-silo]",
	    place_result = "rocket-silo-3",
	    stack_size = 1
  	},
  	{
	    type = "item",
	    name = "titanium-pipe",
	    icon = "__EndgameExtension__/graphics/icons/titanium-pipe.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[pipe]-ab[pipe]",
	    place_result = "titanium-pipe",
	    stack_size = 100
  	},
  	{
	    type = "item",
	    name = "titanium-pipe-to-ground",
	    icon = "__EndgameExtension__/graphics/icons/titanium-pipe-to-ground.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[pipe]-bb[pipe-to-ground]",
	    place_result = "titanium-pipe-to-ground",
	    stack_size = 50
  	},
  	{
	    type = "tool",
	    name = "advanced-logistic-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-logistic-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "gc[space-science-pack]",
	    stack_size = 200,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"
  	},
  	{
	    type = "item",
	    name = "high-speed-long-handed-inserter",
	    icon = "__EndgameExtension__/graphics/icons/high-speed-long-handed-inserter.png",
	    icon_size = 32,
	    subgroup = "inserter",
	    order = "ca[long-handed-inserter]",
	    place_result = "high-speed-long-handed-inserter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "high-speed-stack-filter-inserter",
	    icon = "__EndgameExtension__/graphics/icons/high-speed-stack-filter-inserter.png",
	    icon_size = 32,
	    subgroup = "inserter",
	    order = "ga[stack-filter-inserter]",
	    place_result = "high-speed-stack-filter-inserter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "gold-plate",
	    icon = "__EndgameExtension__/graphics/icons/gold-plate.png",
	    icon_size = 32,
	    subgroup = "raw-material",
	    order = "dc[steel-plate]",
	    stack_size = 100
  	},
  	{
	    type = "tool",
	    name = "advanced-chemical-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-chemical-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "gc[space-science-pack]",
	    stack_size = 200,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"

  	},
  	{
	    type = "tool",
	    name = "advanced-utility-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-utility-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "gd[space-science-pack]",
	    stack_size = 200,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"

  	},
  	{
	    type = "tool",
	    name = "advanced-production-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-production-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "ge[space-science-pack]",
	    stack_size = 200,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"

  	},
  	{
	    type = "tool",
	    name = "advanced-space-science-pack",
	    localised_description = {"item-description.science-pack"},
	    icon = "__EndgameExtension__/graphics/icons/advanced-space-science-pack.png",
	    icon_size = 32,
	    subgroup = "science-pack",
	    order = "gf[space-science-pack]",
	    stack_size = 1000,
    	durability = 1,
    	durability_description_key = "description.science-pack-remaining-amount-key",
    	durability_description_value = "description.science-pack-remaining-amount-value"

  	},
  	{
		type = "item",
		name = "superconducted-electronics",
		icon = "__EndgameExtension__/graphics/icons/superconducted-electronics.png",
		icon_size = 32,
		subgroup = "intermediate-product",
		order = "hd[advanced-circuit]",
		stack_size = 100
	},
	{
	    type = "item",
	    name = "solar-panel-2",
	    icon = "__base__/graphics/icons/solar-panel.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "d[solar-panel]-ab[solar-panel]",
	    place_result = "solar-panel-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "solar-panel-3",
	    icon = "__base__/graphics/icons/solar-panel.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "d[solar-panel]-ac[solar-panel]",
	    place_result = "solar-panel-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "solar-panel-4",
	    icon = "__base__/graphics/icons/solar-panel.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "d[solar-panel]-ad[solar-panel]",
	    place_result = "solar-panel-4",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "solar-panel-5",
	    icon = "__base__/graphics/icons/solar-panel.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "d[solar-panel]-ae[solar-panel]",
	    place_result = "solar-panel-5",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "steam-turbine-2",
	    icon = "__base__/graphics/icons/steam-turbine.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "b[steam-power]-ca[steam-turbine]",
	    place_result = "steam-turbine-2",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "heat-exchanger-2",
	    icon = "__base__/graphics/icons/heat-boiler.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "f[nuclear-energy]-ba[heat-exchanger]",
	    place_result = "heat-exchanger-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "steam-turbine-3",
	    icon = "__base__/graphics/icons/steam-turbine.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "b[steam-power]-cb[steam-turbine]",
	    place_result = "steam-turbine-3",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "heat-exchanger-3",
	    icon = "__base__/graphics/icons/heat-boiler.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "f[nuclear-energy]-bb[heat-exchanger]",
	    place_result = "heat-exchanger-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "dense-steam-turbine",
	    icon = "__base__/graphics/icons/steam-turbine.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "b[steam-power]-cc[steam-turbine]",
	    place_result = "dense-steam-turbine",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "mineral-heat-exchanger",
	    icon = "__base__/graphics/icons/heat-boiler.png",
	    icon_size = 32,
	    subgroup = "energy",
	    order = "f[nuclear-energy]-bc[heat-exchanger]",
	    place_result = "mineral-heat-exchanger",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "productivity-beacon",
	    icon = "__base__/graphics/icons/beacon.png",
	    icon_size = 32,
	    subgroup = "module",
	    order = "aaac[beacon]",
	    place_result = "productivity-beacon",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "advanced-rocket-structure",
	    icon = "__EndgameExtension__/graphics/icons/advanced-rocket-structure.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "oa[rocket-structure]",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "ultimate-transport-belt",
	    icon = "__EndgameExtension__/graphics/icons/ultimate-transport-belt.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "a[transport-belt]-cb[express-transport-belt]",
	    place_result = "ultimate-transport-belt",
	    stack_size = 100
	},
	{
	    type = "item",
	    name = "ultimate-underground-belt",
	    icon = "__EndgameExtension__/graphics/icons/ultimate-underground-belt.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "b[underground-belt]-cb[express-underground-belt]",
	    place_result = "ultimate-underground-belt",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "ultimate-splitter",
	    icon = "__EndgameExtension__/graphics/icons/ultimate-splitter.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "c[splitter]-cb[express-splitter]",
	    place_result = "ultimate-splitter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "ultimate-stack-filter-inserter",
	    icon = "__EndgameExtension__/graphics/icons/ultimate-stack-filter-inserter.png",
	    icon_size = 32,
	    subgroup = "inserter",
	    order = "gb[stack-filter-inserter]",
	    place_result = "ultimate-stack-filter-inserter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "ultimate-inserter",
	    icon = "__EndgameExtension__/graphics/icons/ultimate-inserter.png",
	    icon_size = 32,
	    subgroup = "inserter",
	    order = "da[fast-inserter]",
	    place_result = "ultimate-inserter",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "ultimate-loader",
	    icon = "__base__/graphics/icons/express-loader.png",
	    icon_size = 32,
	    subgroup = "belt",
	    order = "d[loader]-cb[high-speed-loader]",
	    place_result = "ultimate-loader",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "cooling-plant",
	    icon = "__EndgameExtension__/graphics/icons/cooling-plant.png",
	    icon_size = 32,
	    subgroup = "production-machine",
	    order = "ed[chemical-plant]",
	    place_result = "cooling-plant",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "deep-space-satellite",
	    icon = "__EndgameExtension__/graphics/icons/deep-space-satellite.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "ma[satellite]",
	    stack_size = 1,
  	},
  	{
	    type = "item",
	    name = "advanced-rocket-part",
	    icon = "__base__/graphics/icons/rocket-part.png",
	    icon_size = 32,
	    flags = {"hidden"},
	    subgroup = "intermediate-product",
	    order = "qa[rocket-part]",
	    stack_size = 5
  	},
  	{
	    type = "item",
	    name = "advanced-rocket-control-unit",
	    icon = "__base__/graphics/icons/rocket-control-unit.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "na[rocket-control-unit]",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "enriched-rocket-fuel",
	    icon = "__base__/graphics/icons/rocket-fuel.png",
	    icon_size = 32,
	    fuel_category = "chemical",
	    fuel_value = "10GJ",
	    fuel_acceleration_multiplier = 4,
	    fuel_top_speed_multiplier = 1.9,
	    subgroup = "intermediate-product",
	    order = "qa[uranium-rocket-fuel]",
	    stack_size = 10
  	},
  	{
	    type = "item",
	    name = "advanced-rocket-silo",
	    icon = "__base__/graphics/icons/rocket-silo.png",
	    icon_size = 32,
	    subgroup = "defensive-structure",
	    order = "ec[rocket-silo]",
	    place_result = "advanced-rocket-silo",
	    stack_size = 1
  	},
  	{
	    type = "item",
	    name = "productivity-satellite",
	    icon = "__EndgameExtension__/graphics/icons/deep-space-satellite.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "mb[satellite]",
	    stack_size = 1,
  	},
  	{
	    type = "item-with-entity-data",
	    name = "cargo-wagon-2",
	    icon = "__base__/graphics/icons/cargo-wagon.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-ga[cargo-wagon]",
	    place_result = "cargo-wagon-2",
	    stack_size = 5
  	},
  	{
	    type = "item-with-entity-data",
	    name = "fluid-wagon-2",
	    icon = "__base__/graphics/icons/fluid-wagon.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-ha[fluid-wagon]",
	    place_result = "fluid-wagon-2",
	    stack_size = 5
  	},
  	{
	    type = "item-with-entity-data",
	    name = "locomotive-2",
	    icon = "__base__/graphics/icons/diesel-locomotive.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-fa[diesel-locomotive]",
	    place_result = "locomotive-2",
	    stack_size = 5
  	},
  	{
	    type = "item-with-entity-data",
	    name = "cargo-wagon-3",
	    icon = "__base__/graphics/icons/cargo-wagon.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-gb[cargo-wagon]",
	    place_result = "cargo-wagon-3",
	    stack_size = 5
  	},
  	{
	    type = "item-with-entity-data",
	    name = "fluid-wagon-3",
	    icon = "__base__/graphics/icons/fluid-wagon.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-hb[fluid-wagon]",
	    place_result = "fluid-wagon-3",
	    stack_size = 5
  	},
  	{
	    type = "item-with-entity-data",
	    name = "locomotive-3",
	    icon = "__base__/graphics/icons/diesel-locomotive.png",
	    icon_size = 32,
	    subgroup = "transport",
	    order = "a[train-system]-fb[diesel-locomotive]",
	    place_result = "locomotive-3",
	    stack_size = 5
  	},
  	{
	    type = "item",
	    name = "coltan-ore",
	    icon = "__EndgameExtension__/graphics/icons/coltan-ore.png",
	    icon_size = 32,
	    subgroup = "raw-resource",
	    order = "gc[bauxite-ore]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "pure-tantalum",
	    icon = "__EndgameExtension__/graphics/icons/tantalum.png",
	    icon_size = 32,
	    subgroup = "coltan-processing",
	    order = "a",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "tantalum-ore",
	    icon = "__EndgameExtension__/graphics/icons/tantalum-ore.png",
	    icon_size = 32,
	    subgroup = "coltan-processing",
	    order = "b",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "powdered-tantalum",
	    icon = "__EndgameExtension__/graphics/icons/tantalum-powder.png",
	    icon_size = 32,
	    subgroup = "coltan-processing",
	    order = "c",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "tantalum-cable",
	    icon = "__EndgameExtension__/graphics/icons/tantalum-cable.png",
	    icon_size = 32,
	    subgroup = "coltan-processing",
	    order = "d",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "gold-cable",
	    icon = "__EndgameExtension__/graphics/icons/gold-cable.png",
	    icon_size = 32,
	    subgroup = "raw-resource",
	    order = "e",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "tantalum-capacitor",
	    icon = "__EndgameExtension__/graphics/icons/tantalum-capacitor.png",
	    icon_size = 32,
		subgroup = "intermediate-product",
		order = "hda[advanced-circuit]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "big-electric-pole-2",
	    icon = "__base__/graphics/icons/big-electric-pole.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-ca[big-electric-pole]",
	    place_result = "big-electric-pole-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-pole-2",
	    icon = "__base__/graphics/icons/medium-electric-pole.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-ba[medium-electric-pole]",
	    place_result = "electric-pole-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "big-electric-pole-3",
	    icon = "__base__/graphics/icons/big-electric-pole.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-cb[big-electric-pole]",
	    place_result = "big-electric-pole-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "electric-pole-3",
	    icon = "__base__/graphics/icons/medium-electric-pole.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-bb[medium-electric-pole]",
	    place_result = "electric-pole-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "substation-2",
	    icon = "__base__/graphics/icons/substation.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-da[substation]",
	    place_result = "substation-2",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "substation-3",
	    icon = "__base__/graphics/icons/substation.png",
	    icon_size = 32,
	    subgroup = "energy-pipe-distribution",
	    order = "a[energy]-dd[substation]",
	    place_result = "substation-3",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "flying-robot-frame-4",
	    icon = "__EndgameExtension__/graphics/icons/flying-robot-frame-2.png",
	    icon_size = 32,
	    subgroup = "intermediate-product",
	    order = "lc[flying-robot-frame-2]",
	    stack_size = 50
  	},
  	{
	    type = "item",
	    name = "construction-robot-4",
	    icon = "__EndgameExtension__/graphics/icons/construction-robot-4.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-bc[construction-robot]",
	    place_result = "construction-robot-4",
	    stack_size = 50
	},
	{
	    type = "item",
	    name = "logistic-robot-4",
	    icon = "__EndgameExtension__/graphics/icons/logistic-robot-4.png",
	    icon_size = 32,
	    subgroup = "logistic-network",
	    order = "a[robot]-ac[logistic-robot]",
	    place_result = "logistic-robot-4",
	    stack_size = 50
  	},
  	{
    type = "item",
    name = "refinery-2",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "d[refinery]",
    place_result = "refinery-2",
    stack_size = 10
  	},
  	{
    type = "item",
    name = "refinery-3",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "d[refinery-2]",
    place_result = "refinery-3",
    stack_size = 10
  	},
  	{
    type = "item",
    name = "centrifuge-2",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "d[centrifuge]",
    place_result = "centrifuge-2",
    stack_size = 10
  	},
  	{
    type = "item",
    name = "centrifuge-3",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "d[centrifuge-2]",
    place_result = "centrifuge-3",
    stack_size = 10
  	},
  	{
    type = "item",
    name = "pumpjack-2",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 32,
    subgroup = "mining-drill",
    order = "d[pumpjack]",
    place_result = "pumpjack-2",
    stack_size = 10
  	},
  	{
    type = "item",
    name = "pumpjack-3",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 32,
    subgroup = "mining-drill",
    order = "d[pumpjack-2]",
    place_result = "pumpjack-3",
    stack_size = 10
  	},
  	


  	
})
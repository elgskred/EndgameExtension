
data:extend({
	{
	    type = "recipe",
	    name = "salt",
	    category = "chemistry",
	    energy_required = 1,
	    enabled = false,
	    ingredients =
	    {
	      {type="fluid", name="water", amount=20}
	    },
	    results=
	    {
	      {type="item", name="salt", amount=2}
	    },
	    crafting_machine_tint =
	    {
	      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
	      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
	      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
	    },
	    subgroup = "aluminum-processing",
	    order = "a"
  	},
  	{
  		type = "recipe",
  		name = "sodium-hydroxide",
  		category = "chemistry",
  		energy_required = 1,
  		enabled = false,
  		ingredients =
  		{
  			{type="fluid", name="water", amount=30},
  			{type="item", name="salt", amount=1}
  		},
  		results=
  		{
  			--{type="fluid", name="hydrochloric-acid", amount=30},
  			{type="fluid", name="sodium-hydroxide", amount=30}
  		},
  		crafting_machine_tint =
	    {
	      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
	      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
	      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
	    },
	    icon = "__EndgameExtension__/graphics/icons/sodium-hydroxide.png",
	    icon_size = 32,
    	subgroup = "aluminum-processing",
    	order = "m[fluid-chemistry]-b[salt]"
  	},
  	{
  		type = "recipe",
  		name = "alumina",
  		category = "chemistry",
  		energy_required = 1,
  		enabled = false,
  		ingredients = {
  			{type="item", name="bauxite-ore", amount=4},
  			{type="fluid", name="sodium-hydroxide", amount=100}
  		},
  		results={
  			{type="item", name="alumina", amount=2}
  		},
  		icon = "__EndgameExtension__/graphics/icons/alumina.png",
  		icon_size = 32,
    	subgroup = "aluminum-processing",
    	order = "m[fluid-chemistry]-c[salt]"
  	},
  	{
		type = "recipe",
		name = "cryolite",
		category = "centrifuging",
		enabled = false,
		energy_required = 5,
		ingredients = 
		{
			{"stone", 5}
		},
		result = "cryolite",
		subgroup = "aluminum-processing",
    	order = "m[fluid-chemistry]-d[salt]",
	},
	{
		type = "recipe",
		name = "molten-cryolite",
		category = "chemistry",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type="item", name="cryolite", amount=10}
		},
		results = {
			{type="fluid", name="molten-cryolite", amount=100}
		},
		icon = "__EndgameExtension__/graphics/icons/molten-cryolite.png",
		icon_size = 32,
		subgroup = "aluminum-processing",
		order = "m[fluid-chemistry]-e[salt]" 
	},
	{
		type = "recipe",
		name = "aluminum-plate",
		category = "chemistry",
		energy_required = 5,
		enabled = false,
		ingredients = {
			{type="item", name="alumina", amount=2},
			{type="fluid", name="molten-cryolite", amount=25}
		},
		results = {
			{type="item", name="aluminum-plate", amount=1}
		},
		icon = "__EndgameExtension__/graphics/icons/aluminum-plate.png",
		icon_size = 32,
		subgroup = "raw-material",
		order = "c" 
	},
	{
		type = "recipe",
		name = "aluminum-battery",
		category = "chemistry",
		energy_required = 25,
		enabled = false,
		ingredients = {
			{type="item", name="aluminum-plate", amount=1},
			{type="fluid", name="sulfuric-acid", amount=20},
			{type="item", name="iron-plate", amount=1}
		},
		results = {
			{type="item", name="aluminum-battery", amount=1}
		},
	},
	{
    	type = "recipe",
    	name = "multi-layered-pcb",
    	category = "crafting-with-fluid",
  		enabled = false,
  		energy_required = 10,
  		ingredients =
  		{
			{"processing-unit", 2},
			{"aluminum-plate", 4},
			{type = "fluid", name = "sulfuric-acid", amount = 20}
  		},
      	result = "multi-layered-pcb"
    },
    {
		type = "recipe",
		name = "multi-layered-electronic-circuit",
		enabled = false,
		energy_required = 3,
		ingredients = 
		{
			{"multi-layered-pcb", 1},
			{"copper-cable", 3}
		},
		result = "multi-layered-electronic-circuit"
	},
	{
		type = "recipe",
		name = "flying-robot-frame-2",
		enabled = false,
		energy_required = 30,
		ingredients = 
		{
			{"multi-layered-electronic-circuit", 3},
			{"electric-engine-unit", 1},
			{"aluminum-battery", 2},
			{"plastic-bar", 10}
		},
		result = "flying-robot-frame-2"
	},
	{
		type = "recipe",
		name = "construction-robot-2",
		enabled = false,
		ingredients = 
		{
			{"multi-layered-electronic-circuit", 2},
			{"flying-robot-frame-2", 1}
		},
		result = "construction-robot-2"
	},
	{
		type = "recipe",
		name = "logistic-robot-2",
		enabled = false,
		ingredients = 
		{
			{"multi-layered-electronic-circuit", 2},
			{"flying-robot-frame-2", 1}
		},
		result = "logistic-robot-2"
	},
	{
		type = "recipe",
		name = "advanced-automation-science-pack",
		enabled = false,
		energy_required = 42,
		ingredients = 
		{
			{"multi-layered-electronic-circuit", 5},
			{"assembling-machine-3", 1}
		},
		result = "advanced-automation-science-pack",
		result_count = 3,
	},
	{
		type = "recipe",
		name = "lab-mk2",
		enabled = false,
		ingredients = 
		{
			{"lab", 1},
			{"speed-module-3", 1},
			{"steel-plate", 5},
			{"processing-unit", 5}
		},
		result = "lab-mk2"
	},
	{
		type = "recipe",
		name = "lab-mk3",
		enabled = false,
		ingredients = 
		{
			{"lab-mk2", 1},
			{"speed-module-5", 1},
			{"superconducted-electronics", 5}
		},
		result = "lab-mk3"
	},
	{
	    type = "recipe",
	    name = "speed-module-4",
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-3", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"processing-unit", 5}
	    },
	    energy_required = 120,
	    result = "speed-module-4"
  	},
  	{
	    type = "recipe",
	    name = "productivity-module-4",
	    enabled = false,
	    ingredients =
	    {
	      {"productivity-module-3", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"processing-unit", 5}
	    },
	    energy_required = 120,
	    result = "productivity-module-4"
  	},
  	{
	    type = "recipe",
	    name = "effectivity-module-4",
	    enabled = false,
	    ingredients =
	    {
	      {"effectivity-module-3", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"processing-unit", 5}
	    },
	    energy_required = 120,
	    result = "effectivity-module-4"
  	},
  	{
	    type = "recipe",
	    name = "speed-module-5",
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-4", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "speed-module-5"
  	},
  	{
	    type = "recipe",
	    name = "productivity-module-5",
	    enabled = false,
	    ingredients =
	    {
	      {"productivity-module-4", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "productivity-module-5"
  	},
  	{
	    type = "recipe",
	    name = "effectivity-module-5",
	    enabled = false,
	    ingredients =
	    {
	      {"effectivity-module-4", 5},
	      {"multi-layered-electronic-circuit", 1},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "effectivity-module-5"
  	},
  	{
	    type = "recipe",
	    name = "speed-module-6",
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-5", 5},
	      {"superconducted-electronics", 5},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "speed-module-6"
  	},
  	{
	    type = "recipe",
	    name = "productivity-module-6",
	    enabled = false,
	    ingredients =
	    {
	      {"productivity-module-5", 5},
	      {"superconducted-electronics", 5},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "productivity-module-6"
  	},
  	{
	    type = "recipe",
	    name = "effectivity-module-6",
	    enabled = false,
	    ingredients =
	    {
	      {"effectivity-module-5", 5},
	      {"superconducted-electronics", 5},
	      {"cpu", 5}
	    },
	    energy_required = 120,
	    result = "effectivity-module-6"
  	},
  	{
	    type = "recipe",
	    name = "speed-module-7",
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-6", 5},
	      {"superconducted-electronics", 5},
	      {"advanced-rocket-structure", 5}
	    },
	    energy_required = 120,
	    result = "speed-module-7"
  	},
  	{
	    type = "recipe",
	    name = "productivity-module-7",
	    enabled = false,
	    ingredients =
	    {
	      {"productivity-module-6", 5},
	      {"superconducted-electronics", 5},
	      {"advanced-rocket-structure", 5}
	    },
	    energy_required = 120,
	    result = "productivity-module-7"
  	},
  	{
	    type = "recipe",
	    name = "effectivity-module-7",
	    enabled = false,
	    ingredients =
	    {
	      {"effectivity-module-6", 5},
	      {"superconducted-electronics", 5},
	      {"advanced-rocket-structure", 5}
	    },
	    energy_required = 120,
	    result = "effectivity-module-7"
  	},
  	{
	    type = "recipe",
	    name = "roboport-2",
	    enabled = false,
	    energy_required = 5,
	    ingredients =
	    {
	      {"aluminum-plate", 50},
	      {"iron-gear-wheel", 50},
	      {"multi-layered-electronic-circuit", 50}
	    },
	    result = "roboport-2"
  	},
  	{
	    type = "recipe",
	    name = "roboport-3",
	    enabled = false,
	    energy_required = 5,
	    ingredients =
	    {
	      {"gold-plate", 50},
	      {"titanium-gear-wheel", 50},
	      {"superconducted-electronics", 50}
	    },
	    result = "roboport-3"
  	},
  	{
	    type = "recipe",
	    name = "high-speed-transport-belt",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 1,
	    ingredients =
	    {
	      {"express-transport-belt", 1},
	      {"iron-gear-wheel", 10},
	      {type="fluid", name="lubricant", amount=20}
	    },
	    result = "high-speed-transport-belt"
  	},
  	{
	    type = "recipe",
	    name = "high-speed-underground-belt",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 2,
	    ingredients =
	    {
	      {"express-underground-belt", 2},
	      {"iron-gear-wheel", 80},
	      {type="fluid", name="lubricant", amount=40}
	    },
	    result_count = 2,
	    result = "high-speed-underground-belt"
  	},
  	{
	    type = "recipe",
	    name = "high-speed-splitter",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 5,
	    ingredients =
	    {
	      {"express-splitter", 1},
	      {"iron-gear-wheel", 80},
	      {type="fluid", name="lubricant", amount=80},
	      {"multi-layered-electronic-circuit", 5}
	    },
	    result = "high-speed-splitter"
  	},
  	{
	    type = "recipe",
	    name = "high-speed-loader",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"high-speed-transport-belt", 5},
	      {"express-loader", 1}
	    },
	    result = "high-speed-loader"
  	},
  	{
	    type = "recipe",
	    name = "chemical-plant-2",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"chemical-plant", 1},
	      {"multi-layered-electronic-circuit", 5},
	      {"iron-gear-wheel", 50},
	      {"aluminum-pipe", 5}
	    },
	    result = "chemical-plant-2"
  	},
  	{
	    type = "recipe",
	    name = "chemical-plant-3",
	    enabled = false,
	    energy_required = 15,
	    ingredients =
	    {
	      {"chemical-plant-2", 1},
	      {"cpu", 5},
	      {"titanium-gear-wheel", 50},
	      {"titanium-pipe", 5}
	    },
	    result = "chemical-plant-3"
  	},
  	{
	    type = "recipe",
	    name = "aluminum-pipe",
	    enabled = false,
	    energy_required = 2,
	    ingredients =
	    {
	      {"aluminum-plate", 1},
	    },
	    result = "aluminum-pipe"
  	},
  	{
	    type = "recipe",
	    name = "aluminum-pipe-to-ground",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"aluminum-pipe", 10},
	      {"aluminum-plate", 2},
	    },
	    result = "aluminum-pipe-to-ground"
  	},
  	{
	    type = "recipe",
	    name = "electric-mining-drill-2",
	    enabled = false,
	    energy_required = 5,
	    ingredients =
	    {
	      {"steel-plate", 10},
	      {"iron-gear-wheel", 5},
	      {"advanced-circuit", 5},
	      {"electric-mining-drill", 1}
	    },
	    result = "electric-mining-drill-2"
  	},
  	{
	    type = "recipe",
	    name = "electric-mining-drill-3",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"aluminum-plate", 10},
	      {"iron-gear-wheel", 5},
	      {"multi-layered-electronic-circuit", 5},
	      {"electric-mining-drill-2", 1}
	    },
	    result = "electric-mining-drill-3"
  	},
  	{
	    type = "recipe",
	    name = "electric-mining-drill-4",
	    enabled = false,
	    energy_required = 15,
	    ingredients =
	    {
	      {"titanium-plate", 10},
	      {"titanium-gear-wheel", 5},
	      {"cpu", 5},
	      {"electric-mining-drill-3", 1}
	    },
	    result = "electric-mining-drill-4"
  	},
  	{
	    type = "recipe",
	    name = "electric-mining-drill-5",
	    enabled = false,
	    energy_required = 20,
	    ingredients =
	    {
	      {"gold-plate", 10},
	      {"speed-module-5", 5},
	      {"superconducted-electronics", 5},
	      {"electric-mining-drill-4", 1}
	    },
	    result = "electric-mining-drill-5"
  	},
  	{
	    type = "recipe",
	    name = "beacon-2",
	    enabled = false,
	    energy_required = 20,
	    ingredients =
	    {
	      {"multi-layered-electronic-circuit", 20},
	      {"processing-unit", 20},
	      {"aluminum-plate", 10},
	      {"copper-cable", 10}
	    },
	    result = "beacon-2"
  	},
  	{
	    type = "recipe",
	    name = "beacon-3",
	    enabled = false,
	    energy_required = 25,
	    ingredients =
	    {
	      {"superconducted-electronics", 20},
	      {"cpu", 20},
	      {"aluminum-plate", 10},
	      {"titanium-plate", 10}
	    },
	    result = "beacon-3"
  	},
  	{
  		type = "recipe",
  		name = "titanium-tetrachloride",
  		category = "chemistry",
  		energy_required = 1,
  		enabled = false,
  		ingredients =
  		{
  			{type="item", name="rutile-ore", amount=4},
  			{type="item", name="carbon", amount=4}
  		},
  		results=
  		{
  			{type="fluid", name="titanium-tetrachloride", amount=40}
  		},
  		crafting_machine_tint =
	    {
	      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
	      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
	      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
	    },
	    icon = "__EndgameExtension__/graphics/icons/titanium-tetrachloride.png",
	    icon_size = 32,
    	subgroup = "rutile-processing",
    	order = "b"
  	},
  	{
  		type = "recipe",
  		name = "purified-titanium-tetrachloride",
  		category = "chemistry",
  		energy_required = 1,
  		enabled = false,
  		ingredients =
  		{
  			{type="fluid", name="titanium-tetrachloride", amount=80},

  		},
  		results=
  		{
  			{type="fluid", name="purified-titanium-tetrachloride", amount=40},
  			{type="item", name="iron-ore", amount=1},
  			--{type="item", name="silicon", amount=1},
  			{type="item", name="magnesium", amount=2}
  		},
  		crafting_machine_tint =
	    {
	      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
	      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
	      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
	    },
	    icon = "__EndgameExtension__/graphics/icons/purified-titanium-tetrachloride.png",
	    icon_size = 32,
    	subgroup = "rutile-processing",
    	order = "c"
  	},
  	{
	    type = "recipe",
	    name = "titanium-sponge",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 5,
	    ingredients =
	    {
	      {type="fluid", name="purified-titanium-tetrachloride", amount=20},
	      {"magnesium", 1}
	    },
	    result = "titanium-sponge"
  	},
  	{
	    type = "recipe",
	    name = "carbon",
	    category = "smelting",
	    energy_required = 5,
	    enabled = false,
	    ingredients = {{"coal", 2}},
	    result = "carbon"
  	},
  	{
	    type = "recipe",
	    name = "titanium-plate",
	    category = "chemistry",
	    enabled = false,
	    energy_required = 5,
	    ingredients =
	    {
	      {"titanium-sponge", 2},
	      {"aluminum-plate", 2},
	      {"iron-plate", 2}
	    },
	    result_count = 3,
	    result = "titanium-plate"
  	},
  	{
	    type = "recipe",
	    name = "titanium-gear-wheel",
	    enabled = false,
	    energy_required = 2,
	    ingredients =
	    {
	      {"titanium-plate", 2},
	    },
	    result = "titanium-gear-wheel"
  	},
  	{
	    type = "recipe",
	    name = "compressed-science-pack",
	    enabled = false,
	    energy_required = 2,
	    ingredients =
	    {
	      	{"automation-science-pack", 1},
	        {"logistic-science-pack", 1},
	        {"chemical-science-pack", 1},
	        {"production-science-pack", 1},
	        {"utility-science-pack", 1},
	        {"space-science-pack", 1},
	    },
	    result = "compressed-science-pack"
  	},
  	{
	    type = "recipe",
	    name = "electric-furnace-2",
	    ingredients = {{"aluminum-plate", 10}, {"multi-layered-electronic-circuit", 5}, {"steel-plate", 10}, {"electric-furnace", 1}},
	    result = "electric-furnace-2",
	    energy_required = 10,
	    enabled = false
  	},
  	{
	    type = "recipe",
	    name = "electric-furnace-3",
	    ingredients = {{"titanium-plate", 10}, {"superconducted-electronics", 5}, {"electric-furnace-2", 1}, {"speed-module-5", 1}},
	    result = "electric-furnace-3",
	    energy_required = 15,
	    enabled = false
  	},
  	{
	    type = "recipe",
	    name = "cpu",
	    ingredients = 
	    {
	    	{"titanium-plate", 1}, 
	    	{"multi-layered-electronic-circuit", 1}, 
	    	{"processing-unit", 5}
	    },
	    result = "cpu",
	    energy_required = 10,
	    enabled = false
  	},
  	{
		type = "recipe",
		name = "titanium-battery",
		category = "chemistry",
		energy_required = 25,
		enabled = false,
		ingredients = {
			{type="item", name="aluminum-battery", amount=1},
			{type="item", name="titanium-plate", amount=2},
			{type="fluid", name="sulfuric-acid", amount=20},
		},
		results = {
			{type="item", name="titanium-battery", amount=1}
		},
	},
	{
	    type = "recipe",
	    name = "assembling-machine-4",
	    energy_required = 25,
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-4", 4},
	      {"assembling-machine-3", 2}
	    },
	    result = "assembling-machine-4"
  	},
  	{
	    type = "recipe",
	    name = "assembling-machine-5",
	    energy_required = 30,
	    enabled = false,
	    ingredients =
	    {
	      {"speed-module-7", 3},
	      {"assembling-machine-4", 2},
	      {"productivity-module-7", 3}
	    },
	    result = "assembling-machine-5"
  	},
  	{
		type = "recipe",
		name = "flying-robot-frame-3",
		enabled = false,
		energy_required = 30,
		ingredients = 
		{
			{"cpu", 3},
			{"electric-engine-unit", 1},
			{"titanium-battery", 2},
			{"plastic-bar", 10}
		},
		result = "flying-robot-frame-3"
	},
	{
		type = "recipe",
		name = "construction-robot-3",
		enabled = false,
		ingredients = 
		{
			{"cpu", 2},
			{"flying-robot-frame-3", 1}
		},
		result = "construction-robot-3"
	},
	{
		type = "recipe",
		name = "logistic-robot-3",
		enabled = false,
		ingredients = 
		{
			{"cpu", 2},
			{"flying-robot-frame-3", 1}
		},
		result = "logistic-robot-3"
	},
	{
	    type = "recipe",
	    name = "rocket-silo-2",
	    enabled = false,
	    ingredients =
	    {
	      {"titanium-plate", 1000},
	      {"concrete", 1000},
	      {"titanium-pipe", 100},
	      {"cpu", 200},
	      {"electric-engine-unit", 200}
	    },
	    energy_required = 60,
	    result = "rocket-silo-2",
	    requester_paste_multiplier = 1
  	},
  	{
	    type = "recipe",
	    name = "rocket-silo-3",
	    enabled = false,
	    ingredients =
	    {
	      {"titanium-plate", 1000},
	      {"concrete", 1000},
	      {"titanium-pipe", 100},
	      {"superconducted-electronics", 200},
	      {"electric-engine-unit", 200},
	      {"solar-panel-4", 10}
	    },
	    energy_required = 120,
	    result = "rocket-silo-3",
	    requester_paste_multiplier = 1
  	},
  	{
	    type = "recipe",
	    name = "titanium-pipe",
	    enabled = false,
	    energy_required = 2,
	    ingredients =
	    {
	      {"titanium-plate", 1},
	    },
	    result = "titanium-pipe"
  	},
  	{
	    type = "recipe",
	    name = "titanium-pipe-to-ground",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"titanium-pipe", 10},
	      {"titanium-plate", 2},
	    },
	    result = "titanium-pipe-to-ground"
  	},
  	{
		type = "recipe",
		name = "advanced-logistic-science-pack",
		enabled = false,
		energy_required = 42,
		ingredients = 
		{
			{"high-speed-stack-filter-inserter", 5},
			{"multi-layered-electronic-circuit", 1},
			{"flying-robot-frame-2", 1}
		},
		result = "advanced-logistic-science-pack",
		result_count = 3,
	},
	{
	    type = "recipe",
	    name = "high-speed-stack-filter-inserter",
	    enabled = false,
	    ingredients =
	    {
	      {"fast-inserter", 1},
	      {"multi-layered-electronic-circuit", 5},
	      {"aluminum-plate", 10}
	    },
	    result = "high-speed-stack-filter-inserter"
  	},
  	{
	    type = "recipe",
	    name = "high-speed-long-handed-inserter",
	    enabled = false,
	    ingredients =
	    {
	      {"iron-gear-wheel", 1},
	      {"aluminum-plate", 1},
	      {"long-handed-inserter", 10}
	    },
	    result = "high-speed-long-handed-inserter"
  	},
  	{
	    type = "recipe",
	    name = "gold-plate",
	    category = "smelting",
	    energy_required = 5,
	    enabled = false,
	    ingredients = {{"gold-ore", 2}},
	    result = "gold-plate"
  	},
  	{
		type = "recipe",
		name = "advanced-chemical-science-pack",
		enabled = false,
		energy_required = 58,
		ingredients = 
		{
			{"cpu", 5},
			{"chemical-plant-2", 1},
			{"nuclear-fuel", 10}
		},
		result = "advanced-chemical-science-pack",
		result_count = 3,
	},
	{
		type = "recipe",
		name = "advanced-utility-science-pack",
		enabled = false,
		energy_required = 64,
		ingredients = 
		{
			{"superconducted-electronics", 5},
			{"effectivity-module-6", 5},
			{"lab-mk3", 1}
		},
		result = "advanced-utility-science-pack",
		result_count = 3,
	},
	{
		type = "recipe",
		name = "advanced-production-science-pack",
		enabled = false,
		energy_required = 76,
		ingredients = 
		{
			{"electric-mining-drill-5", 5},
			{"productivity-module-6", 5},
			{"electric-furnace-3", 1}
		},
		result = "advanced-production-science-pack",
		result_count = 3,
	},
	{
		type = "recipe",
		name = "cryogenic-plant",
		enabled = false,
		energy_required = 10,
		ingredients = 
		{
			{"cpu", 5},
			{"chemical-plant-3", 1},
			{"gold-plate", 10},
			{"titanium-plate", 50}
		},
		result = "cryogenic-plant",
	},
	{
	    type = "recipe",
	    name = "liquid-nitrogen",
	    category = "cryogenics",
	    energy_required = 10,
	    enabled = false,
	    ingredients = {
	    	{type="fluid", name="water", amount=100}
	    },
	    results = {
	    	{type="fluid", name="liquid-nitrogen", amount=60}
	    }
  	},
  	{
	    type = "recipe",
	    name = "superconducted-electronics",
	    category = "cryogenics",
	    energy_required = 10,
	    enabled = false,
	    ingredients = {
	    	{type="fluid", name="liquid-nitrogen", amount=20},
	    	{type="item", name="cpu", amount=2},
	    	{type="item", name="gold-cable", amount=2},
	    	{type="item", name="tantalum-capacitor", amount=10}

	    },
	    result = "superconducted-electronics"
  	},
  	{
	    type = "recipe",
	    name = "solar-panel-2",
	    energy_required = 15,
	    enabled = false,
	    ingredients =
	    {
	      {"solar-panel", 4},
	      {"multi-layered-electronic-circuit", 15},
	      {"aluminum-plate", 5}
	    },
	    result = "solar-panel-2"
  	},
  	{
	    type = "recipe",
	    name = "solar-panel-3",
	    energy_required = 20,
	    enabled = false,
	    ingredients =
	    {
	      {"solar-panel-2", 4},
	      {"cpu", 15},
	      {"titanium-plate", 5}
	    },
	    result = "solar-panel-3"
  	},
  	{
	    type = "recipe",
	    name = "solar-panel-4",
	    energy_required = 25,
	    enabled = false,
	    ingredients =
	    {
	      {"solar-panel-3", 4},
	      {"superconducted-electronics", 15},
	      {"gold-plate", 5}
	    },
	    result = "solar-panel-4"
  	},
  	{
	    type = "recipe",
	    name = "solar-panel-5",
	    energy_required = 30,
	    enabled = false,
	    ingredients =
	    {
	      {"solar-panel-4", 4},
	      {"superconducted-electronics", 15},
	      {"low-density-structure", 5}
	    },
	    result = "solar-panel-5"
  	},
  	{
	    type = "recipe",
	    name = "steam-turbine-2",
	    energy_required = 30,
	    enabled = false,
	    ingredients = {{"iron-gear-wheel", 50}, {"aluminum-plate", 50}, {"steam-turbine", 5}},
	    result = "steam-turbine-2"
  	},
  	{
	    type = "recipe",
	    name = "heat-exchanger-2",
	    energy_required = 30,
	    enabled = false,
	    ingredients = {{"steel-plate", 10}, {"aluminum-plate", 100}, {"heat-exchanger", 5}},
	    result = "heat-exchanger-2"
  	},
  	{
	    type = "recipe",
	    name = "steam-turbine-3",
	    energy_required = 30,
	    enabled = false,
	    ingredients = {{"titanium-gear-wheel", 50}, {"aluminum-plate", 50}, {"steam-turbine-2", 5}},
	    result = "steam-turbine-3"
  	},
  	{
	    type = "recipe",
	    name = "heat-exchanger-3",
	    energy_required = 30,
	    enabled = false,
	    ingredients = {{"titanium-plate", 10}, {"aluminum-plate", 100}, {"heat-exchanger-2", 5}},
	    result = "heat-exchanger-3"
  	},
  	{
	    type = "recipe",
	    name = "dense-steam-turbine",
	    enabled = false,
	    energy_required = 30,
	    ingredients = {{"titanium-gear-wheel", 50}, {"aluminum-plate", 50}, {"steam-turbine-3", 5}, {"superconducted-electronics", 10}},
	    result = "dense-steam-turbine"
  	},
  	{
	    type = "recipe",
	    name = "mineral-heat-exchanger",
	    energy_required = 30,
	    enabled = false,
	    ingredients = {{"titanium-plate", 10}, {"aluminum-plate", 100}, {"heat-exchanger-3", 5}, {"superconducted-electronics", 10}},
	    result = "mineral-heat-exchanger"
  	},
  	{
	    type = "recipe",
	    name = "productivity-beacon",
	    enabled = false,
	    energy_required = 60,
	    ingredients =
	    {
	      {"superconducted-electronics", 50},
	      {"productivity-module-7", 20},
	      {"aluminum-plate", 10},
	      {"titanium-plate", 10}
	    },
	    result = "productivity-beacon"
  	},
  	{
	    type = "recipe",
	    name = "advanced-rocket-structure",
	    category = "crafting",
	    normal =
	    {
	      energy_required = 20,
	      enabled = false,
	      ingredients =
	      {
	        {"titanium-plate", 20},
	        {"low-density-structure", 5},
	        {"plastic-bar", 5}
	      },
	      result= "advanced-rocket-structure"
	    },
  	},
  	{
	    type = "recipe",
	    name = "ultimate-transport-belt",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 1,
	    ingredients =
	    {
	      {"high-speed-transport-belt", 1},
	      {"titanium-gear-wheel", 10},
	      {type="fluid", name="lubricant", amount=20}
	    },
	    result = "ultimate-transport-belt"
  	},
  	{
	    type = "recipe",
	    name = "ultimate-underground-belt",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 2,
	    ingredients =
	    {
	      {"high-speed-underground-belt", 2},
	      {"titanium-gear-wheel", 80},
	      {type="fluid", name="lubricant", amount=40}
	    },
	    result_count = 2,
	    result = "ultimate-underground-belt"
  	},
  	{
	    type = "recipe",
	    name = "ultimate-splitter",
	    enabled = false,
	    category = "crafting-with-fluid",
	    energy_required = 5,
	    ingredients =
	    {
	      {"high-speed-splitter", 1},
	      {"titanium-gear-wheel", 80},
	      {"tantalum-cable", 10},
	      {type="fluid", name="lubricant", amount=80},
	      {"superconducted-electronics", 5}
	    },
	    result = "ultimate-splitter"
  	},
  	{
	    type = "recipe",
	    name = "ultimate-stack-filter-inserter",
	    enabled = false,
	    ingredients =
	    {
	      {"high-speed-stack-filter-inserter", 1},
	      {"superconducted-electronics", 5}
	    },
	    result = "ultimate-stack-filter-inserter"
  	},
  	{
	    type = "recipe",
	    name = "ultimate-inserter",
	    enabled = false,
	    ingredients =
	    {
	      {"superconducted-electronics", 2},
	      {"tantalum-cable", 10},
	      {"titanium-plate", 2},
	      {"high-speed-stack-filter-inserter", 1}
	    },
	    result = "ultimate-inserter"
  	},
  	{
	    type = "recipe",
	    name = "ultimate-loader",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"ultimate-transport-belt", 5},
	      {"high-speed-loader", 1}
	    },
	    result = "ultimate-loader"
  	},
  	{
  		type = "recipe",
  		name = "heavy-water",
  		energy_required = 2,
  		enabled = false,
  		category = "chemistry",
  		ingredients = {
  			{type="fluid", name="water", amount=100},
  		},
  		results={
  			{type="fluid", name="heavy-water", amount=90}
  		},
  		icon = "__EndgameExtension__/graphics/icons/heavy-water.png",
  		icon_size = 32,
  		subgroup = "power-production",
    	order = "m[fluid-chemistry]-c[salt]"
  	},
  	{
  		type = "recipe",
  		name = "carbonized-oil",
  		category = "chemistry",
  		energy_required = 2,
  		enabled = false,
  		subgroup = "power-production",
  		ingredients = {
  			{type="fluid", name="petroleum-gas", amount=40},
  			{type="item", name="carbon", amount=1}
  		},
  		results={
  			{type="fluid", name="carbonized-oil", amount=50}
  		},
  		icon = "__base__/graphics/icons/fluid/crude-oil.png",
  		icon_size = 64,
    	order = "m[fluid-chemistry]-c[salt]"
  	},
  	{
		type = "recipe",
		name = "cooling-plant",
		enabled = false,
		energy_required = 15,
		ingredients = 
		{
			{"superconducted-electronics", 5},
			{"cryogenic-plant", 1},
			{"gold-plate", 10},
			{"titanium-plate", 50}
		},
		result = "cooling-plant",
	},
	{
	    type = "recipe",
	    name = "dense-steam",
	    category = "cooling",
	    subgroup = "fluid-recipes",
	    enabled = false,
	    ingredients = {
	    	{type="fluid", name="heavy-water", amount=100},
	    	{type="fluid", name="molten-mineral-oil", amount=100}
	    },
	    results = {
	    	{type="fluid", name="dense-steam", amount=100},
	    	{type="fluid", name="mineral-oil", amount=90}
	    },
	    icon = "__base__/graphics/icons/fluid/steam.png",
	    icon_size = 64,
  	},
  	{
  		type = "recipe",
  		name = "mineral-oil",
  		category = "chemistry",
  		energy_required = 1,
  		enabled = false,
  		subgroup = "power-production",
  		ingredients = {
  			{type="fluid", name="carbonized-oil", amount=100},
  			{type="item", name="iron-ore", amount=2}
  		},
  		results={
  			{type="fluid", name="mineral-oil", amount=120}
  		},
  		icon = "__EndgameExtension__/graphics/icons/mineral-oil.png",
  		icon_size = 32,
    	order = "m[fluid-chemistry]-c[salt]"
  	},
  	{
	    type = "recipe",
	    name = "deep-space-satellite",
	    energy_required = 5,
	    enabled = false,
	    category = "crafting",
	    ingredients =
	    {
	      {"advanced-rocket-structure", 100},
	      {"solar-panel-5", 100},
	      {"accumulator", 100},
	      {"radar", 5},
	      {"superconducted-electronics", 100},
	      {"rocket-fuel", 50}
	    },
	    result= "deep-space-satellite",
	    requester_paste_multiplier = 1
  	},
  	{
	    type = "recipe",
	    name = "advanced-rocket-part",
	    energy_required = 10,
	    enabled = false,
	    hidden = true,
	    category = "rocket-building",
	    ingredients =
	    {
	      {"advanced-rocket-control-unit", 10},
	      {"advanced-rocket-structure", 10},
	      {"enriched-rocket-fuel", 10},
	      --{"iron-plate", 1}
	    },
	    result= "advanced-rocket-part"
  	},
  	{
	    type = "recipe",
	    name = "advanced-rocket-control-unit",
	    energy_required = 30,
	    enabled = false,
	    category = "crafting",
	    ingredients =
	    {
	      {"rocket-control-unit", 1},
	      {"superconducted-electronics", 1},
	      {"speed-module-7", 1},
	      {"tantalum-cable", 10}
	    },
	    result= "advanced-rocket-control-unit"
  	},
  	{
	    type = "recipe",
	    name = "enriched-rocket-fuel",
	    energy_required = 30,
	    enabled = false,
	    category = "crafting",
	    ingredients =
	    {
	      {"rocket-fuel", 1},
	      {"uranium-235", 1}
	    },
	    result= "enriched-rocket-fuel"
  	},
  	{
	    type = "recipe",
	    name = "advanced-rocket-silo",
	    enabled = false,
	    ingredients =
	    {
	      {"titanium-plate", 10000},
	      {"concrete", 10000},
	      {"titanium-pipe", 1000},
	      {"superconducted-electronics", 1000},
	      {"electric-engine-unit", 500},
	      {"solar-panel-5", 10}
	    },
	    energy_required = 120,
	    result = "advanced-rocket-silo",
	    requester_paste_multiplier = 1
  	},
  	{
	    type = "recipe",
	    name = "productivity-satellite",
	    energy_required = 5,
	    enabled = false,
	    category = "crafting",
	    ingredients =
	    {
	      {"advanced-rocket-structure", 100},
	      {"solar-panel-5", 100},
	      {"accumulator", 100},
	      {"radar", 5},
	      {"superconducted-electronics", 100},
	      {"rocket-fuel", 50},
	      {"productivity-module-7", 100},
	      {"tantalum-cable", 100}
	    },
	    result= "productivity-satellite",
	    requester_paste_multiplier = 1
  	},
  	{
	    type = "recipe",
	    name = "master-productivity-module",
	    enabled = false,
	    ingredients =
	    {
	      {"productivity-module-7", 10},
	      {"superconducted-electronics", 10},
	      {"advanced-rocket-structure", 10},
	      {"solar-panel-5", 10},
	      {"tantalum-cable", 10}
	    },
	    energy_required = 240,
	    result = "master-productivity-module"
  	},
  	{
	    type = "recipe",
	    name = "locomotive-2",
	    energy_required = 4,
	    enabled = false,
	    ingredients =
	    {
	      {"locomotive", 5},
	      {"cpu", 10},
	      {"titanium-plate", 30}
	    },
	    result = "locomotive-2"
  	},
  	{
	    type = "recipe",
	    name = "cargo-wagon-2",
	    energy_required = 1,
	    enabled = false,
	    ingredients =
	    {
	      {"cargo-wagon", 4},
	      {"aluminum-plate", 20},
	      {"titanium-plate", 20}
	    },
	    result = "cargo-wagon-2"
  	},
  	{
	    type = "recipe",
	    name = "fluid-wagon-2",
	    enabled = false,
	    energy_required = 1.5,
	    ingredients =
	    {
	      {"fluid-wagon", 4},
	      {"aluminum-plate", 16},
	      {"titanium-pipe", 8},
	      {"storage-tank", 1}
	    },
	    result = "fluid-wagon-2"
  	},
  	{
	    type = "recipe",
	    name = "locomotive-3",
	    energy_required = 4,
	    enabled = false,
	    ingredients =
	    {
	      {"locomotive-2", 5},
	      {"superconducted-electronics", 10},
	      {"titanium-plate", 30}
	    },
	    result = "locomotive-3"
  	},
  	{
	    type = "recipe",
	    name = "cargo-wagon-3",
	    energy_required = 1,
	    enabled = false,
	    ingredients =
	    {
	      {"cargo-wagon-2", 4},
	      {"aluminum-plate", 20},
	      {"titanium-plate", 20}
	    },
	    result = "cargo-wagon-3"
  	},
  	{
	    type = "recipe",
	    name = "fluid-wagon-3",
	    enabled = false,
	    energy_required = 1.5,
	    ingredients =
	    {
	      {"fluid-wagon-2", 4},
	      {"aluminum-plate", 16},
	      {"titanium-pipe", 8},
	      {"storage-tank", 1}
	    },
	    result = "fluid-wagon-3"
  	},
  	{
  		type = "recipe",
  		name = "tantalum",
  		category = "chemistry",
  		energy_required = 2.5,
  		enabled = false,
  		ingredients =
  		{
  			{type="fluid", name="sulfuric-acid", amount=30},
  			{type="item", name="coltan-ore", amount=1}
  		},
  		results=
  		{
  			{type="item", name="pure-tantalum", amount=1}
  		},
	    icon = "__EndgameExtension__/graphics/icons/tantalum.png",
	    icon_size = 32,
    	subgroup = "coltan-processing",
    	order = "a"
  	},
  	{
  		type = "recipe",
  		name = "tantalum-ore",
  		category = "chemistry",
  		energy_required = 5,
  		enabled = false,
  		ingredients =
  		{
  			{type="fluid", name="sodium-hydroxide", amount=30},
  			{type="item", name="pure-tantalum", amount=5}
  		},
  		results=
  		{
  			{type="item", name="tantalum-ore", amount=1}
  		},
	    icon = "__EndgameExtension__/graphics/icons/tantalum-ore.png",
	    icon_size = 32,
    	subgroup = "coltan-processing",
    	order = "a"
  	},
  	{
	    type = "recipe",
	    name = "tantalum-powder",
	    enabled = false,
	    energy_required = 10,
	    ingredients =
	    {
	      {"tantalum-ore", 5},
	    },
	    result = "powdered-tantalum"
  	},
  	{
	    type = "recipe",
	    name = "tantalum-cable",
	    enabled = false,
	    energy_required = 2,
	    ingredients =
	    {
	      {"powdered-tantalum", 5},
	      {"gold-cable", 1},
	    },
	    result = "tantalum-cable"
  	},
  	{
	    type = "recipe",
	    name = "gold-cable",
	    enabled = false,
	    energy_required = 1,
	    ingredients =
	    {
	      {"gold-plate", 3},
	    },
	    result = "gold-cable"
  	},
  	{
	    type = "recipe",
	    name = "tantalum-capacitor",
	    enabled = false,
	    energy_required = 5,
	    ingredients =
	    {
	      {"tantalum-cable", 3},
	      {"carbon", 5},
	      {"plastic-bar", 1},
	      {"titanium-battery", 1},
	    },
	    result = "tantalum-capacitor"
  	},
  	{
	    type = "recipe",
	    name = "big-electric-pole-2",
	    enabled = false,
	    ingredients =
	    {
	      {"big-electric-pole", 2},
	      {"aluminum-plate", 5},
	      {"copper-plate", 5}
	    },
	    result = "big-electric-pole-2"
  	},
  	{
	    type = "recipe",
	    name = "substation-2",
	    enabled = false,
	    ingredients =
	    {
	      {"substation", 4},
	      {"processing-unit", 5},
	      {"aluminum-plate", 5}
	    },
	    result = "substation-2"
  	},
  	{
	    type = "recipe",
	    name = "electric-pole-2",
	    enabled = false,
	    ingredients =
	    {
	      {"medium-electric-pole", 4},
	      {"aluminum-plate", 2},
	      {"copper-plate", 2}
	    },
	    result = "electric-pole-2"
  	},
  	{
	    type = "recipe",
	    name = "big-electric-pole-3",
	    enabled = false,
	    ingredients =
	    {
	      {"big-electric-pole-2", 2},
	      {"titanium-plate", 2},
	      {"tantalum-cable", 2}
	    },
	    result = "big-electric-pole-3"
  	},
  	{
	    type = "recipe",
	    name = "substation-3",
	    enabled = false,
	    ingredients =
	    {
	      {"substation-2", 4},
	      {"cpu", 5},
	      {"titanium-plate", 5}
	    },
	    result = "substation-3"
  	},
  	{
	    type = "recipe",
	    name = "electric-pole-3",
	    enabled = false,
	    ingredients =
	    {
	      {"electric-pole-2", 4},
	      {"titanium-plate", 2},
	      {"tantalum-cable", 2}
	    },
	    result = "electric-pole-3"
  	},
  	{
		type = "recipe",
		name = "flying-robot-frame-4",
		enabled = false,
		energy_required = 30,
		ingredients = 
		{
			{"superconducted-electronics", 3},
			{"electric-engine-unit", 1},
			{"titanium-battery", 2},
			{"plastic-bar", 10}
		},
		result = "flying-robot-frame-4"
	},
	{
		type = "recipe",
		name = "construction-robot-4",
		enabled = false,
		ingredients = 
		{
			{"superconducted-electronics", 5},
			{"flying-robot-frame-4", 1},
			{"speed-module-7", 5},
			{"effectivity-module-7", 5}
		},
		result = "construction-robot-4"
	},
	{
		type = "recipe",
		name = "logistic-robot-4",
		enabled = false,
		ingredients = 
		{
			{"superconducted-electronics", 5},
			{"flying-robot-frame-4", 1},
			{"speed-module-7", 5},
			{"effectivity-module-7", 5}
		},
		result = "logistic-robot-4"
	},
	{
    type = "recipe",
    name = "refinery-2",
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 15},
      {"iron-gear-wheel", 10},
      {"stone-brick", 10},
      {"processing-unit", 10},
      {"pipe", 10},
      {"oil-refinery", 1}
    },
    result = "refinery-2",
    enabled = false
  	},
  	{
    type = "recipe",
    name = "pumpjack-2",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 10},
      {"processing-unit", 5},
      {"pipe", 10},
      {"pumpjack", 1}
    },
    result = "pumpjack-2",
    enabled = false
  	},
  	{
    type = "recipe",
    name = "centrifuge-2",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"concrete", 100},
      {"steel-plate", 50},
      {"multi-layered-electronic-circuit", 100},
      {"iron-gear-wheel", 100},
      {"centrifuge", 1}
    },
    result = "centrifuge-2",
    requester_paste_multiplier= 10
  	},
  	{
    type = "recipe",
    name = "refinery-3",
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 15},
      {"titanium-gear-wheel", 10},
      {"stone-brick", 10},
      {"superconducted-electronics", 10},
      {"pipe", 10},
      {"refinery-2", 1}
    },
    result = "refinery-3",
    enabled = false
  	},
  	{
    type = "recipe",
    name = "pumpjack-3",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 5},
      {"titanium-gear-wheel", 10},
      {"superconducted-electronics", 5},
      {"pipe", 10},
      {"pumpjack-2", 1}
    },
    result = "pumpjack-3",
    enabled = false
  	},
  	{
    type = "recipe",
    name = "centrifuge-3",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"concrete", 100},
      {"titanium-plate", 50},
      {"superconducted-electronics", 100},
      {"iron-gear-wheel", 100},
      {"centrifuge-2", 1}
    },
    result = "centrifuge-3",
    requester_paste_multiplier= 10
  	},




})
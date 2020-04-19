data:extend({

{
    type = "fluid",
    name = "sodium-hydroxide",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__EndgameExtension__/graphics/icons/sodium-hydroxide.png",
    icon_size = 32,
    order = "a[fluid]-e[lubricant]"
},
{
    type = "fluid",
    name = "hydrochloric-acid",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__EndgameExtension__/graphics/icons/hydrochloric-acid.png",
    icon_size = 32,
    order = "a[fluid]-f[lubricant]"
},
{
	type = "fluid",
	name = "molten-cryolite",
	default_temperature = 950,
	heat_capacity = "5.0KJ",
	base_color = {r=0, g=0, b=0},
	flow_color = {r=0.1, g=0.2, b=0.05},
	max_temperature = 1000,
	icon = "__EndgameExtension__/graphics/icons/molten-cryolite.png",
	icon_size = 32,
	order = "a[fluid]-g[lubricant]"
},
{
    type = "fluid",
    name = "titanium-tetrachloride",
    default_temperature = 900,
    heat_capacity = "5.0KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1000,
    icon = "__EndgameExtension__/graphics/icons/titanium-tetrachloride.png",
    icon_size = 32,
    subgroup = "rutile-processing",
    order = "b"
},
{
    type = "fluid",
    name = "purified-titanium-tetrachloride",
    default_temperature = 900,
    heat_capacity = "5.0KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1000,
    icon = "__EndgameExtension__/graphics/icons/purified-titanium-tetrachloride.png",
    icon_size = 32,
    subgroup = "rutile-processing",
    order = "ba"
},
{
    type = "fluid",
    name = "liquid-nitrogen",
    default_temperature = -193,
    heat_capacity = "0.0001J",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = -190,
    icon = "__EndgameExtension__/graphics/icons/liquid-nitrogen.png",
    icon_size = 32,
    subgroup = "cryogenics",
    order = "a"
},
{
    type = "fluid",
    name = "heavy-water",
    default_temperature = 20,
    heat_capacity = "0.8KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1000,
    icon = "__EndgameExtension__/graphics/icons/heavy-water.png",
    icon_size = 32,
    subgroup = "power-production",
    order = "a"
},
{
    type = "fluid",
    name = "carbonized-oil",
    default_temperature = 20,
    heat_capacity = "0.8KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1000,
    icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 64,
    subgroup = "power-production",
    order = "a"
},
{
    type = "fluid",
    name = "mineral-oil",
    default_temperature = 20,
    heat_capacity = "0.8KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1200,
    icon = "__EndgameExtension__/graphics/icons/mineral-oil.png",
    icon_size = 32,
    subgroup = "power-production",
    order = "a"
},
{
    type = "fluid",
    name = "molten-mineral-oil",
    default_temperature = 15,
    heat_capacity = "0.8KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.1, g=0.2, b=0.05},
    max_temperature = 1200,
    icon = "__EndgameExtension__/graphics/icons/molten-mineral-oil.png",
    icon_size = 32,
    subgroup = "power-production",
    order = "a"
},
{
    type = "fluid",
    name = "dense-steam",
    default_temperature = 15,
    max_temperature = 1200,
    heat_capacity = "0.8KJ",
    fuel_value = "10MJ",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    base_color = {r=0.5, g=0.5, b=0.5},
    flow_color = {r=1.0, g=1.0, b=1.0},
    order = "a[fluid]-b[steam]",
    gas_temperature = 1000,
    auto_barrel = false
  },


})
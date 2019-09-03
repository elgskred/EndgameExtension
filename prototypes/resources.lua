require "util"


data:extend({
  {
    type = "noise-layer",
    name = "bauxite-ore"
  },
  {
    type = "noise-layer",
    name = "rutile-ore"
  },
  {
    type = "noise-layer",
    name = "gold-ore"
  },
  {
    type = "noise-layer",
    name = "coltan"
  }
})

bauxite_ore = table.deepcopy(data.raw.resource['iron-ore'])
bauxite_ore.map_color = {r=0.457, g=0.699, b=0.816}
bauxite_ore.name = "bauxite-ore"
bauxite_ore.icon = "__EndgameExtension__/graphics/icons/bauxite-ore.png"
bauxite_ore.autoplace = resource_autoplace.resource_autoplace_settings{
      name = "bauxite-ore",
      order = "b",
      richness_multiplier = 1500,
      base_density = 10,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      coverage = coverage,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.5,
      starting_area_size = 5500 * coverage,
      --resource_index = resource_autoplace.get_next_resource_index(),
      starting_area_amount = 1600,
      peaks =
      {
        {
          noise_layer = "bauxite-ore",
          noise_octaves_difference = -0.80,
          noise_persistence = 0.3
        }
      }
    }
bauxite_ore.minable = {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "bauxite-ore",
    }
bauxite_ore.stages = {
      sheet =
      {
        filename = "__EndgameExtension__/graphics/entity/bauxite-ore/bauxite-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__EndgameExtension__/graphics/entity/bauxite-ore/hr-bauxite-ore.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }


data:extend({bauxite_ore})


rutile_ore = table.deepcopy(data.raw["resource"]["iron-ore"])
rutile_ore.map_color = {r=0.207, g=0.093, b=0.058}
rutile_ore.name = "rutile-ore"
rutile_ore.icon = "__EndgameExtension__/graphics/icons/rutile-ore.png"
rutile_ore.autoplace = resource_autoplace.resource_autoplace_settings{
      name = "rutile-ore",
      order = "b",
      richness_multiplier = 1500,
      base_density = 10,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      coverage = coverage,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.5,
      starting_area_size = 5500 * coverage,
      --resource_index = resource_autoplace.get_next_resource_index(),
      starting_area_amount = 1600,
      peaks =
      {
        {
          noise_layer = "rutile-ore",
          noise_octaves_difference = -1.75,
          noise_persistence = 0.2
        }
      }
    }
rutile_ore.minable = {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "rutile-ore",
    }
rutile_ore.stages = {
      sheet =
      {
        filename = "__EndgameExtension__/graphics/entity/rutile-ore/rutile-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
      }
    }

data:extend({rutile_ore})

gold_ore = table.deepcopy(data.raw["resource"]["iron-ore"])
gold_ore.map_color = {r=0.662, g=0.678, b=0.18}
gold_ore.name = "gold-ore"
gold_ore.icon = "__EndgameExtension__/graphics/icons/gold-ore.png"
gold_ore.autoplace = resource_autoplace.resource_autoplace_settings{
      name = "gold-ore",
      order = "b",
      richness_multiplier = 1500,
      base_density = 10,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      coverage = coverage,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.5,
      starting_area_size = 5500 * coverage,
      --resource_index = resource_autoplace.get_next_resource_index(),
      starting_area_amount = 1600,
      peaks =
      {
        {
          noise_layer = "gold-ore",
          noise_octaves_difference = -1.2,
          noise_persistence = 0.3
        }
      }
    }
gold_ore.minable = {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "gold-ore",
    }
gold_ore.stages = {
      sheet =
      {
        filename = "__EndgameExtension__/graphics/entity/gold-ore/gold-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
      }
    }

data:extend({gold_ore})

coltan_ore = table.deepcopy(data.raw["resource"]["iron-ore"])
coltan_ore.map_color = {r=0.257, g=0.527, b=0.960}
coltan_ore.name = "coltan-ore"
coltan_ore.icon = "__EndgameExtension__/graphics/icons/coltan-ore.png"
coltan_ore.autoplace = resource_autoplace.resource_autoplace_settings{
      name = "coltan-ore",
      order = "b",
      richness_multiplier = 1500,
      base_density = 10,
      richness_multiplier_distance_bonus = 20,
      richness_base = 10,
      coverage = coverage,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.1,
      starting_rq_factor_multiplier = 1.5,
      starting_area_size = 5500 * coverage,
      --resource_index = resource_autoplace.get_next_resource_index(),
      starting_area_amount = 1600,
      peaks =
      {
        {
          noise_layer = "coltan-ore",
          noise_octaves_difference = -1.5,
          noise_persistence = 0.5
        }
      }
    }
coltan_ore.minable = {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "coltan-ore",
    }
coltan_ore.stages = {
      sheet =
      {
        filename = "__EndgameExtension__/graphics/entity/coltan-ore/coltan-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
      }
    }

data:extend({coltan_ore})

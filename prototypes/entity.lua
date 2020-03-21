require "util"



function logistic_robot_idle(level)
return {
      filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 42
    }
end

function logistic_robot_idle_with_cargo(level)
return {
      filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
    }
end

function logistic_robot_in_motion(level)
return {
      filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 126,
    }
end

function logistic_robot_in_motion_with_cargo(level)
return {
      filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      direction_count = 16,
      y = 84,
    }
end


logistic_robot_shadow = {
  filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 59,
  height = 23,
  frame_count = 1,
  shift = {0.96875, 0.609375},
  direction_count = 16,
  y = 23,
}

logistic_robot_shadow_with_cargo = {
  filename = "__EndgameExtension__/graphics/entity/logistics-robot/logistic-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 59,
  height = 23,
  frame_count = 1,
  shift = {0.96875, 0.609375},
  direction_count = 16,
}

data:extend({
  {
    type = "logistic-robot",
    name = "logistic-robot-2",
    icon = "__EndgameExtension__/graphics/icons/logistic-robot-2.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-2"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 150,
    max_payload_size = 2,
    speed = 0.1,
    max_energy = "3MJ",
    energy_per_tick = "50J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = logistic_robot_idle(2),
    idle_with_cargo = logistic_robot_idle_with_cargo(2),
    in_motion = logistic_robot_in_motion(2),
    in_motion_with_cargo = logistic_robot_in_motion_with_cargo(2),
    shadow_idle = logistic_robot_shadow,
    shadow_in_motion = logistic_robot_shadow,
    shadow_idle_with_cargo = logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = logistic_robot_shadow_with_cargo,
  },
  {
    type = "logistic-robot",
    name = "logistic-robot-3",
    icon = "__EndgameExtension__/graphics/icons/logistic-robot-3.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-3"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 150,
    max_payload_size = 3,
    speed = 0.2,
    max_energy = "5MJ",
    energy_per_tick = "25J",
    energy_per_move = "4000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = logistic_robot_idle(3),
    idle_with_cargo = logistic_robot_idle_with_cargo(3),
    in_motion = logistic_robot_in_motion(3),
    in_motion_with_cargo = logistic_robot_in_motion_with_cargo(3),
    shadow_idle = logistic_robot_shadow,
    shadow_in_motion = logistic_robot_shadow,
    shadow_idle_with_cargo = logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = logistic_robot_shadow_with_cargo,
  },
  {
    type = "logistic-robot",
    name = "logistic-robot-4",
    icon = "__EndgameExtension__/graphics/icons/logistic-robot-4.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot-4"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 150,
    max_payload_size = 4,
    speed = 0.4,
    max_energy = "15MJ",
    energy_per_tick = "35J",
    energy_per_move = "3000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    idle = logistic_robot_idle(3),
    idle_with_cargo = logistic_robot_idle_with_cargo(3),
    in_motion = logistic_robot_in_motion(3),
    in_motion_with_cargo = logistic_robot_in_motion_with_cargo(3),
    shadow_idle = logistic_robot_shadow,
    shadow_in_motion = logistic_robot_shadow,
    shadow_idle_with_cargo = logistic_robot_shadow_with_cargo,
    shadow_in_motion_with_cargo = logistic_robot_shadow_with_cargo,
  },
})

function construction_robot_idle(level)
  return {
      filename = "__EndgameExtension__/graphics/entity/construction-robot/construction-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16,
    }
end

function construction_robot_in_motion(level)
return {
      filename = "__EndgameExtension__/graphics/entity/construction-robot/construction-robot-"..level..".png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      direction_count = 16,
      y = 36,
    }
end

function construction_robot_working(level)
return {
      filename = "__EndgameExtension__/graphics/entity/construction-robot/construction-robot-working-"..level..".png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      direction_count = 16,
      animation_speed = 0.3,
    }
end


construction_robot_shadow = {
  filename = "__EndgameExtension__/graphics/entity/construction-robot/construction-robot-shadow.png",
  priority = "high",
  line_length = 16,
  width = 50,
  height = 24,
  frame_count = 1,
  shift = {1.09375, 0.59375},
  direction_count = 16,
}

construction_robot_shadow_working = {
  stripes = util.multiplystripes(2,
    {
      {
        filename = "__EndgameExtension__/graphics/entity/construction-robot/construction-robot-shadow.png",
        width_in_frames = 16,
        height_in_frames = 1,
      }
    }
  ),
  priority = "high",
  line_length = 16,
  width = 50,
  height = 24,
  frame_count = 2,
  shift = {1.09375, 0.59375},
  direction_count = 16,
}



robot_smoke = {
  filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
  width = 39,
  height = 32,
  frame_count = 19,
  line_length = 19,
  shift = {0.078125, -0.15625},
  animation_speed = 0.3,
}

robot_sparks = {
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.203125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.234375},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.171875},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3,
  },
}


data:extend(
{
  {
    type = "construction-robot",
    name = "construction-robot-2",
    icon = "__EndgameExtension__/graphics/icons/construction-robot-2.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-2"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 200,
    max_payload_size = 2,
    speed = 0.1,
    max_energy = "3MJ",
    energy_per_tick = "50J",
    energy_per_move = "5000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = construction_robot_idle(2),
    in_motion = construction_robot_in_motion(2),
    working = construction_robot_working(2),
    shadow_idle = construction_robot_shadow,
    shadow_in_motion = construction_robot_shadow,
    shadow_working = construction_robot_shadow_working,
    smoke = robot_smoke,
    sparks = robot_sparks
  },
  {
    type = "construction-robot",
    name = "construction-robot-3",
    icon = "__EndgameExtension__/graphics/icons/construction-robot-3.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-3"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 200,
    max_payload_size = 3,
    speed = 0.2,
    max_energy = "5MJ",
    energy_per_tick = "25J",
    energy_per_move = "4000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = construction_robot_idle(3),
    in_motion = construction_robot_in_motion(3),
    working = construction_robot_working(3),
    shadow_idle = construction_robot_shadow,
    shadow_in_motion = construction_robot_shadow,
    shadow_working = construction_robot_shadow_working,
    smoke = robot_smoke,
    sparks = robot_sparks
  },
  {
    type = "construction-robot",
    name = "construction-robot-4",
    icon = "__EndgameExtension__/graphics/icons/construction-robot-4.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-4"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 200,
    max_payload_size = 4,
    speed = 0.4,
    max_energy = "15MJ",
    energy_per_tick = "35J",
    energy_per_move = "3000J",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    transfer_distance = 0.5,
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = flying_robot_sounds(),
    working_light = {intensity = 0.8, size = 3},
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    repair_pack = "repair-pack",
    idle = construction_robot_idle(3),
    in_motion = construction_robot_in_motion(3),
    working = construction_robot_working(3),
    shadow_idle = construction_robot_shadow,
    shadow_in_motion = construction_robot_shadow,
    shadow_working = construction_robot_shadow_working,
    smoke = robot_smoke,
    sparks = robot_sparks
  },
})

--data.raw.lab["lab"].inputs = lab_inputs
--table.insert(data.raw["lab"]["lab"].inputs, "advanced-automation-science-pack")

local lab_inputs_2 =
{
  "compressed-science-pack",
  "advanced-automation-science-pack",
  "advanced-logistic-science-pack",
  "advanced-chemical-science-pack",
  "advanced-utility-science-pack",
  "advanced-production-science-pack",
  "advanced-space-science-pack",

}


lab_mk2 = table.deepcopy(data.raw["lab"]["lab"])
lab_mk2.name = "lab-mk2"
lab_mk2.minable = {mining_time = 0.2, result = "lab-mk2"}
lab_mk2.max_health = 200
lab_mk2.energy_usage = "120kW"
lab_mk2.module_specification =
    {
      module_slots = 3,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
lab_mk2.inputs = lab_inputs_2

data:extend({lab_mk2})

lab_mk3 = table.deepcopy(data.raw["lab"]["lab"])
lab_mk3.name = "lab-mk3"
lab_mk3.minable = {mining_time = 0.2, result = "lab-mk3"}
lab_mk3.max_health = 200
lab_mk3.energy_usage = "200kW"
lab_mk3.module_specification =
    {
      module_slots = 4,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
lab_mk3.inputs = lab_inputs_2

data:extend({lab_mk3})



roboport_mk2 = table.deepcopy(data.raw["roboport"]['roboport'])
roboport_mk2.name = "roboport-2"
roboport_mk2.minable = {mining_time = 0.1, result = "roboport-2"}
roboport_mk2.max_health = 750
roboport_mk2.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "10MW",
      buffer_capacity = "200MJ"
    }
roboport_mk2.recharge_minimum = "50MJ"
roboport_mk2.energy_usage = "30kW"
roboport_mk2.charging_energy = "2000kW"
roboport_mk2.logistics_radius = 50
roboport_mk2.construction_radius = 110

data:extend({roboport_mk2})

roboport_mk3 = table.deepcopy(data.raw["roboport"]['roboport'])
roboport_mk3.name = "roboport-3"
roboport_mk3.minable = {mining_time = 0.1, result = "roboport-3"}
roboport_mk3.max_health = 1500
roboport_mk3.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "20MW",
      buffer_capacity = "400MJ"
    }
roboport_mk3.recharge_minimum = "50MJ"
roboport_mk3.energy_usage = "60kW"
roboport_mk3.charging_energy = "10000kW"
roboport_mk3.logistics_radius = 100
roboport_mk3.construction_radius = 200

data:extend({roboport_mk3})

high_speed_belt_animation_set =
{
  animation_set =
  {
    filename = "__EndgameExtension__/graphics/entity/transport-belt/high-speed-transport-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
  },

  east_index = 1,
  west_index = 2,
  north_index = 3,
  south_index = 4,

  east_to_north_index = 5,
  north_to_east_index = 6,

  west_to_north_index = 7,
  north_to_west_index = 8,

  south_to_east_index = 9,
  east_to_south_index = 10,

  south_to_west_index = 11,
  west_to_south_index = 12,

  starting_south_index = 13,
  ending_south_index = 14,

  starting_west_index = 15,
  ending_west_index = 16,

  starting_north_index = 17,
  ending_north_index = 18,

  starting_east_index = 19,
  ending_east_index = 20
}  

data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "high-speed-transport-belt"

high_speed_transport_belt = table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
high_speed_transport_belt.name = "high-speed-transport-belt"
high_speed_transport_belt.icon = "__EndgameExtension__/graphics/icons/high-speed-transport-belt.png"
high_speed_transport_belt.minable = {mining_time = 0.1, result = "high-speed-transport-belt"}
high_speed_transport_belt.speed = 0.125
high_speed_transport_belt.belt_animation_set = high_speed_belt_animation_set
high_speed_transport_belt.next_upgrade = "ultimate-transport-belt"
high_speed_transport_belt.animations =
    {
      filename = "__EndgameExtension__/graphics/entity/transport-belt/high-speed-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
    }
data:extend({high_speed_transport_belt})

data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "high-speed-underground-belt"

high_speed_underground_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
high_speed_underground_belt.name = "high-speed-underground-belt"
high_speed_underground_belt.icon = "__EndgameExtension__/graphics/icons/high-speed-underground-belt.png"
high_speed_underground_belt.minable = {mining_time = 0.1, result = "high-speed-underground-belt"}
high_speed_underground_belt.max_distance = 12
high_speed_underground_belt.speed = 0.125
high_speed_underground_belt.next_upgrade = "ultimate-underground-belt"
high_speed_underground_belt.structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      }
    }

data:extend({high_speed_underground_belt})

data.raw["splitter"]["express-splitter"].next_upgrade = "high-speed-splitter"

high_speed_splitter = table.deepcopy(data.raw["splitter"]["express-splitter"])
high_speed_splitter.name = "high-speed-splitter"
high_speed_splitter.icon = "__EndgameExtension__/graphics/icons/high-speed-splitter.png"
high_speed_splitter.minable = {mining_time = 0.1, result = "high-speed-splitter"}
high_speed_splitter.speed = 0.125
high_speed_splitter.next_upgrade = "ultimate-splitter"
high_speed_splitter.structure =
    {
      north =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/high-speed-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
      },
      east =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/high-speed-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 80,
        shift = util.by_pixel(4, -6),
      },
      south =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/high-speed-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
      },
      west =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/high-speed-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 76,
        shift = util.by_pixel(6, -4),
      }
    }

data:extend({high_speed_splitter})


--data.raw["loader"]["express-loader"].next_upgrade = "high-speed-loader"

high_speed_loader = table.deepcopy(data.raw["loader"]["express-loader"])
high_speed_loader.name = "high-speed-loader"
high_speed_loader.minable = {mining_time = 0.1, result = "high-speed-loader"}
high_speed_loader.speed = 0.125

data:extend({high_speed_loader})

pipepictures_a = function()
  return
  {
    straight_vertical_single =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 80,
      height = 80,
    },
    straight_vertical =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_vertical_window =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_horizontal_window =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_horizontal =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_up_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_up_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_down_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_down_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_up =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_down =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    cross =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-cross.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_up =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-ending-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      },
    ending_down =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-ending-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-ending-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/aluminum-pipe-ending-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    horizontal_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    vertical_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow =
    {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 24,
      height = 15,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
    }
  }
end

aluminum_pipe = table.deepcopy(data.raw["pipe"]["pipe"])
aluminum_pipe.name = "aluminum-pipe"
aluminum_pipe.icon = "__EndgameExtension__/graphics/icons/aluminum-pipe.png"
aluminum_pipe.minable = {mining_time = 0.1, result = "aluminum-pipe"}
aluminum_pipe.pictures = pipepictures_a()

data:extend({aluminum_pipe})

aluminum_pipe_to_ground = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
aluminum_pipe_to_ground.name = "aluminum-pipe-to-ground"
aluminum_pipe_to_ground.icon = "__EndgameExtension__/graphics/icons/aluminum-pipe-to-ground.png"
aluminum_pipe_to_ground.minable = {mining_time = 0.1, result = "aluminum-pipe-to-ground"}
aluminum_pipe_to_ground.fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      }
    }
aluminum_pipe_to_ground.pictures =
    {
      up =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/aluminum-pipe-to-ground-up.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/aluminum-pipe-to-ground-down.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/aluminum-pipe-to-ground-left.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/aluminum-pipe-to-ground-right.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
      }
    }


data:extend({aluminum_pipe_to_ground})

pipepictures_t = function()
  return
  {
    straight_vertical_single =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 80,
      height = 80,
    },
    straight_vertical =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_vertical_window =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_horizontal_window =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    straight_horizontal =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_up_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_up_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_down_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    corner_down_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_up =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_down =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    t_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    cross =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-cross.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_up =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-ending-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      },
    ending_down =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-ending-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_right =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-ending-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    ending_left =
    {
      filename = "__EndgameExtension__/graphics/entity/pipe/titanium-pipe-ending-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    horizontal_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    vertical_window_background =
    {
      filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow =
    {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 24,
      height = 15,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
    }
  }
end

titanium_pipe = table.deepcopy(data.raw["pipe"]["pipe"])
titanium_pipe.name = "titanium-pipe"
titanium_pipe.icon = "__EndgameExtension__/graphics/icons/titanium-pipe.png"
titanium_pipe.minable = {mining_time = 0.1, result = "titanium-pipe"}
titanium_pipe.pictures = pipepictures_t()

data:extend({titanium_pipe})

titanium_pipe_to_ground = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
titanium_pipe_to_ground.name = "titanium-pipe-to-ground"
titanium_pipe_to_ground.icon = "__EndgameExtension__/graphics/icons/titanium-pipe-to-ground.png"
titanium_pipe_to_ground.minable = {mining_time = 0.1, result = "titanium-pipe-to-ground"}
titanium_pipe_to_ground.fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      }
    }
titanium_pipe_to_ground.pictures =
    {
      up =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/titanium-pipe-to-ground-up.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/titanium-pipe-to-ground-down.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/titanium-pipe-to-ground-left.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__EndgameExtension__/graphics/entity/pipe-to-ground/titanium-pipe-to-ground-right.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
      }
    }


data:extend({titanium_pipe_to_ground})

chemical_plant_2 = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
chemical_plant_2.name = "chemical-plant-2"
chemical_plant_2.minable = {mining_time = 0.1, result = "chemical-plant-2"}
chemical_plant_2.module_specification =
    {
      module_slots = 4
    }
chemical_plant_2.crafting_speed = 2
chemical_plant_2.energy_usage = "300kW"
chemical_plant_2.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 6
    }

data:extend({chemical_plant_2})

chemical_plant_3 = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
chemical_plant_3.name = "chemical-plant-3"
chemical_plant_3.minable = {mining_time = 0.1, result = "chemical-plant-3"}
chemical_plant_3.module_specification =
    {
      module_slots = 5
    }
chemical_plant_3.crafting_speed = 4
chemical_plant_3.energy_usage = "400kW"
chemical_plant_3.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 8
    }

data:extend({chemical_plant_3})


electric_mining_drill_2 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
electric_mining_drill_2.name = "electric-mining-drill-2"
electric_mining_drill_2.minable = {mining_time = 0.3, result = "electric-mining-drill-2"}
electric_mining_drill_2.module_specification =
    {
      module_slots = 3
    }
electric_mining_drill_2.mining_speed = 2
electric_mining_drill_2.energy_source =
    {
      type = "electric",
      emissions_per_minute = 20,
      usage_priority = "secondary-input"
    }
electric_mining_drill_2.energy_usage = "200kW"
electric_mining_drill_2.resource_searching_radius = 2.49

data:extend({electric_mining_drill_2})

electric_mining_drill_3 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
electric_mining_drill_3.name = "electric-mining-drill-3"
electric_mining_drill_3.minable = {mining_time = 0.3, result = "electric-mining-drill-3"}
electric_mining_drill_3.module_specification =
    {
      module_slots = 4
    }
electric_mining_drill_3.mining_speed = 3
electric_mining_drill_3.energy_source =
    {
      type = "electric",
      emissions_per_minute = 30,
      usage_priority = "secondary-input"
    }
electric_mining_drill_3.energy_usage = "300kW"
electric_mining_drill_3.resource_searching_radius = 3.49

data:extend({electric_mining_drill_3})

electric_mining_drill_4 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
electric_mining_drill_4.name = "electric-mining-drill-4"
electric_mining_drill_4.minable = {mining_time = 0.3, result = "electric-mining-drill-4"}
electric_mining_drill_4.module_specification =
    {
      module_slots = 5
    }
electric_mining_drill_4.mining_speed = 4
electric_mining_drill_4.energy_source =
    {
      type = "electric",
      emissions_per_minute = 40,
      usage_priority = "secondary-input"
    }
electric_mining_drill_4.energy_usage = "400kW"
electric_mining_drill_4.resource_searching_radius = 4.49

data:extend({electric_mining_drill_4})

electric_mining_drill_5 = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
electric_mining_drill_5.name = "electric-mining-drill-5"
electric_mining_drill_5.minable = {mining_time = 0.3, result = "electric-mining-drill-5"}
electric_mining_drill_5.module_specification =
    {
      module_slots = 6
    }
electric_mining_drill_5.mining_speed = 5
electric_mining_drill_5.energy_source =
    {
      type = "electric",
      emissions_per_minute = 50,
      usage_priority = "secondary-input"
    }
electric_mining_drill_5.energy_usage = "500kW"
electric_mining_drill_5.resource_searching_radius = 5.49

data:extend({electric_mining_drill_5})

beacon_2 = table.deepcopy(data.raw["beacon"]["beacon"])
beacon_2.name = "beacon-2"
beacon_2.minable = {mining_time = 0.5, result = "beacon-2"}
beacon_2.energy_usage = "620kW"
beacon_2.supply_area_distance = 5
beacon_2.distribution_effectivity = 0.75
beacon_2.module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }

data:extend({beacon_2})

beacon_3 = table.deepcopy(data.raw["beacon"]["beacon"])
beacon_3.name = "beacon-3"
beacon_3.minable = {mining_time = 0.5, result = "beacon-3"}
beacon_3.energy_usage = "840W"
beacon_3.supply_area_distance = 7
beacon_3.distribution_effectivity = 1
beacon_3.module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }

data:extend({beacon_3})


electric_furnace_2 = table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric_furnace_2.name = "electric-furnace-2"
electric_furnace_2.minable = {mining_time = 0.2, result = "electric-furnace-2"}
electric_furnace_2.module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.8}
    }
electric_furnace_2.crafting_speed = 3
electric_furnace_2.energy_usage = "250kW"
electric_furnace_2.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2
    }

data:extend({electric_furnace_2})

electric_furnace_3 = table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric_furnace_3.name = "electric-furnace-3"
electric_furnace_3.minable = {mining_time = 0.2, result = "electric-furnace-3"}
electric_furnace_3.module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.8}
    }
electric_furnace_3.crafting_speed = 4
electric_furnace_3.energy_usage = "400kW"
electric_furnace_3.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    }

data:extend({electric_furnace_3})

data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1.5
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "assembling-machine-4"

assembling_machine_4 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
assembling_machine_4.name = "assembling-machine-4"
assembling_machine_4.minable = {mining_time = 0.3, result = "assembling-machine-4"}
assembling_machine_4.next_upgrade = "assembling-machine-5"
assembling_machine_4.module_specification =
    {
      module_slots = 5
    }
assembling_machine_4.crafting_speed = 2
assembling_machine_4.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 3
    }
assembling_machine_4.energy_usage = "500kW"
assembling_machine_4.animation =
    {
      layers =
      {
        {
          filename = "__EndgameExtension__/graphics/entity/assembling-machine/assembling-machine-4.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    }

data:extend({assembling_machine_4})

assembling_machine_5 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
assembling_machine_5.name = "assembling-machine-5"
assembling_machine_5.minable = {mining_time = 0.3, result = "assembling-machine-5"}
assembling_machine_5.module_specification =
    {
      module_slots = 7
    }
assembling_machine_5.crafting_speed = 4
assembling_machine_5.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 8
    }
assembling_machine_5.energy_usage = "1.5MW"
assembling_machine_5.animation =
    {
      layers =
      {
        {
          filename = "__EndgameExtension__/graphics/entity/assembling-machine/advanced-assembling-machine.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    }

data:extend({assembling_machine_5})


rocket_silo_2 = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
rocket_silo_2.name = "rocket-silo-2"
rocket_silo_2.minable = {mining_time = 1, result = "rocket-silo-2"}
rocket_silo_2.module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 3.3}
    }
rocket_silo_2.crafting_speed = 2
rocket_silo_2.energy_usage = "500kW" --energy usage used when crafting the rocket
rocket_silo_2.idle_energy_usage = "10KW"
rocket_silo_2.lamp_energy_usage = "10KW"
rocket_silo_2.active_energy_usage = "10000KW"
rocket_silo_2.times_to_blink = 3
rocket_silo_2.light_blinking_speed = 1 / (2.4 * 60)
rocket_silo_2.door_opening_speed = 1 / (3.4 * 60)
rocket_silo_2.rocket_entity = "rocket-silo-rocket-2"

data:extend({rocket_silo_2})

rocket_silo_rocket_2 = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"])
rocket_silo_rocket_2.name = "rocket-silo-rocket-2"
rocket_silo_rocket_2.rising_speed = 1 / (5.6 * 60)
rocket_silo_rocket_2.engine_starting_speed = 1 / (4.4 * 60)
rocket_silo_rocket_2.flying_speed = 1 / (2400 * 60)
rocket_silo_rocket_2.flying_acceleration = 0.05

data:extend({rocket_silo_rocket_2})

rocket_silo_3 = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
rocket_silo_3.name = "rocket-silo-3"
rocket_silo_3.minable = {mining_time = 1, result = "rocket-silo-3"}
rocket_silo_3.module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 3.3}
    }
rocket_silo_3.crafting_speed = 3
rocket_silo_3.energy_usage = "500kW" --energy usage used when crafting the rocket
rocket_silo_3.idle_energy_usage = "10KW"
rocket_silo_3.lamp_energy_usage = "10KW"
rocket_silo_3.active_energy_usage = "10000KW"
rocket_silo_3.times_to_blink = 3
rocket_silo_3.light_blinking_speed = 1 / (1.8 * 60)
rocket_silo_3.door_opening_speed = 1 / (2.7 * 60)
rocket_silo_3.rocket_entity = "rocket-silo-rocket-3"

data:extend({rocket_silo_3})

rocket_silo_rocket_3 = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"])
rocket_silo_rocket_3.name = "rocket-silo-rocket-3"
rocket_silo_rocket_3.rising_speed = 1 / (4.2 * 60)
rocket_silo_rocket_3.engine_starting_speed = 1 / (3.3 * 60)
rocket_silo_rocket_3.flying_speed = 1 / (1200 * 60)
rocket_silo_rocket_3.flying_acceleration = 0.09

data:extend({rocket_silo_rocket_3})

data.raw["inserter"]["stack-filter-inserter"].next_upgrade = "high-speed-stack-filter-inserter"
data.raw["inserter"]["long-handed-inserter"].next_upgrade = "high-speed-long-handed-inserter"

high_speed_stack_filter_inserter = table.deepcopy(data.raw["inserter"]["stack-filter-inserter"])
high_speed_stack_filter_inserter.name = "high-speed-stack-filter-inserter"
high_speed_stack_filter_inserter.icon = "__EndgameExtension__/graphics/icons/high-speed-stack-filter-inserter.png"
high_speed_stack_filter_inserter.minable = { mining_time = 0.1, result = "high-speed-stack-filter-inserter" }
high_speed_stack_filter_inserter.energy_per_movement = "15KJ"
high_speed_stack_filter_inserter.energy_per_rotation = "15KJ"
high_speed_stack_filter_inserter.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.5kW"
    }
high_speed_stack_filter_inserter.extension_speed = 0.1
high_speed_stack_filter_inserter.rotation_speed = 0.09
high_speed_stack_filter_inserter.next_upgrade = "ultimate-stack-filter-inserter"
high_speed_stack_filter_inserter.hand_base_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-stack-filter-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
    }
high_speed_stack_filter_inserter.hand_closed_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-stack-filter-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
    }
high_speed_stack_filter_inserter.hand_open_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-stack-filter-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
    }


data:extend({high_speed_stack_filter_inserter})


high_speed_long_handed_inserter = table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
high_speed_long_handed_inserter.icon = "__EndgameExtension__/graphics/icons/high-speed-long-handed-inserter.png"
high_speed_long_handed_inserter.name = "high-speed-long-handed-inserter"
high_speed_long_handed_inserter.minable = {mining_time = 0.1, result = "high-speed-long-handed-inserter"}
high_speed_long_handed_inserter.energy_per_movement = "10KJ"
high_speed_long_handed_inserter.energy_per_rotation = "10KJ"
high_speed_long_handed_inserter.rotation_speed = 0.05
high_speed_long_handed_inserter.extension_speed = 0.09
high_speed_long_handed_inserter.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.3kW"
    }
high_speed_long_handed_inserter.hand_base_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
    }
high_speed_long_handed_inserter.hand_closed_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
    }
high_speed_long_handed_inserter.hand_open_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/high-speed-long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
    }

data:extend({high_speed_long_handed_inserter})



data:extend({
  {
    type = "recipe-category",
    name = "cryogenics"
  }
})

cryogenic_plant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
cryogenic_plant.name = "cryogenic-plant"
cryogenic_plant.minable = {mining_time = 0.1, result = "cryogenic-plant"}
cryogenic_plant.module_specification =
    {
      module_slots = 5
    }
cryogenic_plant.crafting_speed = 4
cryogenic_plant.energy_usage = "4MW"
cryogenic_plant.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 20
    }
cryogenic_plant.crafting_categories = {"cryogenics"}
cryogenic_plant.animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__EndgameExtension__/graphics/entity/cryogenic-plant/cryogenic-plant.png",
        width = 122,
        height = 134,
        frame_count = 1,
        shift = util.by_pixel(-5, -4.5),
      },
      {
        filename = "__EndgameExtension__/graphics/entity/cryogenic-plant/chemical-plant-shadow.png",
        width = 175,
        height = 141,
        frame_count = 1,
        shift = util.by_pixel(31.5, 11),
        draw_as_shadow = true,
      }
    }}),

data:extend({cryogenic_plant})

solar_panel_2 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
solar_panel_2.name = "solar-panel-2"
solar_panel_2.minable = {mining_time = 0.3, result = "solar-panel-2"}
solar_panel_2.production = "240kW"

data:extend({solar_panel_2})

solar_panel_3 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
solar_panel_3.name = "solar-panel-3"
solar_panel_3.minable = {mining_time = 0.3, result = "solar-panel-3"}
solar_panel_3.production = "960kW"

data:extend({solar_panel_3})

solar_panel_4 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
solar_panel_4.name = "solar-panel-4"
solar_panel_4.minable = {mining_time = 0.3, result = "solar-panel-4"}
solar_panel_4.production = "3.8MW"

data:extend({solar_panel_4})

solar_panel_5 = table.deepcopy(data.raw["solar-panel"]["solar-panel"])
solar_panel_5.name = "solar-panel-5"
solar_panel_5.minable = {mining_time = 0.3, result = "solar-panel-5"}
solar_panel_5.production = "15.2MW"

data:extend({solar_panel_5})

data.raw["generator"]["steam-turbine"].maximum_temperature = 431.5

steam_turbine_2 = table.deepcopy(data.raw["generator"]["steam-turbine"])
steam_turbine_2.name = "steam-turbine-2"
steam_turbine_2.minable = {mining_time = 0.5, result = "steam-turbine-2"}
steam_turbine_2.maximum_temperature = 848

data:extend({steam_turbine_2})

heat_exchanger_2 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
heat_exchanger_2.name = "heat-exchanger-2"
heat_exchanger_2.minable = {mining_time = 0.3, result = "heat-exchanger-2"}
heat_exchanger_2.target_temperature = 850
heat_exchanger_2.energy_consumption = "20MW"

data:extend({heat_exchanger_2})


steam_turbine_3 = table.deepcopy(data.raw["generator"]["steam-turbine"])
steam_turbine_3.name = "steam-turbine-3"
steam_turbine_3.minable = {mining_time = 0.5, result = "steam-turbine-3"}
steam_turbine_3.maximum_temperature = 1000
steam_turbine_3.effectivity = 1.69


data:extend({steam_turbine_3})


heat_exchanger_3 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
heat_exchanger_3.name = "heat-exchanger-3"
heat_exchanger_3.minable = {mining_time = 0.3, result = "heat-exchanger-3"}
heat_exchanger_3.target_temperature = 1000
heat_exchanger_3.energy_consumption = "40MW"
heat_exchanger_3.fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0.5}},
        {type = "input-output", position = {2, 0.5}}
      },
      production_type = "input-output",
      filter = "water"
    }
heat_exchanger_3.output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -1.5}}
      },
      production_type = "input-output",
      filter = "steam"
    }

data:extend({heat_exchanger_3})

productivity_beacon = table.deepcopy(data.raw["beacon"]["beacon"])
productivity_beacon.name = "productivity-beacon"
productivity_beacon.minable = {mining_time = 0.5, result = "productivity-beacon"}
productivity_beacon.energy_usage = "10MW"
productivity_beacon.supply_area_distance = 3
productivity_beacon.distribution_effectivity = 1
productivity_beacon.allowed_effects = {"productivity", "pollution"}
productivity_beacon.module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }


data:extend({productivity_beacon})

ultimate_belt_animation_set =
{
  animation_set =
  {
    filename = "__EndgameExtension__/graphics/entity/transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
  },

  east_index = 1,
  west_index = 2,
  north_index = 3,
  south_index = 4,

  east_to_north_index = 5,
  north_to_east_index = 6,

  west_to_north_index = 7,
  north_to_west_index = 8,

  south_to_east_index = 9,
  east_to_south_index = 10,

  south_to_west_index = 11,
  west_to_south_index = 12,

  starting_south_index = 13,
  ending_south_index = 14,

  starting_west_index = 15,
  ending_west_index = 16,

  starting_north_index = 17,
  ending_north_index = 18,

  starting_east_index = 19,
  ending_east_index = 20
}  

ultimate_transport_belt = table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
ultimate_transport_belt.name = "ultimate-transport-belt"
ultimate_transport_belt.icon = "__EndgameExtension__/graphics/icons/ultimate-transport-belt.png"
ultimate_transport_belt.minable = {mining_time = 0.1, result = "ultimate-transport-belt"}
ultimate_transport_belt.speed = 0.250
ultimate_transport_belt.belt_animation_set = high_speed_belt_animation_set
ultimate_transport_belt.animations =
    {
      filename = "__EndgameExtension__/graphics/entity/transport-belt/ultimate-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
    }
data:extend({ultimate_transport_belt})

data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "ultimate-underground-belt"

ultimate_underground_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
ultimate_underground_belt.name = "ultimate-underground-belt"
ultimate_underground_belt.icon = "__EndgameExtension__/graphics/icons/ultimate-underground-belt.png"
ultimate_underground_belt.minable = {mining_time = 0.1, result = "ultimate-underground-belt"}
ultimate_underground_belt.max_distance = 14
ultimate_underground_belt.speed = 0.250
ultimate_underground_belt.structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      },
      direction_in_side_loading =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*3,
        }
      },
      direction_out_side_loading =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96*2,
        }
      },
      back_patch =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      },
      front_patch =
      {
        sheet =
        {
          filename = "__EndgameExtension__/graphics/entity/underground-belt/high-speed-underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
        }
      }
    }

data:extend({ultimate_underground_belt})

data.raw["splitter"]["express-splitter"].next_upgrade = "high-speed-splitter"

ultimate_splitter = table.deepcopy(data.raw["splitter"]["express-splitter"])
ultimate_splitter.name = "ultimate-splitter"
ultimate_splitter.icon = "__EndgameExtension__/graphics/icons/ultimate-splitter.png"
ultimate_splitter.minable = {mining_time = 0.1, result = "ultimate-splitter"}
ultimate_splitter.speed = 0.250
ultimate_splitter.structure =
    {
      north =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/ultimate-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
      },
      east =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/ultimate-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 80,
        shift = util.by_pixel(4, -6),
      },
      south =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/ultimate-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
      },
      west =
      {
        filename = "__EndgameExtension__/graphics/entity/splitter/ultimate-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 76,
        shift = util.by_pixel(6, -4),
      }
    }

data:extend({ultimate_splitter})

ultimate_stack_filter_inserter = table.deepcopy(data.raw["inserter"]["stack-filter-inserter"])
ultimate_stack_filter_inserter.name = "ultimate-stack-filter-inserter"
ultimate_stack_filter_inserter.icon = "__EndgameExtension__/graphics/icons/ultimate-stack-filter-inserter.png"
ultimate_stack_filter_inserter.minable = { mining_time = 0.1, result = "ultimate-stack-filter-inserter" }
ultimate_stack_filter_inserter.energy_per_movement = "30KJ"
ultimate_stack_filter_inserter.energy_per_rotation = "30KJ"
ultimate_stack_filter_inserter.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    }
ultimate_stack_filter_inserter.extension_speed = 0.12
ultimate_stack_filter_inserter.rotation_speed = 0.1
ultimate_stack_filter_inserter.hand_base_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-stack-filter-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
    }
ultimate_stack_filter_inserter.hand_closed_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-stack-filter-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
    }
ultimate_stack_filter_inserter.hand_open_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-stack-filter-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
    }


data:extend({ultimate_stack_filter_inserter})

data.raw["inserter"]["fast-inserter"].next_upgrade = "ultimate-inserter"

ultimate_inserter = table.deepcopy(data.raw["inserter"]["fast-inserter"])
ultimate_inserter.name = "ultimate-inserter"
ultimate_inserter.icon = "__EndgameExtension__/graphics/icons/ultimate-inserter.png"
ultimate_inserter.minable = { mining_time = 0.1, result = "ultimate-inserter" }
ultimate_inserter.energy_per_movement = "30KJ"
ultimate_inserter.energy_per_rotation = "30KJ"
ultimate_inserter.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    }
ultimate_inserter.extension_speed = 0.12
ultimate_inserter.rotation_speed = 0.1
ultimate_inserter.hand_base_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
    }
ultimate_inserter.hand_closed_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
    }
ultimate_inserter.hand_open_picture =
    {
      filename = "__EndgameExtension__/graphics/entity/inserter/ultimate-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
    }

data:extend({ultimate_inserter})

ultimate_loader = table.deepcopy(data.raw["loader"]["express-loader"])
ultimate_loader.name = "ultimate-loader"
ultimate_loader.minable = {mining_time = 0.1, result = "ultimate-loader"}
ultimate_loader.speed = 0.250

data:extend({ultimate_loader})

data:extend({
  {
    type = "recipe-category",
    name = "cooling"
  }
})

cooling_plant = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
cooling_plant.name = "cooling-plant"
cooling_plant.minable = {mining_time = 0.1, result = "cooling-plant"}
cooling_plant.module_specification =
    {
      module_slots = 2
    }
cooling_plant.crafting_speed = 4
cooling_plant.energy_usage = "10kW"
cooling_plant.energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1
    }
cooling_plant.crafting_categories = {"cooling"}
cooling_plant.animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__EndgameExtension__/graphics/entity/cooling-plant/cooling-plant.png",
        width = 122,
        height = 134,
        frame_count = 1,
        shift = util.by_pixel(-5, -4.5),
      },
      {
        filename = "__EndgameExtension__/graphics/entity/cryogenic-plant/chemical-plant-shadow.png",
        width = 175,
        height = 141,
        frame_count = 1,
        shift = util.by_pixel(31.5, 11),
        draw_as_shadow = true,
      }
    }}),

data:extend({cooling_plant})

dense_steam_turbine = table.deepcopy(data.raw["generator"]["steam-turbine"])
dense_steam_turbine.name = "dense-steam-turbine"
dense_steam_turbine.minable = {mining_time = 0.5, result = "dense-steam-turbine"}
dense_steam_turbine.maximum_temperature = 25
dense_steam_turbine.effectivity = 3.384
dense_steam_turbine.fluid_usage_per_tick = 0.5
dense_steam_turbine.burns_fluid = true
dense_steam_turbine.maximum_power_output = "1GW"
dense_steam_turbine.fluid_box = {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} }
      },
      production_type = "input-output",
      filter = "dense-steam",
      minimum_temperature = 15
    }


data:extend({dense_steam_turbine})


mineral_heat_exchanger = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
mineral_heat_exchanger.name = "mineral-heat-exchanger"
mineral_heat_exchanger.minable = {mining_time = 0.3, result = "mineral-heat-exchanger"}
mineral_heat_exchanger.target_temperature = 750
mineral_heat_exchanger.energy_consumption = "20MW"
mineral_heat_exchanger.fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0.5}},
        {type = "input-output", position = {2, 0.5}}
      },
      production_type = "input-output",
      filter = "mineral-oil"
    }
mineral_heat_exchanger.output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -1.5}}
      },
      production_type = "input-output",
      filter = "molten-mineral-oil"
    }
mineral_heat_exchanger.energy_source = 
    {
      type = "heat",
      max_temperature = 1000,
      specific_heat = "200MJ",
      max_transfer = "20GW",
      min_working_temperature = 750,
      minimum_glow_temperature = 500,
      connections =
      {
        {
          position = {0, 0.5},
          direction = defines.direction.south
        }
      },
      pipe_covers =
        make_4way_animation_from_spritesheet(
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
          width = 32,
          height = 32,
          direction_count = 4,
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
          }
        }),
      heat_pipe_covers =
        make_4way_animation_from_spritesheet(
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
          width = 32,
          height = 32,
          direction_count = 4,
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
            width = 64,
            height = 64,
            direction_count = 4,
            scale = 0.5
          }
        }),
      heat_picture =
      {
        north =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
          priority = "extra-high",
          width = 24,
          height = 48,
          shift = util.by_pixel(-1, 8),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
            priority = "extra-high",
            width = 44,
            height = 96,
            shift = util.by_pixel(-0.5, 8.5),
            scale = 0.5
          }
        },
        east =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
          priority = "extra-high",
          width = 40,
          height = 40,
          shift = util.by_pixel(-21, -13),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
            priority = "extra-high",
            width = 80,
            height = 80,
            shift = util.by_pixel(-21, -13),
            scale = 0.5
          }
        },
        south =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
          priority = "extra-high",
          width = 16,
          height = 20,
          shift = util.by_pixel(-1, -30),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
            priority = "extra-high",
            width = 28,
            height = 40,
            shift = util.by_pixel(-1, -30),
            scale = 0.5
          }
        },
        west =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
          priority = "extra-high",
          width = 32,
          height = 40,
          shift = util.by_pixel(23, -13),
          hr_version =
          {
            filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
            priority = "extra-high",
            width = 64,
            height = 76,
            shift = util.by_pixel(23, -13),
            scale = 0.5
          }
        },
      },
      heat_glow =
      {
        north =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-N-glow.png",
          priority = "extra-high",
          width = 38,
          height = 70,
          tint = heat_glow_tint,
          shift = util.by_pixel(0, 8)
        },
        east =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-E-glow.png",
          priority = "extra-high",
          width = 60,
          height = 62,
          shift = util.by_pixel(-22, -12)
        },
        south =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-S-glow.png",
          priority = "extra-high",
          width = 38,
          height = 40,
          tint = heat_glow_tint,
          shift = util.by_pixel(0, -36)
        },
        west =
        {
          filename = "__base__/graphics/entity/heat-exchanger/heatex-W-glow.png",
          priority = "extra-high",
          width = 60,
          height = 64,
          shift = util.by_pixel(20, -12)
        },
      }
    }

data:extend({mineral_heat_exchanger})

advanced_rocket_silo = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
advanced_rocket_silo.name = "advanced-rocket-silo"
advanced_rocket_silo.minable = {mining_time = 1, result = "advanced-rocket-silo"}
advanced_rocket_silo.module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 3.3}
    }
advanced_rocket_silo.crafting_speed = 3
advanced_rocket_silo.energy_usage = "5MW" --energy usage used when crafting the rocket
advanced_rocket_silo.idle_energy_usage = "1MW"
advanced_rocket_silo.lamp_energy_usage = "1MW"
advanced_rocket_silo.active_energy_usage = "10GW"
advanced_rocket_silo.times_to_blink = 3
advanced_rocket_silo.light_blinking_speed = 1 / (1.5 * 60)
advanced_rocket_silo.door_opening_speed = 1 / (2.5 * 60)
advanced_rocket_silo.rocket_entity = "advanced-rocket"
advanced_rocket_silo.fixed_recipe = "advanced-rocket-part"
advanced_rocket_silo.show_recipe_icon = false

data:extend({advanced_rocket_silo})

advanced_rocket_silo_rocket = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"])
advanced_rocket_silo_rocket.name = "advanced-rocket"
advanced_rocket_silo_rocket.rising_speed = 1 / (4.0 * 60)
advanced_rocket_silo_rocket.engine_starting_speed = 1 / (3.0 * 60)
advanced_rocket_silo_rocket.flying_speed = 1 / (1000 * 60)
advanced_rocket_silo_rocket.flying_acceleration = 0.12

data:extend({advanced_rocket_silo_rocket})


locomotive_2 = table.deepcopy(data.raw["locomotive"]["locomotive"])
locomotive_2.name = "locomotive-2"
locomotive_2.minable = {mining_time = 0.5, result = "locomotive-2"}
locomotive_2.max_health = 2000
locomotive_2.max_speed = 1.5
locomotive_2.max_power = "1000kW"
locomotive_2.braking_force = 20
--locomotive_2.equipment_grid = "locomotive-equipment-grid-2"

data:extend({locomotive_2})


cargo_wagon_2 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
cargo_wagon_2.name = "cargo-wagon-2"
cargo_wagon_2.minable = {mining_time = 0.5, result = "cargo-wagon-2"}
cargo_wagon_2.inventory_size = 80
cargo_wagon_2.max_health = 1200
cargo_wagon_2.max_speed = 1.8
cargo_wagon_2.braking_force = 6
--cargo_wagon_2.equipment_grid = "wagon-equipment-grid-2"
data:extend({cargo_wagon_2})

fluid_wagon_2 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fluid_wagon_2.name = "fluid-wagon-2"
fluid_wagon_2.minable = {mining_time = 0.5, result = "fluid-wagon-2"}
fluid_wagon_2.capacity = 50000
fluid_wagon_2.max_health = 1200
fluid_wagon_2.max_speed = 1.8
--fluid_wagon_2.equipment_grid = "wagon-equipment-grid-2"
fluid_wagon_2.braking_force = 6

data:extend({fluid_wagon_2})


locomotive_3 = table.deepcopy(data.raw["locomotive"]["locomotive"])
locomotive_3.name = "locomotive-3"
locomotive_3.minable = {mining_time = 0.5, result = "locomotive-3"}
locomotive_3.max_health = 4000
locomotive_3.max_speed = 2.5
locomotive_3.max_power = "2000kW"
locomotive_3.braking_force = 8
locomotive_3.friction_force = 60
locomotive_3.air_resistance = 0.001
--locomotive_3.equipment_grid = "locomotive-equipment-grid-3"

data:extend({locomotive_3})

cargo_wagon_3 = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
cargo_wagon_3.name = "cargo-wagon-3"
cargo_wagon_3.minable = {mining_time = 0.5, result = "cargo-wagon-3"}
cargo_wagon_3.inventory_size = 160
cargo_wagon_3.max_health = 1800
cargo_wagon_3.max_speed = 2.8
cargo_wagon_3.braking_force = 9
--cargo_wagon_3.equipment_grid = "wagon-equipment-grid-3"

data:extend({cargo_wagon_3})

fluid_wagon_3 = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fluid_wagon_3.name = "fluid-wagon-3"
fluid_wagon_3.minable = {mining_time = 0.5, result = "fluid-wagon-3"}
fluid_wagon_3.capacity = 75000
fluid_wagon_3.max_health = 1800
fluid_wagon_3.max_speed = 2.8
fluid_wagon_3.braking_force = 9
--fluid_wagon_3.equipment_grid = "wagon-equipment-grid-3"

data:extend({fluid_wagon_3})

electric_pole_2 = table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
electric_pole_2.name = "electric-pole-2"
electric_pole_2.minable = {mining_time = 0.1, result = "electric-pole-2"}
electric_pole_2.maximum_wire_distance = 15
electric_pole_2.supply_area_distance = 5

data:extend({electric_pole_2})

electric_pole_3 = table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
electric_pole_3.name = "electric-pole-3"
electric_pole_3.minable = {mining_time = 0.1, result = "electric-pole-3"}
electric_pole_3.maximum_wire_distance = 20
electric_pole_3.supply_area_distance = 7

data:extend({electric_pole_3})

big_electric_pole_2 = table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
big_electric_pole_2.name = "big-electric-pole-2"
big_electric_pole_2.minable = {mining_time = 0.1, result = "big-electric-pole-2"}
big_electric_pole_2.maximum_wire_distance = 50
big_electric_pole_2.supply_area_distance = 2

data:extend({big_electric_pole_2})

big_electric_pole_3 = table.deepcopy(data.raw["electric-pole"]["big-electric-pole"])
big_electric_pole_3.name = "big-electric-pole-3"
big_electric_pole_3.minable = {mining_time = 0.1, result = "big-electric-pole-3"}
big_electric_pole_3.maximum_wire_distance = 64
big_electric_pole_3.supply_area_distance = 2

data:extend({big_electric_pole_3})

substation_2 = table.deepcopy(data.raw["electric-pole"]["substation"])
substation_2.name = "substation-2"
substation_2.minable = {mining_time = 0.1, result = "substation-2"}
substation_2.maximum_wire_distance = 22
substation_2.supply_area_distance = 11

data:extend({substation_2})

substation_3 = table.deepcopy(data.raw["electric-pole"]["substation"])
substation_3.name = "substation-3"
substation_3.minable = {mining_time = 0.1, result = "substation-3"}
substation_3.maximum_wire_distance = 25
substation_3.supply_area_distance = 13

data:extend({substation_3})


refinery_2 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
refinery_2.name = "refinery-2"
refinery_2.module_specification =
    {
      module_slots = 5
    }
refinery_2.crafting_speed = 2

data:extend({refinery_2})

refinery_3 = table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
refinery_3.name = "refinery-3"
refinery_3.module_specification =
    {
      module_slots = 6
    }
refinery_2.crafting_speed = 3

data:extend({refinery_3})

centrifuge_2 = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
centrifuge_2.name = "centrifuge-2"
centrifuge_2.module_specification =
    {
      module_slots = 5
    }
centrifuge_2.crafting_speed = 2

data:extend({centrifuge_2})

centrifuge_3 = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
centrifuge_3.name = "centrifuge-3"
centrifuge_3.module_specification =
    {
      module_slots = 6
    }
centrifuge_2.crafting_speed = 3

data:extend({centrifuge_3})

pumpjack_2 = table.deepcopy(data.raw["minging-drill"]["pumpjack"])
pumpjack_2.name = "pumpjack-2"
pumpjack_2.module_specification =
    {
      module_slots = 5
    }
pumpjack_2.crafting_speed = 2

data:extend({pumpjack_2})

pumpjack_3 = table.deepcopy(data.raw["minging-drill"]["pumpjack"])
pumpjack_3.name = "pumpjack-3"
pumpjack_3.module_specification =
    {
      module_slots = 6
    }
pumpjack_2.crafting_speed = 3

data:extend({pumpjack_3})
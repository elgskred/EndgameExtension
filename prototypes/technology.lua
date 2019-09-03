data.raw["technology"]["mining-productivity-4"].unit =
({
  count = "2500",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["mining-productivity-4"].max_level = 4

for i = 5, 50, 1 do
  data:extend(
  {
    {
      type = "technology",
      name = "mining-productivity-" .. i,
      icon_size = 128,
      icon = "__base__/graphics/technology/mining-productivity.png",
      effects =
      {
        {
          type = "mining-drill-productivity-bonus",
          modifier = 0.1
        }
      },
      prerequisites = {"mining-productivity-"..(i - 1)},
      unit =
      {
        count_formula = "2500*(" .. i .." - 3)",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      max_level = i,
      upgrade = true,
      order = "c-k-f-e"
    }
  })
end

data.raw["technology"]["worker-robots-speed-6"].unit = ({
  count = "1500",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["worker-robots-speed-6"].max_level = 6

for i = 7, 15, 1 do
  data:extend(
  {
    {
      type = "technology",
      name = "worker-robots-speed-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/worker-robots-speed.png",
      effects =
      {
        {
          type = "worker-robot-speed",
          modifier = 0.5
        }
      },
      prerequisites = {"worker-robots-speed-"..(i-1), "space-science-pack"},
      unit =
      {
        count_formula = "(1500+(("..i.."-6)*500))*("..i.."-6)",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      max_level = i,
      upgrade = true,
      order = "c-k-f-e"
    }
  })
end

data.raw["technology"]["artillery-shell-range-1"].unit = ({
  count_formula = "2^1*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["artillery-shell-range-1"].max_level = 1

for i = 2, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "artillery-shell-range-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/artillery-range.png",
      effects =
      {
        {
          type = "artillery-range",
          modifier = 0.3
        }
      },
      prerequisites = {"artillery-shell-range-"..(i-1)},
      unit =
      {
        count_formula = "2^"..i.."*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      max_level = i,
      order = "e-k-d"
    }
  })
end

data.raw["technology"]["artillery-shell-speed-1"].unit = ({
  count_formula = "1000+3^(1-1)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["artillery-shell-speed-1"].max_level = 1

for i = 2, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "artillery-shell-speed-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/artillery-speed.png",
      effects =
      {
        {
          type = "gun-speed",
          ammo_category = "artillery-shell",
          modifier = 1
        }
      },
      prerequisites = {"artillery-shell-speed-"..(i-1)},
      unit =
      {
        count_formula = "1000+3^("..i.."-1)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      max_level = i,
      order = "e-k-k"
    }
  })
end

data.raw["technology"]["follower-robot-count-7"].unit = ({
  count_formula = "1000+3^(1-1)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["follower-robot-count-7"].max_level = 7

for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "follower-robot-count-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/follower-robots.png",
      effects =
      {
        {
          type = "maximum-following-robots-count",
          modifier = 10
        }
      },
      prerequisites = {"follower-robot-count-"..(i-1)},
      unit =
      {
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"production-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60,
        count_formula = "100(L-8)+900"
      },
      level = 14,
      max_level = i,
      upgrade = true,
      order = "e-p-b-c"
    }
  })
end

for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "laser-turret-speed-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/laser-turret-speed.png",
      effects =
      {
        {
          type = "gun-speed",
          ammo_category = "laser-turret",
          modifier = 0.5
        }
      },
      prerequisites = {"laser-turret-speed-"..(i-1)},
      unit =
      {
        count = (1000*i)*i,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-n-n"
    }
  })
end


for i = 7, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "weapon-shooting-speed-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/weapon-shooting-speed-3.png",
      effects =
      {
        {
          type = "gun-speed",
          ammo_category = "bullet",
          modifier = 0.4
        },
        {
          type = "gun-speed",
          ammo_category = "shotgun-shell",
          modifier = 0.4
        },
        {
          type = "gun-speed",
          ammo_category = "cannon-shell",
          modifier = 1.5
        },
        {
          type = "gun-speed",
          ammo_category = "rocket",
          modifier = 1.3
        }
      },
      prerequisites = {"weapon-shooting-speed-"..(i-1), "space-science-pack"},
      unit =
      {
        count = (1000*i)*i,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    }
  })
end

data.raw["technology"]["energy-weapons-damage-7"].unit = ({
  count_formula = "1000+3^(1-7)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["energy-weapons-damage-7"].max_level = 7

for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "energy-weapons-damage-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/energy-weapons-damage-3.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "laser-turret",
          modifier = 0.7
        },
        {
          type = "ammo-damage",
          ammo_category = "combat-robot-laser",
          modifier = 0.3
        },
        {
          type = "ammo-damage",
          ammo_category = "combat-robot-beam",
          modifier = 0.3
        }
      },
      prerequisites = {"energy-weapons-damage-"..(i-1)},
      unit =
      {
        count_formula = "2^("..i.."-7)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    }
  })
end

data.raw["technology"]["refined-flammables-7"].unit = ({
  count_formula = "1000+3^(1-7)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["refined-flammables-7"].max_level = 7


for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "refined-flammables-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/refined-flammables.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "flamethrower",
          modifier = 0.2
        },
        {
          type = "turret-attack",
          turret_id = "flamethrower-turret",
          modifier = 0.2
        }
      },
      prerequisites = {"refined-flammables-"..(i-1), "space-science-pack"},
      unit =
      {
        count_formula = "2^("..i.."-7)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    }
  })
end

data.raw["technology"]["stronger-explosives-7"].unit = ({
  count_formula = "1000+3^(1-7)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["stronger-explosives-7"].max_level = 7

for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "stronger-explosives-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/stronger-explosives-3.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "rocket",
          modifier = 0.5
        },
        {
          type = "ammo-damage",
          ammo_category = "grenade",
          modifier = 0.2
        },
        {
          type = "ammo-damage",
          ammo_category = "landmine",
          modifier = 0.2
        }
      },
      prerequisites = {"stronger-explosives-"..(i-1), "space-science-pack"},
      unit =
      {
        count_formula = "2^("..i.."-7)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    }
  })
end

data.raw["technology"]["physical-projectile-damage-7"].unit = ({
  count_formula = "1000+3^(1-7)*1000",
  ingredients =
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1}
  },
  time = 60
})
data.raw["technology"]["physical-projectile-damage-7"].max_level = 7

for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "physical-projectile-damage-"..i,
      icon_size = 128,
      icon = "__base__/graphics/technology/physical-projectile-damage-2.png",
      effects =
      {
        {
          type = "ammo-damage",
          ammo_category = "bullet",
          modifier = 0.4
        },
        {
          type = "turret-attack",
          turret_id = "gun-turret",
          modifier = 0.7
        },
        {
          type = "ammo-damage",
          ammo_category = "shotgun-shell",
          modifier = 0.4
        },
        {
          type = "ammo-damage",
          ammo_category = "cannon-shell",
          modifier = 1
        }
      },
      prerequisites = {"physical-projectile-damage-"..(i-1), "space-science-pack"},
      unit =
      {
        count_formula = "2^("..i.."-7)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "e-l-f"
    }
  })
end


for i = 8, 15, 1 do
  data:extend({
    {
      type = "technology",
      name = "inserter-capacity-bonus-"..i,
      icon = "__base__/graphics/technology/inserter-capacity.png",
      icon_size = 128,
      effects =
      {
        {
          type = "stack-inserter-capacity-bonus",
          modifier = 2 -- result of 12
        }
      },
      prerequisites = {"inserter-capacity-bonus-"..(i-1)},
      unit =
      {
        count_formula = "2^("..i.."-7)*1000",
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 60
      },
      upgrade = true,
      order = "c-o-h"
    }
  })
end




  
  
  












  






data:extend(
{
  {
    type = "technology",
    name = "salt-processing",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/salt-processing.png",
    prerequisites = {"ee-compressed-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "salt"
      },
      {
        type = "unlock-recipe",
        recipe = "sodium-hydroxide"
      }
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "aluminum-processing",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/alumina.png",
    prerequisites = {"salt-processing", "uranium-processing"},
    unit = {
      count = 1000, ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "cryolite"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-cryolite"
      },
      {
        type = "unlock-recipe",
        recipe = "aluminum-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "aluminum-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "aluminum-pipe-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "substation-2"
      },
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "aluminum-battery",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/aluminum-battery.png",
    prerequisites = {"aluminum-processing"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "aluminum-battery"
      },
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "multi-layer-electronics",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/multi-layer-electronics.png",
    prerequisites = {"aluminum-processing"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "multi-layered-pcb"
      },
      {
        type = "unlock-recipe",
        recipe = "multi-layered-electronic-circuit"
      }
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "ee-construction-robotics-2",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/construction-robotics-2.png",
    prerequisites = {"ee-robotics-2"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "construction-robot-2"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-logistics-robotics-2",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/logistic-robotics-2.png",
    prerequisites = {"ee-robotics-2"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-2"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-robotics-2",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/robotics-2.png",
    prerequisites = {"multi-layer-electronics","aluminum-battery"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-2"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-advanced-automation-science-pack",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-automation-science-pack.png",
    prerequisites = {"multi-layer-electronics"},
    unit =
    {
      count = 1250,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-automation-science-pack"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-modules-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"multi-layer-electronics","ee-advanced-automation-science-pack"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-4"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-modules-5",
    icon_size = 128,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"ee-modules-4","ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-5"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-modules-6",
    icon_size = 128,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"ee-modules-5","ee-superconducted-electronics"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-6"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-modules-7",
    icon_size = 128,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"ee-modules-6","ee-rocket-silo-3", "ee-effect-transmission-3"},
    unit =
    {
      count = 12500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-7"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "research-speed-7",
    icon_size = 128,
    icon = "__base__/graphics/technology/research-speed.png",
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.7
      }
    },
    prerequisites = {"research-speed-6", "ee-advanced-automation-science-pack"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-m-da"
  },
  {
    type = "technology",
    name = "research-speed-8",
    icon_size = 128,
    icon = "__base__/graphics/technology/research-speed.png",
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.8
      }
    },
    prerequisites = {"research-speed-7", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-m-da"
  },
  {
    type = "technology",
    name = "research-speed-9",
    icon_size = 128,
    icon = "__base__/graphics/technology/research-speed.png",
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.9
      }
    },
    prerequisites = {"research-speed-8", "ee-superconducted-electronics"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-m-da"
  },
  {
    type = "technology",
    name = "ee-roboport-mkii",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/roboport-2.png",
    prerequisites = {"multi-layer-electronics"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport-2"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-logistics-iv-4",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/logistics.png",
    prerequisites = {"ee-advanced-automation-science-pack"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "high-speed-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "high-speed-splitter"
      },
      {
        type = "unlock-recipe",
        recipe = "high-speed-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "high-speed-loader"
      },
      {
        type = "unlock-recipe",
        recipe = "high-speed-long-handed-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "high-speed-stack-filter-inserter"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-chemical-plant-mkii",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/chemical-plant-2.png",
    prerequisites = {"aluminum-processing"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-2"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-electric-mining-drill-mkii-2",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/electric-mining-drill-2.png",
    prerequisites = {"advanced-electronics"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-mining-drill-2"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-electric-mining-drill-mkiii-3",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/electric-mining-drill-2.png",
    prerequisites = {"multi-layer-electronics"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-mining-drill-3"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-electric-mining-drill-mkiv-4",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/electric-mining-drill-2.png",
    prerequisites = {"ee-electric-mining-drill-mkiii-3", "ee-cpu"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-mining-drill-4"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-electric-mining-drill-mkiv-5",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/electric-mining-drill-2.png",
    prerequisites = {"ee-electric-mining-drill-mkiv-4", "ee-superconducted-electronics", "ee-modules-5"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-mining-drill-5"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-effect-transmission-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/effect-transmission.png",
    prerequisites = {"ee-modules-4","ee-advanced-automation-science-pack"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "beacon-2"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-effect-transmission-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/effect-transmission.png",
    prerequisites = {"ee-modules-6","ee-effect-transmission-2"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "beacon-3"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-rutile-processing",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/rutile-processing.png",
    prerequisites = {"ee-logistics-iv-4"},
    unit =
    {
      count = 1750,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "titanium-tetrachloride"
      },
      {
        type = "unlock-recipe",
        recipe = "carbon"
      },
      {
        type = "unlock-recipe",
        recipe = "purified-titanium-tetrachloride"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium-sponge"
      },
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-titanium-processing",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    prerequisites = {"ee-rutile-processing"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "titanium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "titanium-pipe-to-ground"
      },
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-compressed-science-pack",
    icon_size = 128,
    icon = "__base__/graphics/technology/automation-science-pack.png",
    prerequisites = {"rocket-silo"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lab-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "compressed-science-pack"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-electric-furnace-mkii-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    prerequisites = {"multi-layer-electronics", "aluminum-processing"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-2"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-electric-furnace-mkiii-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    prerequisites = {"ee-superconducted-electronics", "ee-electric-furnace-mkii-2"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-3"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-cpu",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-electronics-2.png",
    prerequisites = {"ee-titanium-processing"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cpu"
      }
    },
    order = "i-i"
  },
  {
    type = "technology",
    name = "ee-titanium-battery",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/aluminum-battery.png",
    prerequisites = {"ee-titanium-processing"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "titanium-battery"
      },
    },
    order = "b-c"
  },
  {
    type = "technology",
    name = "ee-automation-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-4"
      }
    },
    prerequisites = {"ee-modules-4", "automation-3"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    order = "a-b-c"
  },
  {
    type = "technology",
    name = "ee-advanced-logistic-science-pack",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-logistic-science-pack.png",
    prerequisites = {"ee-cpu"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-logistic-science-pack"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-robotics-3",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/robotics-2.png",
    prerequisites = {"ee-titanium-battery","ee-robotics-2", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-3"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-construction-robotics-3",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/construction-robotics-3.png",
    prerequisites = {"ee-robotics-3", "ee-construction-robotics-2", "ee-cpu", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "construction-robot-3"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-logistics-robotics-3",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/logistic-robotics-3.png",
    prerequisites = {"ee-robotics-3", "ee-logistics-robotics-2", "ee-cpu", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-3"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-rocket-silo-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-silo-2"
      },
    },
    prerequisites = {"ee-titanium-processing", "mining-productivity-10"},
    unit =
    {
      count = 7500,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-gold-processing",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    prerequisites = {"ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gold-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "gold-cable"
      },
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-advanced-chemical-science-pack",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-chemical-science-pack.png",
    prerequisites = {"ee-cpu", "ee-chemical-plant-mkii", "ee-advanced-logistic-science-pack", "ee-gold-processing", "ee-coltan-processing"},
    unit =
    {
      count = 2750,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-chemical-science-pack"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-chemical-plant-mkiii",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/chemical-plant-2.png",
    prerequisites = {"ee-advanced-chemical-science-pack", "ee-chemical-plant-mkii"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-3"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-superconductivity",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/superconductivity.png",
    prerequisites = {"ee-cpu", "ee-chemical-plant-mkii", "ee-advanced-chemical-science-pack"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cryogenic-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "liquid-nitrogen"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-superconducted-electronics",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/superconducted-electronics.png",
    prerequisites = {"ee-superconductivity"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "superconducted-electronics"
      },
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-lab-3",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/lab-mk2.png",
    prerequisites = {"ee-superconducted-electronics", "ee-modules-5"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lab-mk3"
      },
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-advanced-utility-science-pack",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-utility-science-pack.png",
    prerequisites = {"ee-superconducted-electronics", "ee-modules-6", "ee-lab-3"},
    unit =
    {
      count = 3500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-utility-science-pack"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-advanced-production-science-pack",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-production-science-pack.png",
    prerequisites = {"ee-superconducted-electronics", "ee-electric-furnace-mkiii-3", "ee-electric-mining-drill-mkiv-5"},
    unit =
    {
      count = 3500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-production-science-pack"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-solar-energy-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    prerequisites = {"multi-layer-electronics"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-2"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-solar-energy-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    prerequisites = {"ee-advanced-logistic-science-pack", "ee-solar-energy-2"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-3"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-solar-energy-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    prerequisites = {"ee-superconducted-electronics", "ee-solar-energy-3"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1}
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-4"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-solar-energy-5",
    icon_size = 128,
    icon = "__base__/graphics/technology/solar-energy.png",
    prerequisites = {"ee-rocket-silo-3", "ee-solar-energy-4"},
    unit =
    {
      count = 12500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-5"
      }
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-rocket-silo-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-silo-3"
      },
    },
    prerequisites = {"ee-advanced-production-science-pack", "ee-advanced-utility-science-pack", "mining-productivity-20", "ee-rocket-silo-2"},
    unit =
    {
      count = 12500,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-nuclear-power-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger-2"
      },
    },
    prerequisites = {"nuclear-power", "ee-advanced-automation-science-pack"},
    unit =
    {
      count = 5000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-nuclear-power-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger-3"
      },
    },
    prerequisites = {"ee-nuclear-power-2", "ee-advanced-utility-science-pack", "ee-advanced-production-science-pack"},
    unit =
    {
      count = 10000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-advanced-rocket-structure",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/advanced-rocket-structure.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-rocket-structure"
      },
    },
    prerequisites = {"ee-rocket-silo-3"},
    unit =
    {
      count = 12500,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-advanced-rocket-control-unit",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-control-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-rocket-control-unit"
      },
    },
    prerequisites = {"ee-rocket-silo-3", "ee-modules-7"},
    unit =
    {
      count = 15000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-enriched-rocket-fuel",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-fuel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "enriched-rocket-fuel"
      },
    },
    prerequisites = {"ee-rocket-silo-3"},
    unit =
    {
      count = 12500,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-logistics-v-5",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/logistics.png",
    prerequisites = {"ee-advanced-utility-science-pack", "ee-advanced-production-science-pack"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-splitter"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-loader"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-stack-filter-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-inserter"
      }
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "ee-water-treatment",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heavy-water"
      },
    },
    prerequisites = {"ee-nuclear-power-3"},
    unit =
    {
      count = 4000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-advanced-oil-processing-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/oil-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "carbonized-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "mineral-oil"
      },
    },
    prerequisites = {"ee-nuclear-power-3"},
    unit =
    {
      count = 4000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-cooling",
    icon_size = 128,
    icon = "__base__/graphics/technology/oil-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cooling-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "dense-steam"
      },
    },
    prerequisites = {"ee-advanced-oil-processing-2", "ee-water-treatment"},
    unit =
    {
      count = 15000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-nuclear-power-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "dense-steam-turbine"
      },
      {
        type = "unlock-recipe",
        recipe = "mineral-heat-exchanger"
      },
    },
    prerequisites = {"ee-cooling"},
    unit =
    {
      count = 30000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-deep-space-satellite",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "deep-space-satellite"
      },
    },
    prerequisites = {"ee-advanced-rocket-structure", "ee-solar-energy-5", "ee-advanced-rocket-control-unit", "ee-enriched-rocket-fuel"},
    unit =
    {
      count = 15000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-productivity-satellite",
    icon_size = 128,
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-satellite"
      },
      {
        type = "unlock-recipe",
        recipe = "productivity-beacon"
      },
      {
        type = "unlock-recipe",
        recipe = "master-productivity-module"
      },
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-5"
      },

    },
    prerequisites = {"ee-advanced-rocket-structure", "ee-solar-energy-5", "ee-advanced-rocket-control-unit", "ee-enriched-rocket-fuel", "ee-modules-7"},
    unit =
    {
      count = 50000,

      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    order = "k-a"
  },
  {
    type = "technology",
    name = "ee-advanced-productivity-research",
    icon_size = 128,
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
    },
    prerequisites = {"ee-productivity-satellite", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "5000*L",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},

      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "mining-productivity-51",
    icon_size = 128,
    icon = "__base__/graphics/technology/mining-productivity.png",
    effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.25
      }
    },
    prerequisites = {"ee-deep-space-satellite", "mining-productivity-50"},
    unit =
    {
      count_formula = "2500*(L - 50)",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "ee-railway-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-2"
      }
    },
    prerequisites = {"ee-titanium-processing", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 7500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
      },
      time = 60
    },
    order = "c-g-a"
  },
  {
    type = "technology",
    name = "ee-railway-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "locomotive-3"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "fluid-wagon-3"
      }
    },
    prerequisites = {"ee-deep-space-satellite", "ee-productivity-satellite", "ee-railway-2"},
    unit =
    {
      count = 15000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    order = "c-g-a"
  },
  {
    type = "technology",
    name = "ee-coltan-processing",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/coltan-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tantalum"
      },
      {
        type = "unlock-recipe",
        recipe = "tantalum-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "tantalum-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "tantalum-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "tantalum-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "substation-3"
      },
    },
    prerequisites = {"ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
      },
      time = 60
    },
    order = "c-g-a"
  },
  {
    type = "technology",
    name = "worker-robots-speed-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 1.0
      }
    },
    prerequisites = {"worker-robots-speed-15", "space-science-pack", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "2^(L-16)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-storage-4",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-3"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-5",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-4", "ee-advanced-automation-science-pack"},
    unit =
    {
      count = 5000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-6",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-5", "ee-advanced-logistic-science-pack"},
    unit =
    {
      count = 10000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-7",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-6", "ee-advanced-chemical-science-pack"},
    unit =
    {
      count = 15000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-8",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-7", "ee-advanced-utility-science-pack"},
    unit =
    {
      count = 20000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-9",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-8", "ee-advanced-production-science-pack"},
    unit =
    {
      count = 25000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-10",
    icon_size = 128,
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-9", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "(30000+((L-9)*500))*(L-9)",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "artillery-shell-range-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/artillery-range.png",
    effects =
    {
      {
        type = "artillery-range",
        modifier = 0.3
      }
    },
    prerequisites = {"artillery", "space-science-pack","ee-deep-space-satellite","artillery-shell-range-15"},
    unit =
    {
      count_formula = "2^(L-15)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    order = "e-k-d"
  },
  {
    type = "technology",
    name = "artillery-shell-speed-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/artillery-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = 1
      }
    },
    prerequisites = {"artillery", "space-science-pack", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "1000+3^((L-16)-1)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    order = "e-k-k"
  },
  {
    type = "technology",
    name = "follower-robot-count-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/follower-robots.png",
    effects =
    {
      {
        type = "maximum-following-robots-count",
        modifier = 10
      }
    },
    prerequisites = {"follower-robot-count-15", "ee-deep-space-satellite"},
    unit =
    {
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60,
      count_formula = "100(L-15)+900"
    },
    level = 14,
    max_level = "infinite",
    upgrade = true,
    order = "e-p-b-c"
  },
  {
    type = "technology",
    name = "laser-turret-speed-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/laser-turret-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-turret",
        modifier = 0.5
      }
    },
    prerequisites = {"laser-turret-speed-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "1000+3^((L-15)-1)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "e-n-n"
  },
  {
    type = "technology",
    name = "weapon-shooting-speed-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/weapon-shooting-speed-3.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 1.5
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 1.3
      }
    },
    prerequisites = {"weapon-shooting-speed-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "1000+3^((L-15)-1)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "energy-weapons-damage-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/energy-weapons-damage-3.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-turret",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "combat-robot-laser",
        modifier = 0.3
      },
      {
        type = "ammo-damage",
        ammo_category = "combat-robot-beam",
        modifier = 0.3
      }
    },
    prerequisites = {"energy-weapons-damage-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "2^(L-15)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "refined-flammables-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/refined-flammables.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.2
      }
    },
    prerequisites = {"refined-flammables-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "2^(L-16)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "stronger-explosives-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/stronger-explosives-3.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    },
    prerequisites = {"stronger-explosives-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "2^(L-15)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "physical-projectile-damage-16",
    icon_size = 128,
    icon = "__base__/graphics/technology/physical-projectile-damage-2.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.7
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1
      }
    },
    prerequisites = {"physical-projectile-damage-15", "ee-deep-space-satellite"},
    unit =
    {
      count_formula = "2^(L-15)*1000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
  {
    type = "technology",
    name = "ee-robotics-4",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/robotics-2.png",
    prerequisites = {"ee-titanium-battery","ee-robotics-3", "ee-deep-space-satellite"},
    unit =
    {
      count = 25000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-4"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport-3"
      },
    },
    order = "r-a"
  },
  {
    type = "technology",
    name = "ee-construction-robotics-4",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/construction-robotics-4.png",
    prerequisites = {"ee-robotics-4", "ee-construction-robotics-3", "ee-deep-space-satellite"},
    unit =
    {
      count = 25000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "construction-robot-4"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "ee-logistics-robotics-4",
    icon_size = 128,
    icon = "__EndgameExtension__/graphics/technology/logistic-robotics-4.png",
    prerequisites = {"ee-robotics-4", "ee-logistics-robotics-3", "ee-deep-space-satellite"},
    unit =
    {
      count = 25000,
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-4"
      }
    },
    order = "r-b"
  },
  {
    type = "technology",
    name = "inserter-capacity-bonus-16",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1 -- result of 3
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 2 -- result of 12
      }
    },
    prerequisites = {"inserter-capacity-bonus-15"},
    unit =
    {
      count_formula = "2^(L-15)*5000",
      ingredients =
      {
        {"compressed-science-pack", 1},
        {"advanced-automation-science-pack", 1},
        {"advanced-logistic-science-pack", 1},
        {"advanced-chemical-science-pack", 1},
        {"advanced-utility-science-pack", 1},
        {"advanced-production-science-pack", 1},
        {"advanced-space-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "c-o-h"
  }





})
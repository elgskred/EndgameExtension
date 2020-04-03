--Speed Modules--
data.raw["module"]["speed-module"].effect = ({
    speed = {bonus = ee.modules.speedPerLevel},
    consumption = {bonus = ee.modules.consumptionPenaltyPerLevel}
})
data.raw["module"]["speed-module-2"].effect = ({
    speed = {bonus = 2 * ee.modules.speedPerLevel},
    consumption = {bonus = 2 * ee.modules.consumptionPenaltyPerLevel}
})
data.raw["module"]["speed-module-3"].effect = ({
    speed = {bonus = 3 * ee.modules.speedPerLevel},
    consumption = {bonus = 3 * ee.modules.consumptionPenaltyPerLevel}
})
--Effectivity Modules--
data.raw["module"]["effectivity-module"].effect = ({
    consumption = {bonus = -1 * ee.modules.consumptionPerLevel},
    pollution = {bonus = -1 * ee.modules.pollutionPerLevel}

})
data.raw["module"]["effectivity-module-2"].effect = ({
    consumption = {bonus = -2 * ee.modules.consumptionPerLevel},
    pollution = {bonus = -2 * ee.modules.pollutionPerLevel}

})
data.raw["module"]["effectivity-module-3"].effect = ({
    consumption = {bonus = -3 * ee.modules.consumptionPerLevel},
    pollution = {bonus = -3 * ee.modules.pollutionPerLevel}

})
--Productivity Module--
data.raw["module"]["productivity-module"].effect = ({
    productivity = {bonus = ee.modules.productivityPerLevel},
    consumption = {bonus = ee.modules.consumptionPenaltyPerLevel},
    pollution = {bonus = ee.modules.pollutionPenaltyPerLevel}
})
data.raw["module"]["productivity-module-2"].effect = ({
    productivity = {bonus = 2 * ee.modules.productivityPerLevel},
    consumption = {bonus = 2 * ee.modules.consumptionPenaltyPerLevel},
    pollution = {bonus = 2 * ee.modules.pollutionPenaltyPerLevel}
})
data.raw["module"]["productivity-module-3"].effect = ({
    productivity = {bonus = 3 * ee.modules.productivityPerLevel},
    consumption = {bonus = 3 * ee.modules.consumptionPenaltyPerLevel},
    pollution = {bonus = 3 * ee.modules.pollutionPenaltyPerLevel}
})

--data.raw["assembling-machine"]["assembling-machine-1"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["assembling-machine-2"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["assembling-machine-3"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["centrifuge"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["chemical-plant"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["escape-pod-assembler"].allowed_effects = {"consumption", "speed", "productivity"}
--data.raw["assembling-machine"]["oil-refinery"].allowed_effects = {"consumption", "speed", "productivity"}


new_productivity_limitations = {
    "superconducted-electronics",
    "salt",
    "alumina",
    "cryolite",
    "aluminum-plate",
    "aluminum-battery",
    "multi-layered-pcb",
    "multi-layered-electronic-circuit",
    "flying-robot-frame-2",
    "advanced-automation-science-pack",
    "carbon",
    "titanium-sponge",
    "titanium-plate",
    "titanium-gear-wheel",
    "compressed-science-pack",
    "cpu",
    "titanium-battery",
    "flying-robot-frame-3",
    "advanced-logistic-science-pack",
    "gold-plate",
    "advanced-chemical-science-pack",
    "advanced-utility-science-pack",
    "advanced-production-science-pack",
    "advanced-rocket-structure",
    "advanced-rocket-part",
    "advanced-rocket-control-unit",
    "enriched-rocket-fuel",
    "sodium-hydroxide",
    "molten-cryolite",
    "titanium-tetrachloride",
    "purified-titanium-tetrachloride",
    "liquid-nitrogen",
    "heavy-water",
    "carbonized-oil",
    "mineral-oil",
    "dense-steam",
}



--table.insert(data.raw["lab"]["lab"].inputs, "advanced-automation-science-pack")
local t = data.raw["module"]["productivity-module"].limitation

for _, item in pairs(new_productivity_limitations) do
    table.insert(t, item)
end

data.raw["module"]["productivity-module"].limitation = t
data.raw["module"]["productivity-module-2"].limitation = t
data.raw["module"]["productivity-module-3"].limitation = t








data:extend(
{
  {
    type = "module",
    name = "speed-module-4",
    icon = "__EndgameExtension__/graphics/icons/speed-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 4,
    order = "a[speed]-da[speed-module-3]",
    stack_size = 50,
    effect = {
        speed = {bonus = 4 * ee.modules.speedPerLevel},
        consumption = {bonus = 4 * ee.modules.consumptionPenaltyPerLevel}
    }
  },
  {
    type = "module",
    name = "speed-module-5",
    icon = "__EndgameExtension__/graphics/icons/speed-module-5.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 5,
    order = "a[speed]-db[speed-module-3]",
    stack_size = 50,
    effect = {
        speed = {bonus = 5 * ee.modules.speedPerLevel},
        consumption = {bonus = 5 * ee.modules.consumptionPenaltyPerLevel}
    }
  },
  {
    type = "module",
    name = "speed-module-6",
    icon = "__EndgameExtension__/graphics/icons/speed-module-6.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 6,
    order = "a[speed]-dc[speed-module-3]",
    stack_size = 50,
    effect = {
        speed = {bonus = 6 * ee.modules.speedPerLevel},
        consumption = {bonus = 6 * ee.modules.consumptionPenaltyPerLevel}
    }
  },
  {
    type = "module",
    name = "speed-module-7",
    icon = "__EndgameExtension__/graphics/icons/speed-module-7.png",
    icon_size = 32,
    subgroup = "module",
    category = "speed",
    tier = 7,
    order = "a[speed]-dc[speed-module-3]",
    stack_size = 50,
    effect = {
        speed = {bonus = 7 * ee.modules.speedPerLevel},
        consumption = {bonus = 7 * ee.modules.consumptionPenaltyPerLevel}
    }
  },
  {
    type = "module",
    name = "effectivity-module-4",
    icon = "__EndgameExtension__/graphics/icons/effectivity-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 4,
    order = "c[effectivity]-da[effectivity-module-3]",
    stack_size = 50,
    effect = { 
        consumption = {bonus = -4 * ee.modules.consumptionPerLevel},
        pollution = {bonus = -4 * ee.modules.pollutionPerLevel}
    }
  },
  {
    type = "module",
    name = "effectivity-module-5",
    icon = "__EndgameExtension__/graphics/icons/effectivity-module-5.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 5,
    order = "c[effectivity]-db[effectivity-module-3]",
    stack_size = 50,
    effect = { 
        consumption = {bonus = -5 * ee.modules.consumptionPerLevel},
        pollution = {bonus = -5 * ee.modules.pollutionPerLevel}
    }
  },
  {
    type = "module",
    name = "effectivity-module-6",
    icon = "__EndgameExtension__/graphics/icons/effectivity-module-6.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 6,
    order = "c[effectivity]-dc[effectivity-module-3]",
    stack_size = 50,
    effect = { 
        consumption = {bonus = -6 * ee.modules.consumptionPerLevel},
        pollution = {bonus = -6 * ee.modules.pollutionPerLevel}
    }
  },
  {
    type = "module",
    name = "effectivity-module-7",
    icon = "__EndgameExtension__/graphics/icons/effectivity-module-7.png",
    icon_size = 32,
    subgroup = "module",
    category = "effectivity",
    tier = 7,
    order = "c[effectivity]-dc[effectivity-module-3]",
    stack_size = 50,
    effect = { 
        consumption = {bonus = -7 * ee.modules.consumptionPerLevel},
        pollution = {bonus = -7 * ee.modules.pollutionPerLevel}
    }
  },
  {
    type = "module",
    name = "productivity-module-4",
    icon = "__EndgameExtension__/graphics/icons/productivity-module-4.png",
    icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 4,
    order = "c[productivity]-da[productivity-module-3]",
    stack_size = 50,
    effect =
    {
        productivity = {bonus = 4 * ee.modules.productivityPerLevel},
        consumption = {bonus = 4 * ee.modules.consumptionPenaltyPerLevel},
        pollution = {bonus = 4 * ee.modules.pollutionPenaltyPerLevel}
    },
    limitation = t,
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "productivity-module-5",
    icon = "__EndgameExtension__/graphics/icons/productivity-module-5.png",
    icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 5,
    order = "c[productivity]-db[productivity-module-3]",
    stack_size = 50,
    effect =
    {
        productivity = {bonus = 5 * ee.modules.productivityPerLevel},
        consumption = {bonus = 5 * ee.modules.consumptionPenaltyPerLevel},
        pollution = {bonus = 5 * ee.modules.pollutionPenaltyPerLevel}
    },
    limitation = t,
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "productivity-module-6",
    icon = "__EndgameExtension__/graphics/icons/productivity-module-6.png",
    icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 6,
    order = "c[productivity]-dc[productivity-module-3]",
    stack_size = 50,
    effect =
    {
        productivity = {bonus = 6 * ee.modules.productivityPerLevel},
        consumption = {bonus = 6 * ee.modules.consumptionPenaltyPerLevel},
        pollution = {bonus = 6 * ee.modules.pollutionPenaltyPerLevel}
    },
    limitation = t,
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "productivity-module-7",
    icon = "__EndgameExtension__/graphics/icons/productivity-module-7.png",
    icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 7,
    order = "c[productivity]-dc[productivity-module-3]",
    stack_size = 50,
    effect =
    {
        productivity = {bonus = 7 * ee.modules.productivityPerLevel},
        consumption = {bonus = 7 * ee.modules.consumptionPenaltyPerLevel},
        pollution = {bonus = 7 * ee.modules.pollutionPenaltyPerLevel}
    },
    limitation = t,
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "master-productivity-module",
    icon = "__EndgameExtension__/graphics/icons/master-productivity-module.png",
    icon_size = 32,
    subgroup = "module",
    category = "productivity",
    tier = 1,
    order = "c[productivity]-dd[productivity-module-3]",
    stack_size = 50,
    effect =
    {
        productivity = {bonus = 1 * ee.modules.masterProductivityPerLevel},
        pollution = {bonus = 20 * ee.modules.consumptionPenaltyPerLevel},
    },
    limitation = nil,
    limitation_message_key = nil
  },
})
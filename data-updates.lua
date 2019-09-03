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


if (mods.RampantArsenal) then 
  data.raw["equipment-grid"]["locomotive-equipment-grid-2"].equipment_categories = {"noInventory", "movement", "adv-generator"}
  data.raw["equipment-grid"]["locomotive-equipment-grid-3"].equipment_categories = {"noInventory", "movement", "adv-generator"}
  data.raw["equipment-grid"]["wagon-equipment-grid-2"].equipment_categories = {"noInventory", "movement", "adv-generator"}
  data.raw["equipment-grid"]["wagon-equipment-grid-3"].equipment_categories = {"noInventory", "movement", "adv-generator"}
  data.raw["locomotive"]["locomotive-3"].equipment_grid = "locomotive-equipment-grid-3"
  data.raw["locomotive"]["locomotive-2"].equipment_grid = "locomotive-equipment-grid-2"
  data.raw["cargo-wagon"]["cargo-wagon-2"].equipment_grid = "wagon-equipment-grid-2"
  data.raw["cargo-wagon"]["cargo-wagon-3"].equipment_grid = "wagon-equipment-grid-3"
  data.raw["fluid-wagon"]["fluid-wagon-2"].equipment_grid = "wagon-equipment-grid-2"
  data.raw["fluid-wagon"]["fluid-wagon-3"].equipment_grid = "wagon-equipment-grid-3"
end


data.raw["technology"]["logistics"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "underground-belt"
  },
  {
    type = "unlock-recipe",
    recipe = "splitter"
  },
  {
    type = "unlock-recipe",
    recipe = "loader"
  }
}
data.raw["technology"]["logistics-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "fast-transport-belt"
  },
  {
    type = "unlock-recipe",
    recipe = "fast-underground-belt"
  },
  {
    type = "unlock-recipe",
    recipe = "fast-splitter"
  },
  {
    type = "unlock-recipe",
    recipe = "fast-loader"
  }
}

data.raw["technology"]["logistics-3"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "express-transport-belt"
  },
  {
    type = "unlock-recipe",
    recipe = "express-underground-belt"
  },
  {
    type = "unlock-recipe",
    recipe = "express-splitter"
  },
  {
    type = "unlock-recipe",
    recipe = "express-loader"
  }
}
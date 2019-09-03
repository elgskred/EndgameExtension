if not ee then ee = {} end
if not ee.modules then ee.modules = {} end

ee.modules.speedPerLevel = settings.startup["ee-modules-perlevel-bonus-speed"].value
ee.modules.productivityPerLevel = settings.startup["ee-modules-perlevel-bonus-productivity"].value
ee.modules.consumptionPerLevel = settings.startup["ee-modules-perlevel-bonus-consumption"].value
ee.modules.pollutionPerLevel = settings.startup["ee-modules-perlevel-bonus-pollution"].value
ee.modules.pollutionPenaltyPerLevel = settings.startup["ee-modules-perlevel-penalty-pollution"].value
ee.modules.consumptionPenaltyPerLevel = settings.startup["ee-modules-perlevel-penalty-consumption"].value
ee.modules.masterProductivityPerLevel = settings.startup["ee-modules-master-perlevel-bonus-productivity"].value




require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.resources")
require("prototypes.autoplace-controls")
require("prototypes.technology")
require("prototypes.fluid")
require("prototypes.item-groups")
require("prototypes.modules")
require("prototypes.grid")




# Author: Atricos

import mods.thaumcraft.Infusion;

print("STARTING DraconicAdditions.zs");

# Inert Potato Helmet
recipes.remove(<draconicadditions:inert_potato_helm>);
recipes.addShaped(<draconicadditions:inert_potato_helm>, [[<contenttweaker:solar_ingot>,<minecraft:potato>,<contenttweaker:solar_ingot>],[<minecraft:potato>,<galacticraftplanets:titanium_helmet>,<minecraft:potato>]]);

# Inert Potato Chestplate
recipes.remove(<draconicadditions:inert_potato_chest>);
recipes.addShaped(<draconicadditions:inert_potato_chest>, [[<contenttweaker:solar_ingot>,<galacticraftplanets:titanium_chestplate>,<contenttweaker:solar_ingot>],[<minecraft:potato>,<minecraft:potato>,<minecraft:potato>],[<contenttweaker:solar_ingot>,<minecraft:potato>,<contenttweaker:solar_ingot>]]);

# Inert Potato Leggings
recipes.remove(<draconicadditions:inert_potato_legs>);
recipes.addShaped(<draconicadditions:inert_potato_legs>, [[<contenttweaker:solar_ingot>,<minecraft:potato>,<contenttweaker:solar_ingot>],[<minecraft:potato>,<galacticraftplanets:titanium_leggings>,<minecraft:potato>],[<minecraft:potato>,null,<minecraft:potato>]]);

# Inert Potato Boots
recipes.remove(<draconicadditions:inert_potato_boots>);
recipes.addShaped(<draconicadditions:inert_potato_boots>, [[<minecraft:potato>,null,<minecraft:potato>],[<contenttweaker:solar_ingot>,<galacticraftplanets:titanium_boots>,<contenttweaker:solar_ingot>]]);

# Infused Potato Helmet
recipes.remove(<draconicadditions:infused_potato_helm>);
mods.thaumcraft.Infusion.registerRecipe("infused_potato_helm", "", <draconicadditions:infused_potato_helm>, 8, [<aspect:praemunio> * 100, <aspect:herba> * 80, <aspect:terra> * 30, <aspect:praecantatio> * 20], <draconicadditions:inert_potato_helm>, [<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:wyvern_energy_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>]);

# Infused Potato Chestplate
recipes.remove(<draconicadditions:infused_potato_chest>);
mods.thaumcraft.Infusion.registerRecipe("infused_potato_chest", "", <draconicadditions:infused_potato_chest>, 8, [<aspect:praemunio> * 100, <aspect:herba> * 80, <aspect:terra> * 30, <aspect:praecantatio> * 20], <draconicadditions:inert_potato_chest>, [<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:wyvern_energy_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>]);

# Infused Potato Leggings
recipes.remove(<draconicadditions:infused_potato_legs>);
mods.thaumcraft.Infusion.registerRecipe("infused_potato_legs", "", <draconicadditions:infused_potato_legs>, 8, [<aspect:praemunio> * 100, <aspect:herba> * 80, <aspect:terra> * 30, <aspect:praecantatio> * 20], <draconicadditions:inert_potato_legs>, [<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:wyvern_energy_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>]);

# Infused Potato Boots
recipes.remove(<draconicadditions:infused_potato_boots>);
mods.thaumcraft.Infusion.registerRecipe("infused_potato_boots", "", <draconicadditions:infused_potato_boots>, 8, [<aspect:praemunio> * 100, <aspect:herba> * 80, <aspect:terra> * 30, <aspect:praecantatio> * 20], <draconicadditions:inert_potato_boots>, [<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:wyvern_energy_core>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>]);

# Energized Potato Armor tooltip
<draconicadditions:potato_helm>.addTooltip(format.white("Obtained by Right Clicking with an Infused Potato Helmet."));
<draconicadditions:potato_chest>.addTooltip(format.white("Obtained by Right Clicking with an Infused Potato Chestplate."));
<draconicadditions:potato_legs>.addTooltip(format.white("Obtained by Right Clicking with an Infused Potato Leggings."));
<draconicadditions:potato_boots>.addTooltip(format.white("Obtained by Right Clicking with an Infused Potato Boots."));

# Armor Generator
recipes.remove(<draconicadditions:armor_generator>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicadditions:armor_generator>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_praemunio>,<simplyjetpacks:metaitemmods:25>,<contenttweaker:condensed_vis_crystal_praemunio>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:wyvern_core>,<simplyjetpacks:metaitemmods:25>,<draconicevolution:generator>,<simplyjetpacks:metaitemmods:25>,<draconicevolution:wyvern_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_praemunio>,<simplyjetpacks:metaitemmods:25>,<contenttweaker:condensed_vis_crystal_praemunio>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Item Drainer
recipes.remove(<draconicadditions:item_drainer>);
mods.extendedcrafting.TableCrafting.addShaped(<draconicadditions:item_drainer>,
[[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_potentia>,<thermalexpansion:machine:9>,<contenttweaker:condensed_vis_crystal_potentia>,<galacticraftplanets:item_basic_asteroids:5>],
[<draconicevolution:wyvern_core>,<thermalexpansion:machine:9>,<draconicevolution:generator>,<thermalexpansion:machine:9>,<draconicevolution:wyvern_core>],
[<galacticraftplanets:item_basic_asteroids:5>,<contenttweaker:condensed_vis_crystal_potentia>,<thaumicaugmentation:impetus_drainer>,<contenttweaker:condensed_vis_crystal_potentia>,<galacticraftplanets:item_basic_asteroids:5>],
[<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>,<draconicevolution:wyvern_core>,<galacticraftplanets:item_basic_asteroids:5>,<galacticraftplanets:item_basic_asteroids:5>]]);

# Capacitor Supplier
recipes.remove(<draconicadditions:capacitor_supplier>);
recipes.addShaped(<draconicadditions:capacitor_supplier>, [[<immersiveengineering:material:1>,null,<immersiveengineering:material:1>],[null,<thermalexpansion:machine:9>,null],[<thermalfoundation:material:32>,<draconicevolution:dislocator_pedestal>,<thermalfoundation:material:32>]]);

print("ENDING DraconicAdditions.zs");
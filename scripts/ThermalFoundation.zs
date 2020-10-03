# Author: Atricos

import mods.immersiveengineering.MetalPress;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Transposer;
import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter;

print("STARTING ThermalFoundation.zs");

# Renaming Mana Infused to Mithril
game.setLocalization("tile.thermalfoundation.ore.mithril.name", "Mithril Ore");
game.setLocalization("tile.thermalfoundation.storage.mithril.name", "Mithril Block");
game.setLocalization("tile.thermalfoundation.glass.mithril.name", "Hardened Mithril Glass");
<thermalfoundation:coin:72>.displayName = "Mithril Coin";
<thermalfoundation:material:72>.displayName = "Pulverized Mithril";
<thermalfoundation:material:136>.displayName = "Mithril Ingot";
<thermalfoundation:material:200>.displayName = "Mithril Nugget";
<thermalfoundation:material:264>.displayName = "Mithril Gear";
<thermalfoundation:material:328>.displayName = "Mithril Plate";

# Steel Tools are already added by Immersive Engineering
recipes.remove(<thermalfoundation:tool.sword_steel>);
recipes.remove(<thermalfoundation:tool.pickaxe_steel>);
recipes.remove(<thermalfoundation:tool.shovel_steel>);
recipes.remove(<thermalfoundation:tool.axe_steel>);
recipes.remove(<thermalfoundation:tool.hoe_steel>);

# Redstone Reception Coil
recipes.remove(<thermalfoundation:material:513>);
recipes.addShapedMirrored(<thermalfoundation:material:513>, [[null,null,<ore:ingotRedAlloy>],[null,<thermalfoundation:material:25>,null],[<ore:ingotRedAlloy>,null,null]]);

# Redstone Transmission Coil
recipes.remove(<thermalfoundation:material:514>);
recipes.addShapedMirrored(<thermalfoundation:material:514>, [[null,null,<ore:ingotRedAlloy>],[null,<thermalfoundation:material:258>,null],[<ore:ingotRedAlloy>,null,null]]);

# Redstone Conductance Coil
recipes.remove(<thermalfoundation:material:515>);
recipes.addShapedMirrored(<thermalfoundation:material:515>, [[<ore:ingotRedAlloy>,null,null],[null,<thermalfoundation:material:289>,null],[null,null,<ore:ingotRedAlloy>]]);

# Saw Blade
recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped(<thermalfoundation:material:657>, [[<immersiveengineering:material:2>,<immersiveengineering:material:2>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<thermalfoundation:material:352>,<immersiveengineering:material:2>],[<immersiveengineering:material:2>,<immersiveengineering:material:2>,<immersiveengineering:material:2>]]);

# Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped(<thermalfoundation:upgrade>, [[null,<thermalfoundation:material:290>,null],[<thermalfoundation:material:290>,<thermalfoundation:material:291>,<thermalfoundation:material:290>],[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>]]);

# Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>, [[<ore:blockGlassHardened>,<thermalfoundation:material:289>,<ore:blockGlassHardened>],[<thermalfoundation:material:289>,<thermalfoundation:material:258>,<thermalfoundation:material:289>],[<ore:ingotRedAlloy>,<ore:ingotRedAlloy>,<ore:ingotRedAlloy>]]);

# Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2>, [[<thermalfoundation:material:1025>,<thermalfoundation:material:293>,<thermalfoundation:material:1025>],[<thermalfoundation:material:293>,<thermalfoundation:material:289>,<thermalfoundation:material:293>],[<thermalfoundation:material:514>,<thermalfoundation:material:514>,<thermalfoundation:material:514>]]);

# Resonant Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3>, [[<thermalfoundation:material:1024>,<thermalfoundation:material:295>,<thermalfoundation:material:1024>],[<thermalfoundation:material:295>,<thermalfoundation:material:294>,<thermalfoundation:material:295>],[<thermalfoundation:material:515>,<thermalfoundation:material:515>,<thermalfoundation:material:515>]]);

# Signalum Security Lock
recipes.remove(<thermalfoundation:security>);
recipes.addShaped(<thermalfoundation:security>, [[null,<thermalfoundation:material:165>,null],[<thermalfoundation:material:165>,<thermalfoundation:material:291>,<thermalfoundation:material:165>],[<thermalfoundation:material:165>,<thermalfoundation:material:165>,<thermalfoundation:material:165>]]);

# Multimeter
recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>, [[<thermalfoundation:material:322>,<lightningcraft:rod:2>,<thermalfoundation:material:322>],[<thermalfoundation:material:352>,<thermalfoundation:material:25>,<thermalfoundation:material:352>],[<thermalfoundation:material:352>,<contenttweaker:rf_powder>,<thermalfoundation:material:352>]]);

# Redprint
recipes.remove(<thermalfoundation:diagram_redprint>);
recipes.addShaped(<thermalfoundation:diagram_redprint>, [[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],[<ore:ingotRedAlloy>,<contenttweaker:rf_powder>,<ore:ingotRedAlloy>],[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>]]);

# Tome of Knowledge
recipes.remove(<thermalfoundation:tome_experience>);
recipes.addShaped(<thermalfoundation:tome_experience>, [[null,<minecraft:experience_bottle>,null],[<minecraft:emerald>,<minecraft:book>,<minecraft:emerald>],[null,<minecraft:experience_bottle>,null]]);

# Tar from Smoldering Tar
val slimeballs = [<minecraft:slime_ball>,<actuallyadditions:item_misc:12>,<aether_legacy:swetty_ball>,<industrialforegoing:pink_slime>,<tconstruct:edible:1>,<tconstruct:edible:2>,<tconstruct:edible:3>,<tconstruct:edible:4>] as IItemStack[];
for item in slimeballs {
	mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:833>, item, <liquid:smoldering_tar> * 200, 6000);
}

# Smoldering Tar from Tar
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:smoldering_tar> * 200, <thermalfoundation:material:833>, 800);

# Mana Dust
recipes.addShapeless(<thermalfoundation:material:1028>, [<contenttweaker:rf_powder>,<thermalfoundation:material:1024>,<thermalfoundation:material:1025>,<thermalfoundation:material:1026>,<thermalfoundation:material:1027>]);

# Mithril Ingot
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:136>, <thermalfoundation:material:1028>, null, 200, 512, [<contenttweaker:demonlord_ingot>, <thermalfoundation:material:134>]);
mods.enderio.AlloySmelter.addRecipe(<thermalfoundation:material:136>, [<thermalfoundation:material:1028>, <contenttweaker:demonlord_ingot>, <thermalfoundation:material:134>], 24000);

print("ENDING ThermalFoundation.zs");
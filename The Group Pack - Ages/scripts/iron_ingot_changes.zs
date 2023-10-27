import mods.orestages.OreStages;
import mods.create.SequencedAssemblyManager;

furnace.remove(<item:minecraft:iron_ingot>);
blastFurnace.remove(<item:minecraft:iron_ingot>);

craftingTable.remove(<item:projecte:transmutation_table>);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_blast_brick")
 .transitionTo(<item:kubejs:incomplete_iron_ingot>)
 .require(<item:minecraft:raw_iron>)
 .loops(1)
 .addOutput(<item:minecraft:iron_ingot>, 32)
 .addOutput(<item:minecraft:iron_nugget> * 8, 2)
 .addOutput(<item:create:iron_sheet>, 1)
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 50))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
 .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(50))
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 50)));

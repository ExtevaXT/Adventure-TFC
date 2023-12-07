import mods.tfc.api.ForgeRule;
import mods.tfc.api.ingredient.ItemStackProvider;

craftingTable.addShaped("cannon", <item:smallships:cannon>, [
    [<item:tfc:metal/double_sheet/cast_iron>, <item:tfc:metal/double_sheet/cast_iron>, <item:tfc:metal/double_sheet/cast_iron>],
    [<item:minecraft:air>, <tag:items:astikorcarts:cart_wheel>, <tag:items:astikorcarts:cart_wheel>]]);

craftingTable.addShaped("sail", <item:smallships:sail>, [
    [<tag:items:tfc:fabric>, <tag:items:tfc:fabric>, <tag:items:tfc:fabric>],
    [<tag:items:tfc:fabric>, <tag:items:minecraft:logs>, <tag:items:tfc:fabric>],
    [<item:minecraft:lead>, <tag:items:minecraft:logs>, <item:minecraft:lead>]]);

<recipetype:tfc:welding>.addRecipe("cannon_ball", <item:tfc:metal/double_ingot/cast_iron>, <item:minecraft:gunpowder>, 3, ItemStackProvider.none(<item:smallships:cannon_ball>), true);

val woods = ["oak", "spruce", "birch", "acacia"];

for wood in woods {
    craftingTable.addShaped(wood + "_cog", <item:smallships:${wood}_cog>, [
        [<item:tfc:jute_net>, <item:smallships:sail>, <item:tfc:jute_net>],
        [<item:tfcbarrels:wood/barrel/${wood}>, <item:tfc:brass_mechanisms>, <item:tfcbarrels:wood/barrel/${wood}>],
        [<item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>]]);

    craftingTable.addShaped(wood + "_brigg", <item:smallships:${wood}_brigg>, [
        [<item:smallships:sail>, <item:tfc:jute_net>, <item:smallships:sail>],
        [<item:tfcbarrels:wood/barrel/${wood}>, <item:create:precision_mechanism>, <item:tfcbarrels:wood/barrel/${wood}>],
        [<item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>]]);

    craftingTable.addShaped(wood + "_galley", <item:smallships:${wood}_galley>, [
        [<item:tfc:jute_net>, <item:smallships:sail>, <item:tfc:jute_net>],
        [<item:firmalife:treated_wood>, <item:firmalife:treated_wood>, <item:firmalife:treated_wood>],
        [<item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>, <item:tfc:wood/boat/${wood}>]]);
}


setblock ~ ~ ~ polished_deepslate_stairs[facing=west]
setblock ~-1 ~ ~ warped_wall_sign[facing=west]
setblock ~ ~ ~2 spruce_sign[rotation=11]
$summon minecraft:slime ~ ~ ~1 {Size: 0.5, NoAI: 1b, Silent: 1b, Tags: ["aaa_payment_terminal_east", "$(to)"]}
effect give @e[tag=aaa_payment_terminal_east] invisibility infinite 1 true
effect give @e[tag=aaa_payment_terminal_east] glowing infinite 1 true
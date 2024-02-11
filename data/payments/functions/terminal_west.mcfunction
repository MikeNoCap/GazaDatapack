setblock ~ ~ ~ polished_deepslate_stairs[facing=east]
setblock ~1 ~ ~ warped_wall_sign[facing=east]
setblock ~ ~ ~-2 spruce_sign[rotation=3]
$summon minecraft:slime ~ ~ ~-1 {Size: 0.5, NoAI: 1b, Silent: 1b, Tags: ["aaa_payment_terminal_west", "$(to)"]}
effect give @e[tag=aaa_payment_terminal_west] invisibility infinite 1 true
effect give @e[tag=aaa_payment_terminal_west] glowing infinite 1 true
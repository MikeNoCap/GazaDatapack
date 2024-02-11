execute as @a[scores={HoldingGlock=1}] run item replace entity @s hotbar.0 with crossbow{Charged: 1b, display:{Name:'[{"text":"Glock 19","italic":false,"color":"dark_red"}]',Lore:['[{"text":"POFF, PANG, DØD","italic":false}]']},Enchantments:[{}], HideFlags:1, Glock: 1b}

execute as @a[scores={HoldingGlock=1, FiringGlock=1}] store result storage minecraft:uids id int 1 run scoreboard players get @s id
execute as @a[scores={HoldingGlock=1, FiringGlock=1}] at @s run function weapons:glock/fire with storage minecraft:uids


#Stop hold
execute as @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Glock: 1b}}}] at @s store result storage minecraft:uids id int 1 run scoreboard players get @p id
execute as @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Glock: 1b}}}] at @s as @p at @s run function weapons:glock/stop_hold with storage minecraft:uids

execute as @e[tag=bullet] at @s rotated as @s unless block ^ ^ ^0.5 air run kill @e[type=block_display, limit=2, sort=nearest]
execute as @e[tag=bullet] at @s rotated as @s unless block ^ ^ ^0.1 air run kill @e[type=block_display, limit=2, sort=nearest]
execute as @e[tag=bullet] at @s rotated as @s unless block ^ ^ ^-0.5 air run kill @e[type=block_display, limit=2, sort=nearest]


execute as @e[tag=bullet] at @s run tp @s ^ ^ ^2
execute as @e[tag=bullet] at @s as @e[distance=..2, limit=1, sort=nearest, type=!block_display] unless entity @s[type=item] at @s run function weapons:glock/kill

execute as @a[scores={HoldingRpg=1}] run item replace entity @s hotbar.1 with crossbow{Charged: 1b, display:{Name:'[{"text":"RPG","italic":false,"color":"gold"}]',Lore:['[{"text":"TSSS, WOOSH, SPRENGT.","italic":false}]']},Enchantments:[{}], HideFlags:1, Rpg: 1b}

execute as @a[scores={HoldingRpg=1, FiringWeapon=1}, nbt={SelectedItem: {id: "minecraft:crossbow", tag: {Rpg: 1b}}}] store result storage minecraft:uids id int 1 run scoreboard players get @s id
execute as @a[scores={HoldingRpg=1, FiringWeapon=1}, nbt={SelectedItem: {id: "minecraft:crossbow", tag: {Rpg: 1b}}}] at @s run function weapons:rpg/fire with storage minecraft:uids


#Stop hold
execute as @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Rpg: 1b}}}] at @s store result storage minecraft:uids id int 1 run scoreboard players get @p id
execute as @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Rpg: 1b}}}] at @s as @p at @s run function weapons:rpg/stop_hold with storage minecraft:uids

execute as @e[tag=rpgBullet] at @s rotated as @s unless block ^ ^ ^0.5 air run function weapons:rpg/splode
execute as @e[tag=rpgBullet] at @s rotated as @s unless block ^ ^ ^0.1 air run function weapons:rpg/splode
execute as @e[tag=rpgBullet] at @s rotated as @s unless block ^ ^ ^-0.5 air run function weapons:rpg/splode


execute as @e[tag=rpgBullet] at @s run tp @s ^ ^ ^2
execute as @e[tag=rpgBullet] at @s as @e[distance=..2, limit=1, sort=nearest, type=!block_display] unless entity @s[type=item] at @s run function weapons:rpg/kill

execute as @a[nbt={SelectedItem:{id:"minecraft:redstone_torch", tag: {display:{Name:'[{"text":"Glock 19","italic":false,"color":"dark_red"}]',Lore:['[{"text":"POFF, PANG, DØD","italic":false}]']}}}}] unless entity @s[scores={HoldingGlock=1}] run function weapons:glock/start_hold
execute as @a[scores={HoldingGlock=1}] unless entity @s[nbt={SelectedItem:{id:"minecraft:redstone_torch", tag: {display:{Name:'[{"text":"Glock 19","italic":false,"color":"dark_red"}]',Lore:['[{"text":"POFF, PANG, DØD","italic":false}]']}}}}] run function weapons:glock/stop_hold
execute as @a[scores={HoldingGlock=1}] at @s run tp @e[tag=punch_bag, distance=..2.5, limit=1] ^ ^ ^1 ~ ~



execute as @e[tag=punch_bag] at @s if data entity @s {HurtTime:10s} as @a[scores={HoldingGlock=1}, limit=1, sort=nearest] run function weapons:glock/fire



execute as @e[tag=bullet] at @s run tp @s ^ ^ ^2
execute as @e[tag=bullet] at @s run kill @p[distance=..2]
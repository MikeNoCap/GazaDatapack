data modify storage minecraft:kills sender set from entity @e[tag=bullet, limit=1, sort=nearest] Tags[1]
execute as @e[tag=bullet, limit=1, sort=nearest] at @s as @e[type=block_display, limit=2, sort=nearest] run kill @s
data modify storage minecraft:kills sender set string storage minecraft:kills sender -1
function weapons:glock/kill2 with storage minecraft:kills


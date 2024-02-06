# Particles
execute as @e[tag=icbm] at @s run particle minecraft:angry_villager ^ ^ ^-3.4 0.1 0.1 0.1 100 20
# execute if score countdown Countdown >= medium_speed Countdown positioned -125 93 59 run particle campfire_signal_smoke ~ ~1 ~ 0.1 0.1 0.1 100 10

# Move
execute if score countdown Countdown <= O Countdown if score countdown Countdown >= medium_speed Countdown as @e[tag=icbm] at @s run tp @s ^ ^ ^0.3
execute if score countdown Countdown <= medium_speed Countdown if score countdown Countdown >= top_speed Countdown as @e[tag=icbm] at @s run tp @s ^ ^ ^0.6
execute if score countdown Countdown <= top_speed Countdown as @e[tag=icbm] at @s run tp @s ^ ^ ^3

# Rotate
execute as @e[tag=icbm] at @s if entity @e[tag=silo, distance=300..] run data modify storage minecraft:disaster reached set value 1
execute as @e[tag=icbm] at @s if data storage minecraft:disaster reached unless data storage minecraft:disaster reached2 as @e[type=block_display, distance=..7, limit=20] at @s facing entity @e[tag=plig] eyes run tp @s ~ ~ ~ ~ 0
execute as @e[tag=icbm] at @s if entity @e[tag=targetMark, distance=..2] run data modify storage minecraft:disaster reached2 set value 1
execute if data storage minecraft:disaster reached2 as @e[tag=icbm] at @s as @e[type=block_display, distance=..7, limit=20] at @s run tp @s ~ ~ ~ ~ 90



# Boom
execute as @e[tag=icbm] at @s unless block ^ ^ ^1 air run summon fireball ^ ^ ^1 {Motion:[0.0d,-10.0d,0.0d],ExplosionPower:100} 
execute as @e[tag=icbm] at @s unless block ^ ^ ^1 air run kill @e[tag=plig]
execute as @e[tag=icbm] at @s unless block ^ ^ ^1 air run kill @e[type=minecraft:block_display, distance=..5, limit=20]

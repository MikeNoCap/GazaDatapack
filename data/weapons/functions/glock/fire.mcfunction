effect give @e[tag=punch_bag] instant_health 1 1 true
execute at @s run summon block_display ~ ~1.5 ~ {Passengers:[{id:"minecraft:block_display", Tags: ["bullet"], block_state:{Name:"minecraft:gold_block",Properties:{}},transformation:[0.0500f,0.0000f,0.0000f,-0.0250f,0.0000f,0.0500f,0.0000f,-0.0250f,0.0000f,0.0000f,0.1000f,-0.0500f,0.0000f,0.0000f,0.0000f,1.0000f]}], Tags: ["bullet"]}
execute at @s as @e[type=block_display, distance=..3, limit=2, sort=nearest] at @p rotated as @p run tp @s ^ ^1.6 ^2 ~ ~ 
execute at @s run playsound minecraft:entity.blaze.hurt block @a
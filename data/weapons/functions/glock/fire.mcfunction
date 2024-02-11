scoreboard players set @s FiringWeapon 0

$execute at @s run summon block_display ~ ~1.5 ~ {Sender: $(id), Passengers:[{id:"minecraft:block_display", block_state:{Name:"minecraft:gold_block",Properties:{}},transformation:[0.0500f,0.0000f,0.0000f,-0.0250f,0.0000f,0.0500f,0.0000f,-0.0250f,0.0000f,0.0000f,0.1000f,-0.0500f,0.0000f,0.0000f,0.0000f,1.0000f]}], Tags: ["bullet", "sent$(id)"]}
execute at @s as @s at @p anchored eyes rotated as @p run tp @e[type=block_display, distance=..3, limit=2, sort=nearest] ^ ^ ^0.1 ~ ~ 
execute at @s run playsound minecraft:entity.blaze.hurt block @a
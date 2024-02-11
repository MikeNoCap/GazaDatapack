scoreboard players set @s FiringWeapon 0


$execute at @s run summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:bamboo",Properties:{age:"0"}},transformation:[0.0000f,-0.0000f,-1.0000f,0.4725f,1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,-1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}], Tags: ["rpgBullet", "sent$(id)"]}
execute at @s as @s at @p anchored eyes rotated as @p run tp @e[type=block_display, distance=..3, limit=2, sort=nearest] ^ ^ ^0.1 ~ ~ 
execute at @s run playsound minecraft:entity.firework_rocket.launch block @a
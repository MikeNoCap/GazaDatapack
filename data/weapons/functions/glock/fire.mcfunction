say PEW
execute at @s run summon chicken ~ ~ ~ {Tags: ["bullet"], NoAI: 1, Silent: true}
execute rotated as @s at @s as @e[tag=bullet, distance=..2, limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~ 

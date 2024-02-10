scoreboard players add .idNr id 1
scoreboard players operation @s id = .idNr id
execute store result storage minecraft:uids id int 1 run scoreboard players get @s id
function weapons:newplayerstorage with storage minecraft:uids
tag @s add joined
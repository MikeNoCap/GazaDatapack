#give @s redstone_torch{Unbreakable:1,Tags:["glock19"],tags:1b,display:{Name:'[{"text":"Glock 19","italic":false,"color":"dark_red"}]',Lore:['[{"text":"POFF, PANG, DØD","italic":false}]']},Enchantments:[{}],HideFlags:1} 1

execute store result storage minecraft:uids id int 1 run scoreboard players get @s id
function weapons:glock/start_hold with storage minecraft:uids




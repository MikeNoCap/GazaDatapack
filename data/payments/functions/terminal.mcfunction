$execute store result storage minecraft:facestr res int 1 run data modify storage minecraft:facestr north set value $(facing)
execute if data storage minecraft:facestr {res: 0} run say "North"

$execute store result storage minecraft:facestr res int 1 run data modify storage minecraft:facestr east set value $(facing)
$execute if data storage minecraft:facestr {res: 0} positioned $(x) $(y) $(z) run function payments:terminal_east {x: $(x), y: $(y), z: $(z), to: $(to)}

$execute store result storage minecraft:facestr res int 1 run data modify storage minecraft:facestr south set value $(facing)
execute if data storage minecraft:facestr {res: 0} run say "South"

$execute store result storage minecraft:facestr res int 1 run data modify storage minecraft:facestr west set value $(facing)
execute if data storage minecraft:facestr {res: 0} run say "West"

# Reset directions
data merge storage minecraft:facestr {res: 0, east: "east", west: "west", north: "north", south: "south"}





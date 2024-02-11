data modify storage minecraft:kills sender set from entity @e[tag=rpgBullet, limit=1, sort=nearest] Tags[1]
data modify storage minecraft:kills sender set string storage minecraft:kills sender -1
function weapons:rpg/kill2 with storage minecraft:kills
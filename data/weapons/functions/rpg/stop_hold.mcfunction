kill @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Rpg: 1b}}}, limit=1, sort=nearest]
scoreboard players set @s HoldingRpg 0
$execute positioned 69 280 69 run item replace entity @s hotbar.1 from block ~ ~ ~$(id) container.1
say "Stopped holding rpg"

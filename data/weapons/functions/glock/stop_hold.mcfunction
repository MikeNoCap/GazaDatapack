kill @e[type=item, nbt={Item: {id: "minecraft:crossbow", tag: {Glock: 1b}}}, limit=1, sort=nearest]
scoreboard players set @s HoldingGlock 0
$execute positioned 69 280 69 run item replace entity @s hotbar.0 from block ~ ~ ~$(id) container.0
say "Stopped holding glock"

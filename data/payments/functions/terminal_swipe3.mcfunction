$scoreboard players set #amount currency $(amount)
$execute if score #amount currency > $(from) currency at @s as @a[distance=..5, nbt={SelectedItem: {id: "minecraft:book", tag: {debitCard: 1b}}}, limit=1, sort=nearest] run tellraw @s {"text": "Kort avvist", "color": "red"}
$execute unless score #amount currency > $(from) currency run execute at @s run playsound minecraft:block.note_block.chime ambient @a 
$execute unless score #amount currency > $(from) currency run function payments:transfer with storage minecraft:transferdetails

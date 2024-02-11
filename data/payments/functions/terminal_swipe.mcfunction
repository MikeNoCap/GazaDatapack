execute at @s as @a[distance=..5, nbt={SelectedItem: {id: "minecraft:book", tag: {debitCard: 1b}}}, limit=1, sort=nearest] run data modify storage minecraft:transferdetails from set from entity @s SelectedItem.tag.account
data modify storage transferdetails to set from entity @s Tags[1]
$data modify storage transferdetails amount set value $(amount)
function payments:terminal_swipe2 with storage minecraft:transferdetails

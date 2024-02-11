$execute unless score @s id = @a[scores={id=$(sender)}, limit=1] id as @e[tag=bullet, limit=1, sort=nearest] at @s as @e[type=block_display, limit=2, sort=nearest] run summon tnt
$execute unless score @s id = @a[scores={id=$(sender)}, limit=1] id as @e[tag=bullet, limit=1, sort=nearest] at @s as @e[type=block_display, limit=2, sort=nearest] run kill @s

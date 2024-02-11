$execute unless score @s id = @a[scores={id=$(sender)}, limit=1] id as @e[tag=bullet, limit=1, sort=nearest] at @s as @e[type=block_display, limit=2, sort=nearest] run kill @s
$execute unless score @s id = @a[scores={id=$(sender)}, limit=1] id run tellraw @a {"text": "", "extra": [{"selector": "@s"}, {"text": " was shot by "}, {"selector": "@a[scores={id=$(sender)}]"}]}
$execute unless score @s id = @a[scores={id=$(sender)}, limit=1] id run kill @s

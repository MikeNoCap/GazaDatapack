execute as @e[tag=payment_terminal_east] at @s run data modify block ~ ~ ~1 front_text.messages[1] set from block ~-1 ~ ~-1 front_text.messages[0]
effect give @e[tag=payment_terminal_east] instant_health 1 1 true
effect give @e[tag=payment_terminal_east] health_boost 1 1 true
execute as @e[tag=payment_terminal_east, nbt={HurtTime: 10s}] run function payments:terminal_swipe
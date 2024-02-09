scoreboard players set @s HoldingGlock 0
say "Stopped holding glock"
execute at @s run kill @e[tag=punch_bag, distance=..2, limit=1]
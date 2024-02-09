scoreboard players set @s HoldingGlock 1
say "Started glock hold"
execute at @s run summon minecraft:ghast ~ ~ ~ {Tags:["punch_bag"], Silent: 1b, NoAI: 1b, Size: 5, active_effects: [{id: resistance, show_particles: 0b, duration: 999999999, amplifier: 127}, {id: invisibility, show_particles: 0b, duration: 9999999, amplifier: 1}, {id: resistance, show_particles: 0b, duration: 9999999, amplifier: 1}]}
team join NoCollision @e[tag=punch_bag]

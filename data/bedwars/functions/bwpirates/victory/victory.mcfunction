scoreboard players set red bwpirates.bd 0
scoreboard players set yellow bwpirates.bd 0
scoreboard players set green bwpirates.bd 0
scoreboard players set blue bwpirates.bd 0
bossbar remove bwpirates.red
bossbar remove bwpirates.yellow
bossbar remove bwpirates.green
bossbar remove bwpirates.blue
scoreboard players set bwpirates bwState 0
clear @a[tag=playing_bwpirates]
team leave @a[tag=playing_bwpirates]
effect give @a[tag=playing_bwpirates] saturation 1 10 true 
effect give @a[tag=playing_bwpirates] instant_health 1 10 true 
advancement grant @a[tag=playing_bwpirates] only modular_minigames:win_bedwars
execute as @a[tag=playing_bwpirates] run function bedwars:bwpirates/join_spectators
function reset:bwpirates/_load

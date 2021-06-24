scoreboard players set red bwcastle.bd 0
scoreboard players set yellow bwcastle.bd 0
scoreboard players set green bwcastle.bd 0
scoreboard players set blue bwcastle.bd 0
scoreboard players set bwcastle bwState 0
clear @a[tag=bwplaying_bwcastle]
team leave @a[tag=bwplaying_bwcastle]
effect give @a[tag=bwplaying_bwcastle] saturation 1 10 true 
effect give @a[tag=bwplaying_bwcastle] instant_health 1 10 true 
advancement grant @a[tag=bwplaying_bwcastle] only modular_minigames:win_bedwars
execute as @a[tag=bwplaying_bwcastle] run function bedwars:bwcastle/join_spectators
function reset:bwcastle/_load

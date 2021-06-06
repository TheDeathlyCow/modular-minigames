scoreboard players set red template.bd 0
scoreboard players set yellow template.bd 0
scoreboard players set green template.bd 0
scoreboard players set blue template.bd 0
scoreboard players set template bwState 0
clear @a[tag=bwplaying_template]
effect give @a[tag=bwplaying_template] saturation 1 10 true 
effect give @a[tag=bwplaying_template] instant_health 1 10 true 
advancement grant @a[tag=bwplaying_template] only modular_minigames:win_bedwars
execute as @a[tag=bwplaying_template] run function bedwars:template/join_spectators

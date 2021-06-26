scoreboard players set red bwcastle.bd 0
scoreboard players set yellow bwcastle.bd 0
scoreboard players set green bwcastle.bd 0
scoreboard players set blue bwcastle.bd 0
scoreboard players set bwcastle bwState 0
clear @a[tag=playing_bwcastle]
team leave @a[tag=playing_bwcastle]
effect give @a[tag=playing_bwcastle] saturation 1 10 true 
effect give @a[tag=playing_bwcastle] instant_health 1 10 true 
advancement grant @a[tag=playing_bwcastle] only modular_minigames:win_bedwars
execute as @a[tag=playing_bwcastle] run function bedwars:bwcastle/_leave
execute as @a[tag=spectating_bwcastle] run function bedwars:bwcastle/_leave
function reset:bwcastle/_load

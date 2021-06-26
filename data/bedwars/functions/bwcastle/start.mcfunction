scoreboard players set red bwcastle.bd 0
scoreboard players set yellow bwcastle.bd 0
scoreboard players set green bwcastle.bd 0
scoreboard players set blue bwcastle.bd 0
execute as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
tellraw @a[tag=playing_bwcastle] [{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}]
gamemode survival @a[tag=playing_bwcastle]

scoreboard players set bwcastle bwState 1

effect clear @s
effect give @a[tag=playing_bwcastle] saturation 1 10 true 
effect give @a[tag=playing_bwcastle] instant_health 1 10 true 

scoreboard players reset @a[tag=playing_bwcastle] bwDied

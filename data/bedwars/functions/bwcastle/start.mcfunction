execute as @a[tag=bwplaying_bwcastle] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
tellraw @a[tag=bwplaying_bwcastle] [{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}]
gamemode survival @a[tag=bwplaying_bwcastle]

scoreboard players set bwcastle bwState 1

effect clear @s
effect give @a[tag=bwplaying_bwcastle] saturation 1 10 true 
effect give @a[tag=bwplaying_bwcastle] instant_health 1 10 true 

scoreboard players reset @a[tag=bwplaying_bwcastle] bwDied

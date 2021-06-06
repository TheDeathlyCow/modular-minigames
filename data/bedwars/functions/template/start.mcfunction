execute as @a[tag=bwplaying_template] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
tellraw @a[tag=bwplaying_template] [{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}]
gamemode survival @a[tag=bwplaying_template]

scoreboard players set template bwState 1

effect give @a[tag=bwplaying_template] saturation 1 10 true 
effect give @a[tag=bwplaying_template] instant_health 1 10 true 

scoreboard players reset @a[tag=bwplaying_template] bwDied
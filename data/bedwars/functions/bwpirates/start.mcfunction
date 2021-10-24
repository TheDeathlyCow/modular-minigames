scoreboard players set red bwpirates.bd 0
scoreboard players set yellow bwpirates.bd 0
scoreboard players set green bwpirates.bd 0
scoreboard players set blue bwpirates.bd 0
bossbar add bwpirates.red {"text":"Red Team Bed","color":"red"}
bossbar set bwpirates.red color red
bossbar set bwpirates.red max 1
bossbar set bwpirates.red value 1
bossbar set bwpirates.red visible true
bossbar set bwpirates.red players @a[tag=playing_bwpirates]

bossbar add bwpirates.yellow {"text":"Yellow Team Bed","color":"yellow"}
bossbar set bwpirates.yellow color yellow
bossbar set bwpirates.yellow max 1
bossbar set bwpirates.yellow value 1
bossbar set bwpirates.yellow visible true
bossbar set bwpirates.yellow players @a[tag=playing_bwpirates]

bossbar add bwpirates.green {"text":"Green Team Bed","color":"green"}
bossbar set bwpirates.green color green
bossbar set bwpirates.green max 1
bossbar set bwpirates.green value 1
bossbar set bwpirates.green visible true
bossbar set bwpirates.green players @a[tag=playing_bwpirates]

bossbar add bwpirates.blue {"text":"Blue Team Bed","color":"blue"}
bossbar set bwpirates.blue color blue
bossbar set bwpirates.blue max 1
bossbar set bwpirates.blue value 1
bossbar set bwpirates.blue visible true
bossbar set bwpirates.blue players @a[tag=playing_bwpirates]

execute as @a[tag=playing_bwpirates] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
tellraw @a[tag=playing_bwpirates] [{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}]
gamemode survival @a[tag=playing_bwpirates]

scoreboard players set bwpirates bwState 1

effect clear @s
effect give @a[tag=playing_bwpirates] saturation 1 10 true 
effect give @a[tag=playing_bwpirates] instant_health 1 10 true 

scoreboard players reset @a[tag=playing_bwpirates] bwDied

scoreboard players set red bwcastle.bd 0
scoreboard players set yellow bwcastle.bd 0
scoreboard players set green bwcastle.bd 0
scoreboard players set blue bwcastle.bd 0
bossbar add bwcastle.red {"text":"Red Team Bed","color":"red"}
bossbar set bwcastle.red color red
bossbar set bwcastle.red max 1
bossbar set bwcastle.red value 1
bossbar set bwcastle.red visible true
bossbar set bwcastle.red players @a[tag=playing_bwcastle]

bossbar add bwcastle.yellow {"text":"Yellow Team Bed","color":"yellow"}
bossbar set bwcastle.yellow color yellow
bossbar set bwcastle.yellow max 1
bossbar set bwcastle.yellow value 1
bossbar set bwcastle.yellow visible true
bossbar set bwcastle.yellow players @a[tag=playing_bwcastle]

bossbar add bwcastle.green {"text":"Green Team Bed","color":"green"}
bossbar set bwcastle.green color green
bossbar set bwcastle.green max 1
bossbar set bwcastle.green value 1
bossbar set bwcastle.green visible true
bossbar set bwcastle.green players @a[tag=playing_bwcastle]

bossbar add bwcastle.blue {"text":"Blue Team Bed","color":"blue"}
bossbar set bwcastle.blue color blue
bossbar set bwcastle.blue max 1
bossbar set bwcastle.blue value 1
bossbar set bwcastle.blue visible true
bossbar set bwcastle.blue players @a[tag=playing_bwcastle]

execute as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1
tellraw @a[tag=playing_bwcastle] [{"text":"The game has begun! Your gamemodes have been updated.","color":"aqua"}]
gamemode survival @a[tag=playing_bwcastle]

scoreboard players set bwcastle bwState 1

effect clear @s
effect give @a[tag=playing_bwcastle] saturation 1 10 true 
effect give @a[tag=playing_bwcastle] instant_health 1 10 true 

scoreboard players reset @a[tag=playing_bwcastle] bwDied

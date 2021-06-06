tag @s remove bwplaying_template
tag @s add bwspectating_template
effect clear @s
effect give @s invisibility 99999 0 true
gamemode adventure @s
scoreboard players enable @s leave_bedwars

teleport @s 1061 128 -13
spawnpoint @s 1061 128 -13

tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_bedwars","color":"dark_purple"},{"text":" when you are ready to leave."}]
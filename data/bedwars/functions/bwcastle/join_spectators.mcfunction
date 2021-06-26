function reset:bwcastle/_join_spectator
team join bwSpec @s
tag @s remove playing_bwcastle
tag @s add bwspectating_bwcastle
effect clear @s
effect give @s invisibility 99999 0 true
gamemode adventure @s
scoreboard players enable @s leave_bedwars

teleport @s 1080 181 1079
spawnpoint @s 1080 181 1079

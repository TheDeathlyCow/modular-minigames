function reset:bwpirates/_join_spectator
team join bwSpec @s
tag @s remove playing_bwpirates
tag @s add spectating_bwpirates
effect clear @s
effect give @s invisibility 99999 0 true
gamemode adventure @s
scoreboard players enable @s leave_bedwars

teleport @s 2944 123 1024
spawnpoint @s 2944 123 1024

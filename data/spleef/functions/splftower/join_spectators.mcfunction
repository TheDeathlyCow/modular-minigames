team join spleef_spec @s
tag @s add spectating_splftower
function reset:splftower/_join_spectator
tag @s remove playing_splftower
teleport @s 584 134 1053
spawnpoint @s 584 134 1053
gamemode adventure @s
tellraw @a[tag=playing_splftower] [{"selector": "@s", "color":"dark_purple"},{"text": " is now spectating The Tower!", "color": "aqua"}]
tellraw @s [{"text": "Type ", "color": "aqua"}, {"text": "/trigger leave_spleef","color": "dark_purple"}, {"text": " when you want to leave!"}]
scoreboard players enable @s leave_spleef
clear @s

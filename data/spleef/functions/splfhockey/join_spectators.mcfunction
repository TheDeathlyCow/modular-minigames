team join spleef_spec @s
tag @s add spectating_splfhockey
function reset:splfhockey/_join_spectator
tag @s remove playing_splfhockey
teleport @s 1122 104 -509
spawnpoint @s 1122 104 -509
gamemode adventure @s
tellraw @a[tag=playing_splfhockey] [{"selector": "@s", "color":"dark_purple"},{"text": " is now spectating TotallyNotHockey!", "color": "aqua"}]
tellraw @s [{"text": "Type ", "color": "aqua"}, {"text": "/trigger leave_spleef","color": "dark_purple"}, {"text": " when you want to leave!"}]
scoreboard players enable @s leave_spleef
clear @s

team join spleef_spec @s
tag @s add spectating_splfhockey
function reset:splfhockey/_join_spectator
tag @s remove playing_splfhockey
teleport @s -915 22 -900
spawnpoint @s -915 22 -900
gamemode adventure @s
tellraw @a[tag=playing_splfhockey] [{"selector": "@s", "color":"dark_purple"},{"text": " is now spectating TotallyNotHockey!", "color": "aqua"}]
scoreboard players enable @s leave_spleef
clear @s
effect clear @s

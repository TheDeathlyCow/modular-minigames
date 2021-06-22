team join spleef_spec @s
tag @s add spectating_splfmall
function reset:splfmall/_join_spectator
tag @s remove playing_splfmall
teleport @s -841 91 1260
spawnpoint @s -841 91 1260
gamemode adventure @s
tellraw @a[tag=playing_splfmall] [{"selector": "@s", "color":"dark_purple"},{"text": " is now spectating TNT Mall!", "color": "aqua"}]
scoreboard players enable @s leave_spleef
clear @s
effect clear @s

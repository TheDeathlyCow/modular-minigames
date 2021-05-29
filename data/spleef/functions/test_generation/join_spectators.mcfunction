team join spleef_spec @s
tag @s add spectating_test_generation
function reset:test_generation/_join_spectator
tag @s remove playing_test_generation
teleport @s 5770 76 3774
spawnpoint @s 5770 76 3774
gamemode adventure @s
tellraw @a[tag=playing_{0}] [{"selector": "@s", "color"dark_purple"},{"text": " is now spectating TestGen!", "color": "aqua"}]
tellraw @s [{"text": "Type ", "color": "aqua"}, {"text": "/trigger leave_spleef","color": "dark_purple"}, {"text": " when you want to leave!"}]
scoreboard players enable @s leave_spleef
clear @s

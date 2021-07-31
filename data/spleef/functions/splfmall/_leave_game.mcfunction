#executes as a player wanting to leave, at their position

tellraw @a[tag=playing_splfmall] [{"selector":"@s"},{"text":" has left TNT Mall!","color":"aqua"}]
tellraw @a[tag=spectating_splfmall] [{"selector":"@s"},{"text":" has left TNT Mall!","color":"aqua"}]
team leave @s
teleport @s -34 8 -203
spawnpoint @s -34 8 -203
tag @s remove spectating_splfmall
tag @s remove playing_splfmall
tag @s remove leave_splfmall
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s
function modular_minigames:_arrive

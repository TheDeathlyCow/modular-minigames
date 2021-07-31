#executes as a player wanting to leave, at their position

tellraw @a[tag=playing_splftower] [{"selector":"@s"},{"text":" has left The Tower!","color":"aqua"}]
tellraw @a[tag=spectating_splftower] [{"selector":"@s"},{"text":" has left The Tower!","color":"aqua"}]
team leave @s
teleport @s -34 8 -203
spawnpoint @s -34 8 -203
tag @s remove spectating_splftower
tag @s remove playing_splftower
tag @s remove leave_splftower
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s
function modular_minigames:_arrive

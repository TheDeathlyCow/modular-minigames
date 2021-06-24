#executes as a player wanting to leave, at their position

team leave @s
teleport @s 0 16 0
spawnpoint @s 0 16 0
tag @s remove spectating_splftower
tag @s remove playing_splftower
tag @s remove leave_splftower
tellraw @a[tag=playing_splftower] [{"selector":"@s"},{"text":" has left splftower!","color":"aqua"}]
tellraw @a[tag=spectating_splftower] [{"selector":"@s"},{"text":" has left splftower!","color":"aqua"}]
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s

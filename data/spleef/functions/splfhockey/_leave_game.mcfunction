#executes as a player wanting to leave, at their position

team leave @s
teleport @s 0 16 0
spawnpoint @s 0 16 0
tag @s remove spectating_splfhockey
tag @s remove playing_splfhockey
tag @s remove leave_splfhockey
tellraw @a[tag=playing_splfhockey] [{"selector":"@s"},{"text":" has left splfhockey!","color":"aqua"}]
tellraw @a[tag=spectating_splfhockey] [{"selector":"@s"},{"text":" has left splfhockey!","color":"aqua"}]
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s

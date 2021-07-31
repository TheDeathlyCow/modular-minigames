#executes as a player wanting to leave, at their position

tellraw @a[tag=playing_splfhockey] [{"selector":"@s"},{"text":" has left TotallyNotHockey!","color":"aqua"}]
tellraw @a[tag=spectating_splfhockey] [{"selector":"@s"},{"text":" has left TotallyNotHockey!","color":"aqua"}]
team leave @s
teleport @s -34 8 -203
spawnpoint @s -34 8 -203
tag @s remove spectating_splfhockey
tag @s remove playing_splfhockey
tag @s remove leave_splfhockey
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s
function modular_minigames:_arrive

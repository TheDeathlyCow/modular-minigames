team join spleef_plyr @s
tag @s add playing_splfhockey
teleport @s 1122 94 -471
spawnpoint @s 1122 94 -471
scoreboard players enable @s start_spleef
scoreboard players enable @s leave_spleef
tag @s remove spectating_splfhockey
tellraw @a[tag=playing_splfhockey] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_splfhockey] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_spleef","color":"dark_purple"},{"text":" when are you ready to start!"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_spleef","color":"dark_purple"},{"text":" if you want to leave!"}]
scoreboard players operation @s ld.splfhockey = loadNum ld.splfhockey
function reset:splfhockey/_join_player

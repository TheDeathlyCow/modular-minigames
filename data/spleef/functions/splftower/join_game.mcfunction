team join spleef_plyr @s
tag @s add playing_splftower
teleport @s 585 128 1031
spawnpoint @s 585 128 1031
scoreboard players enable @s start_spleef
scoreboard players enable @s leave_spleef
tag @s remove spectating_splftower
tellraw @a[tag=playing_splftower] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_splftower] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_spleef","color":"dark_purple"},{"text":" when are you ready to start!"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_spleef","color":"dark_purple"},{"text":" if you want to leave!"}]
scoreboard players operation @s ld.splftower = loadNum ld.splftower
function reset:splftower/_join_player

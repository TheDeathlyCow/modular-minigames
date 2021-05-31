team join spleef_plyr @s
tag @s add playing_splfmall
teleport @s -820 91 1260
spawnpoint @s -820 91 1260
scoreboard players enable @s start_spleef
scoreboard players enable @s leave_spleef
tag @s remove spectating_splfmall
tellraw @a[tag=playing_splfmall] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_splfmall] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_spleef","color":"dark_purple"},{"text":" when are you ready to start!"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_spleef","color":"dark_purple"},{"text":" if you want to leave!"}]
scoreboard players operation @s ld.splfmall = loadNum ld.splfmall
function reset:splfmall/_join_player

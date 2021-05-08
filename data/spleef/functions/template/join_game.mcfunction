team join spleef_plyr @s 
tag @s add playing_template
teleport @s 5770 77 3779
scoreboard players enable @s start_spleef
tag @s remove spectating_template

tellraw @a[tag=playing_template] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_template] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]

tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_spleef","color":"dark_purple"},{"text":" when are you ready to start!"}]

function reset:template/_join_player
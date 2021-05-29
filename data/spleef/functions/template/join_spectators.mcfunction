team join spleef_spec @s
tag @s add spectating_template
function reset:template/_join_spectator
tag @s remove playing_template
teleport @s 5770 76 3774
spawnpoint @s 5770 76 3774
gamemode adventure @s

tellraw @a[tag=playing_template] [{"selector":"@s","color":"dark_purple"},{"text":" is now spectating Template!","color":"aqua"}]
tellraw @a[tag=spectating_template] [{"selector":"@s","color":"dark_purple"},{"text":" is now spectating Template!","color":"aqua"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_spleef","color":"dark_purple"},{"text":" when you want to leave!"}]

scoreboard players enable @s leave_spleef
clear @s 
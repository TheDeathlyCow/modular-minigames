
team leave @s

teleport @s 0 100 0

tag @s remove spectating_template
tag @s remove playing_template
tag @s remove leave_template

tellraw @a[tag=playing_template] [{"selector":"@s"},{"text":" has left Template!","color":"aqua"}]
tellraw @a[tag=spectating_template] [{"selector":"@s"},{"text":" has left Template!","color":"aqua"}]

scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver

clear @s


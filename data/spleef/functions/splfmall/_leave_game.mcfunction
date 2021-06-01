#executes as a player wanting to leave, at their position

team leave @s
teleport @s 0 100 0
spawnpoint @s 0 100 0
tag @s remove spectating_splfmall
tag @s remove playing_splfmall
tag @s remove leave_splfmall
tellraw @a[tag=playing_splfmall] [{"selector":"@s"},{"text":" has left splfmall!","color":"aqua"}]
tellraw @a[tag=spectating_splfmall] [{"selector":"@s"},{"text":" has left splfmall!","color":"aqua"}]
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s

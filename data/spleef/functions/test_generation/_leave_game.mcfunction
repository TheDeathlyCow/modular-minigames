#executes as a player wanting to leave, at their position

team leave @s
teleport @s 0 100 0
tag @s remove spectating_test_generation
tag @s remove playing_test_generation
tag @s remove leave_test_generation
tellraw @a[tag=playing_TestGen] [{"selector":"@s"},{"text":" has left TestGen!","color":"aqua"}]
tellraw @a[tag=spectating_TestGen] [{"selector":"@s"},{"text":" has left TestGen!","color":"aqua"}]
scoreboard players reset @s start_spleef
scoreboard players reset @s leave_spleef
scoreboard players reset @s splfOver
clear @s

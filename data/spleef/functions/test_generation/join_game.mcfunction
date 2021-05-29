team join spleef_plyr @s
tag @s add playing_test_generation
teleport @s 5770 77 3779
spawnpoint @s 5770 76 3774
scoreboard players enable @s start_spleef
scoreboard players enable @s leave_spleef
tag @s remove spectating_test_generation
tellraw @a[tag=playing_test_generation] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_test_generation] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_spleef","color":"dark_purple"},{"text":" when are you ready to start!"}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_spleef","color":"dark_purple"},{"text":" if you want to leave!"}]
function reset:test_generation/_join_player

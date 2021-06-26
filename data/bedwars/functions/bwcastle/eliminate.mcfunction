tellraw @a[tag=playing_bwcastle] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Castle in the Sky!","bold":false,"color":"aqua"}]
tellraw @a[tag=spectating_bwcastle] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Castle in the Sky!","bold":false,"color":"aqua"}]
summon lightning_bolt ~ ~10 ~

team leave @s
tag @s remove playing_bwcastle
function bedwars:bwcastle/join_spectators
scoreboard players reset @s bwDied

tellraw @a[tag=bwplaying_bwcastle] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Castle in the Sky!","bold":false,"color":"aqua"}]
tellraw @a[tag=bwspectating_bwcastle] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Castle in the Sky!","bold":false,"color":"aqua"}]
summon lightning_bolt ~ ~10 ~

team leave @s
tag @s remove bwplaying_bwcastle
function bedwars:bwcastle/join_spectators
scoreboard players reset @s bwDied

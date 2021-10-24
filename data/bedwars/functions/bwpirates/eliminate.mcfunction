tellraw @a[tag=playing_bwpirates] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Pirates!!","bold":false,"color":"aqua"}]
tellraw @a[tag=spectating_bwpirates] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from Pirates!!","bold":false,"color":"aqua"}]
summon lightning_bolt ~ ~10 ~

team leave @s
tag @s remove playing_bwpirates
function bedwars:bwpirates/join_spectators
scoreboard players reset @s bwDied

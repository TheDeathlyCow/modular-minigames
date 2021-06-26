team join bwyellow @s 
function bedwars:bwcastle/respawn/yellow
tellraw @a[tag=playing_bwcastle] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the yellow team!","color":"aqua","bold":false}]
give @s yellow_wool 64 

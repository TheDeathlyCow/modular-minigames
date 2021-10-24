team join bwyellow @s 
function bedwars:bwpirates/respawn/yellow
tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the yellow team!","color":"aqua","bold":false}]
give @s axolotl_bucket 1 

team join bwgreen @s 
function bedwars:bwpirates/respawn/green
tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the green team!","color":"aqua","bold":false}]
give @s axolotl_bucket 1 

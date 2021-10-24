team join bwblue @s 
function bedwars:bwpirates/respawn/blue
tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the blue team!","color":"aqua","bold":false}]
give @s axolotl_bucket 1 

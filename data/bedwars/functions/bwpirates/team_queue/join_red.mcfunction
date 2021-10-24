team join bwred @s 
function bedwars:bwpirates/respawn/red
tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the red team!","color":"aqua","bold":false}]
give @s axolotl_bucket 1 

team join bwred @s 
function bedwars:bwcastle/respawn/red
tellraw @a[tag=playing_bwcastle] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the red team!","color":"aqua","bold":false}]
give @s red_wool 64 

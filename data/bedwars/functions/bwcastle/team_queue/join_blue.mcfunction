team join bwblue @s 
function bedwars:bwcastle/respawn/blue
tellraw @a[tag=bwplaying_bwcastle] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the blue team!","color":"aqua","bold":false}]
give @s light_blue_wool 64 

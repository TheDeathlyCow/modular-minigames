team join bwblue @s 
function bedwars:template/respawn/blue
give @s light_blue_wool 64
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the blue team!","color":"aqua","bold":false}]
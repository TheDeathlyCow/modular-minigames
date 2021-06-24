team join bwgreen @s 
function bedwars:bwcastle/respawn/green
tellraw @a[tag=bwplaying_bwcastle] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the green team!","color":"aqua","bold":false}]
give @s lime_wool 64 

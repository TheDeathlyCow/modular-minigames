team join bwred @s 
function bedwars:template/respawn/red
give @s red_wool 64
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_red","bold":true},{"text":" has joined the red team!","color":"red","bold":false}]
team join bwgreen @s 
function bedwars:template/respawn/green
give @s lime_wool 64
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_green","bold":true},{"text":" has joined the green team!","color":"green","bold":false}]
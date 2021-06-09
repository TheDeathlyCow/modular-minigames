team join bwyellow @s
function bedwars:template/respawn/yellow
give @s yellow_wool 64
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"gold","bold":true},{"text":" has joined the yellow team!","color":"yellow","bold":false}]
team join bwyellow @s 
replaceitem entity @p armor.head leather_helmet{display:{color:14079524}} 1
replaceitem entity @p armor.chest leather_chestplate{display:{color:14079524}} 1
teleport @s ~ ~2 ~
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"gold","bold":true},{"text":" has joined the yellow team!","color":"yellow","bold":false}]
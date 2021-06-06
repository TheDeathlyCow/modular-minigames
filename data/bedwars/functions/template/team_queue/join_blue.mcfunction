team join bwblue @s 
replaceitem entity @p armor.head leather_helmet{display:{color:38614}} 1
replaceitem entity @p armor.chest leather_chestplate{display:{color:38614}} 1
teleport @s ~ ~2 ~
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_aqua","bold":true},{"text":" has joined the blue team!","color":"aqua","bold":false}]
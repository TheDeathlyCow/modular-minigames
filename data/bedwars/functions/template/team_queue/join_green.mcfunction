team join bwgreen @s 
replaceitem entity @p armor.head leather_helmet{display:{color:2348559}} 1
replaceitem entity @p armor.chest leather_chestplate{display:{color:2348559}} 1
teleport @s ~ ~2 ~
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_green","bold":true},{"text":" has joined the green team!","color":"green","bold":false}]
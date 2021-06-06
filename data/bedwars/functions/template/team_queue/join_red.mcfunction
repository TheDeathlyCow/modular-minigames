team join bwred @s 
replaceitem entity @p armor.head leather_helmet{display:{color:14030872}} 1
replaceitem entity @p armor.chest leather_chestplate{display:{color:14030872}} 1
teleport @s ~ ~2 ~
spawnpoint @s ~ ~2 ~
tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_red","bold":true},{"text":" has joined the red team!","color":"red","bold":false}]
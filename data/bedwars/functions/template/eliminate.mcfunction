tellraw @a[tag=bwplaying_template] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from TemplateProperName!","bold":false,"color":"aqua"}]
tellraw @a[tag=bwspectating_template] [{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has been eliminated from TemplateProperName!","bold":false,"color":"aqua"}]
summon lightning_bolt ~ ~10 ~

team leave @s 
tag @s remove bwplaying_template
function bedwars:template/join_spectators
scoreboard players reset @s bwDied
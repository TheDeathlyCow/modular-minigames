
# set tags, reset inventory and effects
tag @s add bwplaying_template
effect clear @s
gamemode adventure @s
clear @s
scoreboard players enable @s start_bedwars
scoreboard players enable @s leave_bedwars

# tellraw to player
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_bedwars","color":"dark_purple"},{"text":" when you are ready to start."}]
tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_bedwars","color":"dark_purple"},{"text":" when you are ready to leave."}]


# give generic items - coloured armour is done in join team
loot give @s loot bedwars:basic_weapons
replaceitem entity @s weapon.offhand minecraft:shield
replaceitem entity @p armor.legs chainmail_leggings 1
replaceitem entity @p armor.feet chainmail_boots 1

# join specific team
execute if score red template.tq matches 0 positioned 1034 117 -13 run function bedwars:template/team_queue/join_red
execute if score yellow template.tq matches 0 positioned 1061 117 14 run function bedwars:template/team_queue/join_yellow
execute if score green template.tq matches 0 positioned 1089 117 -13 run function bedwars:template/team_queue/join_green
execute if score blue template.tq matches 0 positioned 1061 117 -40 run function bedwars:template/team_queue/join_blue

# update queue
function bedwars:template/team_queue/shift_queue
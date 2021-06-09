
# set tags, reset inventory and effects
tag @s add bwplaying_template
effect clear @s
gamemode adventure @s
clear @s
scoreboard players enable @s start_bedwars
scoreboard players enable @s leave_bedwars

# tellraw to player
# tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger start_bedwars","color":"dark_purple"},{"text":" when you are ready to start."}]
# tellraw @s [{"text":"Type ","color":"aqua"},{"text":"/trigger leave_bedwars","color":"dark_purple"},{"text":" when you are ready to leave."}]

# join specific team
execute if score red template.tq matches 0 positioned 1034 117 -13 run function bedwars:template/team_queue/join_red
execute if score yellow template.tq matches 0 positioned 1061 117 14 run function bedwars:template/team_queue/join_yellow
execute if score green template.tq matches 0 positioned 1089 117 -13 run function bedwars:template/team_queue/join_green
execute if score blue template.tq matches 0 positioned 1061 117 -40 run function bedwars:template/team_queue/join_blue

# give start vote item
give @s shield{display:{Name:'{"text":"Right Click to Start","color":"gold","italic":false}'},bwStartClick:1b} 1
give @s shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b} 1

# update queue
function bedwars:template/team_queue/shift_queue
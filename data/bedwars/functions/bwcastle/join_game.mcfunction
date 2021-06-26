tag @s add playing_bwcastle
effect clear @s
effect give @s instant_health 1 9 
effect give @s saturation 1 9
gamemode adventure @s
clear @s
scoreboard players enable @s start_bedwars
scoreboard players enable @s leave_bedwars
execute if score red bwcastle.tq matches 0 positioned 1080 96 1003 run function bedwars:bwcastle/team_queue/join_red
execute if score yellow bwcastle.tq matches 0 positioned 1156 96 1079 run function bedwars:bwcastle/team_queue/join_yellow
execute if score green bwcastle.tq matches 0 positioned 1004 96 1079 run function bedwars:bwcastle/team_queue/join_green
execute if score blue bwcastle.tq matches 0 positioned 1080 96 1155 run function bedwars:bwcastle/team_queue/join_blue
spawnpoint @s 1080 181 1079
function reset:bwcastle/_join_player
item replace entity @s hotbar.7 with shield{display:{Name:'{"text":"Right Click to Start","color":"green","italic":false}'},bwStartClick:1b,BlockEntityTag:{Base:5}} 1
item replace entity @s hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}} 1
function bedwars:bwcastle/team_queue/shift_queue

tag @s add playing_bwpirates
effect clear @s
effect give @s instant_health 1 9 
effect give @s saturation 1 9
#effect give @s slowness 999999 9
gamemode adventure @s
clear @s
scoreboard players enable @s start_bedwars
scoreboard players enable @s leave_bedwars
execute if score red bwpirates.tq matches 0 positioned 2944 77 1152 run function bedwars:bwpirates/team_queue/join_red
execute if score yellow bwpirates.tq matches 0 positioned 2816 77 1024 run function bedwars:bwpirates/team_queue/join_yellow
execute if score green bwpirates.tq matches 0 positioned 2944 77 896 run function bedwars:bwpirates/team_queue/join_green
execute if score blue bwpirates.tq matches 0 positioned 3072 77 1024 run function bedwars:bwpirates/team_queue/join_blue
spawnpoint @s 2944 123 1024
function reset:bwpirates/_join_player
item replace entity @s hotbar.7 with shield{display:{Name:'{"text":"Right Click to Start","color":"green","italic":false}'},bwStartClick:1b,BlockEntityTag:{Base:5}} 1
item replace entity @s hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}} 1
function bedwars:bwpirates/team_queue/shift_queue

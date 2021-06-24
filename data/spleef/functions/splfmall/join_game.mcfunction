team join spleef_plyr @s
tag @s add playing_splfmall
teleport @s -847 31 -512
spawnpoint @s -847 31 -512
scoreboard players enable @s start_spleef
scoreboard players enable @s leave_spleef
tag @s remove spectating_splfmall
tellraw @a[tag=playing_splfmall] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
tellraw @a[tag=spectating_splfmall] [{"selector":"@s"},{"text":" has joined the game!","color":"aqua"}]
scoreboard players operation @s ld.splfmall = loadNum ld.splfmall
function reset:splfmall/_join_player
item replace entity @s hotbar.7 with shield{display:{Name:'{"text":"Right Click to Start","color":"green","italic":false}'},splfStartClick:1b,BlockEntityTag:{Base:5}}
item replace entity @s hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},splfLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}}

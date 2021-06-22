execute if score splfmall isSplfRunning matches 1 run function spleef:splfmall/in_game_tick
function spleef:splfmall/start_vote
execute if score splfmall spleefCountdown matches -1.. run function spleef:splfmall/countdown/tick
execute as @a[tag=leave_splfmall] at @s run function spleef:splfmall/_leave_game
execute as @a[scores={leave_spleef=1..}] at @s run function spleef:splfmall/leave_trigger
item replace entity @a[tag=spectating_splfmall,nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.8 with minecraft:shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},splfLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}}

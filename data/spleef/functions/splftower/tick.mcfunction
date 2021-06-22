execute if score splftower isSplfRunning matches 1 run function spleef:splftower/in_game_tick
function spleef:splftower/start_vote
execute if score splftower spleefCountdown matches -1.. run function spleef:splftower/countdown/tick
execute as @a[tag=leave_splftower] at @s run function spleef:splftower/_leave_game
execute as @a[scores={leave_spleef=1..}] at @s run function spleef:splftower/leave_trigger
item replace entity @a[tag=spectating_splftower,nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.8 with minecraft:shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},splfLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}}

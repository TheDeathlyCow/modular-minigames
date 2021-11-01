execute if score bwpirates bwState matches 0 run function bedwars:bwpirates/wait
execute if score bwpirates bwState matches 1 run function bedwars:bwpirates/ingame_tick
execute if score bwpirates bwState matches 2 run function bedwars:bwpirates/countdown


scoreboard players set @a[tag=leave_bwpirates] leave_bedwars 1
tag @a[tag=leave_bwpirates] remove leave_bwpirates
execute as @a[scores={leave_bedwars=1..},tag=playing_bwpirates] run function bedwars:bwpirates/_leave
execute as @a[scores={leave_bedwars=1..},tag=spectating_bwpirates] run function bedwars:bwpirates/_leave

execute unless score bwpirates bwState matches 0 run function bedwars:bwpirates/count_players
execute unless score bwpirates bwState matches 0 if score bwpirates bwPlyrCnt matches 0 run function bedwars:bwpirates/victory/victory

item replace entity @a[tag=spectating_bwpirates,nbt=!{Inventory:[{id:"minecraft:shield"}]}] hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}} 1

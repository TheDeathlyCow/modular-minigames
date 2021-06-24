execute if score bwcastle bwState matches 0 run function bedwars:bwcastle/wait
execute if score bwcastle bwState matches 1 run function bedwars:bwcastle/ingame_tick
execute if score bwcastle bwState matches 2 run function bedwars:bwcastle/countdown


execute as @a[scores={leave_bedwars=1..},tag=bwplaying_bwcastle] run function bedwars:bwcastle/_leave
execute as @a[scores={leave_bedwars=1..},tag=bwspectating_bwcastle] run function bedwars:bwcastle/_leave

execute unless score bwcastle bwState matches 0 run function bedwars:bwcastle/count_players
execute unless score bwcastle bwState matches 0 if score bwcastle bwPlyrCnt matches 0 run function bedwars:victory/victory

item replace entity @a[tag=bwspectating_bwcastle,nbt=!{Inventory:[{id:"shield"}]}] hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}} 1

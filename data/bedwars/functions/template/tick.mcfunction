execute if score template bwState matches 0 run function bedwars:template/wait
execute if score template bwState matches 1 run function bedwars:template/ingame_tick
execute if score template bwState matches 2 run function bedwars:template/countdown


execute as @a[scores={leave_bedwars=1..},tag=bwplaying_template] run function bedwars:template/_leave
execute as @a[scores={leave_bedwars=1..},tag=bwspectating_template] run function bedwars:template/_leave

execute unless score template bwState matches 0 run function bedwars:template/count_players
execute unless score template bwState matches 0 if score template bwPlyrCnt matches 0 run function bedwars:victory/victory

item replace entity @a[tag=bwspectating_template,nbt=!{Inventory:[{id:"shield"}]}] hotbar.8 with shield{display:{Name:'{"text":"Right Click to Leave","color":"red","italic":false}'},bwLeaveClick:1b,BlockEntityTag:{Base:14,Patterns:[{Color:0,Pattern:"mr"},{Color:14,Pattern:"vh"}]}} 1

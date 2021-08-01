scoreboard players add @s sv.splftower 0
scoreboard players add @s ld.splftower 0
execute unless score @s sv.splftower = saveNum sv.splftower run function reset:splftower/save_stand
execute if score @s splftower.dy matches 0.. run scoreboard players remove @s splftower.dy 1
execute if score @s splftower.dy matches ..0 run function reset:splftower/load_stand
scoreboard players remove @s[scores={splftower.it=1..}] splftower.it 1
execute if score @s splftower.it matches ..0 run function reset:splftower/clear_items
execute unless score @s ld.splftower = loadNum ld.splftower run function reset:splftower/prepare_stand_for_load

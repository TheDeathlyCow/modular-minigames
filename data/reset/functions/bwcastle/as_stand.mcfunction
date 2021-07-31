scoreboard players add @s sv.bwcastle 0
scoreboard players add @s ld.bwcastle 0
execute unless score @s sv.bwcastle = saveNum sv.bwcastle run function reset:bwcastle/save_stand
execute if score @s bwcastle.dy matches 0.. run scoreboard players remove @s bwcastle.dy 1
execute if score @s bwcastle.dy matches ..0 run function reset:bwcastle/load_stand
execute unless score @s ld.bwcastle = loadNum ld.bwcastle run function reset:bwcastle/prepare_stand_for_load

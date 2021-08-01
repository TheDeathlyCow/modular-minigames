scoreboard players add @s sv.splfhockey 0
scoreboard players add @s ld.splfhockey 0
execute unless score @s sv.splfhockey = saveNum sv.splfhockey run function reset:splfhockey/save_stand
execute if score @s splfhockey.dy matches 0.. run scoreboard players remove @s splfhockey.dy 1
execute if score @s splfhockey.dy matches ..0 run function reset:splfhockey/load_stand
scoreboard players remove @s[scores={splfhockey.it=1..}] splfhockey.it 1
execute if score @s splfhockey.it matches ..0 run function reset:splfhockey/clear_items
execute unless score @s ld.splfhockey = loadNum ld.splfhockey run function reset:splfhockey/prepare_stand_for_load

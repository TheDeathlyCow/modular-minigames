scoreboard players add @s sv.splfhockey 0
scoreboard players add @s ld.splfhockey 0
execute unless score @s sv.splfhockey = saveNum sv.splfhockey run function reset:splfhockey/save_stand
execute unless score @s ld.splfhockey = loadNum ld.splfhockey run function reset:splfhockey/load_stand

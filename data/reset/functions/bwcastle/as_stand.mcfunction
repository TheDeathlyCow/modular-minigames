scoreboard players add @s sv.bwcastle 0
scoreboard players add @s ld.bwcastle 0
execute unless score @s sv.bwcastle = saveNum sv.bwcastle run function reset:bwcastle/save_stand
execute unless score @s ld.bwcastle = loadNum ld.bwcastle run function reset:bwcastle/load_stand

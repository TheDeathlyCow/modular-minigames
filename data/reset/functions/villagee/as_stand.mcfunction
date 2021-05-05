scoreboard players add @s sv.villagee 0
scoreboard players add @s ld.villagee 0
execute unless score @s sv.villagee = saveNum sv.villagee run function reset:villagee/save_stand
execute unless score @s ld.villagee = loadNum ld.villagee run function reset:villagee/load_stand

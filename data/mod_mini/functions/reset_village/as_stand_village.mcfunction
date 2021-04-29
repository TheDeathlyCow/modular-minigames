scoreboard players add @s sv.village 0
scoreboard players add @s ld.village 0
execute unless score @s sv.village = saveNum sv.village run function mod_mini:reset_village/save_stand_village
execute unless score @s ld.village = loadNum ld.village run function mod_mini:reset_village/load_stand_village

scoreboard players add @s sv.testb 0
scoreboard players add @s ld.testb 0
execute unless score @s sv.testb = saveNum sv.testb run function mod_mini:reset_testb/save_stand_testb
execute unless score @s ld.testb = loadNum ld.testb run function mod_mini:reset_testb/load_stand_testb

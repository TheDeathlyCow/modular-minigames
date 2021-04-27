scoreboard players add @s sv.testc 0
scoreboard players add @s ld.testc 0
execute unless score @s sv.testc = saveNum sv.testc run function mod_mini:reset_testc/save_stand_testc
execute unless score @s ld.testc = loadNum ld.testc run function mod_mini:reset_testc/load_stand_testc

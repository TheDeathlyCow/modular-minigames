scoreboard players add @s sv.testcloud 0
scoreboard players add @s ld.testcloud 0
execute unless score @s sv.testcloud = saveNum sv.testcloud run function mod_mini:reset_testcloud/save_stand_testcloud
execute unless score @s ld.testcloud = loadNum ld.testcloud run function mod_mini:reset_testcloud/load_stand_testcloud

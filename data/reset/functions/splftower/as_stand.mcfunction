scoreboard players add @s sv.splftower 0
scoreboard players add @s ld.splftower 0
execute unless score @s sv.splftower = saveNum sv.splftower run function reset:splftower/save_stand
execute unless score @s ld.splftower = loadNum ld.splftower run function reset:splftower/load_stand

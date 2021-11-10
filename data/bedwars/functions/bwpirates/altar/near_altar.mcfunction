particle bubble_column_up ~ ~0.5 ~ 0.2 0.3 0.2 0.2 3 force @s
particle electric_spark ~ ~0.5 ~ 0.2 0.2 0.2 1 1
playsound minecraft:entity.elder_guardian.ambient master @s ~ ~ ~ 10 1.8 1
scoreboard players add @s bwpirates.wa 1
execute if score @s bwpirates.wa matches 200.. run function bedwars:bwpirates/altar/change_weather
execute if score @s bwpirates.wa matches 1 run function bedwars:bwpirates/altar/announce_channel
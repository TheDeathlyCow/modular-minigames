function bedwars:template/count_players
scoreboard players set template bwRdyPlyrs 0 
execute as @a[tag=bwplaying_template,scores={start_bedwars=1}] run tellraw @a[tag=bwplaying_template] [{"selector":"@s","color":"dark_purple"},{"text":" is ready to start!","color":"aqua"}]
scoreboard players set @a[tag=bwplaying_template,scores={start_bedwars=1}] start_bedwars 2
execute as @a[tag=bwplaying_template,scores={start_bedwars=1..}] run scoreboard players add template bwRdyPlyrs 1
execute if score template bwPlyrCnt matches 2.. if score template bwRdyPlyrs = template bwPlyrCnt run function bedwars:template/initiate_countdown
execute as @a[tag=bwplaying_template,team=bwred] run teleport @s 1034 117 -13
execute as @a[tag=bwplaying_template,team=bwyellow] run teleport @s 1061 117 14
execute as @a[tag=bwplaying_template,team=bwgreen] run teleport @s 1089 117 -13
execute as @a[tag=bwplaying_template,team=bwblue] run teleport @s 1061 117 -40
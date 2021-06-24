function bedwars:bwcastle/count_players
scoreboard players set bwcastle bwRdyPlyrs 0 
execute as @a[tag=bwplaying_bwcastle,scores={start_bedwars=1}] run tellraw @a[tag=bwplaying_bwcastle] [{"selector":"@s","color":"dark_purple"},{"text":" is ready to start!","color":"aqua"}]
scoreboard players set @a[tag=bwplaying_bwcastle,scores={start_bedwars=1}] start_bedwars 2
execute as @a[tag=bwplaying_bwcastle,scores={start_bedwars=1..}] run scoreboard players add bwcastle bwRdyPlyrs 1
execute if score bwcastle bwPlyrCnt matches 2.. if score bwcastle bwRdyPlyrs = bwcastle bwPlyrCnt run function bedwars:bwcastle/initiate_countdown
execute as @a[tag=bwplaying_bwcastle,team=bwred] run teleport @s 1080 96 1003
execute as @a[tag=bwplaying_bwcastle,team=bwyellow] run teleport @s 1156 96 1079
execute as @a[tag=bwplaying_bwcastle,team=bwgreen] run teleport @s 1004 96 1079
execute as @a[tag=bwplaying_bwcastle,team=bwblue] run teleport @s 1080 96 1155

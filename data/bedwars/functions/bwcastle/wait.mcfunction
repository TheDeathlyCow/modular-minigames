function bedwars:bwcastle/count_players
scoreboard players set bwcastle bwRdyPlyrs 0 
execute as @a[tag=playing_bwcastle,scores={start_bedwars=1}] run tellraw @a[tag=playing_bwcastle] [{"selector":"@s","color":"dark_purple"},{"text":" is ready to start!","color":"aqua"}]
scoreboard players set @a[tag=playing_bwcastle,scores={start_bedwars=1}] start_bedwars 2
execute as @a[tag=playing_bwcastle,scores={start_bedwars=1..}] run scoreboard players add bwcastle bwRdyPlyrs 1
execute if score bwcastle bwPlyrCnt matches 2.. if score bwcastle bwRdyPlyrs = bwcastle bwPlyrCnt run function bedwars:bwcastle/initiate_countdown

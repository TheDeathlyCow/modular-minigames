function bedwars:bwpirates/count_players
scoreboard players set bwpirates bwRdyPlyrs 0 
execute as @a[tag=playing_bwpirates,scores={start_bedwars=1}] run tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_purple"},{"text":" is ready to start!","color":"aqua"}]
scoreboard players set @a[tag=playing_bwpirates,scores={start_bedwars=1}] start_bedwars 2
execute as @a[tag=playing_bwpirates,scores={start_bedwars=1..}] run scoreboard players add bwpirates bwRdyPlyrs 1
execute if score bwpirates bwPlyrCnt matches 2.. if score bwpirates bwRdyPlyrs = bwpirates bwPlyrCnt run function bedwars:bwpirates/initiate_countdown
execute as @a[tag=playing_bwpirates,predicate=bedwars:in_water] at @s run function bedwars:bwpirates/go_back_to_bed
effect give @a[tag=playing_bwpirates] resistance 2 255 true

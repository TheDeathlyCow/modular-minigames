function bedwars:bwpirates/count_players
tellraw @s {"text":"Welcome to Pirates!!","color":"dark_aqua","bold":true}
execute if score bwpirates bwPlyrCnt < bwpirates.mx bwPlyrCnt if score bwpirates bwState matches 0 run function bedwars:bwpirates/join_game
execute if score bwpirates bwPlyrCnt >= bwpirates.mx bwPlyrCnt if score bwpirates bwState matches 0 run function bedwars:bwpirates/join_spectators
execute unless score bwpirates bwState matches 0 run function bedwars:bwpirates/join_spectators

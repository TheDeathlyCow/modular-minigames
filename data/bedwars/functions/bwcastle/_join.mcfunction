function bedwars:bwcastle/count_players
tellraw @s {"text":"Welcome to Castle in the Sky!","color":"dark_aqua","bold":true}
execute if score bwcastle bwPlyrCnt < bwcastle.mx bwPlyrCnt if score bwcastle bwState matches 0 run function bedwars:bwcastle/join_game
execute if score bwcastle bwPlyrCnt >= bwcastle.mx bwPlyrCnt if score bwcastle bwState matches 0 run function bedwars:bwcastle/join_spectators
execute unless score bwcastle bwState matches 0 run function bedwars:bwcastle/join_spectators

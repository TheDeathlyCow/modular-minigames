function bedwars:bwcastle/count_players
execute if score bwcastle bwPlyrCnt < bwcastle.mx bwPlyrCnt if score bwcastle bwState matches 0 run function bedwars:bwcastle/join_game
execute if score bwcastle bwPlyrCnt >= bwcastle.mx bwPlyrCnt if score bwcastle bwState matches 0 run function bedwars:bwcastle/join_spectators
execute unless score bwcastle bwStates matches 0 run function bedwars:bwcastle/join_spectators

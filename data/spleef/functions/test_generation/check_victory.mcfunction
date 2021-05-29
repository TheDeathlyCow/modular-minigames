function spleef:test_generation/count_players
execute if score test_generation splfPlyrCnt matches 1 as @a[tag=playing_test_generation,limit=1] at @s run function spleef:test_generation/victory

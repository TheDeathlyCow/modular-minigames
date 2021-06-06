function spleef:splftower/count_players
execute if score splftower splfPlyrCnt matches 1 as @a[tag=playing_splftower,limit=1] at @s run function spleef:splftower/victory

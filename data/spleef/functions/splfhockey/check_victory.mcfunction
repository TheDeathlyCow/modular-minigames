function spleef:splfhockey/count_players
execute if score splfhockey splfPlyrCnt matches 1 as @a[tag=playing_splfhockey,limit=1] at @s run function spleef:splfhockey/victory
execute if score splfhockey splfPlyrCnt matches 0 run function spleef:splfhockey/victory

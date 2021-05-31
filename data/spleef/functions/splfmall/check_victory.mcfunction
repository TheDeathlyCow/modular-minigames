function spleef:splfmall/count_players
execute if score splfmall splfPlyrCnt matches 1 as @a[tag=playing_splfmall,limit=1] at @s run function spleef:splfmall/victory

scoreboard players add @s sv.splfmall 0
scoreboard players add @s ld.splfmall 0
execute unless score @s sv.splfmall = saveNum sv.splfmall run function reset:splfmall/save_stand
execute unless score @s ld.splfmall = loadNum ld.splfmall run function reset:splfmall/load_stand

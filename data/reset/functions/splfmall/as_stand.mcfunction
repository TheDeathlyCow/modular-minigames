scoreboard players add @s sv.splfmall 0
scoreboard players add @s ld.splfmall 0
execute unless score @s sv.splfmall = saveNum sv.splfmall run function reset:splfmall/save_stand
execute if score @s splfmall.dy matches 0.. run scoreboard players remove @s splfmall.dy 1
execute if score @s splfmall.dy matches ..0 run function reset:splfmall/load_stand
scoreboard players remove @s[scores={splfmall.it=1..}] splfmall.it 1
execute if score @s splfmall.it matches ..0 run function reset:splfmall/clear_items
execute unless score @s ld.splfmall = loadNum ld.splfmall run function reset:splfmall/prepare_stand_for_load

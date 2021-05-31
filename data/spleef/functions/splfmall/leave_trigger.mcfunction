execute if entity @s[tag=spectating_splfmall] run tag @s add leave_splfmall
execute if score splfmall isSplfRunning matches 0 if entity @s[tag=playing_splfmall] run tag @s add leave_splfmall

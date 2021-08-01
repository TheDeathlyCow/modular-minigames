function reset:next_rand
forceload add ~ ~ 
scoreboard players operation @s splfmall.dy = current rstrandom
scoreboard players operation @s splfmall.dy %= max_delay rstrandom
scoreboard players operation @s ld.splfmall = loadNum ld.splfmall

function reset:next_rand
scoreboard players operation @s bwcastle.dy = current rstrandom
scoreboard players operation @s bwcastle.dy %= max_delay rstrandom
scoreboard players operation @s ld.bwcastle = loadNum ld.bwcastle

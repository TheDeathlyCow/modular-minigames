function reset:next_rand
forceload add ~ ~ 
scoreboard players operation @s splftower.dy = current rstrandom
scoreboard players operation @s splftower.dy %= max_delay rstrandom
scoreboard players operation @s ld.splftower = loadNum ld.splftower

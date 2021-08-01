function reset:next_rand
forceload add ~ ~ 
scoreboard players operation @s splfhockey.dy = current rstrandom
scoreboard players operation @s splfhockey.dy %= max_delay rstrandom
scoreboard players operation @s ld.splfhockey = loadNum ld.splfhockey

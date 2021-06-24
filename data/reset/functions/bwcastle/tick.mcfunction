## Call this when a PLAYER leaves the arena, AS that player.

execute as @e[type=marker,tag=bwcastle_structmarker] at @s run function reset:bwcastle/as_stand
execute as @a[tag=playing_bwcastle] at @s unless score @s ld.bwcastle = loadNum ld.bwcastle run function reset:bwcastle/_leave_player

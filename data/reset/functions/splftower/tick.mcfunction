## Call this when a PLAYER leaves the arena, AS that player.

execute as @e[type=marker,tag=splftower_structmarker] at @s run function reset:splftower/as_stand
execute as @a[tag=playing_splftower] at @s unless score @s ld.splftower = loadNum ld.splftower run function reset:splftower/_leave_player

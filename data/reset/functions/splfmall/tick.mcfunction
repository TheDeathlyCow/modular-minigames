## Call this when a PLAYER leaves the arena, AS that player.

execute as @e[type=marker,tag=splfmall_structmarker] at @s run function reset:splfmall/as_stand
execute as @a[tag=playing_splfmall] at @s unless score @s ld.splfmall = loadNum ld.splfmall run function reset:splfmall/_leave_player

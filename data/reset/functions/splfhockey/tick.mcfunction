## Call this when a PLAYER leaves the arena, AS that player.

execute as @e[type=armor_stand,tag=splfhockey_structmarker] at @s run function reset:splfhockey/as_stand
execute as @a[tag=playing_splfhockey] at @s unless score @s ld.splfhockey = loadNum ld.splfhockey run function reset:splfhockey/_leave_player

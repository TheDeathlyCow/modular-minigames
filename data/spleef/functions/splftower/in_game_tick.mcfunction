execute as @a[tag=playing_splftower,scores={splfOver=1..}] at @s run function spleef:splftower/died
function spleef:splftower/check_victory
scoreboard players add splftower splfTimer 1
execute if score splftower splfTimer matches 1200 as @a[tag=playing_splftower] at @s run function spleef:splftower/summon_knockback_mobs
execute if score splftower splfTimer matches 1200.. run scoreboard players set splftower splfTimer 0

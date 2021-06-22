execute as @a[tag=playing_splfhockey,scores={splfOver=1..}] at @s run function spleef:splfhockey/died
function spleef:splfhockey/check_victory
scoreboard players add splfhockey splfTimer 1
execute if score splfhockey splfTimer matches 1200 as @a[tag=playing_splfhockey] at @s run function spleef:splfhockey/summon_knockback_mobs
execute if score splfhockey splfTimer matches 1200.. run scoreboard players set splfhockey splfTimer 0

execute as @a[tag=playing_splfmall,scores={splfOver=1..}] at @s run function spleef:splfmall/died
function spleef:splfmall/check_victory
scoreboard players add splfmall splfTimer 1
execute if score splfmall splfTimer matches 1200 as @a[tag=playing_splfmall] at @s run function spleef:splfmall/summon_knockback_mobs
execute if score splfmall splfTimer matches 1200.. run scoreboard players set splfmall splfTimer 0

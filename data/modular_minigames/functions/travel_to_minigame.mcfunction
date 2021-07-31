effect give @s blindness 1 0 true
execute if score @s ticket matches 0 run function spleef:splftower/_join
execute if score @s ticket matches 1 run function spleef:splfmall/_join
execute if score @s ticket matches 2 run function spleef:splfhockey/_join
execute if score @s ticket matches 3 run function bedwars:bwcastle/_join
tag @s remove in_hub
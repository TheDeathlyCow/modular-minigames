effect give @s blindness 1 0 true
tag @s remove in_hub
execute if score @s ticket matches 0 run function spleef:splftower/_join
execute if score @s ticket matches 1 run function spleef:splfmall/_join
execute if score @s ticket matches 2 run function spleef:splfhockey/_join
execute if score @s ticket matches 3 run function bedwars:bwcastle/_join
execute if score @s ticket matches 4 run tellraw @s {"text":"Sorry, this game is not open. Check back soon!","color":"red"}
execute if score @s ticket matches 4 run function modular_minigames:_arrive
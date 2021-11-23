# trigger value is map ID + 1
execute if score @s buy_ticket matches 1 run function modular_minigames:purchase/splftower
execute if score @s buy_ticket matches 2 run function modular_minigames:purchase/splfmall
execute if score @s buy_ticket matches 3 run function modular_minigames:purchase/splfhockey
execute if score @s buy_ticket matches 4 run function modular_minigames:purchase/bwcastle
execute if score @s buy_ticket matches 9 run function modular_minigames:purchase/bwpirates
execute if score @s buy_ticket matches 5 run function modular_minigames:purchase/sgmoku
execute if score @s buy_ticket matches 6 run function modular_minigames:purchase/pkcaves
execute if score @s buy_ticket matches 7 run function modular_minigames:purchase/pkaqua
execute if score @s buy_ticket matches 8 run function modular_minigames:purchase/pkreflect

scoreboard players reset @s buy_ticket
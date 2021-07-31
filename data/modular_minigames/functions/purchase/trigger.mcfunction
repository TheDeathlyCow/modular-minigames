# trigger value is map ID + 1
execute if score @s buy_ticket matches 1 run function modular_minigames:purchase/splftower
execute if score @s buy_ticket matches 2 run function modular_minigames:purchase/splfmall
execute if score @s buy_ticket matches 3 run function modular_minigames:purchase/splfhockey
execute if score @s buy_ticket matches 4 run function modular_minigames:purchase/bwcastle
execute if score @s buy_ticket matches 5 run function modular_minigames:purchase/sgmoku
scoreboard players reset @s buy_ticket
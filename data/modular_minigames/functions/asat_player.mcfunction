# Ticks the players in the hub
# @as All players in hub
# @at The players position

scoreboard players add @s greetCoolDwn 1
scoreboard players operation @s greetCoolDwn %= TicksBetweenGreetings greetCoolDwn
scoreboard players set @s[scores={greetCoolDwn=0}] greeted 0
scoreboard players set @s[scores={greetCoolDwn=0}] greeted_ticket 0
scoreboard players set @s[scores={greetCoolDwn=0}] greeted_engineer 0
execute if score @s greeted matches 0 if entity @e[tag=train_passenger,distance=..3] run function modular_minigames:random_conversation
execute if score @s greeted_ticket matches 0 if entity @e[tag=ticket_master,distance=..3] run function modular_minigames:ticket_greeting
execute if score @s greeted_engineer matches 0 if entity @e[tag=train_engineer,distance=..3] run function modular_minigames:greet_engineer


scoreboard players enable @s buy_ticket
execute as @s[scores={buy_ticket=1..}] run function modular_minigames:purchase/trigger
execute as @s[scores={ticket=0..},predicate=modular_minigames:on_train] at @s run function modular_minigames:travel_to_minigame
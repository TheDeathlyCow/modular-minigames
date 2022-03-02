effect give @s regeneration 5 255 true
effect give @s saturation 5 255 true
effect give @s resistance 5 255 true


scoreboard players add @s greetCoolDwn 1
scoreboard players operation @s greetCoolDwn %= TicksBetweenGreetings greetCoolDwn
scoreboard players set @s[scores={greetCoolDwn=0}] greeted 0
scoreboard players set @s[scores={greetCoolDwn=0}] greeted_ticket 0
scoreboard players set @s[scores={greetCoolDwn=0}] greeted_engineer 0
execute as @s[scores={greeted=0}] at @s if entity @e[tag=train_passenger,distance=..3] run function modular_minigames:random_conversation
execute as @s[scores={greeted_ticket=0}] at @s if entity @e[tag=ticket_master,distance=..3] run function modular_minigames:ticket_greeting
execute as @s[scores={greeted_engineer=0}] at @s if entity @e[tag=train_engineer,distance=..3] run function modular_minigames:greet_engineer


scoreboard players enable @s buy_ticket
execute as @s[scores={buy_ticket=1..}] run function modular_minigames:purchase/trigger
execute as @s[scores={ticket=0..},predicate=modular_minigames:on_train] at @s run function modular_minigames:travel_to_minigame
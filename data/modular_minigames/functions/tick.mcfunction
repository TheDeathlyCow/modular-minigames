scoreboard players add @a[tag=in_hub] greetCoolDwn 1
scoreboard players operation @a[tag=in_hub] greetCoolDwn %= TicksBetweenGreetings greetCoolDwn
scoreboard players set @a[tag=in_hub,scores={greetCoolDwn=0}] greeted 0
scoreboard players set @a[tag=in_hub,scores={greetCoolDwn=0}] greeted_ticket 0
scoreboard players set @a[tag=in_hub,scores={greetCoolDwn=0}] greeted_engineer 0
execute as @a[tag=in_hub,scores={greeted=0}] at @s if entity @e[tag=train_passenger,distance=..3] run function modular_minigames:random_conversation
execute as @a[tag=in_hub,scores={greeted_ticket=0}] at @s if entity @e[tag=ticket_master,distance=..3] run function modular_minigames:ticket_greeting
execute as @a[tag=in_hub,scores={greeted_engineer=0}] at @s if entity @e[tag=train_engineer,distance=..3] run function modular_minigames:greet_engineer


scoreboard players enable @a[tag=in_hub] buy_ticket
scoreboard players reset @a[tag=!in_hub] buy_ticket

execute as @a[tag=in_hub,scores={buy_ticket=1..}] run function modular_minigames:purchase/trigger


execute as @a[tag=in_hub,scores={ticket=0..},predicate=modular_minigames:on_train] at @s run function modular_minigames:travel_to_minigame
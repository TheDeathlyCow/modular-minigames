function modular_minigames:next_rand
scoreboard players operation randConvoTic lcg = current lcg
scoreboard players set numConvosTic lcg 6
scoreboard players operation randConvoTic lcg %= numConvosTic lcg
# 16, 4, 2, 13, 12, 9, 0, 7, 11, 6, 8, 14, 15, 1, 10, 3
execute if score randConvoTic lcg matches 0 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Where we off to today?","color":"yellow"}]
execute if score randConvoTic lcg matches 1 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Get your tickets here!","color":"yellow"}]
execute if score randConvoTic lcg matches 2 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Special deal just for you: 1 emerald for a ticket to Niebieski!","color":"yellow"}]
execute if score randConvoTic lcg matches 3 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Sorry, but you cannot fast travel when enemies are nearby.","color":"yellow"}]
execute if score randConvoTic lcg matches 4 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Upgrade to first class for only 15 emeralds!","color":"yellow"}]
execute if score randConvoTic lcg matches 5 run tellraw @s [{"text":"[Ticket Master] ","color":"gold"},{"text":"Before you ask, no, there is so such thing as Platform 3 1/4. Stop asking.","color":"yellow"}]

scoreboard players set @s greeted_ticket 1
scoreboard players set @s greetCoolDwn 1

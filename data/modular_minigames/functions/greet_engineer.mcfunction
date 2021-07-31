function modular_minigames:next_rand
scoreboard players operation randConvoEng lcg = current lcg
scoreboard players set numConvosEng lcg 3
scoreboard players operation randConvoEng lcg %= numConvosEng lcg

# 16, 4, 2, 13, 12, 9, 0, 7, 11, 6, 8, 14, 15, 1, 10, 3
execute if score randConvoEng lcg matches 0 run tellraw @s [{"text":"[Engineer] ","color":"gold"},{"text":"What are you doing up here?","color":"yellow"}]
execute if score randConvoEng lcg matches 1 run tellraw @s [{"text":"[Engineer] ","color":"gold"},{"text":"You're not supposed to be here!","color":"yellow"}]
execute if score randConvoEng lcg matches 2 run tellraw @s [{"text":"[Engineer] ","color":"gold"},{"text":"Clear off!","color":"yellow"}]

scoreboard players set @s greeted_engineer 1
scoreboard players set @s greetCoolDwn 1

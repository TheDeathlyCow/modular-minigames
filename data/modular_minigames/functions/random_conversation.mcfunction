function modular_minigames:next_rand

scoreboard players operation randConvo lcg = current lcg
scoreboard players set numConvos lcg 6
scoreboard players operation randConvo lcg %= numConvos lcg

# 16, 4, 2, 13, 12, 9, 0, 7, 11, 6, 8, 14, 15, 1, 10, 3
execute if score randConvo lcg matches 0 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"Packed with muggles, as usual...","color":"yellow"}]
execute if score randConvo lcg matches 1 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"Hurry up! We're going to be late!","color":"yellow"}]
execute if score randConvo lcg matches 2 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"Not again, Timmy!","color":"yellow"}]
execute if score randConvo lcg matches 3 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"*sigh* Back to Fidelis, again...","color":"yellow"}]
execute if score randConvo lcg matches 4 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"Almost home, almost home!","color":"yellow"}]
execute if score randConvo lcg matches 5 run tellraw @s [{"text":"[Passenger] ","color":"gold"},{"text":"Sheesh, take a bath sometime, ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":".","color":"yellow"}]

scoreboard players set @s greeted 1
scoreboard players set @s greetCoolDwn 1
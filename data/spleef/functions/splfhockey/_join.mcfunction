#execute as a player attempting to join, at their position

clear @s
experience set @s 0 levels
experience set @s 0 points
effect clear @s
effect give @s instant_health 1 10
effect give @s saturation 1 10
gamemode adventure @s
scoreboard players operation splfhockey isSplfRunning -= binary modulus
execute if score splfhockey isSplfRunning matches -2 run function spleef:splfhockey/join_game
execute if score splfhockey isSplfRunning matches -1 run function spleef:splfhockey/join_spectators
scoreboard players operation splfhockey isSplfRunning %= binary modulus

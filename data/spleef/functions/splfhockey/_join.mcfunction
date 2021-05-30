#execute as a player attempting to join, at their position

gamemode adventure @s
scoreboard players operation splfhockey isSplfRunning -= binary modulus
execute if score splfhockey isSplfRunning matches -2 run function spleef:splfhockey/join_game
execute if score splfhockey isSplfRunning matches -1 run function spleef:splfhockey/join_spectators
scoreboard players operation splfhockey isSplfRunning %= binary modulus

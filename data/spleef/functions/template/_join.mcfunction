# execute as a player attempting to join, at their position

gamemode adventure @s

scoreboard players operation template isSplfRunning -= binary modulus

execute if score template isSplfRunning matches -2 run function spleef:template/join_game
execute if score template isSplfRunning matches -1 run function spleef:template/join_spectators

scoreboard players operation template isSplfRunning %= binary modulus
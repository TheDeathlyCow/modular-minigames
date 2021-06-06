#execute as a player attempting to join, at their position

gamemode adventure @s
scoreboard players operation splftower isSplfRunning -= binary modulus
execute if score splftower isSplfRunning matches -2 run function spleef:splftower/join_game
execute if score splftower isSplfRunning matches -1 run function spleef:splftower/join_spectators
scoreboard players operation splftower isSplfRunning %= binary modulus

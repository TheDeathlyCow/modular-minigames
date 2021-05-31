#execute as a player attempting to join, at their position

gamemode adventure @s
scoreboard players operation splfmall isSplfRunning -= binary modulus
execute if score splfmall isSplfRunning matches -2 run function spleef:splfmall/join_game
execute if score splfmall isSplfRunning matches -1 run function spleef:splfmall/join_spectators
scoreboard players operation splfmall isSplfRunning %= binary modulus

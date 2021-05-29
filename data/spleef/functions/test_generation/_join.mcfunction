#execute as a player attempting to join, at their position

gamemode adventure @s
scoreboard players operation test_generation isSplfRunning -= binary modulusexecute if score test_generation isSplfRunning matches -2 run function spleef:test_generation/join_gameexecute if score test_generation isSplfRunning matches -1 run function spleef:test_generation/join_spectatorsscoreboard players operation test_generation isSplfRunning %= binary modulus

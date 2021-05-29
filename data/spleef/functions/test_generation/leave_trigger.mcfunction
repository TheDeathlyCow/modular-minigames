execute if entity @s[tag=spectating_test_generation] run tag @s add leave_test_generation
execute if score test_generation isSplfRunning matches 0 if entity @s[tag=playing_test_generation] run tag @s add leave_test_generation

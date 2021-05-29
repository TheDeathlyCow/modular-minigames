execute if score test_generation isSplfRunning matches 1 run function spleef:test_generation/in_game_tick
function spleef:test_generation/start_vote
execute if score test_generation spleefCountdown matches -1.. run function spleef:test_generation/countdown/tick
execute as @a[tag=leave_test_generation] at @s run function spleef:test_generation/_leave_game
execute as @a[scores={leave_spleef=1..}] at @s run function spleef:test_generation/leave_trigger

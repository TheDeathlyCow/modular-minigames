execute if score splfhockey isSplfRunning matches 1 run function spleef:splfhockey/in_game_tick
function spleef:splfhockey/start_vote
execute if score splfhockey spleefCountdown matches -1.. run function spleef:splfhockey/countdown/tick
execute as @a[tag=leave_splfhockey] at @s run function spleef:splfhockey/_leave_game
execute as @a[scores={leave_spleef=1..}] at @s run function spleef:splfhockey/leave_trigger

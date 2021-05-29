execute if score template isSplfRunning matches 1 run function spleef:template/in_game_tick
function spleef:template/start_vote
execute if score template spleefCountdown matches -1.. run function spleef:template/countdown/tick

execute as @a[tag=leave_template] at @s run function spleef:template/_leave_game

execute as @a[scores={leave_spleef=1..}] at @s run function spleef:template/leave_trigger
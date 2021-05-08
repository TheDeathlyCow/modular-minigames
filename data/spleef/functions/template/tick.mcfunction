execute if score template isSplfRunning matches 1 run function spleef:template/in_game_tick
function spleef:template/start_vote
execute if score template spleefCountdown matches -1.. run function spleef:template/countdown/tick

execute as @a[tag=leave_template] at @s run function speef:template/leave_game


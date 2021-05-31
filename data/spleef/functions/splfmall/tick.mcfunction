execute if score splfmall isSplfRunning matches 1 run function spleef:splfmall/in_game_tick
function spleef:splfmall/start_vote
execute if score splfmall spleefCountdown matches -1.. run function spleef:splfmall/countdown/tick
execute as @a[tag=leave_splfmall] at @s run function spleef:splfmall/_leave_game
execute as @a[scores={leave_spleef=1..}] at @s run function spleef:splfmall/leave_trigger

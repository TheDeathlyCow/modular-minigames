scoreboard players set test_generation startVoteCntr 0
execute as @a[tag=playing_test_generation,scores={start_spleef=1..}] run scoreboard players add test_generation startVoteCntr 1
execute as @a[tag=playing_test_generation,scores={start_spleef=1}] run tellraw @a[tag=playing_test_generation] [{"selector":"@s"},{"text":" is ready to start!","color":"aqua"}]
scoreboard players add @a[scores={start_spleef=1}] start_spleef 1
function spleef:test_generation/count_players
execute if entity @a[tag=playing_test_generation,scores={start_spleef=1..}] if score test_generation startVoteCntr = test_generation splfPlyrCnt if score test_generation spleefCountdown matches ..-1 positioned 5770 77 3779 run function spleef:test_generation/countdown/initiate

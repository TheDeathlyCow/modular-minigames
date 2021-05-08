scoreboard players set template startVoteCntr 0
execute as @a[tag=playing_template,scores={start_spleef=1..}] run scoreboard players add template startVoteCntr 1
execute as @a[tag=playing_template,scores={start_spleef=1..}] run tellraw @a[tag=playing_template] [{"selector":"@s"},{"text":" is ready to start!","color":"aqua"}]
function spleef:template/count_players
execute if entity @a[tag=playing_template,scores={start_spleef=1..}] if score template startVoteCntr = template splfPlyrCnt if score template spleefCountdown matches ..-1 positioned 5770 77 3779 run function spleef:template/countdown/initiate

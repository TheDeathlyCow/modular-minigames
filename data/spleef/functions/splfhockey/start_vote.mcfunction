scoreboard players set splfhockey startVoteCntr 0
execute as @a[tag=playing_splfhockey,scores={start_spleef=1..}] run scoreboard players add splfhockey startVoteCntr 1
execute as @a[tag=playing_splfhockey,scores={start_spleef=1}] run tellraw @a[tag=playing_splfhockey] [{"selector":"@s"},{"text":" is ready to start!","color":"aqua"}]
function spleef:splfhockey/count_players
execute if score splfhockey splfPlyrCnt matches 2.. if entity @a[tag=playing_splfhockey,scores={start_spleef=1..}] if score splfhockey startVoteCntr = splfhockey splfPlyrCnt if score splfhockey spleefCountdown matches ..-1 positioned -915 21 -928 run function spleef:splfhockey/countdown/initiate

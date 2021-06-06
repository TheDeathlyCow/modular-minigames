scoreboard players set splfmall startVoteCntr 0
execute as @a[tag=playing_splfmall,scores={start_spleef=1..}] run scoreboard players add splfmall startVoteCntr 1
execute as @a[tag=playing_splfmall,scores={start_spleef=1}] run tellraw @a[tag=playing_splfmall] [{"selector":"@s"},{"text":" is ready to start!","color":"aqua"}]
function spleef:splfmall/count_players
execute if score splfmall splfPlyrCnt matches 2.. if entity @a[tag=playing_splfmall,scores={start_spleef=1..}] if score splfmall startVoteCntr = splfmall splfPlyrCnt if score splfmall spleefCountdown matches ..-1 positioned -820 91 1260 run function spleef:splfmall/countdown/initiate

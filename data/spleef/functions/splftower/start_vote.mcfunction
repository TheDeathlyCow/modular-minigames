scoreboard players set splftower startVoteCntr 0
execute as @a[tag=playing_splftower,scores={start_spleef=1..}] run scoreboard players add splftower startVoteCntr 1
execute as @a[tag=playing_splftower,scores={start_spleef=1}] run tellraw @a[tag=playing_splftower] [{"selector":"@s"},{"text":" is ready to start!","color":"aqua"}]
function spleef:splftower/count_players
execute if score splftower splfPlyrCnt matches 2.. if entity @a[tag=playing_splftower,scores={start_spleef=1..}] if score splftower startVoteCntr = splftower splfPlyrCnt if score splftower spleefCountdown matches ..-1 positioned 585 128 1031 run function spleef:splftower/countdown/initiate

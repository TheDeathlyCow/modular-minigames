# 16 characters:          0123456789abcdef
scoreboard objectives add isSplfRunning dummy
scoreboard objectives add splfPlyrCnt dummy
scoreboard objectives add modulus dummy
scoreboard players set binary modulus 2
scoreboard objectives add splfOver deathCount
scoreboard objectives add startVoteCntr dummy
scoreboard objectives add start_spleef trigger
scoreboard objectives add leave_spleef trigger
scoreboard objectives add spleefCountdown dummy

# spleef player team
team add spleef_plyr
team modify spleef_plyr displayName {"text":"Spleefers", "color":"blue"} 
team modify spleef_plyr color blue
team modify spleef_plyr collisionRule pushOwnTeam
team modify spleef_plyr friendlyFire false

# spleef spectator team
team add spleef_spec
team modify spleef_spec displayName {"text":"Spectators", "color":"aqua"}
team modify spleef_spec color aqua
team modify spleef_spec collisionRule never
team modify spleef_spec friendlyFire false

# arena load functions
function spleef:template/load
function spleef:splfhockey/load
function spleef:splfmall/load
function spleef:splftower/load


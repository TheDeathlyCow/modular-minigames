# 16 characters:          0123456789abcdef
scoreboard objectives add tntrState dummy
scoreboard objectives add tntrPlyrCnt dummy
scoreboard objectives add tntrOver deathCount
scoreboard objectives add tntrStartVote dummy
scoreboard objectives add start_tnt_run trigger
scoreboard objectives add leave_tnt_run trigger
scoreboard objectives add tntrCountdown dummy

# spleef player team
team add tntr_plyr
team modify tntr_plyr displayName {"text":"TNT Runners", "color":"red"} 
team modify tntr_plyr color red
team modify tntr_plyr collisionRule never
team modify tntr_plyr friendlyFire false

# spleef spectator team
team add tntr_spec
team modify tntr_spec displayName {"text":"Spectators", "color":"aqua"}
team modify tntr_spec color aqua
team modify tntr_spec collisionRule never
team modify tntr_spec friendlyFire false

# arena load functions
# function spleef:template/load



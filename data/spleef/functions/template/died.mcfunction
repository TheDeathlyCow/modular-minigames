playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..200] ~ ~ ~ 200 1
function spleef:template/count_players
tellraw @a[distance=..200] [{"selector":"@s"},{"text":" fell out of the arena! There are ","color":"dark_aqua"},{"score":{"name":"template","objective":"splfPlyrCnt"},"color":"gold"},{"text":" players remaining!","color":"dark_aqua"}]
function spleef:template/join_spectators
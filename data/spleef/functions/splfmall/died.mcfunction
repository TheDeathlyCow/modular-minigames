playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..200] ~ ~ ~ 200 1
function spleef:splfmall/join_spectators
function spleef:splfmall/count_players
tellraw @a[distance=..200] [{"selector":"@s","color":"dark_purple"},{"text":" fell out of the arena! There are ","color":"aqua"},{"score":{"name":"splfmall","objective":"splfPlyrCnt"},"color":"dark_purple"},{"text":" players remaining!","color":"aqua"}]
scoreboard players reset @s splfOver

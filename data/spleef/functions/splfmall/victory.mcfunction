tellraw @a [{"selector":"@s"},{"text":" has won spleef in TNT Mall!","color":"aqua"}]
function spleef:splfmall/join_spectators
scoreboard players set splfmall isSplfRunning 0 
scoreboard players enable @s leave_spleef
function reset:splfmall/_load

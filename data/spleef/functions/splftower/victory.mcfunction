tellraw @a [{"selector":"@s"},{"text":" has won spleef in The Tower!","color":"aqua"}]
function spleef:splftower/join_spectators
scoreboard players set splftower isSplfRunning 0 
scoreboard players enable @s leave_spleef
function reset:splftower/_load

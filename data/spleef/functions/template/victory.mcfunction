tellraw @a [{"selector":"@s"},{"text":" has won spleef in TEMPLATE!","color":"aqua"}]
function spleef:template/join_spectators
scoreboard players set template isSplfRunning 0 
scoreboard players enable @s leave_spleef
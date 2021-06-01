tellraw @a [{"selector":"@s"},{"text":" has won spleef in TotallyNotHockey!","color":"aqua"}]
function spleef:splfhockey/join_spectators
scoreboard players set splfhockey isSplfRunning 0 
scoreboard players enable @s leave_spleef
function reset:splfhockey/_load

tellraw @a [{"selector":"@s"},{"text":" has won spleef in test_generation!","color":"aqua"}]
function spleef:test_generation/join_spectators
scoreboard players set test_generation isSplfRunning 0 
scoreboard players enable @s leave_spleef
function reset:test_generation/load

team join spleef_spec @s
tag @s add spectating_template
function reset:template/_join_spectator
tag @s remove playing_template
teleport @s 5770 76 3774

tellraw @a[tag=playing_template] [{"selector":"@s"},{"text":" is now spectating Template!","color":"aqua"}]
tellraw @a[tag=spectating_template] [{"selector":"@s"},{"text":" is now spectating Template!","color":"aqua"}]

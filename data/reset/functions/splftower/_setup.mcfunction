# AUTO GENERATED FUNCTION DO NOT EDIT
forceload add -834 -264

execute positioned -835.0 0.0 -265.0 run kill @e[distance=..1,tag=splftower_structmarker]
execute align xz run summon marker -834 1 -264 {Tags:["splftower_structmarker"],data:{"structure":"reset:splftower/-834.1.-264"}}

forceload add -834 -216

execute positioned -835.0 0.0 -217.0 run kill @e[distance=..1,tag=splftower_structmarker]
execute align xz run summon marker -834 1 -216 {Tags:["splftower_structmarker"],data:{"structure":"reset:splftower/-834.1.-216"}}

forceload add -786 -264

execute positioned -787.0 0.0 -265.0 run kill @e[distance=..1,tag=splftower_structmarker]
execute align xz run summon marker -786 1 -264 {Tags:["splftower_structmarker"],data:{"structure":"reset:splftower/-786.1.-264"}}

forceload add -786 -216

execute positioned -787.0 0.0 -217.0 run kill @e[distance=..1,tag=splftower_structmarker]
execute align xz run summon marker -786 1 -216 {Tags:["splftower_structmarker"],data:{"structure":"reset:splftower/-786.1.-216"}}

scoreboard players set loadNum ld.splftower 0
function reset:splftower/save
function reset:splftower/tick
forceload remove all

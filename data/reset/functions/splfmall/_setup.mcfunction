# AUTO GENERATED FUNCTION DO NOT EDIT
forceload add -870 -535

execute positioned -871.0 19.0 -536.0 run kill @e[distance=..1,tag=splfmall_structmarker]
execute align xz run summon marker -870 20 -535 {Tags:["splfmall_structmarker"],data:{"structure":"reset:splfmall/-870.20.-535"}}

forceload add -870 -487

execute positioned -871.0 19.0 -488.0 run kill @e[distance=..1,tag=splfmall_structmarker]
execute align xz run summon marker -870 20 -487 {Tags:["splfmall_structmarker"],data:{"structure":"reset:splfmall/-870.20.-487"}}

scoreboard players set loadNum ld.splfmall 0
function reset:splfmall/save
function reset:splfmall/tick
forceload remove all

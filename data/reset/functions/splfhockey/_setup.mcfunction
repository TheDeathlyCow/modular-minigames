# AUTO GENERATED FUNCTION DO NOT EDIT
forceload add -967 -965

execute positioned -968.0 3.0 -966.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -967 4 -965 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-967.4.-965"}}

forceload add -967 -917

execute positioned -968.0 3.0 -918.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -967 4 -917 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-967.4.-917"}}

forceload add -919 -965

execute positioned -920.0 3.0 -966.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -919 4 -965 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-919.4.-965"}}

forceload add -919 -917

execute positioned -920.0 3.0 -918.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -919 4 -917 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-919.4.-917"}}

forceload add -871 -965

execute positioned -872.0 3.0 -966.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -871 4 -965 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-871.4.-965"}}

forceload add -871 -917

execute positioned -872.0 3.0 -918.0 run kill @e[distance=..1,tag=splfhockey_structmarker]
execute align xz run summon marker -871 4 -917 {Tags:["splfhockey_structmarker"],data:{"structure":"reset:splfhockey/-871.4.-917"}}

scoreboard players set loadNum ld.splfhockey 0
function reset:splfhockey/save
function reset:splfhockey/tick
forceload remove all

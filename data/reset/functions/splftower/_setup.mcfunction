# AUTO GENERATED FUNCTION DO NOT EDIT
forceload add 545 989

execute positioned 544.0 102.0 988.0 run kill @e[dx=1,dy=1,dz=1,tag=splftower_structmarker]
execute align xz run summon armor_stand 545 103 989 {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["splftower_structmarker"],ArmorItems:[{},{},{id:"minecraft:barrier",Count:1b,tag:{structure:"reset:splftower/545.103.989"}},{}]}

forceload add 545 1037

execute positioned 544.0 102.0 1036.0 run kill @e[dx=1,dy=1,dz=1,tag=splftower_structmarker]
execute align xz run summon armor_stand 545 103 1037 {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["splftower_structmarker"],ArmorItems:[{},{},{id:"minecraft:barrier",Count:1b,tag:{structure:"reset:splftower/545.103.1037"}},{}]}

forceload add 593 989

execute positioned 592.0 102.0 988.0 run kill @e[dx=1,dy=1,dz=1,tag=splftower_structmarker]
execute align xz run summon armor_stand 593 103 989 {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["splftower_structmarker"],ArmorItems:[{},{},{id:"minecraft:barrier",Count:1b,tag:{structure:"reset:splftower/593.103.989"}},{}]}

forceload add 593 1037

execute positioned 592.0 102.0 1036.0 run kill @e[dx=1,dy=1,dz=1,tag=splftower_structmarker]
execute align xz run summon armor_stand 593 103 1037 {NoGravity:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["splftower_structmarker"],ArmorItems:[{},{},{id:"minecraft:barrier",Count:1b,tag:{structure:"reset:splftower/593.103.1037"}},{}]}

scoreboard players set loadNum ld.splftower 0
function reset:splftower/save
function reset:splftower/tick
forceload remove all

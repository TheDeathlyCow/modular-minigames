tellraw @a[tag=bwplaying_template] [{"text":"The green team's bed has been destroyed!","color":"green"}]
tellraw @a[tag=bwspectating_template] [{"text":"The green team's bed has been destroyed!","color":"green"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=bwspectating_template,team=bwgreen] 1061 128 -13
scoreboard players reset @a[tag=bwspectating_template,team=bwgreen] bwDied
scoreboard players set green template.bd 1
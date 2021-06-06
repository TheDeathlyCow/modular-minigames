tellraw @a[tag=bwplaying_template] [{"text":"The red team's bed has been destroyed!","color":"red"}]
tellraw @a[tag=bwspectating_template] [{"text":"The red team's bed has been destroyed!","color":"red"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=bwspectating_template,team=bwred] 1061 128 -13
scoreboard players reset @a[tag=bwspectating_template,team=bwred] bwDied
scoreboard players set red template.bd 1
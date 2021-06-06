tellraw @a[tag=bwplaying_template] [{"text":"The blue team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=bwspectating_template] [{"text":"The blue team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=bwspectating_template,team=bwblue] 1061 128 -13
scoreboard players reset @a[tag=bwspectating_template,team=bwblue] bwDied
scoreboard players set blue template.bd 1
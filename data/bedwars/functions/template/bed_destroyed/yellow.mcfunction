tellraw @a[tag=bwplaying_template] [{"text":"The yellow team's bed has been destroyed!","color":"yellow"}]
tellraw @a[tag=bwspectating_template] [{"text":"The yellow team's bed has been destroyed!","color":"yellow"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=bwspectating_template,team=bwyellow] 1061 128 -13
scoreboard players reset @a[tag=bwspectating_template,team=bwyellow] bwDied
scoreboard players set yellow template.bd 1
tellraw @a[tag=bwplaying_bwcastle] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=bwspectating_bwcastle] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=bwplaying_bwcastle,team=bwred] 1080 181 1079
scoreboard players reset @a[tag=bwplaying_bwcastle,team=bwred] bwDied
scoreboard players set red bwcastle.bd 1

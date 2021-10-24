tellraw @a[tag=playing_bwpirates] [{"text":"The green team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwpirates] [{"text":"The green team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwpirates,team=bwgreen] 2944 123 1024
scoreboard players reset @a[tag=playing_bwpirates,team=bwgreen] bwDied
scoreboard players set green bwpirates.bd 1

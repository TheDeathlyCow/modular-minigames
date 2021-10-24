tellraw @a[tag=playing_bwpirates] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwpirates] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwpirates,team=bwred] 2944 123 1024
scoreboard players reset @a[tag=playing_bwpirates,team=bwred] bwDied
scoreboard players set red bwpirates.bd 1

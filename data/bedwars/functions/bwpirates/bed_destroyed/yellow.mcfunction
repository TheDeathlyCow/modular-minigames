tellraw @a[tag=playing_bwpirates] [{"text":"The yellow team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwpirates] [{"text":"The yellow team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwpirates,team=bwyellow] 2944 123 1024
scoreboard players reset @a[tag=playing_bwpirates,team=bwyellow] bwDied
scoreboard players set yellow bwpirates.bd 1

tellraw @a[tag=playing_bwcastle] [{"text":"The blue team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwcastle] [{"text":"The blue team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwcastle,team=bwblue] 1080 181 1079
scoreboard players reset @a[tag=playing_bwcastle,team=bwblue] bwDied
scoreboard players set blue bwcastle.bd 1

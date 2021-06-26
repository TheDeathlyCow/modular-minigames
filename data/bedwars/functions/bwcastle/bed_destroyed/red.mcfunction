tellraw @a[tag=playing_bwcastle] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwcastle] [{"text":"The red team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwcastle,team=bwred] 1080 181 1079
scoreboard players reset @a[tag=playing_bwcastle,team=bwred] bwDied
scoreboard players set red bwcastle.bd 1

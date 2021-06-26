tellraw @a[tag=playing_bwcastle] [{"text":"The yellow team's bed has been destroyed!","color":"aqua"}]
tellraw @a[tag=spectating_bwcastle] [{"text":"The yellow team's bed has been destroyed!","color":"aqua"}]
summon lightning_bolt ~ ~10 ~
spawnpoint @a[tag=playing_bwcastle,team=bwyellow] 1080 181 1079
scoreboard players reset @a[tag=playing_bwcastle,team=bwyellow] bwDied
scoreboard players set yellow bwcastle.bd 1

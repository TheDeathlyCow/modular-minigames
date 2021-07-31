scoreboard players set bwcastle bwNumTeams 4
scoreboard objectives add bwcastle.tq dummy
scoreboard objectives add ds.bwcastle dummy
scoreboard players add bwcastle bwState 0

scoreboard players add red bwcastle.tq 0
scoreboard players add yellow bwcastle.tq 0
scoreboard players add green bwcastle.tq 0
scoreboard players add blue bwcastle.tq 0
scoreboard players set bwcastle.mx bwPlyrCnt 0
scoreboard players operation bwcastle.mx bwPlyrCnt += bwcastle bwNumTeams
scoreboard players operation bwcastle.mx bwPlyrCnt += bwcastle bwNumTeams
scoreboard players operation bwcastle.mx bwPlyrCnt += bwcastle bwNumTeams
scoreboard objectives add bwcastle.bd dummy
scoreboard players add red bwcastle.bd 0
scoreboard players add yellow bwcastle.bd 0
scoreboard players add green bwcastle.bd 0
scoreboard players add blue bwcastle.bd 0

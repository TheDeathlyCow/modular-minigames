scoreboard players set bwpirates bwNumTeams 4
scoreboard objectives add bwpirates.tq dummy
scoreboard objectives add ds.bwpirates dummy
scoreboard players add bwpirates bwState 0
scoreboard objectives add bwpirates.wa dummy

scoreboard players add red bwpirates.tq 0
scoreboard players add yellow bwpirates.tq 0
scoreboard players add green bwpirates.tq 0
scoreboard players add blue bwpirates.tq 0
scoreboard players set bwpirates.mx bwPlyrCnt 0
scoreboard players operation bwpirates.mx bwPlyrCnt += bwpirates bwNumTeams
scoreboard players operation bwpirates.mx bwPlyrCnt += bwpirates bwNumTeams
scoreboard players operation bwpirates.mx bwPlyrCnt += bwpirates bwNumTeams
scoreboard players operation bwpirates.mx bwPlyrCnt += bwpirates bwNumTeams
scoreboard players operation bwpirates.mx bwPlyrCnt += bwpirates bwNumTeams
scoreboard objectives add bwpirates.bd dummy
scoreboard players add red bwpirates.bd 0
scoreboard players add yellow bwpirates.bd 0
scoreboard players add green bwpirates.bd 0
scoreboard players add blue bwpirates.bd 0

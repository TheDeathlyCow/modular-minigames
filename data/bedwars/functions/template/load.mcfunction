# this should be set by the generator
scoreboard players set template bwNumTeams 4
scoreboard objectives add template.tq dummy

scoreboard players add template bwState 0

scoreboard players add red template.tq 0 
scoreboard players add yellow template.tq 0 
scoreboard players add green template.tq 0
scoreboard players add blue template.tq 0

scoreboard players set template.mx bwPlyrCnt 0
# maximum of 3 players per team, total 3 * num_teams (=12) players
scoreboard players operation template.mx bwPlyrCnt += template bwNumTeams
scoreboard players operation template.mx bwPlyrCnt += template bwNumTeams
scoreboard players operation template.mx bwPlyrCnt += template bwNumTeams

scoreboard objectives add template.bd dummy
scoreboard players add red template.bd 0
scoreboard players add yellow template.bd 0
scoreboard players add green template.bd 0
scoreboard players add blue template.bd 0
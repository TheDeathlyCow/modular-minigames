# key things the bedwars needs:
# on each island: spawnpoint position
# on each island: respawn chest position
# spectator box position
# centre area: special chests (no markers)
#

scoreboard objectives add bwPlyrCnt dummy
scoreboard objectives add bwRdyPlyrs dummy
scoreboard objectives add bwCntDwn dummy
scoreboard objectives add bwNumTeams dummy
scoreboard objectives add bwState dummy
scoreboard objectives add bwDied deathCount
scoreboard objectives add bwHealth dummy
scoreboard objectives add start_bedwars trigger
scoreboard objectives add leave_bedwars trigger

team add bwSpec "Spectator"
team modify bwSpec friendlyFire false
team modify bwSpec color white
team modify bwSpec seeFriendlyInvisibles false

function bedwars:load_teams
#function bedwars:template/load
function bedwars:bwcastle/load
function bedwars:bwpirates/load
# as player attempting to join, at arbitrary position
function bedwars:template/count_players
execute if score template bwPlyrCnt < template.mx bwPlyrCnt run function bedwars:template/join_game
execute if score template bwPlyrCnt >= template.mx bwPlyrCnt run function bedwars:template/join_spectators
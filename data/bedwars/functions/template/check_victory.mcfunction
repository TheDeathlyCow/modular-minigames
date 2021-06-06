

# if there is a player in the map on red team, unless there is a player in the map NOT in red team
execute if entity @a[tag=bwplaying_template,team=bwred] unless entity @a[tag=bwplaying_template,team=!bwred] run function bedwars:template/victory/red
execute if entity @a[tag=bwplaying_template,team=bwgreen] unless entity @a[tag=bwplaying_template,team=!bwgreen] run function bedwars:template/victory/green
execute if entity @a[tag=bwplaying_template,team=bwyellow] unless entity @a[tag=bwplaying_template,team=!bwyellow] run function bedwars:template/victory/yellow
execute if entity @a[tag=bwplaying_template,team=bwblue] unless entity @a[tag=bwplaying_template,team=!bwblue] run function bedwars:template/victory/blue
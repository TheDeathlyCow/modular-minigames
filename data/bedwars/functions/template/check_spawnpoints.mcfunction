

execute if score red template.bd matches 0 positioned 1034 117 -13 unless block ~ ~ ~ #minecraft:beds run function bedwars:template/bed_destroyed/red
execute if score red template.bd matches 0 positioned 1034 117 -13 as @a[tag=bwplaying_template,team=bwred,scores={bwDied=1..,bwHealth=1..}] run function bedwars:template/respawn/red
execute if score red template.bd matches 1 as @a[tag=bwplaying_template,team=bwred,scores={bwDied=1..}] at @s run function bedwars:template/eliminate

execute if score yellow template.bd matches 0 positioned 1061 117 14 unless block ~ ~ ~ #minecraft:beds run function bedwars:template/bed_destroyed/yellow
execute if score yellow template.bd matches 0 positioned 1061 117 14 as @a[tag=bwplaying_template,team=bwyellow,scores={bwDied=1..,bwHealth=1..}] run function bedwars:template/respawn/yellow
execute if score yellow template.bd matches 1 as @a[tag=bwplaying_template,team=bwyellow,scores={bwDied=1..}] at @s run function bedwars:template/eliminate

execute if score green template.bd matches 0 positioned 1089 117 -13 unless block ~ ~ ~ #minecraft:beds run function bedwars:template/bed_destroyed/green
execute if score green template.bd matches 0 positioned 1089 117 -13 as @a[tag=bwplaying_template,team=bwgreen,scores={bwDied=1..,bwHealth=1..}] run function bedwars:template/respawn/green
execute if score green template.bd matches 1 as @a[tag=bwplaying_template,team=bwgreen,scores={bwDied=1..}] at @s run function bedwars:template/eliminate

execute if score blue template.bd matches 0 positioned 1061 117 -40 unless block ~ ~ ~ #minecraft:beds run function bedwars:template/bed_destroyed/blue
execute if score blue template.bd matches 0 positioned 1061 117 -40 as @a[tag=bwplaying_template,team=bwblue,scores={bwDied=1..,bwHealth=1..}] run function bedwars:template/respawn/blue
execute if score blue template.bd matches 1 as @a[tag=bwplaying_template,team=bwblue,scores={bwDied=1..}] at @s run function bedwars:template/eliminate

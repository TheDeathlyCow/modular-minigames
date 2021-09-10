execute as @a[tag=playing_bwcastle] store result score @s bwHealth run data get entity @s Health
execute if score red bwcastle.bd matches 0 positioned 1080 96 1003 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwcastle/bed_destroyed/red
execute if score red bwcastle.bd matches 0 positioned 1080 96 1003 as @a[tag=playing_bwcastle,team=bwred,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwcastle/respawn/red
execute if score red bwcastle.bd matches 1 as @a[tag=playing_bwcastle,team=bwred,scores={bwDied=1..}] at @s run function bedwars:bwcastle/eliminate

execute if score red bwcastle.bd matches 1 run bossbar set bwcastle.red value 0
execute if score red bwcastle.bd matches 0 run bossbar set bwcastle.red value 1

execute if score yellow bwcastle.bd matches 0 positioned 1156 96 1079 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwcastle/bed_destroyed/yellow
execute if score yellow bwcastle.bd matches 0 positioned 1156 96 1079 as @a[tag=playing_bwcastle,team=bwyellow,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwcastle/respawn/yellow
execute if score yellow bwcastle.bd matches 1 as @a[tag=playing_bwcastle,team=bwyellow,scores={bwDied=1..}] at @s run function bedwars:bwcastle/eliminate

execute if score yellow bwcastle.bd matches 1 run bossbar set bwcastle.yellow value 0
execute if score yellow bwcastle.bd matches 0 run bossbar set bwcastle.yellow value 1

execute if score green bwcastle.bd matches 0 positioned 1004 96 1079 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwcastle/bed_destroyed/green
execute if score green bwcastle.bd matches 0 positioned 1004 96 1079 as @a[tag=playing_bwcastle,team=bwgreen,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwcastle/respawn/green
execute if score green bwcastle.bd matches 1 as @a[tag=playing_bwcastle,team=bwgreen,scores={bwDied=1..}] at @s run function bedwars:bwcastle/eliminate

execute if score green bwcastle.bd matches 1 run bossbar set bwcastle.green value 0
execute if score green bwcastle.bd matches 0 run bossbar set bwcastle.green value 1

execute if score blue bwcastle.bd matches 0 positioned 1080 96 1155 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwcastle/bed_destroyed/blue
execute if score blue bwcastle.bd matches 0 positioned 1080 96 1155 as @a[tag=playing_bwcastle,team=bwblue,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwcastle/respawn/blue
execute if score blue bwcastle.bd matches 1 as @a[tag=playing_bwcastle,team=bwblue,scores={bwDied=1..}] at @s run function bedwars:bwcastle/eliminate

execute if score blue bwcastle.bd matches 1 run bossbar set bwcastle.blue value 0
execute if score blue bwcastle.bd matches 0 run bossbar set bwcastle.blue value 1


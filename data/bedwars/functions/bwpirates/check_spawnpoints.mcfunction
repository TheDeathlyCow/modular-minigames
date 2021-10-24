execute as @a[tag=playing_bwpirates] store result score @s bwHealth run data get entity @s Health
execute if score red bwpirates.bd matches 0 positioned 2944 77 1152 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwpirates/bed_destroyed/red
execute if score red bwpirates.bd matches 0 positioned 2944 77 1152 as @a[tag=playing_bwpirates,team=bwred,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwpirates/respawn/red
execute if score red bwpirates.bd matches 1 as @a[tag=playing_bwpirates,team=bwred,scores={bwDied=1..}] at @s run function bedwars:bwpirates/eliminate

execute if score red bwpirates.bd matches 1 run bossbar set bwpirates.red value 0
execute if score red bwpirates.bd matches 0 run bossbar set bwpirates.red value 1

execute if score yellow bwpirates.bd matches 0 positioned 2816 77 1024 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwpirates/bed_destroyed/yellow
execute if score yellow bwpirates.bd matches 0 positioned 2816 77 1024 as @a[tag=playing_bwpirates,team=bwyellow,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwpirates/respawn/yellow
execute if score yellow bwpirates.bd matches 1 as @a[tag=playing_bwpirates,team=bwyellow,scores={bwDied=1..}] at @s run function bedwars:bwpirates/eliminate

execute if score yellow bwpirates.bd matches 1 run bossbar set bwpirates.yellow value 0
execute if score yellow bwpirates.bd matches 0 run bossbar set bwpirates.yellow value 1

execute if score green bwpirates.bd matches 0 positioned 2944 77 896 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwpirates/bed_destroyed/green
execute if score green bwpirates.bd matches 0 positioned 2944 77 896 as @a[tag=playing_bwpirates,team=bwgreen,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwpirates/respawn/green
execute if score green bwpirates.bd matches 1 as @a[tag=playing_bwpirates,team=bwgreen,scores={bwDied=1..}] at @s run function bedwars:bwpirates/eliminate

execute if score green bwpirates.bd matches 1 run bossbar set bwpirates.green value 0
execute if score green bwpirates.bd matches 0 run bossbar set bwpirates.green value 1

execute if score blue bwpirates.bd matches 0 positioned 3072 77 1024 unless block ~ ~ ~ #minecraft:beds run function bedwars:bwpirates/bed_destroyed/blue
execute if score blue bwpirates.bd matches 0 positioned 3072 77 1024 as @a[tag=playing_bwpirates,team=bwblue,scores={bwDied=1..,bwHealth=1..}] run function bedwars:bwpirates/respawn/blue
execute if score blue bwpirates.bd matches 1 as @a[tag=playing_bwpirates,team=bwblue,scores={bwDied=1..}] at @s run function bedwars:bwpirates/eliminate

execute if score blue bwpirates.bd matches 1 run bossbar set bwpirates.blue value 0
execute if score blue bwpirates.bd matches 0 run bossbar set bwpirates.blue value 1


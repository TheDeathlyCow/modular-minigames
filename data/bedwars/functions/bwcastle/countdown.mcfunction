effect give @a[tag=playing_bwcastle,predicate=bedwars:in_void] levitation 6 20 
effect give @a[tag=playing_bwcastle] resistance 2 255 true
scoreboard players remove bwcastle bwCntDwn 1

execute if score bwcastle bwCntDwn matches 300 run title @a[tag=playing_bwcastle] title {"text":"15","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 300 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"15","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 300 run tellraw @a[tag=spectating_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"15","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 300 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 200 run title @a[tag=playing_bwcastle] title {"text":"10","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 200 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"10","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 200 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 100 run title @a[tag=playing_bwcastle] title {"text":"5","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 100 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"5","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 100 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 80 run title @a[tag=playing_bwcastle] title {"text":"4","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 80 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"4","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 80 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 60 run title @a[tag=playing_bwcastle] title {"text":"3","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 60 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"3","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 60 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 40 run title @a[tag=playing_bwcastle] title {"text":"2","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 40 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"2","color":"dark_purple"},{"text":" seconds!"}]
execute if score bwcastle bwCntDwn matches 40 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 20 run title @a[tag=playing_bwcastle] title {"text":"1","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 20 run tellraw @a[tag=playing_bwcastle] [{"text":"The game will start in ","color":"aqua"},{"text":"1","color":"dark_purple"},{"text":" second!"}]
execute if score bwcastle bwCntDwn matches 20 as @a[tag=playing_bwcastle] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1

execute if score bwcastle bwCntDwn matches 0 run title @a[tag=playing_bwcastle] title {"text":"GO!","color":"dark_purple","bold":true}
execute if score bwcastle bwCntDwn matches 0 run function bedwars:bwcastle/start


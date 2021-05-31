scoreboard players remove splfmall spleefCountdown 1
execute if score splfmall spleefCountdown matches 300 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"15","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 300 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 200 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"10","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 200 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 100 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"5","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 100 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 80 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"4","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 80 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 60 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"3","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 60 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 40 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"2","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 40 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 20 run tellraw @a[tag=playing_splfmall] [{"text":"The game will start in ","color":"aqua"},{"text":"1","color":"dark_purple"},{"text":" seconds!"}]
execute if score splfmall spleefCountdown matches 20 run playsound minecraft:block.note_block.hat master @a[tag=playing_splfmall] ~ ~ ~ 500

execute if score splfmall spleefCountdown matches 0 run function spleef:splfmall/start

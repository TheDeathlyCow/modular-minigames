scoreboard players set template spleefCountdown 600
tellraw @a[tag=playing_template] [{"text":"The game will start in ","color":"aqua"},{"text":"30","color":"dark_purple"},{"text":" seconds!"}]
playsound minecraft:block.note_block.hat master @a[tag=playing_template] ~ ~ ~ 500
scoreboard players reset @a[scores={start_spleef=1..}] start_spleef
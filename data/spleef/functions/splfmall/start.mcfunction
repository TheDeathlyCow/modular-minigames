#set number of players in game

clear @a[tag=playing_splfmall]
give @a[tag=playing_splfmall] bow{Unbreakable:1b,Enchantments:[{id:"minecraft:flame",lvl:1s},{id:"minecraft:infinity",lvl:1s}]} 1
give @a[tag=playing_splfmall] arrow 1
give @a[tag=playing_splfmall] fire_charge 10
give @a[tag=playing_splfmall] golden_carrot 64
scoreboard players set splfmall isSplfRunning 1
tellraw @a[tag=playing_splfmall] [{"text":"The game has begun!","color":"dark_purple"}]
title @a[tag=playing_splfmall] title [{"text":"GO!","color":"dark_purple","bold":true}]
playsound minecraft:block.note_block.harp master @a[tag=playing_splfmall] ~ ~ ~ 500
effect give @a[tag=playing_splfmall] minecraft:instant_health 1 10
effect give @a[tag=playing_splfmall] minecraft:saturation 1 10
scoreboard players reset @a[tag=playing_splfmall] splfOver
effect clear @a[tag=playing_splfmall]
effect give @a[tag=playing_splfmall] instant_health 1 10
effect give @a[tag=playing_splfmall] saturation 1 10
#effect give @a[tag=playing_splfmall] resistance 99999 10
scoreboard players set splfmall splfTimer 0

#set number of players in game

clear @a[tag=playing_splfhockey]
give @a[tag=playing_splfhockey] diamond_pickaxe{CanDestroy:["minecraft:packed_ice"],Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3s}]} 1
give @a[tag=playing_splfhockey] shears{CanDestroy:["minecraft:red_wool","minecraft:white_wool","minecraft:blue_wool","minecraft:light_blue_wool"],Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
give @a[tag=playing_splfhockey] lingering_potion{Potion:"minecraft:slowness"} 1
give @a[tag=playing_splfhockey] lingering_potion{Potion:"minecraft:slowness"} 1
give @a[tag=playing_splfhockey] lingering_potion{Potion:"minecraft:slowness"} 1
scoreboard players set splfhockey isSplfRunning 1
tellraw @a[tag=playing_splfhockey] [{"text":"The game has begun!","color":"dark_purple"}]
title @a[tag=playing_splfhockey] title [{"text":"GO!","color":"dark_purple","bold":true}]
playsound minecraft:block.note_block.harp master @a[tag=playing_splfhockey] ~ ~ ~ 500
effect give @a[tag=playing_splfhockey] minecraft:instant_health 1 10
effect give @a[tag=playing_splfhockey] minecraft:saturation 1 10
scoreboard players reset @a[tag=playing_splfhockey] splfOver
effect clear @a[tag=playing_splfhockey]
effect give @a[tag=playing_splfhockey] instant_health 1 10
effect give @a[tag=playing_splfhockey] saturation 1 10
scoreboard players set splfhockey splfTimer 0

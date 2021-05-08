# set number of players in game
give @a[tag=playing_template] diamond_pickaxe{CanDestroy:["minecraft:packed_ice"],Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3s}]} 1
scoreboard players set template isSplfRunning 1
tellraw @a[tag=playing_template] [{"text":"The game has begun!","color":"dark_purple"}]
playsound minecraft:block.note_block.harp master @a[tag=playing_template] ~ ~ ~ 500
effect give @a[tag=playing_template] minecraft:instant_health 1 10
effect give @a[tag=playing_template] minecraft:saturation 1 10
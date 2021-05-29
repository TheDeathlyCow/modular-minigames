#set number of players in game

give @a[tag=playing_test_generation] diamond_pickaxe{CanDestroy:["minecraft:packed_ice"],Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3s}]} 1
scoreboard players set test_generation isSplfRunning 1
tellraw @a[tag=playing_test_generation] [{"text":"The game has begun!","color":"dark_purple"}]
playsound minecraft:block.note_block.harp master @a[tag=playing_test_generation] ~ ~ ~ 500
effect give @a[tag=playing_test_generation] minecraft:instant_health 1 10
effect give @a[tag=playing_test_generation] minecraft:saturation 1 10

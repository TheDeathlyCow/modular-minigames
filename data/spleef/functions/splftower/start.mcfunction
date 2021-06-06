#set number of players in game

give @a[tag=playing_splftower] netherite_shovel{Unbreakable:1b,CanDestroy:["minecraft:snow_block"]} 1
scoreboard players set splftower isSplfRunning 1
tellraw @a[tag=playing_splftower] [{"text":"The game has begun!","color":"dark_purple"}]
playsound minecraft:block.note_block.harp master @a[tag=playing_splftower] ~ ~ ~ 500
effect give @a[tag=playing_splftower] minecraft:instant_health 1 10
effect give @a[tag=playing_splftower] minecraft:saturation 1 10
scoreboard players reset @a[tag=playing_splftower] splfOver
effect clear @a[tag=playing_splftower]
effect give @a[tag=playing_splftower] instant_health 1 10
effect give @a[tag=playing_splftower] saturation 1 10

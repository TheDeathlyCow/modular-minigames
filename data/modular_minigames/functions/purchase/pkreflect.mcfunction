scoreboard players set @s ticket 8
tellraw @s [{"text":"Board any train on platforms 2-5 to travel to Reflections (Parkour).","color":"aqua","italic":true}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~
clear @s emerald
give @s emerald 1
advancement revoke @s from modular_minigames:tickets/root
clear @s filled_map{IsTicket:1b}
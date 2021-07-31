scoreboard players set @s ticket 1
tellraw @s [{"text":"Board any train on platforms 2-5 to travel to TNT Mall (Spleef).","color":"aqua","italic":true}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~
clear @s emerald
give @s emerald 1
advancement revoke @s from modular_minigames:tickets/root
clear @s filled_map{IsTicket:1b}
give @s filled_map{IsTicket:1b,map:6,display:{Name:'{"text":"TNT Mall (Spleef)","color":"aqua","italic":false}'}}
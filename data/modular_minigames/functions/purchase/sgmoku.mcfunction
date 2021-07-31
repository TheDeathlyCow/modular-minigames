scoreboard players set @s ticket 4
tellraw @s [{"text":"Board any train on platforms 2-5 to travel to Ka Mokupuni (Survival Games).","color":"aqua","italic":true}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~
clear @s emerald
give @s emerald 1
advancement revoke @s from modular_minigames:tickets/root
clear @s filled_map{IsTicket:1b,display:{Name:'{"text":"Ka Mokupuni (Survival Games)","color":"dark_green","italic":false}'}}
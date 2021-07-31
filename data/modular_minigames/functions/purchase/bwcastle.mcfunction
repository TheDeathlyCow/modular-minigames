scoreboard players set @s ticket 3
tellraw @s [{"text":"Board any train on platforms 2-5 to travel to Castle in the Sky (Bed Wars).","color":"aqua","italic":true}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~
clear @s emerald
give @s emerald 1
advancement revoke @s from modular_minigames:tickets/root
clear @s filled_map{IsTicket:1b}
give @s filled_map{IsTicket:1b,map:8,display:{Name:'{"text":"Castle in the Sky (Bed Wars)","color":"dark_red","italic":false}'}}
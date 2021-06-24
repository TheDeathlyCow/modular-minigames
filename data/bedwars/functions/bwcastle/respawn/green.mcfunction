function bedwars:bwcastle/respawn/give_basic_kit
give @s lime_wool 64 
item replace entity @s armor.head with leather_helmet{display:{color:2348559}} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:2348559}} 1
spreadplayers ~ ~ 0 10 under 182 true @s

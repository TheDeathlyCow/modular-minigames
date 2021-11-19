function bedwars:bwpirates/respawn/give_basic_kit
item replace entity @s armor.head with leather_helmet{display:{color:38614}} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:38614}} 1
give @s blue_terracotta 16
spreadplayers ~ ~ 0 3 under 78 true @s

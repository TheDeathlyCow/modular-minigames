function bedwars:template/respawn/give_basic_kit
give @s light_blue_wool 64
item replace entity @s armor.head with leather_helmet{display:{color:38614}} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:38614}} 1

# The 101 is based on the y coordinate of the bed position.
spreadplayers ~ ~ 0 10 under 96 true @s
function bedwars:bwpirates/respawn/give_basic_kit
item replace entity @s armor.head with leather_helmet{display:{color:2348559}} 1
item replace entity @s armor.chest with leather_chestplate{display:{color:2348559}} 1
item replace entity @s inventory.0 with axolotl_bucket
give @s green_terracotta 16
spreadplayers ~ ~ 0 3 under 78 true @s

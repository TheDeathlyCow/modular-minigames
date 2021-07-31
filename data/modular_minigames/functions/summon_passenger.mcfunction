function modular_minigames:next_rand
scoreboard players operation summoned_passenger lcg = current lcg
scoreboard players set total_passengers lcg 5
scoreboard players operation summoned_passenger lcg %= total_passengers lcg

# 16, 4, 2, 13, 12, 9, 0, 7, 11, 6, 8, 14, 15, 1, 10, 3
execute if score summoned_passenger lcg matches 0 run summon villager ~ ~ ~ {Invulnerable:1b,Tags:["train_passenger"],CustomName:'{"text":"Passenger"}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
execute if score summoned_passenger lcg matches 1 run summon villager ~ ~ ~ {Invulnerable:1b,Tags:["train_passenger"],CustomName:'{"text":"Passenger"}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:taiga"},Offers:{}}
execute if score summoned_passenger lcg matches 2 run summon villager ~ ~ ~ {Invulnerable:1b,Tags:["train_passenger"],CustomName:'{"text":"Passenger"}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:butcher",type:"minecraft:plains"},Offers:{}}
execute if score summoned_passenger lcg matches 3 run summon villager ~ ~ ~ {Invulnerable:1b,Tags:["train_passenger"],CustomName:'{"text":"Passenger"}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:shepherd",type:"minecraft:taiga"},Offers:{}}
execute if score summoned_passenger lcg matches 4 run summon villager ~ ~ ~ {Invulnerable:1b,Tags:["train_passenger"],CustomName:'{"text":"Passenger"}',Attributes:[{Name:generic.movement_speed,Base:0}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:plains"},Offers:{}}



summon zombie ~ ~ ~ {CanPickUpLoot:0b,HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:zombie.spawn_reinforcements,Base:0}]}
tellraw @s [{"text":"This is taking too long! Die!","color":"aqua"}]
playsound minecraft:entity.dragon_fireball.explode master @s ~ ~ ~

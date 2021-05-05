setblock ~ ~ ~ structure_block[mode=load]{name:"temp",posX:0,posY:0,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
data modify block ~ ~ ~ name set from entity @s ArmorItems[2].tag.structure
teleport @e[type=!player,type=!armor_stand,dx=48,dy=48,dz=48] ~ -100 ~
setblock ~ ~1 ~ redstone_block
teleport @e[type=item,dx=48,dy=48,dz=48] ~ -100 ~
scoreboard players operation @s ld.villagee = loadNum ld.villagee

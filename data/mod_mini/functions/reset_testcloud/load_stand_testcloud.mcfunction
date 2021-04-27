teleport @e[type=!player,dx=48,dy=48,dz=48] ~ -100 ~
setblock ~ ~ ~ structure_block[mode=load]{name:"temp",posX:0,posY:0,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
data modify block ~ ~ ~ name set from entity @s ArmorItems[2].tag.structure
setblock ~ ~1 ~ redstone_block
scoreboard players operation @s ld.testcloud = loadNum ld.testcloud

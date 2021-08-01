setblock ~ ~ ~ structure_block[mode=load]{name:"temp",posX:0,posY:0,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
data modify block ~ ~ ~ name set from entity @s data.structure
teleport @e[type=!player,type=!marker,dx=48,dy=48,dz=48] ~ -100 ~
teleport @e[type=item,dx=48,dy=48,dz=48] ~ -100 ~
scoreboard players operation @s ld.bwcastle = loadNum ld.bwcastle
scoreboard players reset @s bwcastle.dy
fill ~ ~1 ~ ~ ~4 ~ air
setblock ~ ~1 ~ observer[facing=up]
setblock ~ ~4 ~ sand 
scoreboard players set @s bwcastle.it 5

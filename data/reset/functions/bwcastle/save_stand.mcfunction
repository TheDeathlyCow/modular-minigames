setblock ~ ~ ~ air replace
setblock ~ ~-1 ~ structure_block[mode=save]{name:"temp",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:0b} replace
data modify block ~ ~-1 ~ name set from entity @s data.structure
scoreboard players operation @s sv.bwcastle = saveNum sv.bwcastle

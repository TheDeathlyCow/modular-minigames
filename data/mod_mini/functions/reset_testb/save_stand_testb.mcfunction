setblock ~ ~-1 ~ structure_block[mode=save]{name:"temp",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:0b} replace
data modify block ~ ~-1 ~ name set from entity @s ArmorItems[2].tag.structure
setblock ~ ~-2 ~ redstone_block
fill ~ ~-1 ~ ~ ~-2 ~ air
scoreboard players operation @s sv.testb = saveNum sv.testb

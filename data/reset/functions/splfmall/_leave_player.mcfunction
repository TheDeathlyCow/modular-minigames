## This function is called when a player is in an arena they do not belong in, not generally when they leave.

tellraw @s [{"text":"The arena you are currently in has reset! Removing you from the arena now...","color":"gold"},{"text":"\nThis may occur if you disconnected in the middle of a game and did not come back)","color":"red","italic":true}]
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.8
tag @s add leave_splfmall

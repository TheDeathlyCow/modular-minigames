tag @s[tag=spectating_splftower] add leave_splftower
execute if score splftower isSplfRunning matches 0 if entity @s[tag=playing_splftower] run tag @s add leave_splftower

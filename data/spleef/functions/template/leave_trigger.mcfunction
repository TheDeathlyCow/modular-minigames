execute if entity @s[tag=spectating_template] run tag @s add leave_template
execute if score template isSplfRunning matches 0 if entity @s[tag=playing_template] run tag @s add leave_template
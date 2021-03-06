# Function executed to teleport a player back to spawn.
# @as The player to be brought back to spawn
# @at Arbitrary position

# set player tags, pos, stats, etc
teleport @s -34 8 -203 -52 -1
tag @s add in_hub
spawnpoint @s -3 4 -42
gamemode adventure @s
scoreboard players reset @s ticket

# effects
effect clear @s 
effect give @s regeneration 999999 255 true
effect give @s saturation 999999 255 true
effect give @s resistance 999999 255 true

# xp
experience set @s 0 levels
experience set @s 0 points

# inventory
clear @s
give @s emerald 1
item replace entity @s hotbar.8 with written_book{display:{Name:'{"text":"Ticket Book","color":"gold","bold":true,"italic":false}'},title:"",author:"",pages:['[{"text":"","color":"aqua","underlined":true},{"text":"Spleef Maps","color":"dark_purple","bold":true,"underlined":false},{"text":"\\n\\nThe Tower","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 1"}},{"text":"\\n\\nTNT Mall","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 2"}},{"text":"\\n\\nTotallyNotHockey","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 3"}}]','[{"text":"","color":"aqua","underlined":true},{"text":"Bed Wars Maps","color":"dark_purple","bold":true,"underlined":false},{"text":"\\n\\nCastle in the Sky","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 4"}},{"text":"\\n\\nPirates!","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 9"}}]','[{"text":"","color":"aqua","underlined":true},{"text":"Survival Games Maps","color":"dark_purple","bold":true,"underlined":false},{"text":"\\n\\nKa Mokupuni","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 5"}}]','[{"text":"","color":"aqua","underlined":true},{"text":"Parkour Maps\\n\\n","color":"dark_purple","bold":true,"underlined":false},{"text":"MossyCaves\\n\\n","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 6"}},{"text":"AquaticTemple\\n\\n","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 7"}},{"text":"Reflections","clickEvent":{"action":"run_command","value":"/trigger buy_ticket set 8"}}]']} 1
scoreboard objectives add greeted dummy
scoreboard objectives add greeted_ticket dummy
scoreboard objectives add greeted_engineer dummy
scoreboard objectives add greetCoolDwn dummy
scoreboard objectives add ticktCoolDwn dummy
scoreboard objectives add greetedTicket dummy
scoreboard objectives add lcg dummy 

scoreboard players set TicksBetweenGreetings greetCoolDwn 800


scoreboard players set modulus lcg 2303
scoreboard players set multiplier lcg 1646
scoreboard players set adder lcg 100
scoreboard players set current lcg 3

scoreboard objectives add buy_ticket trigger

scoreboard objectives add ticket dummy 
# Map IDs:
# 0 = The Tower (spleef)
# 1 = TNT Mall (spleef)
# 2 = TotallyNotHockey (spleef)
# 3 = Castle in the Sky (bed wars)
# 4 = Ka Mokupuni (survival games)
# 5 = Mossy Caves (parkour)
# 6 = Aquatic Temple (parkour)
# 7 = Reflections II (parkour)
# 8 = Pirates! (bed wars)
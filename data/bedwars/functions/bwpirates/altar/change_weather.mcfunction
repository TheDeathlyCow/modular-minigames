scoreboard players reset @s bwpirates.wa

execute if predicate bedwars:bwpirates/weather_items/sun_stone run function bedwars:bwpirates/altar/make_sunny
execute if predicate bedwars:bwpirates/weather_items/rain_stone run function bedwars:bwpirates/altar/make_rainy
execute if predicate bedwars:bwpirates/weather_items/lightning_in_a_bottle run function bedwars:bwpirates/altar/make_thundering

execute as @a[tag=playing_bwpirates] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 0.5

execute as @a[tag=playing_bwpirates] at @s run particle minecraft:cloud ~ ~ ~ 12 12 12 0.2 5000
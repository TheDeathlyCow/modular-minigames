

execute if predicate bedwars:bwpirates/weather_items/sun_stone run tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_purple"},{"text": " has begun channeling a Sun Stone!","color": "aqua"}]
execute if predicate bedwars:bwpirates/weather_items/rain_stone run tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_purple"},{"text": " has begun channeling a Rain Stone!","color": "aqua"}]
execute if predicate bedwars:bwpirates/weather_items/lightning_in_a_bottle run tellraw @a[tag=playing_bwpirates] [{"selector":"@s","color":"dark_purple"},{"text": " has begun channeling Lightning in a Bottle!","color": "aqua"}]